.class public Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;
.super Landroid/widget/FrameLayout;
.source "ConversationItemThumbnail.java"


# static fields
.field private static final DARK_THEME_OUTLINE_PAINT:Landroid/graphics/Paint;

.field public static final IMAGE_ASPECT_RATIO:D = 1.0

.field private static final LIGHT_THEME_OUTLINE_PAINT:Landroid/graphics/Paint;

.field private static final TAG:Ljava/lang/String; = "ConversationItemThumbnail"


# instance fields
.field private final bounds:Landroid/graphics/RectF;

.field private cornerMask:Lorg/thoughtcrime/securesms/components/CornerMask;

.field private final corners:Landroid/graphics/Path;

.field private footer:Lorg/thoughtcrime/securesms/components/ConversationItemFooter;

.field private naturalHeight:I

.field private naturalWidth:I

.field private outlinePaint:Landroid/graphics/Paint;

.field private final radii:[F

.field private shade:Landroid/widget/ImageView;

.field private thumbnail:Lorg/thoughtcrime/securesms/components/ThumbnailView;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;->LIGHT_THEME_OUTLINE_PAINT:Landroid/graphics/Paint;

    .line 36
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    sput-object v1, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;->DARK_THEME_OUTLINE_PAINT:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/16 v3, 0x33

    .line 40
    invoke-static {v3, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 41
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v2, 0x3f800000    # 1.0f

    .line 42
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v4, 0x1

    .line 43
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/16 v0, 0xff

    .line 45
    invoke-static {v3, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 46
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 47
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 48
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x8

    new-array p1, p1, [F

    .line 51
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;->radii:[F

    .line 52
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;->bounds:Landroid/graphics/RectF;

    .line 53
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;->corners:Landroid/graphics/Path;

    const/4 p1, 0x0

    .line 65
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x8

    new-array p1, p1, [F

    .line 51
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;->radii:[F

    .line 52
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;->bounds:Landroid/graphics/RectF;

    .line 53
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;->corners:Landroid/graphics/Path;

    .line 70
    invoke-direct {p0, p2}, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 74
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x8

    new-array p1, p1, [F

    .line 51
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;->radii:[F

    .line 52
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;->bounds:Landroid/graphics/RectF;

    .line 53
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;->corners:Landroid/graphics/Path;

    .line 75
    invoke-direct {p0, p2}, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 1

    .line 79
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0c0041

    invoke-static {p1, v0, p0}, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f0900c6

    .line 81
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/thoughtcrime/securesms/components/ThumbnailView;

    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;->thumbnail:Lorg/thoughtcrime/securesms/components/ThumbnailView;

    const p1, 0x7f0900c7

    .line 82
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;->shade:Landroid/widget/ImageView;

    const p1, 0x7f0900c5

    .line 83
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/thoughtcrime/securesms/components/ConversationItemFooter;

    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;->footer:Lorg/thoughtcrime/securesms/components/ConversationItemFooter;

    .line 84
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lorg/thoughtcrime/securesms/util/ThemeUtil;->isDarkTheme(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;->DARK_THEME_OUTLINE_PAINT:Landroid/graphics/Paint;

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;->LIGHT_THEME_OUTLINE_PAINT:Landroid/graphics/Paint;

    :goto_0
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;->outlinePaint:Landroid/graphics/Paint;

    .line 85
    new-instance p1, Lorg/thoughtcrime/securesms/components/CornerMask;

    invoke-direct {p1, p0}, Lorg/thoughtcrime/securesms/components/CornerMask;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;->cornerMask:Lorg/thoughtcrime/securesms/components/CornerMask;

    .line 87
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;->thumbnail:Lorg/thoughtcrime/securesms/components/ThumbnailView;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/components/ThumbnailView;->getTouchDelegate()Landroid/view/TouchDelegate;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    return-void
.end method

.method private readDimen(I)I
    .locals 1

    .line 216
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    return p1
.end method

.method private refreshSlideAttachmentState(Lcom/b44t/messenger/util/concurrent/ListenableFuture;Lorg/thoughtcrime/securesms/mms/Slide;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b44t/messenger/util/concurrent/ListenableFuture<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lorg/thoughtcrime/securesms/mms/Slide;",
            ")V"
        }
    .end annotation

    .line 180
    new-instance v0, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail$1;

    invoke-direct {v0, p0, p2}, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail$1;-><init>(Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;Lorg/thoughtcrime/securesms/mms/Slide;)V

    invoke-interface {p1, v0}, Lcom/b44t/messenger/util/concurrent/ListenableFuture;->addListener(Lcom/b44t/messenger/util/concurrent/ListenableFuture$Listener;)V

    return-void
.end method


# virtual methods
.method public clear(Lorg/thoughtcrime/securesms/mms/GlideRequests;)V
    .locals 1

    .line 212
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;->thumbnail:Lorg/thoughtcrime/securesms/components/ThumbnailView;

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/components/ThumbnailView;->clear(Lorg/thoughtcrime/securesms/mms/GlideRequests;)V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 123
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;->cornerMask:Lorg/thoughtcrime/securesms/components/CornerMask;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/CornerMask;->isLegacy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;->cornerMask:Lorg/thoughtcrime/securesms/components/CornerMask;

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/components/CornerMask;->mask(Landroid/graphics/Canvas;)V

    .line 127
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 129
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;->cornerMask:Lorg/thoughtcrime/securesms/components/CornerMask;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/CornerMask;->isLegacy()Z

    move-result v0

    if-nez v0, :cond_1

    .line 130
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;->cornerMask:Lorg/thoughtcrime/securesms/components/CornerMask;

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/components/CornerMask;->mask(Landroid/graphics/Canvas;)V

    .line 133
    :cond_1
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;->outlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 135
    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;->bounds:Landroid/graphics/RectF;

    iput v0, v1, Landroid/graphics/RectF;->left:F

    .line 136
    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;->bounds:Landroid/graphics/RectF;

    iput v0, v1, Landroid/graphics/RectF;->top:F

    .line 137
    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;->bounds:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v0

    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 138
    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;->bounds:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v0

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    .line 140
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;->corners:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 141
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;->corners:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;->bounds:Landroid/graphics/RectF;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;->radii:[F

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 143
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;->corners:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;->outlinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2

    .line 91
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;->thumbnail:Lorg/thoughtcrime/securesms/components/ThumbnailView;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/ThumbnailView;->getDescription()Ljava/lang/String;

    move-result-object v0

    .line 92
    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;->footer:Lorg/thoughtcrime/securesms/components/ConversationItemFooter;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/components/ConversationItemFooter;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;->footer:Lorg/thoughtcrime/securesms/components/ConversationItemFooter;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/ConversationItemFooter;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getFooter()Lorg/thoughtcrime/securesms/components/ConversationItemFooter;
    .locals 1

    .line 176
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;->footer:Lorg/thoughtcrime/securesms/components/ConversationItemFooter;

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 9

    .line 100
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const v1, 0x7f070268

    .line 101
    invoke-direct {p0, v1}, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;->readDimen(I)I

    move-result v1

    .line 102
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v2, v2

    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    double-to-int v2, v2

    .line 104
    iget v3, p0, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;->naturalWidth:I

    if-eqz v3, :cond_1

    iget v4, p0, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;->naturalHeight:I

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    mul-int v4, v4, v0

    .line 110
    div-int/2addr v4, v3

    int-to-double v5, v0

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 111
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v7

    double-to-int p2, v5

    const/4 v0, 0x0

    .line 112
    invoke-static {v4, v0, p2}, Lorg/thoughtcrime/securesms/util/Util;->clamp(III)I

    move-result p2

    .line 114
    invoke-static {p2, v1, v2}, Lorg/thoughtcrime/securesms/util/Util;->clamp(III)I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    .line 115
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 117
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void

    .line 105
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public performClick()Z
    .locals 1

    .line 199
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;->thumbnail:Lorg/thoughtcrime/securesms/components/ThumbnailView;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/ThumbnailView;->performClick()Z

    move-result v0

    return v0
.end method

.method public setClickable(Z)V
    .locals 1

    .line 153
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;->thumbnail:Lorg/thoughtcrime/securesms/components/ThumbnailView;

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/components/ThumbnailView;->setClickable(Z)V

    return-void
.end method

.method public setFocusable(Z)V
    .locals 1

    .line 148
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;->thumbnail:Lorg/thoughtcrime/securesms/components/ThumbnailView;

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/components/ThumbnailView;->setFocusable(Z)V

    return-void
.end method

.method public setImageResource(Lorg/thoughtcrime/securesms/mms/GlideRequests;Lorg/thoughtcrime/securesms/mms/Slide;II)V
    .locals 0

    .line 206
    iput p3, p0, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;->naturalWidth:I

    .line 207
    iput p4, p0, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;->naturalHeight:I

    .line 208
    iget-object p3, p0, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;->thumbnail:Lorg/thoughtcrime/securesms/components/ThumbnailView;

    invoke-virtual {p3, p1, p2}, Lorg/thoughtcrime/securesms/components/ThumbnailView;->setImageResource(Lorg/thoughtcrime/securesms/mms/GlideRequests;Lorg/thoughtcrime/securesms/mms/Slide;)Lcom/b44t/messenger/util/concurrent/ListenableFuture;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;->refreshSlideAttachmentState(Lcom/b44t/messenger/util/concurrent/ListenableFuture;Lorg/thoughtcrime/securesms/mms/Slide;)V

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1

    .line 158
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;->thumbnail:Lorg/thoughtcrime/securesms/components/ThumbnailView;

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/components/ThumbnailView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setOutlineCorners(IIII)V
    .locals 3

    .line 167
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;->radii:[F

    int-to-float v1, p1

    const/4 v2, 0x1

    aput v1, v0, v2

    const/4 v2, 0x0

    aput v1, v0, v2

    int-to-float v1, p2

    const/4 v2, 0x3

    .line 168
    aput v1, v0, v2

    const/4 v2, 0x2

    aput v1, v0, v2

    int-to-float v1, p3

    const/4 v2, 0x5

    .line 169
    aput v1, v0, v2

    const/4 v2, 0x4

    aput v1, v0, v2

    int-to-float v1, p4

    const/4 v2, 0x7

    .line 170
    aput v1, v0, v2

    const/4 v2, 0x6

    aput v1, v0, v2

    .line 172
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;->cornerMask:Lorg/thoughtcrime/securesms/components/CornerMask;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/thoughtcrime/securesms/components/CornerMask;->setRadii(IIII)V

    return-void
.end method

.method public setThumbnailClickListener(Lorg/thoughtcrime/securesms/mms/SlideClickListener;)V
    .locals 1

    .line 194
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;->thumbnail:Lorg/thoughtcrime/securesms/components/ThumbnailView;

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/components/ThumbnailView;->setThumbnailClickListener(Lorg/thoughtcrime/securesms/mms/SlideClickListener;)V

    return-void
.end method

.method public showShade(Z)V
    .locals 1

    .line 162
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;->shade:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 163
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/ConversationItemThumbnail;->forceLayout()V

    return-void
.end method
