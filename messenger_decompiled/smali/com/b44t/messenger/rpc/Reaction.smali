.class public Lcom/b44t/messenger/rpc/Reaction;
.super Ljava/lang/Object;
.source "Reaction.java"


# instance fields
.field private final count:I

.field private final emoji:Ljava/lang/String;

.field private final isFromSelf:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/b44t/messenger/rpc/Reaction;->emoji:Ljava/lang/String;

    .line 15
    iput p2, p0, Lcom/b44t/messenger/rpc/Reaction;->count:I

    .line 16
    iput-boolean p3, p0, Lcom/b44t/messenger/rpc/Reaction;->isFromSelf:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 33
    instance-of v0, p1, Lcom/b44t/messenger/rpc/Reaction;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 34
    check-cast p1, Lcom/b44t/messenger/rpc/Reaction;

    .line 35
    iget-object v0, p0, Lcom/b44t/messenger/rpc/Reaction;->emoji:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/b44t/messenger/rpc/Reaction;->getEmoji()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/b44t/messenger/rpc/Reaction;->count:I

    invoke-virtual {p1}, Lcom/b44t/messenger/rpc/Reaction;->getCount()I

    move-result v2

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/b44t/messenger/rpc/Reaction;->isFromSelf:Z

    invoke-virtual {p1}, Lcom/b44t/messenger/rpc/Reaction;->isFromSelf()Z

    move-result p1

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getCount()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/b44t/messenger/rpc/Reaction;->count:I

    return v0
.end method

.method public getEmoji()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/b44t/messenger/rpc/Reaction;->emoji:Ljava/lang/String;

    return-object v0
.end method

.method public isFromSelf()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lcom/b44t/messenger/rpc/Reaction;->isFromSelf:Z

    return v0
.end method
