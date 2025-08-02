.class public Lorg/thoughtcrime/securesms/components/ThumbnailView;
.super Landroid/widget/FrameLayout;
.source "ThumbnailView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/components/ThumbnailView$ThumbnailClickDispatcher;
    }
.end annotation


# static fields
.field private static final HEIGHT:I = 0x1

.field private static final MAX_HEIGHT:I = 0x3

.field private static final MAX_WIDTH:I = 0x1

.field private static final MIN_HEIGHT:I = 0x2

.field private static final MIN_WIDTH:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ThumbnailView"

.field private static final WIDTH:I


# instance fields
.field private final bounds:[I

.field private final dimens:[I

.field private final image:Landroid/widget/ImageView;

.field private final measureDimens:[I

.field private parentClickListener:Landroid/view/View$OnClickListener;

.field private final playOverlay:Landroid/view/View;

.field private slide:Lorg/thoughtcrime/securesms/mms/Slide;

.field private thumbnailClickListener:Lorg/thoughtcrime/securesms/mms/SlideClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, v0}, Lorg/thoughtcrime/securesms/components/ThumbnailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, p2, v0}, Lorg/thoughtcrime/securesms/components/ThumbnailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x2

    new-array v0, p3, [I

    .line 49
    iput-object v0, p0, Lorg/thoughtcrime/securesms/components/ThumbnailView;->dimens:[I

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 50
    iput-object v0, p0, Lorg/thoughtcrime/securesms/components/ThumbnailView;->bounds:[I

    new-array v1, p3, [I

    .line 51
    iput-object v1, p0, Lorg/thoughtcrime/securesms/components/ThumbnailView;->measureDimens:[I

    const/4 v1, 0x0

    .line 53
    iput-object v1, p0, Lorg/thoughtcrime/securesms/components/ThumbnailView;->thumbnailClickListener:Lorg/thoughtcrime/securesms/mms/SlideClickListener;

    .line 54
    iput-object v1, p0, Lorg/thoughtcrime/securesms/components/ThumbnailView;->slide:Lorg/thoughtcrime/securesms/mms/Slide;

    const v2, 0x7f0c0107

    .line 67
    invoke-static {p1, v2, p0}, Lorg/thoughtcrime/securesms/components/ThumbnailView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v2, 0x7f0903ab

    .line 69
    invoke-virtual {p0, v2}, Lorg/thoughtcrime/securesms/components/ThumbnailView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lorg/thoughtcrime/securesms/components/ThumbnailView;->image:Landroid/widget/ImageView;

    const v2, 0x7f09029a

    .line 70
    invoke-virtual {p0, v2}, Lorg/thoughtcrime/securesms/components/ThumbnailView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lorg/thoughtcrime/securesms/components/ThumbnailView;->playOverlay:Landroid/view/View;

    .line 71
    new-instance v2, Lorg/thoughtcrime/securesms/components/ThumbnailView$ThumbnailClickDispatcher;

    invoke-direct {v2, p0, v1}, Lorg/thoughtcrime/securesms/components/ThumbnailView$ThumbnailClickDispatcher;-><init>(Lorg/thoughtcrime/securesms/components/ThumbnailView;Lorg/thoughtcrime/securesms/components/ThumbnailView$1;)V

    invoke-super {p0, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p2, :cond_0

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v1, Lorg/thoughtcrime/securesms/R$styleable;->ThumbnailView:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x3

    .line 75
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    aput v1, v0, v2

    const/4 v1, 0x1

    .line 76
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    aput v3, v0, v1

    .line 77
    invoke-virtual {p1, p3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    aput v1, v0, p3

    .line 78
    invoke-virtual {p1, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    aput p3, v0, p2

    .line 80
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method

.method static synthetic access$100(Lorg/thoughtcrime/securesms/components/ThumbnailView;)Lorg/thoughtcrime/securesms/mms/SlideClickListener;
    .locals 0

    .line 35
    iget-object p0, p0, Lorg/thoughtcrime/securesms/components/ThumbnailView;->thumbnailClickListener:Lorg/thoughtcrime/securesms/mms/SlideClickListener;

    return-object p0
.end method

.method static synthetic access$200(Lorg/thoughtcrime/securesms/components/ThumbnailView;)Lorg/thoughtcrime/securesms/mms/Slide;
    .locals 0

    .line 35
    iget-object p0, p0, Lorg/thoughtcrime/securesms/components/ThumbnailView;->slide:Lorg/thoughtcrime/securesms/mms/Slide;

    return-object p0
.end method

.method static synthetic access$300(Lorg/thoughtcrime/securesms/components/ThumbnailView;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 35
    iget-object p0, p0, Lorg/thoughtcrime/securesms/components/ThumbnailView;->parentClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method private fillTargetDimensions([I[I[I)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 110
    invoke-direct {v0, v1}, Lorg/thoughtcrime/securesms/components/ThumbnailView;->getNonZeroCount([I)I

    move-result v3

    .line 111
    invoke-direct {v0, v2}, Lorg/thoughtcrime/securesms/components/ThumbnailView;->getNonZeroCount([I)I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_e

    if-nez v4, :cond_0

    goto/16 :goto_9

    .line 119
    :cond_0
    aget v7, v1, v6

    int-to-double v7, v7

    .line 120
    aget v9, v1, v5

    int-to-double v9, v9

    .line 122
    aget v11, v2, v6

    .line 123
    aget v12, v2, v5

    const/4 v13, 0x2

    .line 124
    aget v14, v2, v13

    const/4 v15, 0x3

    .line 125
    aget v5, v2, v15

    if-lez v3, :cond_2

    .line 127
    array-length v1, v1

    if-lt v3, v1, :cond_1

    goto :goto_0

    .line 128
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v3, v13, [Ljava/lang/Object;

    .line 129
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-string v4, "Width or height has been specified, but not both. Dimens: %f x %f"

    .line 128
    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_0
    if-lez v4, :cond_4

    .line 131
    array-length v1, v2

    if-lt v4, v1, :cond_3

    goto :goto_1

    .line 132
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    .line 133
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v13

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v15

    const-string v4, "One or more min/max dimensions have been specified, but not all. Bounds: [%d, %d, %d, %d]"

    .line 132
    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    :goto_1
    int-to-double v1, v11

    cmpl-double v3, v7, v1

    if-ltz v3, :cond_5

    int-to-double v3, v12

    cmpg-double v11, v7, v3

    if-gtz v11, :cond_5

    const/4 v3, 0x1

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_2
    int-to-double v13, v14

    cmpl-double v4, v9, v13

    move-wide/from16 v16, v7

    if-ltz v4, :cond_6

    int-to-double v6, v5

    cmpg-double v8, v9, v6

    if-gtz v8, :cond_6

    const/4 v6, 0x1

    goto :goto_3

    :cond_6
    const/4 v6, 0x0

    :goto_3
    if-eqz v3, :cond_7

    if-nez v6, :cond_9

    .line 143
    :cond_7
    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double v7, v16, v1

    int-to-double v11, v12

    .line 144
    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    div-double v18, v16, v11

    .line 145
    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    div-double v20, v9, v13

    int-to-double v5, v5

    .line 146
    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double v22, v9, v5

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    cmpl-double v3, v18, v24

    if-gtz v3, :cond_c

    cmpl-double v3, v22, v24

    if-lez v3, :cond_8

    goto :goto_6

    :cond_8
    cmpg-double v1, v7, v24

    if-ltz v1, :cond_a

    cmpg-double v1, v20, v24

    if-gez v1, :cond_9

    goto :goto_4

    :cond_9
    move-wide/from16 v7, v16

    goto :goto_8

    :cond_a
    :goto_4
    cmpg-double v1, v7, v20

    if-gtz v1, :cond_b

    .line 162
    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->isNaN(D)Z

    div-double v1, v16, v7

    .line 163
    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v9, v7

    goto :goto_5

    .line 165
    :cond_b
    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->isNaN(D)Z

    div-double v1, v16, v20

    .line 166
    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    div-double v9, v9, v20

    .line 169
    :goto_5
    invoke-static {v1, v2, v11, v12}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    .line 170
    invoke-static {v9, v10, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v9

    goto :goto_8

    :cond_c
    :goto_6
    cmpl-double v3, v18, v22

    if-ltz v3, :cond_d

    .line 150
    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->isNaN(D)Z

    div-double v7, v16, v18

    .line 151
    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    div-double v9, v9, v18

    goto :goto_7

    .line 153
    :cond_d
    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->isNaN(D)Z

    div-double v7, v16, v22

    .line 154
    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    div-double v9, v9, v22

    .line 157
    :goto_7
    invoke-static {v7, v8, v1, v2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v7

    .line 158
    invoke-static {v9, v10, v13, v14}, Ljava/lang/Math;->max(DD)D

    move-result-wide v9

    :goto_8
    double-to-int v1, v7

    const/4 v2, 0x0

    .line 174
    aput v1, p1, v2

    double-to-int v1, v9

    const/4 v3, 0x1

    .line 175
    aput v1, p1, v3

    return-void

    :cond_e
    :goto_9
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 114
    aput v2, p1, v2

    .line 115
    aput v2, p1, v3

    return-void
.end method

.method private getNonZeroCount([I)I
    .locals 4

    .line 180
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget v3, p1, v1

    if-lez v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method


# virtual methods
.method public clear(Lorg/thoughtcrime/securesms/mms/GlideRequests;)V
    .locals 1

    .line 290
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/ThumbnailView;->image:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/mms/GlideRequests;->clear(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 292
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/ThumbnailView;->slide:Lorg/thoughtcrime/securesms/mms/Slide;

    return-void
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2

    .line 86
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/ThumbnailView;->slide:Lorg/thoughtcrime/securesms/mms/Slide;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/mms/Slide;->hasPlayOverlay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/ThumbnailView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120423

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 89
    :cond_0
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/ThumbnailView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1201a0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 95
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/ThumbnailView;->measureDimens:[I

    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/ThumbnailView;->dimens:[I

    iget-object v2, p0, Lorg/thoughtcrime/securesms/components/ThumbnailView;->bounds:[I

    invoke-direct {p0, v0, v1, v2}, Lorg/thoughtcrime/securesms/components/ThumbnailView;->fillTargetDimensions([I[I[I)V

    .line 96
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/ThumbnailView;->measureDimens:[I

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    aget v0, v0, v2

    if-nez v0, :cond_0

    .line 97
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void

    .line 101
    :cond_0
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/ThumbnailView;->getPaddingLeft()I

    move-result p1

    add-int/2addr v1, p1

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/ThumbnailView;->getPaddingRight()I

    move-result p1

    add-int/2addr v1, p1

    .line 102
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/ThumbnailView;->measureDimens:[I

    aget p1, p1, v2

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/ThumbnailView;->getPaddingTop()I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/ThumbnailView;->getPaddingBottom()I

    move-result p2

    add-int/2addr p1, p2

    const/high16 p2, 0x40000000    # 2.0f

    .line 104
    invoke-static {v1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 105
    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 104
    invoke-super {p0, v0, p1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setClickable(Z)V
    .locals 0

    .line 200
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    return-void
.end method

.method public setFocusable(Z)V
    .locals 0

    .line 195
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    return-void
.end method

.method public setImageResource(Lorg/thoughtcrime/securesms/mms/GlideRequests;Lorg/thoughtcrime/securesms/mms/Slide;)Lcom/b44t/messenger/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/thoughtcrime/securesms/mms/GlideRequests;",
            "Lorg/thoughtcrime/securesms/mms/Slide;",
            ")",
            "Lcom/b44t/messenger/util/concurrent/ListenableFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 206
    invoke-virtual {p0, p1, p2, v0, v0}, Lorg/thoughtcrime/securesms/components/ThumbnailView;->setImageResource(Lorg/thoughtcrime/securesms/mms/GlideRequests;Lorg/thoughtcrime/securesms/mms/Slide;II)Lcom/b44t/messenger/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public setImageResource(Lorg/thoughtcrime/securesms/mms/GlideRequests;Lorg/thoughtcrime/securesms/mms/Slide;II)Lcom/b44t/messenger/util/concurrent/ListenableFuture;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/thoughtcrime/securesms/mms/GlideRequests;",
            "Lorg/thoughtcrime/securesms/mms/Slide;",
            "II)",
            "Lcom/b44t/messenger/util/concurrent/ListenableFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 214
    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/mms/Slide;->hasPlayOverlay()Z

    move-result v0

    const/4 v1, 0x0

    .line 223
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/ThumbnailView;->playOverlay:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 218
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/ThumbnailView;->playOverlay:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 221
    :goto_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/ThumbnailView;->slide:Lorg/thoughtcrime/securesms/mms/Slide;

    invoke-static {p2, v0}, Lorg/thoughtcrime/securesms/util/Util;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 222
    sget-object p1, Lorg/thoughtcrime/securesms/components/ThumbnailView;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Not re-loading slide "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/mms/Slide;->asAttachment()Lorg/thoughtcrime/securesms/attachments/Attachment;

    move-result-object p2

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/attachments/Attachment;->getDataUri()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    new-instance p1, Lcom/b44t/messenger/util/concurrent/SettableFuture;

    invoke-direct {p1, v2}, Lcom/b44t/messenger/util/concurrent/SettableFuture;-><init>(Ljava/lang/Object;)V

    return-object p1

    .line 226
    :cond_1
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/ThumbnailView;->slide:Lorg/thoughtcrime/securesms/mms/Slide;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/mms/Slide;->getFastPreflightId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/ThumbnailView;->slide:Lorg/thoughtcrime/securesms/mms/Slide;

    .line 227
    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/mms/Slide;->getFastPreflightId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/mms/Slide;->getFastPreflightId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 229
    sget-object p1, Lorg/thoughtcrime/securesms/components/ThumbnailView;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Not re-loading slide for fast preflight: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/mms/Slide;->getFastPreflightId()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iput-object p2, p0, Lorg/thoughtcrime/securesms/components/ThumbnailView;->slide:Lorg/thoughtcrime/securesms/mms/Slide;

    .line 231
    new-instance p1, Lcom/b44t/messenger/util/concurrent/SettableFuture;

    invoke-direct {p1, v2}, Lcom/b44t/messenger/util/concurrent/SettableFuture;-><init>(Ljava/lang/Object;)V

    return-object p1

    .line 234
    :cond_2
    sget-object v0, Lorg/thoughtcrime/securesms/components/ThumbnailView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "loading part with id "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/mms/Slide;->asAttachment()Lorg/thoughtcrime/securesms/attachments/Attachment;

    move-result-object v4

    invoke-virtual {v4}, Lorg/thoughtcrime/securesms/attachments/Attachment;->getDataUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", progress "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/mms/Slide;->getTransferState()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", fast preflight id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/mms/Slide;->asAttachment()Lorg/thoughtcrime/securesms/attachments/Attachment;

    move-result-object v4

    invoke-virtual {v4}, Lorg/thoughtcrime/securesms/attachments/Attachment;->getFastPreflightId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 234
    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iput-object p2, p0, Lorg/thoughtcrime/securesms/components/ThumbnailView;->slide:Lorg/thoughtcrime/securesms/mms/Slide;

    .line 240
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/ThumbnailView;->dimens:[I

    aput p3, v0, v1

    const/4 p3, 0x1

    .line 241
    aput p4, v0, p3

    .line 242
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/ThumbnailView;->invalidate()V

    .line 244
    new-instance p3, Lcom/b44t/messenger/util/concurrent/SettableFuture;

    invoke-direct {p3}, Lcom/b44t/messenger/util/concurrent/SettableFuture;-><init>()V

    .line 246
    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/mms/Slide;->getThumbnailUri()Landroid/net/Uri;

    move-result-object p4

    if-eqz p4, :cond_4

    .line 248
    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/mms/Slide;->hasVideo()Z

    move-result p4

    if-eqz p4, :cond_3

    .line 250
    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/mms/Slide;->getUri()Landroid/net/Uri;

    move-result-object v6

    .line 251
    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/mms/Slide;->getThumbnailUri()Landroid/net/Uri;

    move-result-object v7

    const p2, 0x7f0903ab

    .line 252
    invoke-virtual {p0, p2}, Lorg/thoughtcrime/securesms/components/ThumbnailView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    move-object v9, p2

    check-cast v9, Landroid/widget/ImageView;

    .line 253
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/ThumbnailView;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 254
    new-instance p2, Lorg/thoughtcrime/securesms/components/ThumbnailView$1;

    move-object v3, p2

    move-object v4, p0

    move-object v8, p1

    move-object v10, p3

    invoke-direct/range {v3 .. v10}, Lorg/thoughtcrime/securesms/components/ThumbnailView$1;-><init>(Lorg/thoughtcrime/securesms/components/ThumbnailView;Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Lorg/thoughtcrime/securesms/mms/GlideRequests;Landroid/widget/ImageView;Lcom/b44t/messenger/util/concurrent/SettableFuture;)V

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array p4, v1, [Ljava/lang/Void;

    .line 266
    invoke-virtual {p2, p1, p4}, Lorg/thoughtcrime/securesms/components/ThumbnailView$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 270
    :cond_3
    new-instance p4, Lorg/thoughtcrime/securesms/mms/DecryptableStreamUriLoader$DecryptableUri;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/mms/Slide;->getThumbnailUri()Landroid/net/Uri;

    move-result-object p2

    invoke-direct {p4, p2}, Lorg/thoughtcrime/securesms/mms/DecryptableStreamUriLoader$DecryptableUri;-><init>(Landroid/net/Uri;)V

    invoke-virtual {p1, p4}, Lorg/thoughtcrime/securesms/mms/GlideRequests;->load(Ljava/lang/Object;)Lorg/thoughtcrime/securesms/mms/GlideRequest;

    move-result-object p1

    sget-object p2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 271
    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/mms/GlideRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lorg/thoughtcrime/securesms/mms/GlideRequest;

    move-result-object p1

    .line 272
    invoke-static {}, Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;->withCrossFade()Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/mms/GlideRequest;->transition(Lcom/bumptech/glide/TransitionOptions;)Lorg/thoughtcrime/securesms/mms/GlideRequest;

    move-result-object p1

    .line 273
    new-instance p2, Lorg/thoughtcrime/securesms/components/GlideDrawableListeningTarget;

    iget-object p4, p0, Lorg/thoughtcrime/securesms/components/ThumbnailView;->image:Landroid/widget/ImageView;

    invoke-direct {p2, p4, p3}, Lorg/thoughtcrime/securesms/components/GlideDrawableListeningTarget;-><init>(Landroid/widget/ImageView;Lcom/b44t/messenger/util/concurrent/SettableFuture;)V

    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/mms/GlideRequest;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_1

    .line 278
    :cond_4
    iget-object p2, p0, Lorg/thoughtcrime/securesms/components/ThumbnailView;->image:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/mms/GlideRequests;->clear(Landroid/view/View;)V

    .line 279
    invoke-virtual {p3, v2}, Lcom/b44t/messenger/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    :goto_1
    return-object p3
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/ThumbnailView;->parentClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1

    .line 296
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/ThumbnailView;->image:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method public setThumbnailClickListener(Lorg/thoughtcrime/securesms/mms/SlideClickListener;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/ThumbnailView;->thumbnailClickListener:Lorg/thoughtcrime/securesms/mms/SlideClickListener;

    return-void
.end method
