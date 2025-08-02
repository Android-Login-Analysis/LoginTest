.class public Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;
.super Landroid/widget/FrameLayout;
.source "MediaKeyboard.java"

# interfaces
.implements Lorg/thoughtcrime/securesms/components/InputAwareLayout$InputView;
.implements Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider$Presenter;
.implements Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider$Controller;
.implements Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardBottomTabAdapter$EventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard$MediaKeyboardListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaKeyboard"


# instance fields
.field private addButton:Landroid/view/View;

.field private backspaceButton:Lorg/thoughtcrime/securesms/components/RepeatableImageKey;

.field private backspaceButtonBackup:Lorg/thoughtcrime/securesms/components/RepeatableImageKey;

.field private categoryPager:Landroidx/viewpager/widget/ViewPager;

.field private categoryTabAdapter:Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardBottomTabAdapter;

.field private categoryTabs:Landroidx/recyclerview/widget/RecyclerView;

.field private keyboardListener:Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard$MediaKeyboardListener;

.field private providerIndex:I

.field private providerTabs:Landroid/view/ViewGroup;

.field private providers:[Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider;

.field private searchButton:Landroid/view/View;

.field private final tabsAtBottom:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, v0}, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lorg/thoughtcrime/securesms/R$styleable;->MediaKeyboard:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 59
    :try_start_0
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-nez p2, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->tabsAtBottom:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 62
    throw p2
.end method

.method static synthetic access$000(Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;)Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardBottomTabAdapter;
    .locals 0

    .line 26
    iget-object p0, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->categoryTabAdapter:Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardBottomTabAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 26
    iget-object p0, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->categoryTabs:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method private initView()V
    .locals 4

    .line 167
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0091

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901e5

    .line 169
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    const v2, 0x7f0901e4

    .line 170
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    .line 172
    iget-boolean v3, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->tabsAtBottom:Z

    if-eqz v3, :cond_0

    move-object v1, v2

    :cond_0
    iput-object v1, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->categoryTabs:Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0901e1

    .line 173
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/viewpager/widget/ViewPager;

    iput-object v1, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->categoryPager:Landroidx/viewpager/widget/ViewPager;

    const v1, 0x7f0901e2

    .line 174
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->providerTabs:Landroid/view/ViewGroup;

    const v1, 0x7f0901dd

    .line 175
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/thoughtcrime/securesms/components/RepeatableImageKey;

    iput-object v1, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->backspaceButton:Lorg/thoughtcrime/securesms/components/RepeatableImageKey;

    const v1, 0x7f0901de

    .line 176
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/thoughtcrime/securesms/components/RepeatableImageKey;

    iput-object v1, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->backspaceButtonBackup:Lorg/thoughtcrime/securesms/components/RepeatableImageKey;

    const v1, 0x7f0901e3

    .line 177
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->searchButton:Landroid/view/View;

    const v1, 0x7f0901dc

    .line 178
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->addButton:Landroid/view/View;

    .line 180
    new-instance v0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardBottomTabAdapter;

    invoke-static {p0}, Lorg/thoughtcrime/securesms/mms/GlideApp;->with(Landroid/view/View;)Lorg/thoughtcrime/securesms/mms/GlideRequests;

    move-result-object v1

    iget-boolean v2, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->tabsAtBottom:Z

    invoke-direct {v0, v1, p0, v2}, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardBottomTabAdapter;-><init>(Lorg/thoughtcrime/securesms/mms/GlideRequests;Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardBottomTabAdapter$EventListener;Z)V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->categoryTabAdapter:Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardBottomTabAdapter;

    .line 182
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->categoryTabs:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 183
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->categoryTabs:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->categoryTabAdapter:Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardBottomTabAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 184
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->categoryTabs:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    return-void
.end method

.method static synthetic lambda$presentAddButton$1(Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider$AddObserver;Landroid/view/View;)V
    .locals 0

    .line 272
    invoke-interface {p0}, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider$AddObserver;->onAddClicked()V

    return-void
.end method

.method private presentAddButton(Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider$AddObserver;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 271
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->addButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 272
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->addButton:Landroid/view/View;

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard$$ExternalSyntheticLambda1;-><init>(Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider$AddObserver;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 274
    :cond_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->addButton:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 275
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->addButton:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method private presentBackspaceButton(Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider$BackspaceObserver;Z)V
    .locals 4

    const/16 v0, 0x8

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    .line 251
    iget-object p2, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->backspaceButton:Lorg/thoughtcrime/securesms/components/RepeatableImageKey;

    invoke-virtual {p2, v1}, Lorg/thoughtcrime/securesms/components/RepeatableImageKey;->setVisibility(I)V

    .line 252
    iget-object p2, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->backspaceButton:Lorg/thoughtcrime/securesms/components/RepeatableImageKey;

    invoke-virtual {p2, v2}, Lorg/thoughtcrime/securesms/components/RepeatableImageKey;->setOnKeyEventListener(Lorg/thoughtcrime/securesms/components/RepeatableImageKey$KeyEventListener;)V

    .line 253
    iget-object p2, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->backspaceButtonBackup:Lorg/thoughtcrime/securesms/components/RepeatableImageKey;

    invoke-virtual {p2, v3}, Lorg/thoughtcrime/securesms/components/RepeatableImageKey;->setVisibility(I)V

    .line 254
    iget-object p2, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->backspaceButtonBackup:Lorg/thoughtcrime/securesms/components/RepeatableImageKey;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard$$ExternalSyntheticLambda0;-><init>(Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider$BackspaceObserver;)V

    invoke-virtual {p2, v0}, Lorg/thoughtcrime/securesms/components/RepeatableImageKey;->setOnKeyEventListener(Lorg/thoughtcrime/securesms/components/RepeatableImageKey$KeyEventListener;)V

    goto :goto_0

    .line 256
    :cond_0
    iget-object p2, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->backspaceButton:Lorg/thoughtcrime/securesms/components/RepeatableImageKey;

    invoke-virtual {p2, v3}, Lorg/thoughtcrime/securesms/components/RepeatableImageKey;->setVisibility(I)V

    .line 257
    iget-object p2, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->backspaceButton:Lorg/thoughtcrime/securesms/components/RepeatableImageKey;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard$$ExternalSyntheticLambda0;-><init>(Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider$BackspaceObserver;)V

    invoke-virtual {p2, v1}, Lorg/thoughtcrime/securesms/components/RepeatableImageKey;->setOnKeyEventListener(Lorg/thoughtcrime/securesms/components/RepeatableImageKey$KeyEventListener;)V

    .line 258
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->backspaceButtonBackup:Lorg/thoughtcrime/securesms/components/RepeatableImageKey;

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/components/RepeatableImageKey;->setVisibility(I)V

    .line 259
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->backspaceButtonBackup:Lorg/thoughtcrime/securesms/components/RepeatableImageKey;

    invoke-virtual {p1, v2}, Lorg/thoughtcrime/securesms/components/RepeatableImageKey;->setOnKeyEventListener(Lorg/thoughtcrime/securesms/components/RepeatableImageKey$KeyEventListener;)V

    goto :goto_0

    .line 262
    :cond_1
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->backspaceButton:Lorg/thoughtcrime/securesms/components/RepeatableImageKey;

    invoke-virtual {p1, v1}, Lorg/thoughtcrime/securesms/components/RepeatableImageKey;->setVisibility(I)V

    .line 263
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->backspaceButton:Lorg/thoughtcrime/securesms/components/RepeatableImageKey;

    invoke-virtual {p1, v2}, Lorg/thoughtcrime/securesms/components/RepeatableImageKey;->setOnKeyEventListener(Lorg/thoughtcrime/securesms/components/RepeatableImageKey$KeyEventListener;)V

    .line 264
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->backspaceButtonBackup:Lorg/thoughtcrime/securesms/components/RepeatableImageKey;

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/components/RepeatableImageKey;->setVisibility(I)V

    .line 265
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->backspaceButton:Lorg/thoughtcrime/securesms/components/RepeatableImageKey;

    invoke-virtual {p1, v2}, Lorg/thoughtcrime/securesms/components/RepeatableImageKey;->setOnKeyEventListener(Lorg/thoughtcrime/securesms/components/RepeatableImageKey$KeyEventListener;)V

    :goto_0
    return-void
.end method

.method private presentCategoryPager(Landroidx/viewpager/widget/PagerAdapter;Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider$TabIconProvider;I)V
    .locals 2

    .line 199
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->categoryPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 200
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->categoryPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 203
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->categoryPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p3}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 205
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->categoryPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->clearOnPageChangeListeners()V

    .line 206
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->categoryPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard$1;

    invoke-direct {v1, p0}, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard$1;-><init>(Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 222
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->categoryTabAdapter:Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardBottomTabAdapter;

    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result p1

    invoke-virtual {v0, p2, p1}, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardBottomTabAdapter;->setTabIconProvider(Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider$TabIconProvider;I)V

    .line 223
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->categoryTabAdapter:Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardBottomTabAdapter;

    invoke-virtual {p1, p3}, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardBottomTabAdapter;->setActivePosition(I)V

    return-void
.end method

.method private presentProviderStrip(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 286
    :goto_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->searchButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 287
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->backspaceButton:Lorg/thoughtcrime/securesms/components/RepeatableImageKey;

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/components/RepeatableImageKey;->setVisibility(I)V

    .line 288
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->providerTabs:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method private presentProviderTabs([Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider;I)V
    .locals 6

    .line 227
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->providerTabs:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 229
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 231
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 232
    aget-object v3, p1, v2

    if-ne v2, p2, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    .line 233
    :goto_1
    invoke-interface {v3, v4}, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider;->getProviderIconView(Z)I

    move-result v4

    iget-object v5, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->providerTabs:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4, v5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 235
    invoke-virtual {v4, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 238
    new-instance v3, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, p1, v2}, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard$$ExternalSyntheticLambda2;-><init>(Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;[Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider;I)V

    invoke-virtual {v4, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    iget-object v3, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->providerTabs:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private presentSearchButton(Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider$SearchObserver;)V
    .locals 1

    .line 280
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->searchButton:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private requestPresent([Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider;I)V
    .locals 2

    .line 188
    iget v0, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->providerIndex:I

    aget-object v0, p1, v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider;->setController(Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider$Controller;)V

    .line 189
    iput p2, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->providerIndex:I

    .line 191
    aget-object p2, p1, p2

    invoke-interface {p2, p0}, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider;->setController(Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider$Controller;)V

    .line 192
    iget p2, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->providerIndex:I

    aget-object p2, p1, p2

    array-length p1, p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2, p0, v0}, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider;->requestPresentation(Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider$Presenter;Z)V

    return-void
.end method


# virtual methods
.method public getCurrentPosition()I
    .locals 1

    .line 136
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->categoryPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hide(Z)V
    .locals 1

    const/16 p1, 0x8

    .line 106
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->setVisibility(I)V

    .line 107
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->keyboardListener:Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard$MediaKeyboardListener;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard$MediaKeyboardListener;->onHidden()V

    .line 108
    :cond_0
    sget-object p1, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->TAG:Ljava/lang/String;

    const-string v0, "hide()"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public isShowing()Z
    .locals 1

    .line 80
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 148
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method synthetic lambda$presentProviderTabs$0$org-thoughtcrime-securesms-components-emoji-MediaKeyboard([Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider;ILandroid/view/View;)V
    .locals 0

    .line 239
    invoke-direct {p0, p1, p2}, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->requestPresent([Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider;I)V

    return-void
.end method

.method public onTabSelected(I)V
    .locals 1

    .line 153
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->categoryPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 155
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->categoryTabs:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :cond_0
    return-void
.end method

.method public present(Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider;Landroidx/viewpager/widget/PagerAdapter;Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider$TabIconProvider;Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider$BackspaceObserver;Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider$AddObserver;Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider$SearchObserver;I)V
    .locals 2

    .line 120
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->categoryPager:Landroidx/viewpager/widget/ViewPager;

    if-nez v0, :cond_0

    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->providers:[Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider;

    iget v1, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->providerIndex:I

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 122
    :cond_1
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->keyboardListener:Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard$MediaKeyboardListener;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard$MediaKeyboardListener;->onKeyboardProviderChanged(Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider;)V

    .line 124
    :cond_2
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->providers:[Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider;

    array-length p1, p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 126
    :goto_0
    invoke-direct {p0, v0}, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->presentProviderStrip(Z)V

    .line 127
    invoke-direct {p0, p2, p3, p7}, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->presentCategoryPager(Landroidx/viewpager/widget/PagerAdapter;Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider$TabIconProvider;I)V

    .line 128
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->providers:[Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider;

    iget p2, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->providerIndex:I

    invoke-direct {p0, p1, p2}, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->presentProviderTabs([Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider;I)V

    .line 129
    invoke-direct {p0, p6}, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->presentSearchButton(Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider$SearchObserver;)V

    .line 130
    invoke-direct {p0, p4, v0}, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->presentBackspaceButton(Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider$BackspaceObserver;Z)V

    .line 131
    invoke-direct {p0, p5}, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->presentAddButton(Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider$AddObserver;)V

    return-void
.end method

.method public requestDismissal()V
    .locals 3

    const/4 v0, 0x1

    .line 141
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->hide(Z)V

    const/4 v0, 0x0

    .line 142
    iput v0, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->providerIndex:I

    .line 143
    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->keyboardListener:Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard$MediaKeyboardListener;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->providers:[Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider;

    aget-object v0, v2, v0

    invoke-interface {v1, v0}, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard$MediaKeyboardListener;->onKeyboardProviderChanged(Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider;)V

    :cond_0
    return-void
.end method

.method public setKeyboardListener(Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard$MediaKeyboardListener;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->keyboardListener:Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard$MediaKeyboardListener;

    return-void
.end method

.method public varargs setProviders(I[Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider;)V
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->providers:[Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider;

    invoke-static {v0, p2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    iput-object p2, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->providers:[Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider;

    .line 68
    iput p1, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->providerIndex:I

    .line 70
    invoke-direct {p0, p2, p1}, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->requestPresent([Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider;I)V

    :cond_0
    return-void
.end method

.method public setViewPagerEnabled(Z)V
    .locals 1

    .line 161
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->categoryPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    .line 96
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->categoryPager:Landroidx/viewpager/widget/ViewPager;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->initView()V

    :cond_0
    const/4 v0, 0x0

    .line 98
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->keyboardListener:Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard$MediaKeyboardListener;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard$MediaKeyboardListener;->onShown()V

    .line 101
    :cond_1
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->providers:[Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider;

    iget v1, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->providerIndex:I

    invoke-direct {p0, v0, v1}, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->requestPresent([Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider;I)V

    return-void
.end method

.method public show(IZ)V
    .locals 2

    .line 85
    iget-object p2, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->categoryPager:Landroidx/viewpager/widget/ViewPager;

    if-nez p2, :cond_0

    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->initView()V

    .line 87
    :cond_0
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 88
    iput p1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 89
    sget-object p1, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "showing emoji drawer with height "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-virtual {p0, p2}, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->show()V

    return-void
.end method
