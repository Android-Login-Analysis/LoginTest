.class public Lcom/b44t/messenger/DcMsg;
.super Ljava/lang/Object;
.source "DcMsg.java"


# static fields
.field public static final DC_DOWNLOAD_AVAILABLE:I = 0xa

.field public static final DC_DOWNLOAD_DONE:I = 0x0

.field public static final DC_DOWNLOAD_FAILURE:I = 0x14

.field public static final DC_DOWNLOAD_IN_PROGRESS:I = 0x3e8

.field public static final DC_DOWNLOAD_UNDECIPHERABLE:I = 0x1e

.field public static final DC_INFO_AUTOCRYPT_SETUP_MESSAGE:I = 0x6

.field public static final DC_INFO_EPHEMERAL_TIMER_CHANGED:I = 0xa

.field public static final DC_INFO_GROUP_IMAGE_CHANGED:I = 0x3

.field public static final DC_INFO_GROUP_NAME_CHANGED:I = 0x2

.field public static final DC_INFO_INVALID_UNENCRYPTED_MAIL:I = 0xd

.field public static final DC_INFO_LOCATIONSTREAMING_ENABLED:I = 0x8

.field public static final DC_INFO_LOCATION_ONLY:I = 0x9

.field public static final DC_INFO_MEMBER_ADDED_TO_GROUP:I = 0x4

.field public static final DC_INFO_MEMBER_REMOVED_FROM_GROUP:I = 0x5

.field public static final DC_INFO_PROTECTION_DISABLED:I = 0xc

.field public static final DC_INFO_PROTECTION_ENABLED:I = 0xb

.field public static final DC_INFO_SECURE_JOIN_MESSAGE:I = 0x7

.field public static final DC_INFO_UNKNOWN:I = 0x0

.field public static final DC_INFO_WEBXDC_INFO_MESSAGE:I = 0x20

.field public static final DC_MSG_AUDIO:I = 0x28

.field public static final DC_MSG_FILE:I = 0x3c

.field public static final DC_MSG_GIF:I = 0x15

.field public static final DC_MSG_ID_DAYMARKER:I = 0x9

.field public static final DC_MSG_ID_MARKER1:I = 0x1

.field public static final DC_MSG_IMAGE:I = 0x14

.field public static final DC_MSG_NO_ID:I = 0x0

.field public static final DC_MSG_STICKER:I = 0x17

.field public static final DC_MSG_TEXT:I = 0xa

.field public static final DC_MSG_UNDEFINED:I = 0x0

.field public static final DC_MSG_VCARD:I = 0x5a

.field public static final DC_MSG_VIDEO:I = 0x32

.field public static final DC_MSG_VIDEOCHAT_INVITATION:I = 0x46

.field public static final DC_MSG_VOICE:I = 0x29

.field public static final DC_MSG_WEBXDC:I = 0x50

.field public static final DC_STATE_IN_FRESH:I = 0xa

.field public static final DC_STATE_IN_NOTICED:I = 0xd

.field public static final DC_STATE_IN_SEEN:I = 0x10

.field public static final DC_STATE_OUT_DELIVERED:I = 0x1a

.field public static final DC_STATE_OUT_DRAFT:I = 0x13

.field public static final DC_STATE_OUT_FAILED:I = 0x18

.field public static final DC_STATE_OUT_MDN_RCVD:I = 0x1c

.field public static final DC_STATE_OUT_PENDING:I = 0x14

.field public static final DC_STATE_OUT_PREPARING:I = 0x12

.field public static final DC_STATE_UNDEFINED:I = 0x0

.field public static final DC_VIDEOCHATTYPE_BASICWEBRTC:I = 0x1

.field public static final DC_VIDEOCHATTYPE_UNKNOWN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DcMsg"


# instance fields
.field private msgCPtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-wide p1, p0, Lcom/b44t/messenger/DcMsg;->msgCPtr:J

    return-void
.end method

.method public constructor <init>(Lcom/b44t/messenger/DcContext;I)V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-virtual {p1, p2}, Lcom/b44t/messenger/DcContext;->createMsgCPtr(I)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/b44t/messenger/DcMsg;->msgCPtr:J

    return-void
.end method

.method public static getMessagePosition(Lcom/b44t/messenger/DcMsg;Lcom/b44t/messenger/DcContext;)I
    .locals 2

    .line 104
    invoke-virtual {p0}, Lcom/b44t/messenger/DcMsg;->getChatId()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Lcom/b44t/messenger/DcContext;->getChatMsgs(III)[I

    move-result-object p1

    .line 106
    invoke-virtual {p0}, Lcom/b44t/messenger/DcMsg;->getId()I

    move-result p0

    .line 107
    :goto_0
    array-length v0, p1

    if-ge v1, v0, :cond_1

    .line 108
    aget v0, p1, v1

    if-ne v0, p0, :cond_0

    .line 109
    array-length p0, p1

    add-int/lit8 p0, p0, -0x1

    sub-int/2addr p0, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    :goto_1
    return p0
.end method

.method private native getParentCPtr()J
.end method

.method private native getQuotedMsgCPtr()J
.end method

.method private native getSummaryCPtr(J)J
.end method

.method private native getWebxdcInfoJson()Ljava/lang/String;
.end method

.method public static msgSetToIds(Ljava/util/Set;)[I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/b44t/messenger/DcMsg;",
            ">;)[I"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    new-array p0, v0, [I

    return-object p0

    .line 198
    :cond_0
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 200
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/b44t/messenger/DcMsg;

    add-int/lit8 v3, v0, 0x1

    .line 201
    invoke-virtual {v2}, Lcom/b44t/messenger/DcMsg;->getId()I

    move-result v2

    aput v2, v1, v0

    move v0, v3

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private native setQuoteCPtr(J)V
.end method

.method private native unrefMsgCPtr()V
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 92
    instance-of v1, p1, Lcom/b44t/messenger/DcMsg;

    if-nez v1, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    check-cast p1, Lcom/b44t/messenger/DcMsg;

    .line 97
    invoke-virtual {p0}, Lcom/b44t/messenger/DcMsg;->getId()I

    move-result v1

    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getId()I

    move-result p1

    if-ne v1, p1, :cond_1

    invoke-virtual {p0}, Lcom/b44t/messenger/DcMsg;->getId()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 80
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 81
    invoke-direct {p0}, Lcom/b44t/messenger/DcMsg;->unrefMsgCPtr()V

    const-wide/16 v0, 0x0

    .line 82
    iput-wide v0, p0, Lcom/b44t/messenger/DcMsg;->msgCPtr:J

    return-void
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .line 215
    invoke-virtual {p0}, Lcom/b44t/messenger/DcMsg;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public native getChatId()I
.end method

.method public getDateReceived()J
    .locals 2

    .line 219
    invoke-virtual {p0}, Lcom/b44t/messenger/DcMsg;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDisplayBody()Ljava/lang/String;
    .locals 1

    .line 211
    invoke-virtual {p0}, Lcom/b44t/messenger/DcMsg;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public native getDownloadState()I
.end method

.method public native getDuration()I
.end method

.method public native getError()Ljava/lang/String;
.end method

.method public native getFile()Ljava/lang/String;
.end method

.method public getFileAsFile()Ljava/io/File;
    .locals 2

    .line 188
    invoke-virtual {p0}, Lcom/b44t/messenger/DcMsg;->getFile()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 190
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/b44t/messenger/DcMsg;->getFile()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 189
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "expected a file to be present."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public native getFilebytes()J
.end method

.method public native getFilemime()Ljava/lang/String;
.end method

.method public native getFilename()Ljava/lang/String;
.end method

.method public native getFromId()I
.end method

.method public native getHeight(I)I
.end method

.method public native getId()I
.end method

.method public native getInfoType()I
.end method

.method public native getOverrideSenderName()Ljava/lang/String;
.end method

.method public getParent()Lcom/b44t/messenger/DcMsg;
    .locals 5

    .line 183
    invoke-direct {p0}, Lcom/b44t/messenger/DcMsg;->getParentCPtr()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 184
    new-instance v2, Lcom/b44t/messenger/DcMsg;

    invoke-direct {v2, v0, v1}, Lcom/b44t/messenger/DcMsg;-><init>(J)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2
.end method

.method public getQuotedMsg()Lcom/b44t/messenger/DcMsg;
    .locals 5

    .line 178
    invoke-direct {p0}, Lcom/b44t/messenger/DcMsg;->getQuotedMsgCPtr()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 179
    new-instance v2, Lcom/b44t/messenger/DcMsg;

    invoke-direct {v2, v0, v1}, Lcom/b44t/messenger/DcMsg;-><init>(J)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2
.end method

.method public native getQuotedText()Ljava/lang/String;
.end method

.method public getSenderName(Lcom/b44t/messenger/DcContact;Z)Ljava/lang/String;
    .locals 1

    .line 169
    invoke-virtual {p0}, Lcom/b44t/messenger/DcMsg;->getOverrideSenderName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 171
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_0

    const-string/jumbo p2, "~"

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 173
    :cond_1
    invoke-virtual {p1}, Lcom/b44t/messenger/DcContact;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public native getSetupCodeBegin()Ljava/lang/String;
.end method

.method public native getSortTimestamp()J
.end method

.method public native getState()I
.end method

.method public native getSubject()Ljava/lang/String;
.end method

.method public getSummary(Lcom/b44t/messenger/DcChat;)Lcom/b44t/messenger/DcLot;
    .locals 3

    .line 133
    new-instance v0, Lcom/b44t/messenger/DcLot;

    invoke-virtual {p1}, Lcom/b44t/messenger/DcChat;->getChatCPtr()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/b44t/messenger/DcMsg;->getSummaryCPtr(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/b44t/messenger/DcLot;-><init>(J)V

    return-object v0
.end method

.method public native getSummarytext(I)Ljava/lang/String;
.end method

.method public native getText()Ljava/lang/String;
.end method

.method public native getTimestamp()J
.end method

.method public native getType()I
.end method

.method public native getVideochatType()I
.end method

.method public native getVideochatUrl()Ljava/lang/String;
.end method

.method public native getWebxdcBlob(Ljava/lang/String;)[B
.end method

.method public getWebxdcInfo()Lorg/json/JSONObject;
    .locals 2

    .line 144
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/b44t/messenger/DcMsg;->getWebxdcInfoJson()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 146
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 147
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    return-object v0
.end method

.method public native getWidth(I)I
.end method

.method public native hasDeviatingTimestamp()Z
.end method

.method public hasFile()Z
    .locals 1

    .line 136
    invoke-virtual {p0}, Lcom/b44t/messenger/DcMsg;->getFile()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public native hasHtml()Z
.end method

.method public native hasLocation()Z
.end method

.method public hashCode()I
    .locals 1

    .line 87
    invoke-virtual {p0}, Lcom/b44t/messenger/DcMsg;->getId()I

    move-result v0

    return v0
.end method

.method public isDelivered()Z
    .locals 2

    .line 235
    invoke-virtual {p0}, Lcom/b44t/messenger/DcMsg;->getState()I

    move-result v0

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFailed()Z
    .locals 2

    .line 223
    invoke-virtual {p0}, Lcom/b44t/messenger/DcMsg;->getState()I

    move-result v0

    const/16 v1, 0x18

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/b44t/messenger/DcMsg;->getError()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public native isForwarded()Z
.end method

.method public native isIncreation()Z
.end method

.method public native isInfo()Z
.end method

.method public isOk()Z
    .locals 5

    .line 75
    iget-wide v0, p0, Lcom/b44t/messenger/DcMsg;->msgCPtr:J

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

.method public isOutgoing()Z
    .locals 2

    .line 207
    invoke-virtual {p0}, Lcom/b44t/messenger/DcMsg;->getFromId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isPending()Z
    .locals 2

    .line 232
    invoke-virtual {p0}, Lcom/b44t/messenger/DcMsg;->getState()I

    move-result v0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPreparing()Z
    .locals 2

    .line 226
    invoke-virtual {p0}, Lcom/b44t/messenger/DcMsg;->getState()I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRemoteRead()Z
    .locals 2

    .line 238
    invoke-virtual {p0}, Lcom/b44t/messenger/DcMsg;->getState()I

    move-result v0

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSecure()Z
    .locals 1

    .line 229
    invoke-virtual {p0}, Lcom/b44t/messenger/DcMsg;->showPadlock()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSeen()Z
    .locals 2

    .line 241
    invoke-virtual {p0}, Lcom/b44t/messenger/DcMsg;->getState()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public native isSetupMessage()Z
.end method

.method public native lateFilingMediaSize(III)V
.end method

.method public native setDimension(II)V
.end method

.method public native setDuration(I)V
.end method

.method public native setFile(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public native setLocation(FF)V
.end method

.method public setQuote(Lcom/b44t/messenger/DcMsg;)V
    .locals 2

    .line 163
    iget-wide v0, p1, Lcom/b44t/messenger/DcMsg;->msgCPtr:J

    invoke-direct {p0, v0, v1}, Lcom/b44t/messenger/DcMsg;->setQuoteCPtr(J)V

    return-void
.end method

.method public native setText(Ljava/lang/String;)V
.end method

.method public native showPadlock()I
.end method
