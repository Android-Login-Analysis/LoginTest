.class public Lorg/thoughtcrime/securesms/contacts/avatars/VcardContactPhoto;
.super Ljava/lang/Object;
.source "VcardContactPhoto.java"

# interfaces
.implements Lorg/thoughtcrime/securesms/contacts/avatars/ContactPhoto;


# instance fields
.field private final vContact:Lcom/b44t/messenger/rpc/VcardContact;


# direct methods
.method public constructor <init>(Lcom/b44t/messenger/rpc/VcardContact;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/thoughtcrime/securesms/contacts/avatars/VcardContactPhoto;->vContact:Lcom/b44t/messenger/rpc/VcardContact;

    return-void
.end method


# virtual methods
.method public getUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 0

    const/4 p1, 0x0

    return-object p1
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

    .line 26
    iget-object p1, p0, Lorg/thoughtcrime/securesms/contacts/avatars/VcardContactPhoto;->vContact:Lcom/b44t/messenger/rpc/VcardContact;

    invoke-virtual {p1}, Lcom/b44t/messenger/rpc/VcardContact;->getProfileImage()[B

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 27
    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 2

    .line 42
    iget-object v0, p0, Lorg/thoughtcrime/securesms/contacts/avatars/VcardContactPhoto;->vContact:Lcom/b44t/messenger/rpc/VcardContact;

    invoke-virtual {v0}, Lcom/b44t/messenger/rpc/VcardContact;->getAddr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    const/4 v0, 0x4

    .line 43
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/thoughtcrime/securesms/contacts/avatars/VcardContactPhoto;->vContact:Lcom/b44t/messenger/rpc/VcardContact;

    invoke-virtual {v1}, Lcom/b44t/messenger/rpc/VcardContact;->getTimestamp()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method
