.class public Lcom/b44t/messenger/DcChat;
.super Ljava/lang/Object;
.source "DcChat.java"


# static fields
.field public static final DC_CHAT_ID_ALLDONE_HINT:I = 0x7

.field public static final DC_CHAT_ID_ARCHIVED_LINK:I = 0x6

.field public static final DC_CHAT_ID_LAST_SPECIAL:I = 0x9

.field public static final DC_CHAT_NO_CHAT:I = 0x0

.field public static final DC_CHAT_TYPE_BROADCAST:I = 0xa0

.field public static final DC_CHAT_TYPE_GROUP:I = 0x78

.field public static final DC_CHAT_TYPE_MAILINGLIST:I = 0x8c

.field public static final DC_CHAT_TYPE_SINGLE:I = 0x64

.field public static final DC_CHAT_TYPE_UNDEFINED:I = 0x0

.field public static final DC_CHAT_VISIBILITY_ARCHIVED:I = 0x1

.field public static final DC_CHAT_VISIBILITY_NORMAL:I = 0x0

.field public static final DC_CHAT_VISIBILITY_PINNED:I = 0x2


# instance fields
.field private accountId:I

.field private chatCPtr:J


# direct methods
.method public constructor <init>(IJ)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lcom/b44t/messenger/DcChat;->accountId:I

    .line 24
    iput-wide p2, p0, Lcom/b44t/messenger/DcChat;->chatCPtr:J

    return-void
.end method

.method private native unrefChatCPtr()V
.end method


# virtual methods
.method public native canSend()Z
.end method

.method public canVideochat()Z
    .locals 1

    .line 68
    invoke-virtual {p0}, Lcom/b44t/messenger/DcChat;->canSend()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/b44t/messenger/DcChat;->isSelfTalk()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

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

    .line 28
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 29
    invoke-direct {p0}, Lcom/b44t/messenger/DcChat;->unrefChatCPtr()V

    const-wide/16 v0, 0x0

    .line 30
    iput-wide v0, p0, Lcom/b44t/messenger/DcChat;->chatCPtr:J

    return-void
.end method

.method public getAccountId()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/b44t/messenger/DcChat;->accountId:I

    return v0
.end method

.method public getChatCPtr()J
    .locals 2

    .line 79
    iget-wide v0, p0, Lcom/b44t/messenger/DcChat;->chatCPtr:J

    return-wide v0
.end method

.method public native getColor()I
.end method

.method public native getId()I
.end method

.method public native getMailinglistAddr()Ljava/lang/String;
.end method

.method public native getName()Ljava/lang/String;
.end method

.method public native getProfileImage()Ljava/lang/String;
.end method

.method public native getType()I
.end method

.method public native getVisibility()I
.end method

.method public isBroadcast()Z
    .locals 2

    .line 64
    invoke-virtual {p0}, Lcom/b44t/messenger/DcChat;->getType()I

    move-result v0

    const/16 v1, 0xa0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public native isContactRequest()Z
.end method

.method public native isDeviceTalk()Z
.end method

.method public isHalfBlocked()Z
    .locals 1

    .line 72
    invoke-virtual {p0}, Lcom/b44t/messenger/DcChat;->isProtectionBroken()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/b44t/messenger/DcChat;->isContactRequest()Z

    move-result v0

    if-eqz v0, :cond_0

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

.method public isMailingList()Z
    .locals 2

    .line 60
    invoke-virtual {p0}, Lcom/b44t/messenger/DcChat;->getType()I

    move-result v0

    const/16 v1, 0x8c

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMultiUser()Z
    .locals 2

    .line 55
    invoke-virtual {p0}, Lcom/b44t/messenger/DcChat;->getType()I

    move-result v0

    const/16 v1, 0x78

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8c

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa0

    if-ne v0, v1, :cond_0

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

.method public native isMuted()Z
.end method

.method public native isProtected()Z
.end method

.method public native isProtectionBroken()Z
.end method

.method public native isSelfTalk()Z
.end method

.method public native isSendingLocations()Z
.end method

.method public native isUnpromoted()Z
.end method
