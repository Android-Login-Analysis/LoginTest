.class public Lcom/b44t/messenger/DcMediaGalleryElement;
.super Ljava/lang/Object;
.source "DcMediaGalleryElement.java"


# instance fields
.field final context:Lcom/b44t/messenger/DcContext;

.field final mediaMsgs:[I

.field position:I


# direct methods
.method public constructor <init>([IILcom/b44t/messenger/DcContext;Z)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/b44t/messenger/DcMediaGalleryElement;->mediaMsgs:[I

    .line 13
    iput p2, p0, Lcom/b44t/messenger/DcMediaGalleryElement;->position:I

    .line 14
    iput-object p3, p0, Lcom/b44t/messenger/DcMediaGalleryElement;->context:Lcom/b44t/messenger/DcContext;

    if-nez p4, :cond_0

    const/4 p2, 0x0

    .line 18
    :goto_0
    array-length p3, p1

    div-int/lit8 p3, p3, 0x2

    if-ge p2, p3, :cond_0

    .line 19
    aget p3, p1, p2

    .line 20
    array-length p4, p1

    add-int/lit8 p4, p4, -0x1

    sub-int/2addr p4, p2

    .line 21
    aget v0, p1, p4

    aput v0, p1, p2

    .line 22
    aput p3, p1, p4

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/b44t/messenger/DcMediaGalleryElement;->mediaMsgs:[I

    array-length v0, v0

    return v0
.end method

.method public getMessage()Lcom/b44t/messenger/DcMsg;
    .locals 3

    .line 42
    iget-object v0, p0, Lcom/b44t/messenger/DcMediaGalleryElement;->context:Lcom/b44t/messenger/DcContext;

    iget-object v1, p0, Lcom/b44t/messenger/DcMediaGalleryElement;->mediaMsgs:[I

    iget v2, p0, Lcom/b44t/messenger/DcMediaGalleryElement;->position:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/b44t/messenger/DcContext;->getMsg(I)Lcom/b44t/messenger/DcMsg;

    move-result-object v0

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/b44t/messenger/DcMediaGalleryElement;->position:I

    return v0
.end method

.method public moveToPosition(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 36
    iget-object v0, p0, Lcom/b44t/messenger/DcMediaGalleryElement;->mediaMsgs:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 38
    iput p1, p0, Lcom/b44t/messenger/DcMediaGalleryElement;->position:I

    return-void

    .line 37
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "can\'t move outside of known area."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
