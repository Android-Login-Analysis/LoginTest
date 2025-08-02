.class public Lorg/thoughtcrime/securesms/components/emoji/EmojiKeyboardProvider;
.super Ljava/lang/Object;
.source "EmojiKeyboardProvider.java"

# interfaces
.implements Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider;
.implements Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider$TabIconProvider;
.implements Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider$BackspaceObserver;
.implements Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter$VariationSelectorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/components/emoji/EmojiKeyboardProvider$EmojiEventListener;,
        Lorg/thoughtcrime/securesms/components/emoji/EmojiKeyboardProvider$EmojiPagerAdapter;
    }
.end annotation


# static fields
.field private static final DELETE_KEY_EVENT:Landroid/view/KeyEvent;

.field private static final RECENT_STORAGE_KEY:Ljava/lang/String; = "pref_recent_emoji2"


# instance fields
.field private final context:Landroid/content/Context;

.field private controller:Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider$Controller;

.field private final emojiEventListener:Lorg/thoughtcrime/securesms/components/emoji/EmojiKeyboardProvider$EmojiEventListener;

.field private final emojiPagerAdapter:Lorg/thoughtcrime/securesms/components/emoji/EmojiKeyboardProvider$EmojiPagerAdapter;

.field private final models:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/thoughtcrime/securesms/components/emoji/EmojiPageModel;",
            ">;"
        }
    .end annotation
.end field

.field private final recentModel:Lorg/thoughtcrime/securesms/components/emoji/RecentEmojiPageModel;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 30
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    const/16 v2, 0x43

    invoke-direct {v0, v1, v2}, Landroid/view/KeyEvent;-><init>(II)V

    sput-object v0, Lorg/thoughtcrime/securesms/components/emoji/EmojiKeyboardProvider;->DELETE_KEY_EVENT:Landroid/view/KeyEvent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/thoughtcrime/securesms/components/emoji/EmojiKeyboardProvider$EmojiEventListener;)V
    .locals 4

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiKeyboardProvider;->context:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiKeyboardProvider;->emojiEventListener:Lorg/thoughtcrime/securesms/components/emoji/EmojiKeyboardProvider$EmojiEventListener;

    .line 45
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiKeyboardProvider;->models:Ljava/util/List;

    .line 46
    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/RecentEmojiPageModel;

    const-string v2, "pref_recent_emoji2"

    invoke-direct {v1, p1, v2}, Lorg/thoughtcrime/securesms/components/emoji/RecentEmojiPageModel;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiKeyboardProvider;->recentModel:Lorg/thoughtcrime/securesms/components/emoji/RecentEmojiPageModel;

    .line 47
    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/EmojiKeyboardProvider$EmojiPagerAdapter;

    new-instance v3, Lorg/thoughtcrime/securesms/components/emoji/EmojiKeyboardProvider$1;

    invoke-direct {v3, p0, p2}, Lorg/thoughtcrime/securesms/components/emoji/EmojiKeyboardProvider$1;-><init>(Lorg/thoughtcrime/securesms/components/emoji/EmojiKeyboardProvider;Lorg/thoughtcrime/securesms/components/emoji/EmojiKeyboardProvider$EmojiEventListener;)V

    invoke-direct {v2, p1, v0, v3, p0}, Lorg/thoughtcrime/securesms/components/emoji/EmojiKeyboardProvider$EmojiPagerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lorg/thoughtcrime/securesms/components/emoji/EmojiKeyboardProvider$EmojiEventListener;Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter$VariationSelectorListener;)V

    iput-object v2, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiKeyboardProvider;->emojiPagerAdapter:Lorg/thoughtcrime/securesms/components/emoji/EmojiKeyboardProvider$EmojiPagerAdapter;

    .line 65
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    sget-object p1, Lorg/thoughtcrime/securesms/components/emoji/EmojiPages;->DISPLAY_PAGES:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method static synthetic access$000(Lorg/thoughtcrime/securesms/components/emoji/EmojiKeyboardProvider;)Lorg/thoughtcrime/securesms/components/emoji/RecentEmojiPageModel;
    .locals 0

    .line 25
    iget-object p0, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiKeyboardProvider;->recentModel:Lorg/thoughtcrime/securesms/components/emoji/RecentEmojiPageModel;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 110
    instance-of p1, p1, Lorg/thoughtcrime/securesms/components/emoji/EmojiKeyboardProvider;

    return p1
.end method

.method public getProviderIconView(Z)I
    .locals 0

    if-eqz p1, :cond_1

    .line 82
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiKeyboardProvider;->context:Landroid/content/Context;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/util/ThemeUtil;->isDarkTheme(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f0c0065

    goto :goto_0

    :cond_0
    const p1, 0x7f0c0067

    :goto_0
    return p1

    .line 84
    :cond_1
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiKeyboardProvider;->context:Landroid/content/Context;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/util/ThemeUtil;->isDarkTheme(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    const p1, 0x7f0c0064

    goto :goto_1

    :cond_2
    const p1, 0x7f0c0066

    :goto_1
    return p1
.end method

.method public loadCategoryTabIcon(Lorg/thoughtcrime/securesms/mms/GlideRequests;Landroid/widget/ImageView;I)V
    .locals 1

    .line 90
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiKeyboardProvider;->context:Landroid/content/Context;

    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiKeyboardProvider;->models:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageModel;

    invoke-interface {p3}, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageModel;->getIconAttr()I

    move-result p3

    invoke-static {p1, p3}, Lorg/thoughtcrime/securesms/util/ResUtil;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 91
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onBackspaceClicked()V
    .locals 2

    .line 96
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiKeyboardProvider;->emojiEventListener:Lorg/thoughtcrime/securesms/components/emoji/EmojiKeyboardProvider$EmojiEventListener;

    if-eqz v0, :cond_0

    .line 97
    sget-object v1, Lorg/thoughtcrime/securesms/components/emoji/EmojiKeyboardProvider;->DELETE_KEY_EVENT:Landroid/view/KeyEvent;

    invoke-interface {v0, v1}, Lorg/thoughtcrime/securesms/components/emoji/EmojiKeyboardProvider$EmojiEventListener;->onKeyEvent(Landroid/view/KeyEvent;)V

    :cond_0
    return-void
.end method

.method public onVariationSelectorStateChanged(Z)V
    .locals 1

    .line 103
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiKeyboardProvider;->controller:Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider$Controller;

    if-eqz v0, :cond_0

    xor-int/lit8 p1, p1, 0x1

    .line 104
    invoke-interface {v0, p1}, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider$Controller;->setViewPagerEnabled(Z)V

    :cond_0
    return-void
.end method

.method public requestPresentation(Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider$Presenter;Z)V
    .locals 8

    .line 71
    iget-object v2, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiKeyboardProvider;->emojiPagerAdapter:Lorg/thoughtcrime/securesms/components/emoji/EmojiKeyboardProvider$EmojiPagerAdapter;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object p2, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiKeyboardProvider;->recentModel:Lorg/thoughtcrime/securesms/components/emoji/RecentEmojiPageModel;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/components/emoji/RecentEmojiPageModel;->getEmoji()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_0

    const/4 p2, 0x0

    const/4 v7, 0x0

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    const/4 v7, 0x1

    :goto_0
    move-object v0, p1

    move-object v1, p0

    move-object v3, p0

    move-object v4, p0

    invoke-interface/range {v0 .. v7}, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider$Presenter;->present(Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider;Landroidx/viewpager/widget/PagerAdapter;Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider$TabIconProvider;Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider$BackspaceObserver;Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider$AddObserver;Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider$SearchObserver;I)V

    return-void
.end method

.method public setController(Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider$Controller;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiKeyboardProvider;->controller:Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider$Controller;

    return-void
.end method
