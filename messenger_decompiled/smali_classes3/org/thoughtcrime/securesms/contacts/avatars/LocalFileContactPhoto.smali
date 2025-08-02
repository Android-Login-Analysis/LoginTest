.class public abstract Lorg/thoughtcrime/securesms/contacts/avatars/LocalFileContactPhoto;
.super Ljava/lang/Object;
.source "LocalFileContactPhoto.java"

# interfaces
.implements Lorg/thoughtcrime/securesms/contacts/avatars/ContactPhoto;


# instance fields
.field final address:Lorg/thoughtcrime/securesms/database/Address;

.field final dcChat:Lcom/b44t/messenger/DcChat;

.field final dcContact:Lcom/b44t/messenger/DcContact;

.field private final id:I

.field private final path:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lorg/thoughtcrime/securesms/database/Address;Lcom/b44t/messenger/DcChat;Lcom/b44t/messenger/DcContact;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p2, p0, Lorg/thoughtcrime/securesms/contacts/avatars/LocalFileContactPhoto;->address:Lorg/thoughtcrime/securesms/database/Address;

    .line 32
    iput-object p3, p0, Lorg/thoughtcrime/securesms/contacts/avatars/LocalFileContactPhoto;->dcChat:Lcom/b44t/messenger/DcChat;

    .line 33
    iput-object p4, p0, Lorg/thoughtcrime/securesms/contacts/avatars/LocalFileContactPhoto;->dcContact:Lcom/b44t/messenger/DcContact;

    .line 34
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/contacts/avatars/LocalFileContactPhoto;->getId()I

    move-result p2

    iput p2, p0, Lorg/thoughtcrime/securesms/contacts/avatars/LocalFileContactPhoto;->id:I

    .line 35
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/contacts/avatars/LocalFileContactPhoto;->getPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/contacts/avatars/LocalFileContactPhoto;->path:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 57
    instance-of v1, p1, Lorg/thoughtcrime/securesms/contacts/avatars/LocalFileContactPhoto;

    if-nez v1, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    check-cast p1, Lorg/thoughtcrime/securesms/contacts/avatars/LocalFileContactPhoto;

    .line 60
    iget-object v1, p0, Lorg/thoughtcrime/securesms/contacts/avatars/LocalFileContactPhoto;->address:Lorg/thoughtcrime/securesms/database/Address;

    iget-object v2, p1, Lorg/thoughtcrime/securesms/contacts/avatars/LocalFileContactPhoto;->address:Lorg/thoughtcrime/securesms/database/Address;

    invoke-virtual {v1, v2}, Lorg/thoughtcrime/securesms/database/Address;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lorg/thoughtcrime/securesms/contacts/avatars/LocalFileContactPhoto;->id:I

    iget v2, p1, Lorg/thoughtcrime/securesms/contacts/avatars/LocalFileContactPhoto;->id:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lorg/thoughtcrime/securesms/contacts/avatars/LocalFileContactPhoto;->path:Ljava/lang/String;

    iget-object p1, p1, Lorg/thoughtcrime/securesms/contacts/avatars/LocalFileContactPhoto;->path:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method abstract getId()I
.end method

.method public abstract getPath(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public getUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/contacts/avatars/LocalFileContactPhoto;->isProfilePhoto()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/thoughtcrime/securesms/profiles/AvatarHelper;->getSelfAvatarFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public hashCode()I
    .locals 2

    .line 65
    iget-object v0, p0, Lorg/thoughtcrime/securesms/contacts/avatars/LocalFileContactPhoto;->address:Lorg/thoughtcrime/securesms/database/Address;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/database/Address;->hashCode()I

    move-result v0

    iget v1, p0, Lorg/thoughtcrime/securesms/contacts/avatars/LocalFileContactPhoto;->id:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public openInputStream(Landroid/content/Context;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    new-instance p1, Ljava/io/FileInputStream;

    iget-object v0, p0, Lorg/thoughtcrime/securesms/contacts/avatars/LocalFileContactPhoto;->path:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 2

    .line 50
    iget-object v0, p0, Lorg/thoughtcrime/securesms/contacts/avatars/LocalFileContactPhoto;->address:Lorg/thoughtcrime/securesms/database/Address;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/database/Address;->serialize()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 51
    iget v0, p0, Lorg/thoughtcrime/securesms/contacts/avatars/LocalFileContactPhoto;->id:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Lorg/thoughtcrime/securesms/util/Conversions;->longToByteArray(J)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 52
    iget-object v0, p0, Lorg/thoughtcrime/securesms/contacts/avatars/LocalFileContactPhoto;->path:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method
