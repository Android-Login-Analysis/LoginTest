.class public Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;
.super Landroidx/appcompat/widget/LinearLayoutCompat;
.source "KeyboardAwareLinearLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout$OnKeyboardHiddenListener;,
        Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout$OnKeyboardShownListener;
    }
.end annotation


# static fields
.field private static final KEYBOARD_DEBOUNCE:J = 0x96L

.field private static final TAG:Ljava/lang/String; = "KeyboardAwareLinearLayout"


# instance fields
.field private final defaultCustomKeyboardSize:I

.field private final displayMetrics:Landroid/util/DisplayMetrics;

.field private final hiddenListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout$OnKeyboardHiddenListener;",
            ">;"
        }
    .end annotation
.end field

.field private keyboardOpen:Z

.field private final minCustomKeyboardSize:I

.field private final minCustomKeyboardTopMarginLandscape:I

.field private final minCustomKeyboardTopMarginLandscapeBubble:I

.field private final minCustomKeyboardTopMarginPortrait:I

.field private final minKeyboardSize:I

.field private openedAt:J

.field private final rect:Landroid/graphics/Rect;

.field private rotation:I

.field private final shownListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout$OnKeyboardShownListener;",
            ">;"
        }
    .end annotation
.end field

.field private final statusBarHeight:I

.field private viewInset:I


# direct methods
.method public static synthetic $r8$lambda$ov3y76I55iXtGcHFx2Xtq-AJZXA(Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;)V
    .locals 0

    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->updateKeyboardState()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1, v0}, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 75
    invoke-direct {p0, p1, p2, v0}, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->rect:Landroid/graphics/Rect;

    .line 52
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->hiddenListeners:Ljava/util/Set;

    .line 53
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->shownListeners:Ljava/util/Set;

    .line 54
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->displayMetrics:Landroid/util/DisplayMetrics;

    const/4 p1, 0x0

    .line 66
    iput-boolean p1, p0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->keyboardOpen:Z

    .line 67
    iput p1, p0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->rotation:I

    const-wide/16 p1, 0x0

    .line 68
    iput-wide p1, p0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->openedAt:J

    .line 80
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07027c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->minKeyboardSize:I

    .line 81
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070278

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->minCustomKeyboardSize:I

    .line 82
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07006c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->defaultCustomKeyboardSize:I

    .line 83
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07027b

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->minCustomKeyboardTopMarginPortrait:I

    .line 84
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->minCustomKeyboardTopMarginLandscape:I

    .line 85
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07027a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->minCustomKeyboardTopMarginLandscapeBubble:I

    .line 86
    invoke-static {p0}, Lorg/thoughtcrime/securesms/util/ViewUtil;->getStatusBarHeight(Landroid/view/View;)I

    move-result p1

    iput p1, p0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->statusBarHeight:I

    .line 87
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->getViewInset()I

    move-result p1

    iput p1, p0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->viewInset:I

    return-void
.end method

.method private getAvailableHeight()I
    .locals 3

    .line 172
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, p0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->viewInset:I

    sub-int/2addr v0, v1

    .line 173
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 175
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->isLandscape()Z

    move-result v2

    if-eqz v2, :cond_0

    if-le v0, v1, :cond_0

    return v1

    :cond_0
    return v0
.end method

.method private getDeviceRotation()I
    .locals 3

    .line 218
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->isInEditMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 222
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-ge v0, v2, :cond_1

    .line 223
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/thoughtcrime/securesms/util/ServiceUtil;->getWindowManager(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    return v0

    .line 226
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v0, v2, :cond_2

    .line 227
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/time/TimeKt$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v0

    iget-object v2, p0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->displayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v0, v2}, Lkotlinx/coroutines/time/TimeKt$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/Display;Landroid/util/DisplayMetrics;)V

    goto :goto_0

    .line 229
    :cond_2
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/thoughtcrime/securesms/util/ServiceUtil;->getWindowManager(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v2, p0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->displayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v0, v2}, Lkotlinx/coroutines/time/TimeKt$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/Display;Landroid/util/DisplayMetrics;)V

    .line 231
    :goto_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v2, p0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v0, v2, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method private getKeyboardLandscapeHeight()I
    .locals 4

    .line 235
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "keyboard_height_landscape"

    iget v2, p0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->defaultCustomKeyboardSize:I

    .line 236
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 237
    iget v1, p0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->minCustomKeyboardSize:I

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iget v3, p0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->minCustomKeyboardTopMarginLandscape:I

    sub-int/2addr v2, v3

    invoke-static {v0, v1, v2}, Lorg/thoughtcrime/securesms/util/Util;->clamp(III)I

    move-result v0

    return v0
.end method

.method private getKeyboardPortraitHeight()I
    .locals 4

    .line 241
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "keyboard_height_portrait"

    iget v2, p0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->defaultCustomKeyboardSize:I

    .line 242
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 243
    iget v1, p0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->minCustomKeyboardSize:I

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iget v3, p0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->minCustomKeyboardTopMarginPortrait:I

    sub-int/2addr v2, v3

    invoke-static {v0, v1, v2}, Lorg/thoughtcrime/securesms/util/Util;->clamp(III)I

    move-result v0

    return v0
.end method

.method private getViewInset()I
    .locals 4

    .line 154
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v1, "mAttachInfo"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 156
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mStableInsets"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 159
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 160
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 162
    iget v0, v0, Landroid/graphics/Rect;->bottom:I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 168
    :catch_0
    :cond_0
    iget v0, p0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->statusBarHeight:I

    return v0
.end method

.method private notifyHiddenListeners()V
    .locals 2

    .line 299
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->hiddenListeners:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 300
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout$OnKeyboardHiddenListener;

    .line 301
    invoke-interface {v1}, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout$OnKeyboardHiddenListener;->onKeyboardHidden()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyShownListeners()V
    .locals 2

    .line 306
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->shownListeners:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 307
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout$OnKeyboardShownListener;

    .line 308
    invoke-interface {v1}, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout$OnKeyboardShownListener;->onKeyboardShown()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setKeyboardLandscapeHeight(I)V
    .locals 2

    .line 252
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 253
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "keyboard_height_landscape"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private setKeyboardPortraitHeight(I)V
    .locals 2

    .line 247
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 248
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "keyboard_height_portrait"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private updateKeyboardState()V
    .locals 2

    .line 107
    iget v0, p0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->viewInset:I

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->getViewInset()I

    move-result v0

    iput v0, p0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->viewInset:I

    .line 109
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->rect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 111
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->getAvailableHeight()I

    move-result v0

    .line 112
    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    .line 114
    iget v1, p0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->minKeyboardSize:I

    if-le v0, v1, :cond_3

    .line 115
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->getKeyboardHeight()I

    move-result v1

    if-eq v1, v0, :cond_2

    .line 116
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->isLandscape()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    invoke-direct {p0, v0}, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->setKeyboardLandscapeHeight(I)V

    goto :goto_0

    .line 119
    :cond_1
    invoke-direct {p0, v0}, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->setKeyboardPortraitHeight(I)V

    .line 122
    :cond_2
    :goto_0
    iget-boolean v1, p0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->keyboardOpen:Z

    if-nez v1, :cond_4

    .line 123
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->onKeyboardOpen(I)V

    goto :goto_1

    .line 125
    :cond_3
    iget-boolean v0, p0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->keyboardOpen:Z

    if-eqz v0, :cond_4

    .line 126
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->onKeyboardClose()V

    :cond_4
    :goto_1
    return-void
.end method

.method private updateRotation()V
    .locals 2

    .line 98
    iget v0, p0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->rotation:I

    .line 99
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->getDeviceRotation()I

    move-result v1

    iput v1, p0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->rotation:I

    if-eq v0, v1, :cond_0

    .line 101
    sget-object v0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->TAG:Ljava/lang/String;

    const-string v1, "rotation changed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->onKeyboardClose()V

    :cond_0
    return-void
.end method


# virtual methods
.method public addOnKeyboardHiddenListener(Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout$OnKeyboardHiddenListener;)V
    .locals 1

    .line 283
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->hiddenListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnKeyboardShownListener(Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout$OnKeyboardShownListener;)V
    .locals 1

    .line 291
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->shownListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getKeyboardHeight()I
    .locals 1

    .line 209
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->getKeyboardLandscapeHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->getKeyboardPortraitHeight()I

    move-result v0

    :goto_0
    return v0
.end method

.method public isKeyboardOpen()Z
    .locals 1

    .line 205
    iget-boolean v0, p0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->keyboardOpen:Z

    return v0
.end method

.method public isLandscape()Z
    .locals 3

    .line 213
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->getDeviceRotation()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .line 132
    invoke-super {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->onAttachedToWindow()V

    .line 133
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->getDeviceRotation()I

    move-result v0

    iput v0, p0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->rotation:I

    .line 134
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    invoke-static {p0}, Lkotlinx/coroutines/time/TimeKt$$ExternalSyntheticApiModelOutline0;->m(Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;)Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 136
    invoke-static {p0}, Lkotlinx/coroutines/time/TimeKt$$ExternalSyntheticApiModelOutline0;->m(Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;)Landroid/view/WindowInsets;

    move-result-object v0

    .line 138
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_0

    .line 139
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Impl20$$ExternalSyntheticApiModelOutline0;->m$1()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/core/view/WindowInsetsCompat$Impl20$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/animation/AnimatorKt$$ExternalSyntheticApiModelOutline0;->m$3(Landroid/graphics/Insets;)I

    move-result v0

    goto :goto_0

    .line 141
    :cond_0
    invoke-static {v0}, Landroidx/core/view/WindowInsetsCompat$Impl20$$ExternalSyntheticApiModelOutline0;->m$7(Landroid/view/WindowInsets;)I

    move-result v0

    :goto_0
    if-eqz v0, :cond_2

    .line 144
    iget v1, p0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->viewInset:I

    if-eqz v1, :cond_1

    iget v2, p0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->statusBarHeight:I

    if-ne v1, v2, :cond_2

    .line 145
    :cond_1
    sget-object v1, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Updating view inset based on WindowInsets. viewInset: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->viewInset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " windowInset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iput v0, p0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->viewInset:I

    :cond_2
    return-void
.end method

.method protected onKeyboardClose()V
    .locals 5

    .line 192
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->openedAt:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x96

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 193
    sget-object v0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->TAG:Ljava/lang/String;

    const-string v1, "Delaying onKeyboardClose()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    new-instance v0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout$$ExternalSyntheticLambda3;-><init>(Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;)V

    invoke-virtual {p0, v0, v2, v3}, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 198
    :cond_0
    sget-object v0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->TAG:Ljava/lang/String;

    const-string v1, "onKeyboardClose()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 199
    iput-boolean v0, p0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->keyboardOpen:Z

    const-wide/16 v0, 0x0

    .line 200
    iput-wide v0, p0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->openedAt:J

    .line 201
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->notifyHiddenListeners()V

    return-void
.end method

.method protected onKeyboardOpen(I)V
    .locals 3

    .line 184
    sget-object v0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onKeyboardOpen("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 185
    iput-boolean p1, p0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->keyboardOpen:Z

    .line 186
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->openedAt:J

    .line 188
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->notifyShownListeners()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 92
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->updateRotation()V

    .line 93
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->updateKeyboardState()V

    .line 94
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->onMeasure(II)V

    return-void
.end method

.method public postOnKeyboardClose(Ljava/lang/Runnable;)V
    .locals 1

    .line 257
    iget-boolean v0, p0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->keyboardOpen:Z

    if-eqz v0, :cond_0

    .line 258
    new-instance v0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout$1;

    invoke-direct {v0, p0, p1}, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout$1;-><init>(Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->addOnKeyboardHiddenListener(Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout$OnKeyboardHiddenListener;)V

    goto :goto_0

    .line 265
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method public postOnKeyboardOpen(Ljava/lang/Runnable;)V
    .locals 1

    .line 270
    iget-boolean v0, p0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->keyboardOpen:Z

    if-nez v0, :cond_0

    .line 271
    new-instance v0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout$2;

    invoke-direct {v0, p0, p1}, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout$2;-><init>(Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->addOnKeyboardShownListener(Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout$OnKeyboardShownListener;)V

    goto :goto_0

    .line 278
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method public removeOnKeyboardHiddenListener(Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout$OnKeyboardHiddenListener;)V
    .locals 1

    .line 287
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->hiddenListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeOnKeyboardShownListener(Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout$OnKeyboardShownListener;)V
    .locals 1

    .line 295
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->shownListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
