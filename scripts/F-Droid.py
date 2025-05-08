import AdvancedHTMLParser as AdvancedHTMLParser
from urllib.request import urlopen


from datetime import datetime
import mysql.connector
import json


def connect_to_mysql():
    return mysql.connector.connect(
        host="localhost",
        user="root",
        password="123456abc",
        database="db_repos"
    )


def insert_to_database(document):
    conn = connect_to_mysql()
    cursor = conn.cursor(dictionary=True)

    query = "SELECT versions, links FROM apps WHERE _id = %s"
    cursor.execute(query, (document['_id'],))
    result = cursor.fetchone()

    if not result:
        insert_query = """
        INSERT INTO apps (_id, description, versions, links)
        VALUES (%s, %s, %s, %s)
        """
        cursor.execute(insert_query, (document['_id'], document['description'],
                                      json.dumps(document['versions']), json.dumps(document['links'])))
        conn.commit()
        print(f"{document['_id']} has been inserted to db")
    else:
        old_versions = json.loads(result['versions'])
        old_versions.update(document['versions'])
        old_links = json.loads(result['links'])
        old_links.update(document['links'])

        update_query = """
        UPDATE apps
        SET versions = %s, links = %s
        WHERE _id = %s
        """
        cursor.execute(update_query, (json.dumps(old_versions),
                       json.dumps(old_links), document['_id']))
        conn.commit()
        print(f"{document['_id']} has been updated in db")

    cursor.close()
    conn.close()


def get_description(package_class):
    description = ""
    package_description = package_class.getElementsByClassName(
        "package-description")
    for description_part in package_description[0].children:
        description += str(description_part)
    return description


def get_links(package_class):
    links = package_class[0][3]
    wiki_address = package_class[0][4][0].__getattribute__('href')
    link_dic = {"wiki": wiki_address}
    for i in range(1, len(links.children), 3):
        link_dic[links[i - 1].text] = links[i].__getattribute__('href')
    return link_dic


def get_version_info(package_version_class):
    version_dic = {}

    for package_version in package_version_class[0].children:
        package_version_header_class = package_version.getElementsByClassName(
            "package-version-header")
        version = str(package_version_header_class[0][0].text.split()[1])
        added_on = package_version_header_class[0].text.split()

        version = version.replace('.', '_')
        n = len(added_on[5])
        added_on[5] = added_on[5][0: n - 1]
        added_on = str(added_on[4]) + " " + \
            str(added_on[5]) + " " + str(added_on[6])
        added_on = datetime.strptime(added_on, '%b %d %Y')

        package_version_permission_class = package_version.getElementsByClassName(
            "package-version-permissions")
        permission_list = []
        for j in range(len(package_version_permission_class[0][1].children)):
            permission_list += [package_version_permission_class[0]
                                [1][j].text.split()[0]]

        package_version_source = package_version.getElementsByClassName(
            "package-version-source")
        source_tarball = package_version_source[0][0].__getattribute__('href')
        package_version_download = package_version.getElementsByClassName(
            "package-version-download")
        apk_address = package_version_download[0][0].__getattribute__('href')
        pgp_signature = package_version_download[0][1].__getattribute__('href')
        package_version_requirement = package_version.getElementsByClassName(
            "package-version-requirement")
        required_version = package_version_requirement[0].text.split()[4]
        required_version = required_version.replace('.', '_')

        version_dic[version] = {}
        version_dic[version]['version'] = version
        version_dic[version]['addedOn'] = added_on
        version_dic[version]['permissionsList'] = permission_list
        version_dic[version]['sourceTarball'] = source_tarball
        version_dic[version]['apkAddress'] = apk_address
        version_dic[version]['pgpSignature'] = pgp_signature
        version_dic[version]['requirementVersion'] = required_version
    return version_dic


def crawl(address):
    response = urlopen(address)
    html_of_the_page = response.read()

    html_parser = AdvancedHTMLParser.AdvancedHTMLParser()

    html_parser.parseStr(html_of_the_page)

    # All data about app are in 'package' class
    package_class = html_parser.getElementsByClassName('package')

    description = get_description(package_class)
    links = get_links(package_class)

    # All data about app versions are in 'package-version-class' class
    package_version_class = html_parser.getElementsByClassName(
        'package-versions-list')
    version_dic = get_version_info(package_version_class)

    document = {'_id': address.split(
        '/')[-1], 'description': description, 'links': links, 'versions': version_dic}
    return document


main_url = 'https://f-droid.org/'

parser = AdvancedHTMLParser.AdvancedHTMLParser()


crawl("https://f-droid.org/packages/org.adw.launcher/")

response = urllib.urlopen(main_url + '/packages/')
html = response.read()
parser.parseStr(html)
browse_navigation_class = parser.getElementsByClassName("browse-navigation")

pageCount = int(browse_navigation_class[0][-2][0].text)
for page in range(1, pageCount + 1):
    if page == 1:
        response = urllib.urlopen(main_url + '/packages/')
    else:
        response = urllib.urlopen(main_url + '/packages/' + str(page))
    html = response.read()
    parser.parseStr(html)
    post_content_class = parser.getElementsByClassName("post-content")
    package_header_class = post_content_class.getElementsByClassName(
        "package-header")
    url_size = len(package_header_class)
    for i in range(url_size):
        document = crawl(
            main_url + package_header_class[i].__getattribute__('href'))
        insert_to_database(document)
