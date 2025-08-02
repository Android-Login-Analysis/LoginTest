.class public Lcom/b44t/messenger/DcContext;
.super Ljava/lang/Object;
.source "DcContext.java"


# static fields
.field public static final DC_CONNECTIVITY_CONNECTED:I = 0xfa0

.field public static final DC_CONNECTIVITY_CONNECTING:I = 0x7d0

.field public static final DC_CONNECTIVITY_NOT_CONNECTED:I = 0x3e8

.field public static final DC_CONNECTIVITY_WORKING:I = 0xbb8

.field public static final DC_DECISION_BLOCK:I = 0x1

.field public static final DC_DECISION_NOT_NOW:I = 0x2

.field public static final DC_DECISION_START_CHAT:I = 0x0

.field public static final DC_EVENT_CHAT_EPHEMERAL_TIMER_MODIFIED:I = 0x7e5

.field public static final DC_EVENT_CHAT_MODIFIED:I = 0x7e4

.field public static final DC_EVENT_CONFIGURE_PROGRESS:I = 0x7f9

.field public static final DC_EVENT_CONNECTIVITY_CHANGED:I = 0x834

.field public static final DC_EVENT_CONTACTS_CHANGED:I = 0x7ee

.field public static final DC_EVENT_ERROR:I = 0x190

.field public static final DC_EVENT_ERROR_SELF_NOT_IN_GROUP:I = 0x19a

.field public static final DC_EVENT_IMEX_FILE_WRITTEN:I = 0x804

.field public static final DC_EVENT_IMEX_PROGRESS:I = 0x803

.field public static final DC_EVENT_INCOMING_MSG:I = 0x7d5

.field public static final DC_EVENT_INFO:I = 0x64

.field public static final DC_EVENT_LOCATION_CHANGED:I = 0x7f3

.field public static final DC_EVENT_MSGS_CHANGED:I = 0x7d0

.field public static final DC_EVENT_MSGS_NOTICED:I = 0x7d8

.field public static final DC_EVENT_MSG_DELIVERED:I = 0x7da

.field public static final DC_EVENT_MSG_FAILED:I = 0x7dc

.field public static final DC_EVENT_MSG_READ:I = 0x7df

.field public static final DC_EVENT_REACTIONS_CHANGED:I = 0x7d1

.field public static final DC_EVENT_SECUREJOIN_INVITER_PROGRESS:I = 0x80c

.field public static final DC_EVENT_SECUREJOIN_JOINER_PROGRESS:I = 0x80d

.field public static final DC_EVENT_SELFAVATAR_CHANGED:I = 0x83e

.field public static final DC_EVENT_WARNING:I = 0x12c

.field public static final DC_EVENT_WEBXDC_INSTANCE_DELETED:I = 0x849

.field public static final DC_EVENT_WEBXDC_REALTIME_DATA:I = 0x866

.field public static final DC_EVENT_WEBXDC_STATUS_UPDATE:I = 0x848

.field public static final DC_GCL_ADD_ALLDONE_HINT:I = 0x4

.field public static final DC_GCL_ADD_SELF:I = 0x2

.field public static final DC_GCL_ARCHIVED_ONLY:I = 0x1

.field public static final DC_GCL_FOR_FORWARDING:I = 0x8

.field public static final DC_GCL_NO_SPECIALS:I = 0x2

.field public static final DC_GCL_VERIFIED_ONLY:I = 0x1

.field public static final DC_GCM_ADDDAYMARKER:I = 0x1

.field public static final DC_IMEX_EXPORT_BACKUP:I = 0xb

.field public static final DC_IMEX_EXPORT_SELF_KEYS:I = 0x1

.field public static final DC_IMEX_IMPORT_BACKUP:I = 0xc

.field public static final DC_IMEX_IMPORT_SELF_KEYS:I = 0x2

.field public static final DC_LP_AUTH_NORMAL:I = 0x4

.field public static final DC_LP_AUTH_OAUTH2:I = 0x2

.field public static final DC_MEDIA_QUALITY_BALANCED:I = 0x0

.field public static final DC_MEDIA_QUALITY_WORSE:I = 0x1

.field public static final DC_PREF_DEFAULT_MDNS_ENABLED:I = 0x1

.field public static final DC_PREF_DEFAULT_TRIM_ENABLED:I = 0x0

.field public static final DC_PREF_DEFAULT_TRIM_LENGTH:I = 0x1f4

.field public static final DC_QR_ACCOUNT:I = 0xfa

.field public static final DC_QR_ADDR:I = 0x140

.field public static final DC_QR_ASK_VERIFYCONTACT:I = 0xc8

.field public static final DC_QR_ASK_VERIFYGROUP:I = 0xca

.field public static final DC_QR_BACKUP:I = 0xfb

.field public static final DC_QR_ERROR:I = 0x190

.field public static final DC_QR_FPR_MISMATCH:I = 0xdc

.field public static final DC_QR_FPR_OK:I = 0xd2

.field public static final DC_QR_FPR_WITHOUT_ADDR:I = 0xe6

.field public static final DC_QR_LOGIN:I = 0x208

.field public static final DC_QR_REVIVE_VERIFYCONTACT:I = 0x1fe

.field public static final DC_QR_REVIVE_VERIFYGROUP:I = 0x200

.field public static final DC_QR_TEXT:I = 0x14a

.field public static final DC_QR_URL:I = 0x14c

.field public static final DC_QR_WEBRTC:I = 0x104

.field public static final DC_QR_WITHDRAW_VERIFYCONTACT:I = 0x1f4

.field public static final DC_QR_WITHDRAW_VERIFYGROUP:I = 0x1f6

.field public static final DC_SHOW_EMAILS_ACCEPTED_CONTACTS:I = 0x1

.field public static final DC_SHOW_EMAILS_ALL:I = 0x2

.field public static final DC_SHOW_EMAILS_OFF:I = 0x0

.field public static final DC_SOCKET_AUTO:I = 0x0

.field public static final DC_SOCKET_PLAIN:I = 0x3

.field public static final DC_SOCKET_SSL:I = 0x1

.field public static final DC_SOCKET_STARTTLS:I = 0x2


# instance fields
.field private contextCPtr:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-wide p1, p0, Lcom/b44t/messenger/DcContext;->contextCPtr:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/b44t/messenger/DcContext;->createContextCPtr(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/b44t/messenger/DcContext;->contextCPtr:J

    return-void
.end method

.method private native checkQrCPtr(Ljava/lang/String;)J
.end method

.method private native createContextCPtr(Ljava/lang/String;Ljava/lang/String;)J
.end method

.method private native getChatCPtr(I)J
.end method

.method private native getChatlistCPtr(ILjava/lang/String;I)J
.end method

.method private native getContactCPtr(I)J
.end method

.method private native getDraftCPtr(I)J
.end method

.method private native getEventEmitterCPtr()J
.end method

.method private native getMsgCPtr(I)J
.end method

.method private native getProviderFromEmailWithDnsCPtr(Ljava/lang/String;)J
.end method

.method private native newBackupProviderCPtr()J
.end method

.method private native unrefContextCPtr()V
.end method


# virtual methods
.method public native acceptChat(I)V
.end method

.method public native addAddressBook(Ljava/lang/String;)I
.end method

.method public native addContactToChat(II)I
.end method

.method public native addDeviceMsg(Ljava/lang/String;Lcom/b44t/messenger/DcMsg;)I
.end method

.method public assumeMultiDevice()V
    .locals 3

    .line 249
    invoke-virtual {p0}, Lcom/b44t/messenger/DcContext;->isChatmail()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "delete_server_after"

    invoke-virtual {p0, v0}, Lcom/b44t/messenger/DcContext;->getConfigInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 250
    invoke-virtual {p0, v0, v1}, Lcom/b44t/messenger/DcContext;->setConfigInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public assumeSingleDevice()V
    .locals 2

    .line 242
    invoke-virtual {p0}, Lcom/b44t/messenger/DcContext;->isChatmail()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "delete_server_after"

    const/4 v1, 0x1

    .line 243
    invoke-virtual {p0, v0, v1}, Lcom/b44t/messenger/DcContext;->setConfigInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public native blockChat(I)V
.end method

.method public native blockContact(II)V
.end method

.method public checkQr(Ljava/lang/String;)Lcom/b44t/messenger/DcLot;
    .locals 3

    .line 209
    new-instance v0, Lcom/b44t/messenger/DcLot;

    invoke-direct {p0, p1}, Lcom/b44t/messenger/DcContext;->checkQrCPtr(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/b44t/messenger/DcLot;-><init>(J)V

    return-object v0
.end method

.method public native configure()V
.end method

.method public native continueKeyTransfer(ILjava/lang/String;)Z
.end method

.method public native createBroadcastList()I
.end method

.method public native createChatByContactId(I)I
.end method

.method public native createContact(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public native createGroupChat(ZLjava/lang/String;)I
.end method

.method public native createMsgCPtr(I)J
.end method

.method public native deleteChat(I)V
.end method

.method public native deleteContact(I)Z
.end method

.method public native deleteMsgs([I)V
.end method

.method public native downloadFullMsg(I)V
.end method

.method public native estimateDeletionCount(ZJ)I
.end method

.method protected finalize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 106
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 107
    iget-wide v0, p0, Lcom/b44t/messenger/DcContext;->contextCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 108
    invoke-direct {p0}, Lcom/b44t/messenger/DcContext;->unrefContextCPtr()V

    .line 109
    iput-wide v2, p0, Lcom/b44t/messenger/DcContext;->contextCPtr:J

    :cond_0
    return-void
.end method

.method public native forwardMsgs([II)V
.end method

.method public native getAccountId()I
.end method

.method public native getBlobdir()Ljava/lang/String;
.end method

.method public native getBlockedContacts()[I
.end method

.method public getChat(I)Lcom/b44t/messenger/DcChat;
    .locals 4

    .line 162
    new-instance v0, Lcom/b44t/messenger/DcChat;

    invoke-virtual {p0}, Lcom/b44t/messenger/DcContext;->getAccountId()I

    move-result v1

    invoke-direct {p0, p1}, Lcom/b44t/messenger/DcContext;->getChatCPtr(I)J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/b44t/messenger/DcChat;-><init>(IJ)V

    return-object v0
.end method

.method public native getChatContacts(I)[I
.end method

.method public native getChatEncrInfo(I)Ljava/lang/String;
.end method

.method public native getChatEphemeralTimer(I)I
.end method

.method public native getChatIdByContactId(I)I
.end method

.method public native getChatMedia(IIII)[I
.end method

.method public native getChatMsgs(III)[I
.end method

.method public getChatlist(ILjava/lang/String;I)Lcom/b44t/messenger/DcChatlist;
    .locals 2

    .line 161
    new-instance v0, Lcom/b44t/messenger/DcChatlist;

    invoke-virtual {p0}, Lcom/b44t/messenger/DcContext;->getAccountId()I

    move-result v1

    invoke-direct {p0, p1, p2, p3}, Lcom/b44t/messenger/DcContext;->getChatlistCPtr(ILjava/lang/String;I)J

    move-result-wide p1

    invoke-direct {v0, v1, p1, p2}, Lcom/b44t/messenger/DcChatlist;-><init>(IJ)V

    return-object v0
.end method

.method public native getConfig(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public getConfigInt(Ljava/lang/String;)I
    .locals 0

    .line 140
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/b44t/messenger/DcContext;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public native getConnectivity()I
.end method

.method public native getConnectivityHtml()Ljava/lang/String;
.end method

.method public getContact(I)Lcom/b44t/messenger/DcContact;
    .locals 3

    .line 155
    new-instance v0, Lcom/b44t/messenger/DcContact;

    invoke-direct {p0, p1}, Lcom/b44t/messenger/DcContext;->getContactCPtr(I)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/b44t/messenger/DcContact;-><init>(J)V

    return-object v0
.end method

.method public native getContactEncrInfo(I)Ljava/lang/String;
.end method

.method public native getContacts(ILjava/lang/String;)[I
.end method

.method public getDraft(I)Lcom/b44t/messenger/DcMsg;
    .locals 3

    .line 175
    new-instance v0, Lcom/b44t/messenger/DcMsg;

    invoke-direct {p0, p1}, Lcom/b44t/messenger/DcContext;->getDraftCPtr(I)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/b44t/messenger/DcMsg;-><init>(J)V

    return-object v0
.end method

.method public getEventEmitter()Lcom/b44t/messenger/DcEventEmitter;
    .locals 3

    .line 116
    new-instance v0, Lcom/b44t/messenger/DcEventEmitter;

    invoke-direct {p0}, Lcom/b44t/messenger/DcContext;->getEventEmitterCPtr()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/b44t/messenger/DcEventEmitter;-><init>(J)V

    return-object v0
.end method

.method public native getFreshMsgCount(I)I
.end method

.method public native getFreshMsgs()[I
.end method

.method public native getInfo()Ljava/lang/String;
.end method

.method public native getLastError()Ljava/lang/String;
.end method

.method public getMsg(I)Lcom/b44t/messenger/DcMsg;
    .locals 3

    .line 190
    new-instance v0, Lcom/b44t/messenger/DcMsg;

    invoke-direct {p0, p1}, Lcom/b44t/messenger/DcContext;->getMsgCPtr(I)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/b44t/messenger/DcMsg;-><init>(J)V

    return-object v0
.end method

.method public native getMsgHtml(I)Ljava/lang/String;
.end method

.method public native getMsgInfo(I)Ljava/lang/String;
.end method

.method public getNameNAddr()Ljava/lang/String;
    .locals 4

    const-string v0, "displayname"

    .line 218
    invoke-virtual {p0, v0}, Lcom/b44t/messenger/DcContext;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "addr"

    .line 219
    invoke-virtual {p0, v1}, Lcom/b44t/messenger/DcContext;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 222
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v0, "%s (%s)"

    .line 223
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 224
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, ""

    .line 228
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/b44t/messenger/DcContext;->isConfigured()I

    move-result v0

    if-nez v0, :cond_3

    .line 229
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (not configured)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 232
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public native getNextMedia(IIIII)I
.end method

.method public native getOauth2Url(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public getProviderFromEmailWithDns(Ljava/lang/String;)Lcom/b44t/messenger/DcProvider;
    .locals 4

    .line 215
    invoke-direct {p0, p1}, Lcom/b44t/messenger/DcContext;->getProviderFromEmailWithDnsCPtr(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    new-instance p1, Lcom/b44t/messenger/DcProvider;

    invoke-direct {p1, v0, v1}, Lcom/b44t/messenger/DcProvider;-><init>(J)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public native getSecurejoinQr(I)Ljava/lang/String;
.end method

.method public native getSecurejoinQrSvg(I)Ljava/lang/String;
.end method

.method public native getWebxdcStatusUpdates(II)Ljava/lang/String;
.end method

.method public native imex(ILjava/lang/String;)V
.end method

.method public native imexHasBackup(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public native initWebxdcIntegration(I)I
.end method

.method public native initiateKeyTransfer()Ljava/lang/String;
.end method

.method public isChatmail()Z
    .locals 2

    const-string v0, "is_chatmail"

    .line 236
    invoke-virtual {p0, v0}, Lcom/b44t/messenger/DcContext;->getConfigInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public native isConfigured()I
.end method

.method public native isContactInChat(II)Z
.end method

.method public isOk()Z
    .locals 5

    .line 101
    iget-wide v0, p0, Lcom/b44t/messenger/DcContext;->contextCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public native isOpen()Z
.end method

.method public native isSendingLocationsToChat(I)Z
.end method

.method public native joinSecurejoin(Ljava/lang/String;)I
.end method

.method public native lookupContactIdByAddr(Ljava/lang/String;)I
.end method

.method public native marknoticedChat(I)V
.end method

.method public native markseenMsgs([I)V
.end method

.method public native mayBeValidAddr(Ljava/lang/String;)Z
.end method

.method public native maybeNetwork()V
.end method

.method public newBackupProvider()Lcom/b44t/messenger/DcBackupProvider;
    .locals 3

    .line 149
    new-instance v0, Lcom/b44t/messenger/DcBackupProvider;

    invoke-direct {p0}, Lcom/b44t/messenger/DcContext;->newBackupProviderCPtr()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/b44t/messenger/DcBackupProvider;-><init>(J)V

    return-object v0
.end method

.method public native open(Ljava/lang/String;)Z
.end method

.method public native prepareMsg(ILcom/b44t/messenger/DcMsg;)I
.end method

.method public native receiveBackup(Ljava/lang/String;)Z
.end method

.method public native removeContactFromChat(II)I
.end method

.method public native resendMsgs([I)Z
.end method

.method public native searchMsgs(ILjava/lang/String;)[I
.end method

.method public native sendLocationsToChat(II)V
.end method

.method public native sendMsg(ILcom/b44t/messenger/DcMsg;)I
.end method

.method public native sendTextMsg(ILjava/lang/String;)I
.end method

.method public native sendVideochatInvitation(I)I
.end method

.method public native sendWebxdcStatusUpdate(ILjava/lang/String;Ljava/lang/String;)Z
.end method

.method public native setChatEphemeralTimer(II)Z
.end method

.method public native setChatMuteDuration(IJ)Z
.end method

.method public native setChatName(ILjava/lang/String;)I
.end method

.method public native setChatProfileImage(ILjava/lang/String;)I
.end method

.method public native setChatVisibility(II)V
.end method

.method public native setConfig(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public native setConfigFromQr(Ljava/lang/String;)Z
.end method

.method public setConfigInt(Ljava/lang/String;I)V
    .locals 0

    .line 137
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/b44t/messenger/DcContext;->setConfig(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public native setDraft(ILcom/b44t/messenger/DcMsg;)V
.end method

.method public native setLocation(FFF)Z
.end method

.method public native setStockTranslation(ILjava/lang/String;)V
.end method

.method public native setWebxdcIntegration(Ljava/lang/String;)V
.end method

.method public native startIo()V
.end method

.method public native stopIo()V
.end method

.method public native stopOngoingProcess()V
.end method

.method public native wasDeviceMsgEverAdded(Ljava/lang/String;)Z
.end method
