.class public Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;
.super Landroid/widget/PopupWindow;
.source "AttachmentTypeSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector$AttachmentClickedListener;,
        Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector$PropagatingClickListener;,
        Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector$CloseClickListener;,
        Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector$RecentPhotoSelectedListener;
    }
.end annotation


# static fields
.field public static final ADD_CONTACT_INFO:I = 0x4

.field public static final ADD_DOCUMENT:I = 0x2

.field public static final ADD_GALLERY:I = 0x1

.field public static final ADD_LOCATION:I = 0x6

.field public static final ADD_SOUND:I = 0x3

.field private static final ANIMATION_DURATION:I = 0x12c

.field public static final RECORD_VIDEO:I = 0x7

.field public static final TAKE_PHOTO:I = 0x5


# instance fields
.field private final audioButton:Landroid/widget/ImageView;

.field private final cameraButton:Landroid/widget/ImageView;

.field private final chatId:I

.field private final closeButton:Landroid/widget/ImageView;

.field private final contactButton:Landroid/widget/ImageView;

.field private currentAnchor:Landroid/view/View;

.field private final documentButton:Landroid/widget/ImageView;

.field private final imageButton:Landroid/widget/ImageView;

.field private listener:Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector$AttachmentClickedListener;

.field private final loaderManager:Landroidx/loader/app/LoaderManager;

.field private final locationButton:Landroid/widget/ImageView;

.field private final recentRail:Lorg/thoughtcrime/securesms/components/RecentPhotoViewRail;

.field private final videoButton:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/loader/app/LoaderManager;Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector$AttachmentClickedListener;I)V
    .locals 11

    .line 63
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    const-string v0, "layout_inflater"

    .line 65
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0c0023

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 66
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 68
    iput-object p3, p0, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;->listener:Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector$AttachmentClickedListener;

    .line 69
    iput-object p2, p0, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;->loaderManager:Landroidx/loader/app/LoaderManager;

    .line 70
    iput p4, p0, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;->chatId:I

    const p3, 0x7f0902ce

    .line 71
    invoke-static {v0, p3}, Lorg/thoughtcrime/securesms/util/ViewUtil;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lorg/thoughtcrime/securesms/components/RecentPhotoViewRail;

    iput-object p3, p0, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;->recentRail:Lorg/thoughtcrime/securesms/components/RecentPhotoViewRail;

    const p4, 0x7f090162

    .line 72
    invoke-static {v0, p4}, Lorg/thoughtcrime/securesms/util/ViewUtil;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/ImageView;

    iput-object p4, p0, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;->imageButton:Landroid/widget/ImageView;

    const v1, 0x7f09006a

    .line 73
    invoke-static {v0, v1}, Lorg/thoughtcrime/securesms/util/ViewUtil;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;->audioButton:Landroid/widget/ImageView;

    const v4, 0x7f0900f5

    .line 74
    invoke-static {v0, v4}, Lorg/thoughtcrime/securesms/util/ViewUtil;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;->documentButton:Landroid/widget/ImageView;

    const v5, 0x7f0900b4

    .line 75
    invoke-static {v0, v5}, Lorg/thoughtcrime/securesms/util/ViewUtil;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;->contactButton:Landroid/widget/ImageView;

    const v6, 0x7f090090

    .line 76
    invoke-static {v0, v6}, Lorg/thoughtcrime/securesms/util/ViewUtil;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;->cameraButton:Landroid/widget/ImageView;

    const v7, 0x7f0902d1

    .line 77
    invoke-static {v0, v7}, Lorg/thoughtcrime/securesms/util/ViewUtil;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;->videoButton:Landroid/widget/ImageView;

    const v8, 0x7f0901b3

    .line 78
    invoke-static {v0, v8}, Lorg/thoughtcrime/securesms/util/ViewUtil;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;->locationButton:Landroid/widget/ImageView;

    const v9, 0x7f0900ae

    .line 79
    invoke-static {v0, v9}, Lorg/thoughtcrime/securesms/util/ViewUtil;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p0, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;->closeButton:Landroid/widget/ImageView;

    .line 81
    new-instance v10, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector$PropagatingClickListener;

    invoke-direct {v10, p0, v3, v2}, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector$PropagatingClickListener;-><init>(Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;ILorg/thoughtcrime/securesms/components/AttachmentTypeSelector$1;)V

    invoke-virtual {p4, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    new-instance p4, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector$PropagatingClickListener;

    const/4 v10, 0x3

    invoke-direct {p4, p0, v10, v2}, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector$PropagatingClickListener;-><init>(Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;ILorg/thoughtcrime/securesms/components/AttachmentTypeSelector$1;)V

    invoke-virtual {v1, p4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    new-instance p4, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector$PropagatingClickListener;

    const/4 v1, 0x2

    invoke-direct {p4, p0, v1, v2}, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector$PropagatingClickListener;-><init>(Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;ILorg/thoughtcrime/securesms/components/AttachmentTypeSelector$1;)V

    invoke-virtual {v4, p4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    new-instance p4, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector$PropagatingClickListener;

    const/4 v4, 0x4

    invoke-direct {p4, p0, v4, v2}, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector$PropagatingClickListener;-><init>(Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;ILorg/thoughtcrime/securesms/components/AttachmentTypeSelector$1;)V

    invoke-virtual {v5, p4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    new-instance p4, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector$PropagatingClickListener;

    const/4 v4, 0x5

    invoke-direct {p4, p0, v4, v2}, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector$PropagatingClickListener;-><init>(Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;ILorg/thoughtcrime/securesms/components/AttachmentTypeSelector$1;)V

    invoke-virtual {v6, p4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    new-instance p4, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector$PropagatingClickListener;

    const/4 v4, 0x7

    invoke-direct {p4, p0, v4, v2}, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector$PropagatingClickListener;-><init>(Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;ILorg/thoughtcrime/securesms/components/AttachmentTypeSelector$1;)V

    invoke-virtual {v7, p4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    new-instance p4, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector$PropagatingClickListener;

    const/4 v4, 0x6

    invoke-direct {p4, p0, v4, v2}, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector$PropagatingClickListener;-><init>(Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;ILorg/thoughtcrime/securesms/components/AttachmentTypeSelector$1;)V

    invoke-virtual {v8, p4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    new-instance p4, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector$CloseClickListener;

    invoke-direct {p4, p0, v2}, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector$CloseClickListener;-><init>(Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector$1;)V

    invoke-virtual {v9, p4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    new-instance p4, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector$RecentPhotoSelectedListener;

    invoke-direct {p4, p0, v2}, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector$RecentPhotoSelectedListener;-><init>(Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector$1;)V

    invoke-virtual {p3, p4}, Lorg/thoughtcrime/securesms/components/RecentPhotoViewRail;->setListener(Lorg/thoughtcrime/securesms/components/RecentPhotoViewRail$OnItemClickedListener;)V

    .line 91
    invoke-static {p1}, Lorg/thoughtcrime/securesms/util/Prefs;->isLocationStreamingEnabled(Landroid/content/Context;)Z

    move-result p4

    if-nez p4, :cond_0

    const/16 p4, 0x8

    .line 92
    invoke-virtual {v8, p4}, Landroid/widget/ImageView;->setVisibility(I)V

    const v4, 0x7f0901b4

    .line 93
    invoke-static {v0, v4}, Lorg/thoughtcrime/securesms/util/ViewUtil;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p4}, Landroid/view/View;->setVisibility(I)V

    .line 96
    :cond_0
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;->setLocationButtonImage(Landroid/content/Context;)V

    .line 98
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;->setContentView(Landroid/view/View;)V

    const/4 p1, -0x1

    .line 99
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;->setWidth(I)V

    const/4 p1, -0x2

    .line 100
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;->setHeight(I)V

    .line 101
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    .line 102
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;->setAnimationStyle(I)V

    .line 103
    invoke-virtual {p0, v1}, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;->setInputMethodMode(I)V

    .line 104
    invoke-virtual {p0, v3}, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;->setFocusable(Z)V

    .line 105
    invoke-virtual {p0, v3}, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;->setTouchable(Z)V

    .line 107
    invoke-virtual {p2, v3, v2, p3}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void
.end method

.method static synthetic access$300(Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;->animateWindowInCircular(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$400(Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;Landroid/view/View;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;->animateWindowInTranslate(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$501(Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;)V
    .locals 0

    .line 35
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method static synthetic access$601(Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;)V
    .locals 0

    .line 35
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method static synthetic access$700(Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;Landroid/view/View;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;->animateWindowOutTranslate(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$800(Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;)Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector$AttachmentClickedListener;
    .locals 0

    .line 35
    iget-object p0, p0, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;->listener:Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector$AttachmentClickedListener;

    return-object p0
.end method

.method private animateButtonIn(Landroid/view/View;I)V
    .locals 11

    .line 173
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 174
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 177
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 178
    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v1, 0x12c

    .line 179
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    int-to-long v1, p2

    .line 180
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    .line 181
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private animateWindowInCircular(Landroid/view/View;Landroid/view/View;)V
    .locals 3

    .line 186
    invoke-direct {p0, p1, p2}, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;->getClickOrigin(Landroid/view/View;Landroid/view/View;)Landroid/util/Pair;

    move-result-object p1

    .line 187
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 188
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    .line 189
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 191
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    .line 187
    invoke-static {p2, v0, p1, v2, v1}, Lcom/google/android/material/chip/Chip$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object p1

    const-wide/16 v0, 0x12c

    .line 192
    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 193
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method private animateWindowInTranslate(Landroid/view/View;)V
    .locals 3

    .line 197
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p1, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v1, 0x12c

    .line 198
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 200
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;->getContentView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private animateWindowOutCircular(Landroid/view/View;Landroid/view/View;)V
    .locals 3

    .line 205
    invoke-direct {p0, p1, p2}, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;->getClickOrigin(Landroid/view/View;Landroid/view/View;)Landroid/util/Pair;

    move-result-object p1

    .line 206
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;->getContentView()Landroid/view/View;

    move-result-object p2

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 207
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    .line 208
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 209
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;->getContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    .line 206
    invoke-static {p2, v0, p1, v1, v2}, Lcom/google/android/material/chip/Chip$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object p1

    const-wide/16 v0, 0x12c

    .line 212
    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 213
    new-instance p2, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector$2;

    invoke-direct {p2, p0}, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector$2;-><init>(Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 232
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method private animateWindowOutTranslate(Landroid/view/View;)V
    .locals 3

    .line 236
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr v1, p1

    int-to-float p1, v1

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, p1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v1, 0x12c

    .line 237
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 238
    new-instance p1, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector$3;

    invoke-direct {p1, p0}, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector$3;-><init>(Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;)V

    invoke-virtual {v0, p1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 253
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;->getContentView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private getClickOrigin(Landroid/view/View;Landroid/view/View;)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 257
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-nez p1, :cond_0

    new-instance p1, Landroid/util/Pair;

    invoke-direct {p1, v1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_0
    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 260
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v3, v2, v0

    .line 261
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/2addr v4, v1

    add-int/2addr v3, v4

    aput v3, v2, v0

    const/4 v3, 0x1

    aget v4, v2, v3

    .line 262
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/2addr p1, v1

    add-int/2addr v4, p1

    aput v4, v2, v3

    new-array p1, v1, [I

    .line 265
    invoke-virtual {p2, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    aget p2, v2, v0

    aget v0, p1, v0

    sub-int/2addr p2, v0

    aget v0, v2, v3

    aget p1, p1, v3

    sub-int/2addr v0, p1

    .line 270
    new-instance p1, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method private setLocationButtonImage(Landroid/content/Context;)V
    .locals 2

    .line 163
    invoke-static {p1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object v0

    iget v1, p0, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;->chatId:I

    invoke-virtual {v0, v1}, Lcom/b44t/messenger/DcContext;->isSendingLocationsToChat(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f080133

    goto :goto_0

    :cond_0
    const v0, 0x7f080134

    .line 169
    :goto_0
    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;->locationButton:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .line 150
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 151
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;->currentAnchor:Landroid/view/View;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;->animateWindowOutCircular(Landroid/view/View;Landroid/view/View;)V

    goto :goto_0

    .line 153
    :cond_0
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;->animateWindowOutTranslate(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public setListener(Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector$AttachmentClickedListener;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;->listener:Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector$AttachmentClickedListener;

    return-void
.end method

.method public show(Landroid/app/Activity;Landroid/view/View;)V
    .locals 5

    .line 111
    invoke-static {}, Lorg/thoughtcrime/securesms/permissions/Permissions;->galleryPermissions()[Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/thoughtcrime/securesms/permissions/Permissions;->hasAll(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;->recentRail:Lorg/thoughtcrime/securesms/components/RecentPhotoViewRail;

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/components/RecentPhotoViewRail;->setVisibility(I)V

    .line 113
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;->loaderManager:Landroidx/loader/app/LoaderManager;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;->recentRail:Lorg/thoughtcrime/securesms/components/RecentPhotoViewRail;

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v2, v3}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    goto :goto_0

    .line 115
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;->recentRail:Lorg/thoughtcrime/securesms/components/RecentPhotoViewRail;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lorg/thoughtcrime/securesms/components/RecentPhotoViewRail;->setVisibility(I)V

    .line 118
    :goto_0
    iput-object p2, p0, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;->currentAnchor:Landroid/view/View;

    .line 119
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;->setLocationButtonImage(Landroid/content/Context;)V

    const/16 p1, 0x50

    .line 121
    invoke-virtual {p0, p2, p1, v1, v1}, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;->showAtLocation(Landroid/view/View;III)V

    .line 123
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;->getContentView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector$1;

    invoke-direct {v0, p0, p2}, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector$1;-><init>(Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 136
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x15

    if-lt p1, p2, :cond_1

    .line 137
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;->cameraButton:Landroid/widget/ImageView;

    const/16 p2, 0x96

    invoke-direct {p0, p1, p2}, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;->animateButtonIn(Landroid/view/View;I)V

    .line 138
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;->videoButton:Landroid/widget/ImageView;

    invoke-direct {p0, p1, p2}, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;->animateButtonIn(Landroid/view/View;I)V

    .line 139
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;->imageButton:Landroid/widget/ImageView;

    const/16 p2, 0x64

    invoke-direct {p0, p1, p2}, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;->animateButtonIn(Landroid/view/View;I)V

    .line 140
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;->audioButton:Landroid/widget/ImageView;

    invoke-direct {p0, p1, p2}, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;->animateButtonIn(Landroid/view/View;I)V

    .line 141
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;->locationButton:Landroid/widget/ImageView;

    const/16 p2, 0x4b

    invoke-direct {p0, p1, p2}, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;->animateButtonIn(Landroid/view/View;I)V

    .line 142
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;->documentButton:Landroid/widget/ImageView;

    invoke-direct {p0, p1, p2}, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;->animateButtonIn(Landroid/view/View;I)V

    .line 143
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;->contactButton:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v1}, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;->animateButtonIn(Landroid/view/View;I)V

    .line 144
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;->closeButton:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v1}, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;->animateButtonIn(Landroid/view/View;I)V

    :cond_1
    return-void
.end method
