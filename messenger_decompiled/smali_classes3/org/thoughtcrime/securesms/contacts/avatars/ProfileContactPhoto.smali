.class public Lorg/thoughtcrime/securesms/contacts/avatars/ProfileContactPhoto;
.super Lorg/thoughtcrime/securesms/contacts/avatars/LocalFileContactPhoto;
.source "ProfileContactPhoto.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/thoughtcrime/securesms/database/Address;Lcom/b44t/messenger/DcContact;)V
    .locals 1

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, p1, p2, v0, p3}, Lorg/thoughtcrime/securesms/contacts/avatars/LocalFileContactPhoto;-><init>(Landroid/content/Context;Lorg/thoughtcrime/securesms/database/Address;Lcom/b44t/messenger/DcChat;Lcom/b44t/messenger/DcContact;)V

    return-void
.end method


# virtual methods
.method getId()I
    .locals 1

    .line 22
    iget-object v0, p0, Lorg/thoughtcrime/securesms/contacts/avatars/ProfileContactPhoto;->address:Lorg/thoughtcrime/securesms/database/Address;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/database/Address;->getDcContactId()I

    move-result v0

    return v0
.end method

.method public getPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 27
    iget-object p1, p0, Lorg/thoughtcrime/securesms/contacts/avatars/ProfileContactPhoto;->dcContact:Lcom/b44t/messenger/DcContact;

    invoke-virtual {p1}, Lcom/b44t/messenger/DcContact;->getProfileImage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method public isProfilePhoto()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
