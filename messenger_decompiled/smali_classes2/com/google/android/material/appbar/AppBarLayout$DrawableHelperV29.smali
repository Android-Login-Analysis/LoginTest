.class Lcom/google/android/material/appbar/AppBarLayout$DrawableHelperV29;
.super Ljava/lang/Object;
.source "AppBarLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/appbar/AppBarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DrawableHelperV29"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2573
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/graphics/drawable/Drawable;)Landroid/content/res/ColorStateList;
    .locals 0

    .line 2573
    invoke-static {p0}, Lcom/google/android/material/appbar/AppBarLayout$DrawableHelperV29;->maybeGetBackgroundCSL(Landroid/graphics/drawable/Drawable;)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method private static maybeGetBackgroundCSL(Landroid/graphics/drawable/Drawable;)Landroid/content/res/ColorStateList;
    .locals 1

    .line 2577
    invoke-static {p0}, Lcom/google/android/material/chip/Chip$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2578
    invoke-static {p0}, Lcom/google/android/material/chip/Chip$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/graphics/drawable/ColorStateListDrawable;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/material/chip/Chip$$ExternalSyntheticApiModelOutline0;->m(Landroid/graphics/drawable/ColorStateListDrawable;)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
