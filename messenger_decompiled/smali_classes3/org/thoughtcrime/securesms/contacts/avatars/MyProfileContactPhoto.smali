.class public Lorg/thoughtcrime/securesms/contacts/avatars/MyProfileContactPhoto;
.super Ljava/lang/Object;
.source "MyProfileContactPhoto.java"

# interfaces
.implements Lorg/thoughtcrime/securesms/contacts/avatars/ContactPhoto;


# instance fields
.field private final address:Ljava/lang/String;

.field private final avatarObject:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lorg/thoughtcrime/securesms/contacts/avatars/MyProfileContactPhoto;->address:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lorg/thoughtcrime/securesms/contacts/avatars/MyProfileContactPhoto;->avatarObject:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 50
    instance-of v1, p1, Lorg/thoughtcrime/securesms/contacts/avatars/MyProfileContactPhoto;

    if-nez v1, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    check-cast p1, Lorg/thoughtcrime/securesms/contacts/avatars/MyProfileContactPhoto;

    .line 54
    iget-object v1, p0, Lorg/thoughtcrime/securesms/contacts/avatars/MyProfileContactPhoto;->address:Ljava/lang/String;

    iget-object v2, p1, Lorg/thoughtcrime/securesms/contacts/avatars/MyProfileContactPhoto;->address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/thoughtcrime/securesms/contacts/avatars/MyProfileContactPhoto;->avatarObject:Ljava/lang/String;

    iget-object p1, p1, Lorg/thoughtcrime/securesms/contacts/avatars/MyProfileContactPhoto;->avatarObject:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public getUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 0

    .line 34
    invoke-static {p1}, Lorg/thoughtcrime/securesms/profiles/AvatarHelper;->getSelfAvatarFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 2

    .line 59
    iget-object v0, p0, Lorg/thoughtcrime/securesms/contacts/avatars/MyProfileContactPhoto;->address:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/thoughtcrime/securesms/contacts/avatars/MyProfileContactPhoto;->avatarObject:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isProfilePhoto()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public openInputStream(Landroid/content/Context;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    new-instance v0, Ljava/io/FileInputStream;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/profiles/AvatarHelper;->getSelfAvatarFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/thoughtcrime/securesms/contacts/avatars/MyProfileContactPhoto;->address:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 45
    iget-object v0, p0, Lorg/thoughtcrime/securesms/contacts/avatars/MyProfileContactPhoto;->avatarObject:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method
