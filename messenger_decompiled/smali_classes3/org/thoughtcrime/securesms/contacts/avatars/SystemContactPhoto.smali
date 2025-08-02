.class public Lorg/thoughtcrime/securesms/contacts/avatars/SystemContactPhoto;
.super Ljava/lang/Object;
.source "SystemContactPhoto.java"

# interfaces
.implements Lorg/thoughtcrime/securesms/contacts/avatars/ContactPhoto;


# instance fields
.field private final address:Lorg/thoughtcrime/securesms/database/Address;

.field private final contactPhotoUri:Landroid/net/Uri;

.field private final lastModifiedTime:J


# direct methods
.method public constructor <init>(Lorg/thoughtcrime/securesms/database/Address;Landroid/net/Uri;J)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lorg/thoughtcrime/securesms/contacts/avatars/SystemContactPhoto;->address:Lorg/thoughtcrime/securesms/database/Address;

    .line 24
    iput-object p2, p0, Lorg/thoughtcrime/securesms/contacts/avatars/SystemContactPhoto;->contactPhotoUri:Landroid/net/Uri;

    .line 25
    iput-wide p3, p0, Lorg/thoughtcrime/securesms/contacts/avatars/SystemContactPhoto;->lastModifiedTime:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 53
    instance-of v1, p1, Lorg/thoughtcrime/securesms/contacts/avatars/SystemContactPhoto;

    if-nez v1, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    check-cast p1, Lorg/thoughtcrime/securesms/contacts/avatars/SystemContactPhoto;

    .line 57
    iget-object v1, p0, Lorg/thoughtcrime/securesms/contacts/avatars/SystemContactPhoto;->address:Lorg/thoughtcrime/securesms/database/Address;

    iget-object v2, p1, Lorg/thoughtcrime/securesms/contacts/avatars/SystemContactPhoto;->address:Lorg/thoughtcrime/securesms/database/Address;

    invoke-virtual {v1, v2}, Lorg/thoughtcrime/securesms/database/Address;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/thoughtcrime/securesms/contacts/avatars/SystemContactPhoto;->contactPhotoUri:Landroid/net/Uri;

    iget-object v2, p1, Lorg/thoughtcrime/securesms/contacts/avatars/SystemContactPhoto;->contactPhotoUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v1, p0, Lorg/thoughtcrime/securesms/contacts/avatars/SystemContactPhoto;->lastModifiedTime:J

    iget-wide v3, p1, Lorg/thoughtcrime/securesms/contacts/avatars/SystemContactPhoto;->lastModifiedTime:J

    cmp-long p1, v1, v3

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public getUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 0

    .line 36
    iget-object p1, p0, Lorg/thoughtcrime/securesms/contacts/avatars/SystemContactPhoto;->contactPhotoUri:Landroid/net/Uri;

    return-object p1
.end method

.method public hashCode()I
    .locals 3

    .line 62
    iget-object v0, p0, Lorg/thoughtcrime/securesms/contacts/avatars/SystemContactPhoto;->address:Lorg/thoughtcrime/securesms/database/Address;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/database/Address;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/thoughtcrime/securesms/contacts/avatars/SystemContactPhoto;->contactPhotoUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-wide v1, p0, Lorg/thoughtcrime/securesms/contacts/avatars/SystemContactPhoto;->lastModifiedTime:J

    long-to-int v2, v1

    xor-int/2addr v0, v2

    return v0
.end method

.method public isProfilePhoto()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public openInputStream(Landroid/content/Context;)Ljava/io/InputStream;
    .locals 2

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lorg/thoughtcrime/securesms/contacts/avatars/SystemContactPhoto;->contactPhotoUri:Landroid/net/Uri;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;Z)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 2

    .line 46
    iget-object v0, p0, Lorg/thoughtcrime/securesms/contacts/avatars/SystemContactPhoto;->address:Lorg/thoughtcrime/securesms/database/Address;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/database/Address;->serialize()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 47
    iget-object v0, p0, Lorg/thoughtcrime/securesms/contacts/avatars/SystemContactPhoto;->contactPhotoUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 48
    iget-wide v0, p0, Lorg/thoughtcrime/securesms/contacts/avatars/SystemContactPhoto;->lastModifiedTime:J

    invoke-static {v0, v1}, Lorg/thoughtcrime/securesms/util/Conversions;->longToByteArray(J)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method
