.class public Lorg/thoughtcrime/securesms/mms/SlideDeck;
.super Ljava/lang/Object;
.source "SlideDeck.java"


# instance fields
.field private final slides:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/thoughtcrime/securesms/mms/Slide;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/mms/SlideDeck;->slides:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addSlide(Lorg/thoughtcrime/securesms/mms/Slide;)V
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/thoughtcrime/securesms/mms/SlideDeck;->slides:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public asAttachments()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/thoughtcrime/securesms/attachments/Attachment;",
            ">;"
        }
    .end annotation

    .line 40
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 42
    iget-object v1, p0, Lorg/thoughtcrime/securesms/mms/SlideDeck;->slides:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/thoughtcrime/securesms/mms/Slide;

    .line 43
    invoke-virtual {v2}, Lorg/thoughtcrime/securesms/mms/Slide;->asAttachment()Lorg/thoughtcrime/securesms/attachments/Attachment;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public clear()V
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/thoughtcrime/securesms/mms/SlideDeck;->slides:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public containsMediaSlide()Z
    .locals 3

    .line 58
    iget-object v0, p0, Lorg/thoughtcrime/securesms/mms/SlideDeck;->slides:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/thoughtcrime/securesms/mms/Slide;

    .line 59
    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/mms/Slide;->hasImage()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/mms/Slide;->hasVideo()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/mms/Slide;->hasAudio()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/mms/Slide;->hasDocument()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public getDocumentSlide()Lorg/thoughtcrime/securesms/mms/DocumentSlide;
    .locals 3

    .line 67
    iget-object v0, p0, Lorg/thoughtcrime/securesms/mms/SlideDeck;->slides:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/thoughtcrime/securesms/mms/Slide;

    .line 68
    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/mms/Slide;->hasDocument()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    check-cast v1, Lorg/thoughtcrime/securesms/mms/DocumentSlide;

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSlides()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/thoughtcrime/securesms/mms/Slide;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lorg/thoughtcrime/securesms/mms/SlideDeck;->slides:Ljava/util/List;

    return-object v0
.end method

.method public getWebxdctDraftId()I
    .locals 3

    .line 78
    iget-object v0, p0, Lorg/thoughtcrime/securesms/mms/SlideDeck;->slides:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/thoughtcrime/securesms/mms/Slide;

    .line 79
    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/mms/Slide;->isWebxdcDocument()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 80
    iget v0, v1, Lorg/thoughtcrime/securesms/mms/Slide;->dcMsgId:I

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
