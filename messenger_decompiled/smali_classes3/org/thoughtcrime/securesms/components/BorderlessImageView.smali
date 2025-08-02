.class public Lorg/thoughtcrime/securesms/components/BorderlessImageView;
.super Landroid/widget/FrameLayout;
.source "BorderlessImageView.java"


# instance fields
.field private footer:Lorg/thoughtcrime/securesms/components/ConversationItemFooter;

.field private image:Lorg/thoughtcrime/securesms/components/ThumbnailView;

.field private missingShade:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/BorderlessImageView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/BorderlessImageView;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    .line 34
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/BorderlessImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0104

    invoke-static {v0, v1, p0}, Lorg/thoughtcrime/securesms/components/BorderlessImageView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f09037a

    .line 36
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/components/BorderlessImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/components/ThumbnailView;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/components/BorderlessImageView;->image:Lorg/thoughtcrime/securesms/components/ThumbnailView;

    const v0, 0x7f090379

    .line 37
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/components/BorderlessImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/thoughtcrime/securesms/components/BorderlessImageView;->missingShade:Landroid/view/View;

    const v0, 0x7f090377

    .line 38
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/components/BorderlessImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/components/ConversationItemFooter;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/components/BorderlessImageView;->footer:Lorg/thoughtcrime/securesms/components/ConversationItemFooter;

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 3

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/BorderlessImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1203e8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/BorderlessImageView;->footer:Lorg/thoughtcrime/securesms/components/ConversationItemFooter;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/components/ConversationItemFooter;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFooter()Lorg/thoughtcrime/securesms/components/ConversationItemFooter;
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/BorderlessImageView;->footer:Lorg/thoughtcrime/securesms/components/ConversationItemFooter;

    return-object v0
.end method

.method public setClickable(Z)V
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/BorderlessImageView;->image:Lorg/thoughtcrime/securesms/components/ThumbnailView;

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/components/ThumbnailView;->setClickable(Z)V

    return-void
.end method

.method public setFocusable(Z)V
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/BorderlessImageView;->image:Lorg/thoughtcrime/securesms/components/ThumbnailView;

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/components/ThumbnailView;->setFocusable(Z)V

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/BorderlessImageView;->image:Lorg/thoughtcrime/securesms/components/ThumbnailView;

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/components/ThumbnailView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setSlide(Lorg/thoughtcrime/securesms/mms/GlideRequests;Lorg/thoughtcrime/securesms/mms/Slide;)V
    .locals 5

    .line 57
    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/mms/Slide;->asAttachment()Lorg/thoughtcrime/securesms/attachments/Attachment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/attachments/Attachment;->getDataUri()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 59
    :goto_0
    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/mms/Slide;->hasSticker()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 60
    iget-object v2, p0, Lorg/thoughtcrime/securesms/components/BorderlessImageView;->image:Lorg/thoughtcrime/securesms/components/ThumbnailView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Lorg/thoughtcrime/securesms/components/ThumbnailView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 61
    iget-object v2, p0, Lorg/thoughtcrime/securesms/components/BorderlessImageView;->image:Lorg/thoughtcrime/securesms/components/ThumbnailView;

    invoke-virtual {v2, p1, p2}, Lorg/thoughtcrime/securesms/components/ThumbnailView;->setImageResource(Lorg/thoughtcrime/securesms/mms/GlideRequests;Lorg/thoughtcrime/securesms/mms/Slide;)Lcom/b44t/messenger/util/concurrent/ListenableFuture;

    goto :goto_1

    .line 63
    :cond_1
    iget-object v2, p0, Lorg/thoughtcrime/securesms/components/BorderlessImageView;->image:Lorg/thoughtcrime/securesms/components/ThumbnailView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Lorg/thoughtcrime/securesms/components/ThumbnailView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 64
    iget-object v2, p0, Lorg/thoughtcrime/securesms/components/BorderlessImageView;->image:Lorg/thoughtcrime/securesms/components/ThumbnailView;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/mms/Slide;->asAttachment()Lorg/thoughtcrime/securesms/attachments/Attachment;

    move-result-object v3

    invoke-virtual {v3}, Lorg/thoughtcrime/securesms/attachments/Attachment;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/mms/Slide;->asAttachment()Lorg/thoughtcrime/securesms/attachments/Attachment;

    move-result-object v4

    invoke-virtual {v4}, Lorg/thoughtcrime/securesms/attachments/Attachment;->getHeight()I

    move-result v4

    invoke-virtual {v2, p1, p2, v3, v4}, Lorg/thoughtcrime/securesms/components/ThumbnailView;->setImageResource(Lorg/thoughtcrime/securesms/mms/GlideRequests;Lorg/thoughtcrime/securesms/mms/Slide;II)Lcom/b44t/messenger/util/concurrent/ListenableFuture;

    .line 67
    :goto_1
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/BorderlessImageView;->missingShade:Landroid/view/View;

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/16 v1, 0x8

    :goto_2
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setThumbnailClickListener(Lorg/thoughtcrime/securesms/mms/SlideClickListener;)V
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/BorderlessImageView;->image:Lorg/thoughtcrime/securesms/components/ThumbnailView;

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/components/ThumbnailView;->setThumbnailClickListener(Lorg/thoughtcrime/securesms/mms/SlideClickListener;)V

    return-void
.end method
