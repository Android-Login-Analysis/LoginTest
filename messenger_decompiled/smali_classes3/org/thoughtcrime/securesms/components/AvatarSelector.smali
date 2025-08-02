.class public Lorg/thoughtcrime/securesms/components/AvatarSelector;
.super Landroid/widget/PopupWindow;
.source "AvatarSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/components/AvatarSelector$AttachmentClickedListener;,
        Lorg/thoughtcrime/securesms/components/AvatarSelector$PropagatingClickListener;,
        Lorg/thoughtcrime/securesms/components/AvatarSelector$CloseClickListener;,
        Lorg/thoughtcrime/securesms/components/AvatarSelector$RecentPhotoSelectedListener;
    }
.end annotation


# static fields
.field public static final ADD_GALLERY:I = 0x1

.field private static final ANIMATION_DURATION:I = 0x12c

.field public static final REMOVE_PHOTO:I = 0x8

.field public static final TAKE_PHOTO:I = 0x5


# instance fields
.field private final cameraButton:Landroid/widget/ImageView;

.field private final closeButton:Landroid/widget/ImageView;

.field private final imageButton:Landroid/widget/ImageView;

.field private listener:Lorg/thoughtcrime/securesms/components/AvatarSelector$AttachmentClickedListener;

.field private final loaderManager:Landroidx/loader/app/LoaderManager;

.field private final recentRail:Lorg/thoughtcrime/securesms/components/RecentPhotoViewRail;

.field private final removeButton:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/loader/app/LoaderManager;Lorg/thoughtcrime/securesms/components/AvatarSelector$AttachmentClickedListener;Z)V
    .locals 7

    .line 43
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    const-string v0, "layout_inflater"

    .line 45
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    const v0, 0x7f0c0025

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 46
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 48
    iput-object p3, p0, Lorg/thoughtcrime/securesms/components/AvatarSelector;->listener:Lorg/thoughtcrime/securesms/components/AvatarSelector$AttachmentClickedListener;

    .line 49
    iput-object p2, p0, Lorg/thoughtcrime/securesms/components/AvatarSelector;->loaderManager:Landroidx/loader/app/LoaderManager;

    const p3, 0x7f0902ce

    .line 50
    invoke-static {p1, p3}, Lorg/thoughtcrime/securesms/util/ViewUtil;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lorg/thoughtcrime/securesms/components/RecentPhotoViewRail;

    iput-object p3, p0, Lorg/thoughtcrime/securesms/components/AvatarSelector;->recentRail:Lorg/thoughtcrime/securesms/components/RecentPhotoViewRail;

    const v0, 0x7f090162

    .line 51
    invoke-static {p1, v0}, Lorg/thoughtcrime/securesms/util/ViewUtil;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/components/AvatarSelector;->imageButton:Landroid/widget/ImageView;

    const v3, 0x7f090090

    .line 52
    invoke-static {p1, v3}, Lorg/thoughtcrime/securesms/util/ViewUtil;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lorg/thoughtcrime/securesms/components/AvatarSelector;->cameraButton:Landroid/widget/ImageView;

    const v4, 0x7f0900ae

    .line 53
    invoke-static {p1, v4}, Lorg/thoughtcrime/securesms/util/ViewUtil;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lorg/thoughtcrime/securesms/components/AvatarSelector;->closeButton:Landroid/widget/ImageView;

    const v5, 0x7f0902d7

    .line 54
    invoke-static {p1, v5}, Lorg/thoughtcrime/securesms/util/ViewUtil;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lorg/thoughtcrime/securesms/components/AvatarSelector;->removeButton:Landroid/widget/ImageView;

    .line 56
    new-instance v6, Lorg/thoughtcrime/securesms/components/AvatarSelector$PropagatingClickListener;

    invoke-direct {v6, p0, v2, v1}, Lorg/thoughtcrime/securesms/components/AvatarSelector$PropagatingClickListener;-><init>(Lorg/thoughtcrime/securesms/components/AvatarSelector;ILorg/thoughtcrime/securesms/components/AvatarSelector$1;)V

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    new-instance v0, Lorg/thoughtcrime/securesms/components/AvatarSelector$PropagatingClickListener;

    const/4 v6, 0x5

    invoke-direct {v0, p0, v6, v1}, Lorg/thoughtcrime/securesms/components/AvatarSelector$PropagatingClickListener;-><init>(Lorg/thoughtcrime/securesms/components/AvatarSelector;ILorg/thoughtcrime/securesms/components/AvatarSelector$1;)V

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    new-instance v0, Lorg/thoughtcrime/securesms/components/AvatarSelector$CloseClickListener;

    invoke-direct {v0, p0, v1}, Lorg/thoughtcrime/securesms/components/AvatarSelector$CloseClickListener;-><init>(Lorg/thoughtcrime/securesms/components/AvatarSelector;Lorg/thoughtcrime/securesms/components/AvatarSelector$1;)V

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    new-instance v0, Lorg/thoughtcrime/securesms/components/AvatarSelector$PropagatingClickListener;

    const/16 v3, 0x8

    invoke-direct {v0, p0, v3, v1}, Lorg/thoughtcrime/securesms/components/AvatarSelector$PropagatingClickListener;-><init>(Lorg/thoughtcrime/securesms/components/AvatarSelector;ILorg/thoughtcrime/securesms/components/AvatarSelector$1;)V

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    new-instance v0, Lorg/thoughtcrime/securesms/components/AvatarSelector$RecentPhotoSelectedListener;

    invoke-direct {v0, p0, v1}, Lorg/thoughtcrime/securesms/components/AvatarSelector$RecentPhotoSelectedListener;-><init>(Lorg/thoughtcrime/securesms/components/AvatarSelector;Lorg/thoughtcrime/securesms/components/AvatarSelector$1;)V

    invoke-virtual {p3, v0}, Lorg/thoughtcrime/securesms/components/RecentPhotoViewRail;->setListener(Lorg/thoughtcrime/securesms/components/RecentPhotoViewRail$OnItemClickedListener;)V

    if-nez p4, :cond_0

    .line 62
    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    const p4, 0x7f0902d8

    .line 63
    invoke-static {p1, p4}, Lorg/thoughtcrime/securesms/util/ViewUtil;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 66
    :cond_0
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/components/AvatarSelector;->setContentView(Landroid/view/View;)V

    const/4 p1, -0x1

    .line 67
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/components/AvatarSelector;->setWidth(I)V

    const/4 p1, -0x2

    .line 68
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/components/AvatarSelector;->setHeight(I)V

    .line 69
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/components/AvatarSelector;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    .line 70
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/components/AvatarSelector;->setAnimationStyle(I)V

    const/4 p1, 0x2

    .line 71
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/components/AvatarSelector;->setInputMethodMode(I)V

    .line 72
    invoke-virtual {p0, v2}, Lorg/thoughtcrime/securesms/components/AvatarSelector;->setFocusable(Z)V

    .line 73
    invoke-virtual {p0, v2}, Lorg/thoughtcrime/securesms/components/AvatarSelector;->setTouchable(Z)V

    .line 75
    invoke-virtual {p2, v2, v1, p3}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void
.end method

.method static synthetic access$300(Lorg/thoughtcrime/securesms/components/AvatarSelector;Landroid/view/View;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/components/AvatarSelector;->animateWindowInTranslate(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$401(Lorg/thoughtcrime/securesms/components/AvatarSelector;)V
    .locals 0

    .line 25
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method static synthetic access$500(Lorg/thoughtcrime/securesms/components/AvatarSelector;Landroid/view/View;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/components/AvatarSelector;->animateWindowOutTranslate(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$600(Lorg/thoughtcrime/securesms/components/AvatarSelector;)Lorg/thoughtcrime/securesms/components/AvatarSelector$AttachmentClickedListener;
    .locals 0

    .line 25
    iget-object p0, p0, Lorg/thoughtcrime/securesms/components/AvatarSelector;->listener:Lorg/thoughtcrime/securesms/components/AvatarSelector$AttachmentClickedListener;

    return-object p0
.end method

.method private animateWindowInTranslate(Landroid/view/View;)V
    .locals 3

    .line 109
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p1, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v1, 0x12c

    .line 110
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 112
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/AvatarSelector;->getContentView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private animateWindowOutTranslate(Landroid/view/View;)V
    .locals 3

    .line 116
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

    .line 117
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 118
    new-instance p1, Lorg/thoughtcrime/securesms/components/AvatarSelector$2;

    invoke-direct {p1, p0}, Lorg/thoughtcrime/securesms/components/AvatarSelector$2;-><init>(Lorg/thoughtcrime/securesms/components/AvatarSelector;)V

    invoke-virtual {v0, p1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 133
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/AvatarSelector;->getContentView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 100
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/AvatarSelector;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/thoughtcrime/securesms/components/AvatarSelector;->animateWindowOutTranslate(Landroid/view/View;)V

    return-void
.end method

.method public setListener(Lorg/thoughtcrime/securesms/components/AvatarSelector$AttachmentClickedListener;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/AvatarSelector;->listener:Lorg/thoughtcrime/securesms/components/AvatarSelector$AttachmentClickedListener;

    return-void
.end method

.method public show(Landroid/app/Activity;Landroid/view/View;)V
    .locals 4

    .line 79
    invoke-static {}, Lorg/thoughtcrime/securesms/permissions/Permissions;->galleryPermissions()[Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/thoughtcrime/securesms/permissions/Permissions;->hasAll(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 80
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/AvatarSelector;->recentRail:Lorg/thoughtcrime/securesms/components/RecentPhotoViewRail;

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/components/RecentPhotoViewRail;->setVisibility(I)V

    .line 81
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/AvatarSelector;->loaderManager:Landroidx/loader/app/LoaderManager;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/thoughtcrime/securesms/components/AvatarSelector;->recentRail:Lorg/thoughtcrime/securesms/components/RecentPhotoViewRail;

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v1, v2}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    goto :goto_0

    .line 83
    :cond_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/AvatarSelector;->recentRail:Lorg/thoughtcrime/securesms/components/RecentPhotoViewRail;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lorg/thoughtcrime/securesms/components/RecentPhotoViewRail;->setVisibility(I)V

    :goto_0
    const/16 p1, 0x50

    .line 86
    invoke-virtual {p0, p2, p1, v0, v0}, Lorg/thoughtcrime/securesms/components/AvatarSelector;->showAtLocation(Landroid/view/View;III)V

    .line 88
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/AvatarSelector;->getContentView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p2, Lorg/thoughtcrime/securesms/components/AvatarSelector$1;

    invoke-direct {p2, p0}, Lorg/thoughtcrime/securesms/components/AvatarSelector$1;-><init>(Lorg/thoughtcrime/securesms/components/AvatarSelector;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
