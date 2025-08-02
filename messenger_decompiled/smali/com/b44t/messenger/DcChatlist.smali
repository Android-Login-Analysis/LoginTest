.class public Lcom/b44t/messenger/DcChatlist;
.super Ljava/lang/Object;
.source "DcChatlist.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b44t/messenger/DcChatlist$Item;
    }
.end annotation


# instance fields
.field private accountId:I

.field private chatlistCPtr:J


# direct methods
.method public constructor <init>(IJ)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Lcom/b44t/messenger/DcChatlist;->accountId:I

    .line 9
    iput-wide p2, p0, Lcom/b44t/messenger/DcChatlist;->chatlistCPtr:J

    return-void
.end method

.method private native getChatCPtr(I)J
.end method

.method private native getMsgCPtr(I)J
.end method

.method private native getSummaryCPtr(IJ)J
.end method

.method private native unrefChatlistCPtr()V
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 13
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 14
    invoke-direct {p0}, Lcom/b44t/messenger/DcChatlist;->unrefChatlistCPtr()V

    const-wide/16 v0, 0x0

    .line 15
    iput-wide v0, p0, Lcom/b44t/messenger/DcChatlist;->chatlistCPtr:J

    return-void
.end method

.method public getAccountId()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/b44t/messenger/DcChatlist;->accountId:I

    return v0
.end method

.method public getChat(I)Lcom/b44t/messenger/DcChat;
    .locals 4

    .line 21
    new-instance v0, Lcom/b44t/messenger/DcChat;

    iget v1, p0, Lcom/b44t/messenger/DcChatlist;->accountId:I

    invoke-direct {p0, p1}, Lcom/b44t/messenger/DcChatlist;->getChatCPtr(I)J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/b44t/messenger/DcChat;-><init>(IJ)V

    return-object v0
.end method

.method public native getChatId(I)I
.end method

.method public native getCnt()I
.end method

.method public getItem(I)Lcom/b44t/messenger/DcChatlist$Item;
    .locals 2

    .line 33
    new-instance v0, Lcom/b44t/messenger/DcChatlist$Item;

    invoke-direct {v0, p0}, Lcom/b44t/messenger/DcChatlist$Item;-><init>(Lcom/b44t/messenger/DcChatlist;)V

    const/4 v1, 0x0

    .line 34
    invoke-virtual {p0, p1, v1}, Lcom/b44t/messenger/DcChatlist;->getSummary(ILcom/b44t/messenger/DcChat;)Lcom/b44t/messenger/DcLot;

    move-result-object v1

    iput-object v1, v0, Lcom/b44t/messenger/DcChatlist$Item;->summary:Lcom/b44t/messenger/DcLot;

    .line 35
    invoke-virtual {p0, p1}, Lcom/b44t/messenger/DcChatlist;->getMsgId(I)I

    move-result v1

    iput v1, v0, Lcom/b44t/messenger/DcChatlist$Item;->msgId:I

    .line 36
    invoke-virtual {p0, p1}, Lcom/b44t/messenger/DcChatlist;->getChatId(I)I

    move-result p1

    iput p1, v0, Lcom/b44t/messenger/DcChatlist$Item;->chatId:I

    return-object v0
.end method

.method public getMsg(I)Lcom/b44t/messenger/DcMsg;
    .locals 3

    .line 23
    new-instance v0, Lcom/b44t/messenger/DcMsg;

    invoke-direct {p0, p1}, Lcom/b44t/messenger/DcChatlist;->getMsgCPtr(I)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/b44t/messenger/DcMsg;-><init>(J)V

    return-object v0
.end method

.method public native getMsgId(I)I
.end method

.method public getSummary(ILcom/b44t/messenger/DcChat;)Lcom/b44t/messenger/DcLot;
    .locals 3

    .line 24
    new-instance v0, Lcom/b44t/messenger/DcLot;

    if-nez p2, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/b44t/messenger/DcChat;->getChatCPtr()J

    move-result-wide v1

    :goto_0
    invoke-direct {p0, p1, v1, v2}, Lcom/b44t/messenger/DcChatlist;->getSummaryCPtr(IJ)J

    move-result-wide p1

    invoke-direct {v0, p1, p2}, Lcom/b44t/messenger/DcLot;-><init>(J)V

    return-object v0
.end method
