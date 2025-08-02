.class public Lorg/thoughtcrime/securesms/recipients/Recipient;
.super Ljava/lang/Object;
.source "Recipient.java"


# instance fields
.field private final address:Lorg/thoughtcrime/securesms/database/Address;

.field private final contactUri:Landroid/net/Uri;

.field private final customLabel:Ljava/lang/String;

.field private final dcChat:Lcom/b44t/messenger/DcChat;

.field private dcContact:Lcom/b44t/messenger/DcContact;

.field private final listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/thoughtcrime/securesms/recipients/RecipientModifiedListener;",
            ">;"
        }
    .end annotation
.end field

.field private profileAvatar:Ljava/lang/String;

.field private final profileName:Ljava/lang/String;

.field private systemContactPhoto:Landroid/net/Uri;

.field private final vContact:Lcom/b44t/messenger/rpc/VcardContact;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/b44t/messenger/DcChat;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 95
    invoke-direct/range {v0 .. v5}, Lorg/thoughtcrime/securesms/recipients/Recipient;-><init>(Landroid/content/Context;Lcom/b44t/messenger/DcChat;Lcom/b44t/messenger/DcContact;Ljava/lang/String;Lcom/b44t/messenger/rpc/VcardContact;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/b44t/messenger/DcChat;Lcom/b44t/messenger/DcContact;Ljava/lang/String;Lcom/b44t/messenger/rpc/VcardContact;)V
    .locals 1

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/thoughtcrime/securesms/recipients/Recipient;->listeners:Ljava/util/Set;

    .line 111
    iput-object p2, p0, Lorg/thoughtcrime/securesms/recipients/Recipient;->dcChat:Lcom/b44t/messenger/DcChat;

    .line 112
    iput-object p3, p0, Lorg/thoughtcrime/securesms/recipients/Recipient;->dcContact:Lcom/b44t/messenger/DcContact;

    .line 113
    iput-object p4, p0, Lorg/thoughtcrime/securesms/recipients/Recipient;->profileName:Ljava/lang/String;

    .line 114
    iput-object p5, p0, Lorg/thoughtcrime/securesms/recipients/Recipient;->vContact:Lcom/b44t/messenger/rpc/VcardContact;

    const/4 p4, 0x0

    .line 115
    iput-object p4, p0, Lorg/thoughtcrime/securesms/recipients/Recipient;->contactUri:Landroid/net/Uri;

    .line 116
    iput-object p4, p0, Lorg/thoughtcrime/securesms/recipients/Recipient;->systemContactPhoto:Landroid/net/Uri;

    .line 117
    iput-object p4, p0, Lorg/thoughtcrime/securesms/recipients/Recipient;->customLabel:Ljava/lang/String;

    .line 118
    iput-object p4, p0, Lorg/thoughtcrime/securesms/recipients/Recipient;->profileAvatar:Ljava/lang/String;

    const/4 p4, 0x1

    if-eqz p3, :cond_0

    .line 121
    invoke-virtual {p3}, Lcom/b44t/messenger/DcContact;->getId()I

    move-result p2

    invoke-static {p2}, Lorg/thoughtcrime/securesms/database/Address;->fromContact(I)Lorg/thoughtcrime/securesms/database/Address;

    move-result-object p2

    iput-object p2, p0, Lorg/thoughtcrime/securesms/recipients/Recipient;->address:Lorg/thoughtcrime/securesms/database/Address;

    .line 122
    invoke-direct {p0, p1, p3}, Lorg/thoughtcrime/securesms/recipients/Recipient;->maybeSetSystemContactPhoto(Landroid/content/Context;Lcom/b44t/messenger/DcContact;)V

    .line 123
    invoke-virtual {p3}, Lcom/b44t/messenger/DcContact;->getId()I

    move-result p1

    if-ne p1, p4, :cond_2

    const-string p1, "SELF"

    .line 124
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/recipients/Recipient;->setProfileAvatar(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 128
    invoke-virtual {p2}, Lcom/b44t/messenger/DcChat;->getId()I

    move-result p3

    .line 129
    invoke-static {p3}, Lorg/thoughtcrime/securesms/database/Address;->fromChat(I)Lorg/thoughtcrime/securesms/database/Address;

    move-result-object p5

    iput-object p5, p0, Lorg/thoughtcrime/securesms/recipients/Recipient;->address:Lorg/thoughtcrime/securesms/database/Address;

    .line 130
    invoke-virtual {p2}, Lcom/b44t/messenger/DcChat;->isMultiUser()Z

    move-result p5

    if-nez p5, :cond_2

    .line 131
    invoke-static {p1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getAccounts(Landroid/content/Context;)Lcom/b44t/messenger/DcAccounts;

    move-result-object p5

    invoke-virtual {p2}, Lcom/b44t/messenger/DcChat;->getAccountId()I

    move-result p2

    invoke-virtual {p5, p2}, Lcom/b44t/messenger/DcAccounts;->getAccount(I)Lcom/b44t/messenger/DcContext;

    move-result-object p2

    .line 132
    invoke-virtual {p2, p3}, Lcom/b44t/messenger/DcContext;->getChatContacts(I)[I

    move-result-object p3

    .line 133
    array-length p5, p3

    if-lt p5, p4, :cond_2

    const/4 p4, 0x0

    .line 134
    aget p3, p3, p4

    invoke-virtual {p2, p3}, Lcom/b44t/messenger/DcContext;->getContact(I)Lcom/b44t/messenger/DcContact;

    move-result-object p2

    iput-object p2, p0, Lorg/thoughtcrime/securesms/recipients/Recipient;->dcContact:Lcom/b44t/messenger/DcContact;

    .line 135
    invoke-direct {p0, p1, p2}, Lorg/thoughtcrime/securesms/recipients/Recipient;->maybeSetSystemContactPhoto(Landroid/content/Context;Lcom/b44t/messenger/DcContact;)V

    goto :goto_0

    .line 140
    :cond_1
    sget-object p1, Lorg/thoughtcrime/securesms/database/Address;->UNKNOWN:Lorg/thoughtcrime/securesms/database/Address;

    iput-object p1, p0, Lorg/thoughtcrime/securesms/recipients/Recipient;->address:Lorg/thoughtcrime/securesms/database/Address;

    :cond_2
    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/b44t/messenger/DcContact;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    .line 103
    invoke-direct/range {v0 .. v5}, Lorg/thoughtcrime/securesms/recipients/Recipient;-><init>(Landroid/content/Context;Lcom/b44t/messenger/DcChat;Lcom/b44t/messenger/DcContact;Ljava/lang/String;Lcom/b44t/messenger/rpc/VcardContact;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/b44t/messenger/DcContact;Ljava/lang/String;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    .line 107
    invoke-direct/range {v0 .. v5}, Lorg/thoughtcrime/securesms/recipients/Recipient;-><init>(Landroid/content/Context;Lcom/b44t/messenger/DcChat;Lcom/b44t/messenger/DcContact;Ljava/lang/String;Lcom/b44t/messenger/rpc/VcardContact;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/b44t/messenger/rpc/VcardContact;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    .line 99
    invoke-direct/range {v0 .. v5}, Lorg/thoughtcrime/securesms/recipients/Recipient;-><init>(Landroid/content/Context;Lcom/b44t/messenger/DcChat;Lcom/b44t/messenger/DcContact;Ljava/lang/String;Lcom/b44t/messenger/rpc/VcardContact;)V

    return-void
.end method

.method public static from(Landroid/content/Context;Lorg/thoughtcrime/securesms/database/Address;)Lorg/thoughtcrime/securesms/recipients/Recipient;
    .locals 3

    if-eqz p1, :cond_3

    .line 79
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object v0

    .line 80
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/database/Address;->isDcContact()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    new-instance v1, Lorg/thoughtcrime/securesms/recipients/Recipient;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/database/Address;->getDcContactId()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/b44t/messenger/DcContext;->getContact(I)Lcom/b44t/messenger/DcContact;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Lorg/thoughtcrime/securesms/recipients/Recipient;-><init>(Landroid/content/Context;Lcom/b44t/messenger/DcContact;)V

    return-object v1

    .line 82
    :cond_0
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/database/Address;->isDcChat()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    new-instance v1, Lorg/thoughtcrime/securesms/recipients/Recipient;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/database/Address;->getDcChatId()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/b44t/messenger/DcContext;->getChat(I)Lcom/b44t/messenger/DcChat;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Lorg/thoughtcrime/securesms/recipients/Recipient;-><init>(Landroid/content/Context;Lcom/b44t/messenger/DcChat;)V

    return-object v1

    .line 85
    :cond_1
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object v1

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/database/Address;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/b44t/messenger/DcContext;->mayBeValidAddr(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 86
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/database/Address;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/b44t/messenger/DcContext;->lookupContactIdByAddr(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_2

    .line 88
    new-instance v1, Lorg/thoughtcrime/securesms/recipients/Recipient;

    invoke-virtual {v0, p1}, Lcom/b44t/messenger/DcContext;->getContact(I)Lcom/b44t/messenger/DcContact;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Lorg/thoughtcrime/securesms/recipients/Recipient;-><init>(Landroid/content/Context;Lcom/b44t/messenger/DcContact;)V

    return-object v1

    .line 91
    :cond_2
    new-instance p1, Lorg/thoughtcrime/securesms/recipients/Recipient;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/b44t/messenger/DcContext;->getContact(I)Lcom/b44t/messenger/DcContact;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lorg/thoughtcrime/securesms/recipients/Recipient;-><init>(Landroid/content/Context;Lcom/b44t/messenger/DcContact;)V

    return-object p1

    .line 78
    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method public static fromChat(Landroid/content/Context;I)Lorg/thoughtcrime/securesms/recipients/Recipient;
    .locals 2

    .line 72
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object v0

    .line 73
    new-instance v1, Lorg/thoughtcrime/securesms/recipients/Recipient;

    invoke-virtual {v0, p1}, Lcom/b44t/messenger/DcContext;->getMsg(I)Lcom/b44t/messenger/DcMsg;

    move-result-object p1

    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getChatId()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/b44t/messenger/DcContext;->getChat(I)Lcom/b44t/messenger/DcChat;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Lorg/thoughtcrime/securesms/recipients/Recipient;-><init>(Landroid/content/Context;Lcom/b44t/messenger/DcChat;)V

    return-object v1
.end method

.method private maybeSetSystemContactPhoto(Landroid/content/Context;Lcom/b44t/messenger/DcContact;)V
    .locals 2

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/b44t/messenger/DcContact;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/b44t/messenger/DcContact;->getAddr()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/thoughtcrime/securesms/util/Hash;->sha256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 251
    invoke-static {p1, p2}, Lorg/thoughtcrime/securesms/util/Prefs;->getSystemContactPhoto(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 253
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/recipients/Recipient;->setSystemContactPhoto(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method private notifyListeners()V
    .locals 2

    .line 288
    monitor-enter p0

    .line 289
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/recipients/Recipient;->listeners:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 290
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/thoughtcrime/securesms/recipients/RecipientModifiedListener;

    .line 293
    invoke-interface {v1, p0}, Lorg/thoughtcrime/securesms/recipients/RecipientModifiedListener;->onModified(Lorg/thoughtcrime/securesms/recipients/Recipient;)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 290
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method private setSystemContactPhoto(Landroid/net/Uri;)V
    .locals 1

    .line 260
    monitor-enter p0

    .line 261
    :try_start_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/recipients/Recipient;->systemContactPhoto:Landroid/net/Uri;

    invoke-static {p1, v0}, Lorg/thoughtcrime/securesms/util/Util;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 262
    iput-object p1, p0, Lorg/thoughtcrime/securesms/recipients/Recipient;->systemContactPhoto:Landroid/net/Uri;

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 265
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 267
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/recipients/Recipient;->notifyListeners()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 265
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public declared-synchronized addListener(Lorg/thoughtcrime/securesms/recipients/RecipientModifiedListener;)V
    .locals 1

    monitor-enter p0

    .line 182
    :try_start_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/recipients/Recipient;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 273
    :cond_0
    instance-of v0, p1, Lorg/thoughtcrime/securesms/recipients/Recipient;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 275
    :cond_1
    check-cast p1, Lorg/thoughtcrime/securesms/recipients/Recipient;

    .line 277
    iget-object v0, p0, Lorg/thoughtcrime/securesms/recipients/Recipient;->address:Lorg/thoughtcrime/securesms/database/Address;

    iget-object p1, p1, Lorg/thoughtcrime/securesms/recipients/Recipient;->address:Lorg/thoughtcrime/securesms/database/Address;

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/database/Address;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAddress()Lorg/thoughtcrime/securesms/database/Address;
    .locals 1

    .line 162
    iget-object v0, p0, Lorg/thoughtcrime/securesms/recipients/Recipient;->address:Lorg/thoughtcrime/securesms/database/Address;

    return-object v0
.end method

.method public getChat()Lcom/b44t/messenger/DcChat;
    .locals 4

    .line 298
    iget-object v0, p0, Lorg/thoughtcrime/securesms/recipients/Recipient;->dcChat:Lcom/b44t/messenger/DcChat;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/b44t/messenger/DcChat;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/b44t/messenger/DcChat;-><init>(IJ)V

    :goto_0
    return-object v0
.end method

.method public declared-synchronized getContactPhoto(Landroid/content/Context;)Lorg/thoughtcrime/securesms/contacts/avatars/ContactPhoto;
    .locals 4

    monitor-enter p0

    .line 224
    :try_start_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/recipients/Recipient;->dcChat:Lcom/b44t/messenger/DcChat;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 225
    new-instance v0, Lorg/thoughtcrime/securesms/contacts/avatars/GroupRecordContactPhoto;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/recipients/Recipient;->address:Lorg/thoughtcrime/securesms/database/Address;

    iget-object v3, p0, Lorg/thoughtcrime/securesms/recipients/Recipient;->dcChat:Lcom/b44t/messenger/DcChat;

    invoke-direct {v0, p1, v2, v3}, Lorg/thoughtcrime/securesms/contacts/avatars/GroupRecordContactPhoto;-><init>(Landroid/content/Context;Lorg/thoughtcrime/securesms/database/Address;Lcom/b44t/messenger/DcChat;)V

    goto :goto_0

    .line 227
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/recipients/Recipient;->dcContact:Lcom/b44t/messenger/DcContact;

    if-eqz v0, :cond_1

    .line 228
    new-instance v0, Lorg/thoughtcrime/securesms/contacts/avatars/ProfileContactPhoto;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/recipients/Recipient;->address:Lorg/thoughtcrime/securesms/database/Address;

    iget-object v3, p0, Lorg/thoughtcrime/securesms/recipients/Recipient;->dcContact:Lcom/b44t/messenger/DcContact;

    invoke-direct {v0, p1, v2, v3}, Lorg/thoughtcrime/securesms/contacts/avatars/ProfileContactPhoto;-><init>(Landroid/content/Context;Lorg/thoughtcrime/securesms/database/Address;Lcom/b44t/messenger/DcContact;)V

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 232
    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/contacts/avatars/LocalFileContactPhoto;->getPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 233
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_2

    .line 234
    monitor-exit p0

    return-object v0

    .line 238
    :cond_2
    :try_start_1
    iget-object p1, p0, Lorg/thoughtcrime/securesms/recipients/Recipient;->vContact:Lcom/b44t/messenger/rpc/VcardContact;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/b44t/messenger/rpc/VcardContact;->hasProfileImage()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 239
    new-instance p1, Lorg/thoughtcrime/securesms/contacts/avatars/VcardContactPhoto;

    iget-object v0, p0, Lorg/thoughtcrime/securesms/recipients/Recipient;->vContact:Lcom/b44t/messenger/rpc/VcardContact;

    invoke-direct {p1, v0}, Lorg/thoughtcrime/securesms/contacts/avatars/VcardContactPhoto;-><init>(Lcom/b44t/messenger/rpc/VcardContact;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 242
    :cond_3
    :try_start_2
    iget-object p1, p0, Lorg/thoughtcrime/securesms/recipients/Recipient;->systemContactPhoto:Landroid/net/Uri;

    if-eqz p1, :cond_4

    .line 243
    new-instance v0, Lorg/thoughtcrime/securesms/contacts/avatars/SystemContactPhoto;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/recipients/Recipient;->address:Lorg/thoughtcrime/securesms/database/Address;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, p1, v2, v3}, Lorg/thoughtcrime/securesms/contacts/avatars/SystemContactPhoto;-><init>(Lorg/thoughtcrime/securesms/database/Address;Landroid/net/Uri;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 246
    :cond_4
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getDcContact()Lcom/b44t/messenger/DcContact;
    .locals 1

    .line 158
    iget-object v0, p0, Lorg/thoughtcrime/securesms/recipients/Recipient;->dcContact:Lcom/b44t/messenger/DcContact;

    return-object v0
.end method

.method public getFallbackAvatarColor()I
    .locals 4

    .line 195
    iget-object v0, p0, Lorg/thoughtcrime/securesms/recipients/Recipient;->dcChat:Lcom/b44t/messenger/DcChat;

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {v0}, Lcom/b44t/messenger/DcChat;->getColor()I

    move-result v0

    goto :goto_0

    .line 198
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/recipients/Recipient;->dcContact:Lcom/b44t/messenger/DcContact;

    if-eqz v0, :cond_1

    .line 199
    invoke-virtual {v0}, Lcom/b44t/messenger/DcContact;->getColor()I

    move-result v0

    goto :goto_0

    .line 201
    :cond_1
    iget-object v0, p0, Lorg/thoughtcrime/securesms/recipients/Recipient;->vContact:Lcom/b44t/messenger/rpc/VcardContact;

    if-eqz v0, :cond_2

    .line 202
    invoke-virtual {v0}, Lcom/b44t/messenger/rpc/VcardContact;->getColor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_2
    const v0, 0x808080

    .line 204
    :goto_0
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    const/16 v3, 0xff

    invoke-static {v3, v1, v2, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method public declared-synchronized getFallbackAvatarDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 208
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/thoughtcrime/securesms/recipients/Recipient;->getFallbackAvatarDrawable(Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getFallbackAvatarDrawable(Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;
    .locals 2

    monitor-enter p0

    .line 212
    :try_start_0
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/recipients/Recipient;->getFallbackContactPhoto()Lorg/thoughtcrime/securesms/contacts/avatars/GeneratedContactPhoto;

    move-result-object v0

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/recipients/Recipient;->getFallbackAvatarColor()I

    move-result v1

    invoke-virtual {v0, p1, v1, p2}, Lorg/thoughtcrime/securesms/contacts/avatars/GeneratedContactPhoto;->asDrawable(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getFallbackContactPhoto()Lorg/thoughtcrime/securesms/contacts/avatars/GeneratedContactPhoto;
    .locals 2

    monitor-enter p0

    .line 216
    :try_start_0
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/recipients/Recipient;->getName()Ljava/lang/String;

    move-result-object v0

    .line 217
    iget-object v1, p0, Lorg/thoughtcrime/securesms/recipients/Recipient;->profileName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lorg/thoughtcrime/securesms/contacts/avatars/GeneratedContactPhoto;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/recipients/Recipient;->profileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/thoughtcrime/securesms/contacts/avatars/GeneratedContactPhoto;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 218
    :cond_0
    :try_start_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lorg/thoughtcrime/securesms/contacts/avatars/GeneratedContactPhoto;

    invoke-direct {v1, v0}, Lorg/thoughtcrime/securesms/contacts/avatars/GeneratedContactPhoto;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    .line 219
    :cond_1
    :try_start_2
    new-instance v0, Lorg/thoughtcrime/securesms/contacts/avatars/GeneratedContactPhoto;

    const-string v1, "#"

    invoke-direct {v0, v1}, Lorg/thoughtcrime/securesms/contacts/avatars/GeneratedContactPhoto;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 145
    iget-object v0, p0, Lorg/thoughtcrime/securesms/recipients/Recipient;->dcChat:Lcom/b44t/messenger/DcChat;

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {v0}, Lcom/b44t/messenger/DcChat;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 148
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/recipients/Recipient;->dcContact:Lcom/b44t/messenger/DcContact;

    if-eqz v0, :cond_1

    .line 149
    invoke-virtual {v0}, Lcom/b44t/messenger/DcContact;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 151
    :cond_1
    iget-object v0, p0, Lorg/thoughtcrime/securesms/recipients/Recipient;->vContact:Lcom/b44t/messenger/rpc/VcardContact;

    if-eqz v0, :cond_2

    .line 152
    invoke-virtual {v0}, Lcom/b44t/messenger/rpc/VcardContact;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const-string v0, ""

    return-object v0
.end method

.method public getProfileName()Ljava/lang/String;
    .locals 1

    .line 166
    iget-object v0, p0, Lorg/thoughtcrime/securesms/recipients/Recipient;->profileName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 282
    iget-object v0, p0, Lorg/thoughtcrime/securesms/recipients/Recipient;->address:Lorg/thoughtcrime/securesms/database/Address;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/database/Address;->hashCode()I

    move-result v0

    return v0
.end method

.method public isMultiUserRecipient()Z
    .locals 1

    .line 178
    iget-object v0, p0, Lorg/thoughtcrime/securesms/recipients/Recipient;->dcChat:Lcom/b44t/messenger/DcChat;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/b44t/messenger/DcChat;->isMultiUser()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public declared-synchronized removeListener(Lorg/thoughtcrime/securesms/recipients/RecipientModifiedListener;)V
    .locals 1

    monitor-enter p0

    .line 186
    :try_start_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/recipients/Recipient;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setProfileAvatar(Ljava/lang/String;)V
    .locals 0

    .line 170
    monitor-enter p0

    .line 171
    :try_start_0
    iput-object p1, p0, Lorg/thoughtcrime/securesms/recipients/Recipient;->profileAvatar:Ljava/lang/String;

    .line 172
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/recipients/Recipient;->notifyListeners()V

    return-void

    :catchall_0
    move-exception p1

    .line 172
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized toShortString()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 190
    :try_start_0
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/recipients/Recipient;->getName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Recipient{listeners="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/thoughtcrime/securesms/recipients/Recipient;->listeners:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", address="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/recipients/Recipient;->address:Lorg/thoughtcrime/securesms/database/Address;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", customLabel=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/recipients/Recipient;->customLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', systemContactPhoto="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/recipients/Recipient;->systemContactPhoto:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", contactUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/recipients/Recipient;->contactUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", profileName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/recipients/Recipient;->profileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', profileAvatar=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/recipients/Recipient;->profileAvatar:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
