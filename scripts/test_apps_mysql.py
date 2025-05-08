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

    # 查询记录是否已存在
    query = "SELECT versions, links FROM apps WHERE _id = %s"
    cursor.execute(query, (document['_id'],))
    result = cursor.fetchone()

    if not result:
        # 插入新记录
        insert_query = """
        INSERT INTO apps (_id, description, versions, links)
        VALUES (%s, %s, %s, %s)
        """
        cursor.execute(insert_query, (document['_id'], document['description'],
                                      json.dumps(document['versions']), json.dumps(document['links'])))
        conn.commit()
        print(f"{document['_id']} has been inserted to db")
    else:
        # 更新已存在的记录
        old_versions = json.loads(result['versions'])
        old_versions.update(document['versions'])
        old_links = json.loads(result['links'])
        old_links.update(document['links'])

        update_query = """
        UPDATE apps
        SET versions = %s, links = %s
        WHERE _id = %s
        """
        cursor.execute(update_query, (json.dumps(old_versions), json.dumps(old_links), document['_id']))
        conn.commit()
        print(f"{document['_id']} has been updated in db")

    cursor.close()
    conn.close()

# 示例文档
document = {
    '_id': 'org.adw.launcher',
    'description': 'An open-source launcher for Android.',
    'versions': {'1.0': {'addedOn': '2021-01-01', 'apkAddress': 'url1'}},
    'links': {'homepage': 'https://example.com'}
}

insert_to_database(document)
