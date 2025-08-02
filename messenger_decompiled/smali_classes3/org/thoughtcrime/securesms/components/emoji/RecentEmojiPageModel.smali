.class public Lorg/thoughtcrime/securesms/components/emoji/RecentEmojiPageModel;
.super Ljava/lang/Object;
.source "RecentEmojiPageModel.java"

# interfaces
.implements Lorg/thoughtcrime/securesms/components/emoji/EmojiPageModel;


# static fields
.field private static final EMOJI_LRU_SIZE:I = 0x32

.field private static final TAG:Ljava/lang/String; = "RecentEmojiPageModel"


# instance fields
.field private final preferenceName:Ljava/lang/String;

.field private final prefs:Landroid/content/SharedPreferences;

.field private final recentlyUsed:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/emoji/RecentEmojiPageModel;->prefs:Landroid/content/SharedPreferences;

    .line 35
    iput-object p2, p0, Lorg/thoughtcrime/securesms/components/emoji/RecentEmojiPageModel;->preferenceName:Ljava/lang/String;

    .line 36
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/emoji/RecentEmojiPageModel;->getPersistedCache()Ljava/util/LinkedHashSet;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/emoji/RecentEmojiPageModel;->recentlyUsed:Ljava/util/LinkedHashSet;

    return-void
.end method

.method static synthetic access$000(Lorg/thoughtcrime/securesms/components/emoji/RecentEmojiPageModel;)Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lorg/thoughtcrime/securesms/components/emoji/RecentEmojiPageModel;->preferenceName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lorg/thoughtcrime/securesms/components/emoji/RecentEmojiPageModel;)Landroid/content/SharedPreferences;
    .locals 0

    .line 25
    iget-object p0, p0, Lorg/thoughtcrime/securesms/components/emoji/RecentEmojiPageModel;->prefs:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 25
    sget-object v0, Lorg/thoughtcrime/securesms/components/emoji/RecentEmojiPageModel;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getPersistedCache()Ljava/util/LinkedHashSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/RecentEmojiPageModel;->prefs:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/emoji/RecentEmojiPageModel;->preferenceName:Ljava/lang/String;

    const-string v2, "[]"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    :try_start_0
    invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->defaultInstance()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v1

    const-class v2, Ljava/util/LinkedHashSet;

    const-class v3, Ljava/lang/String;

    .line 43
    invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructCollectionType(Ljava/lang/Class;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/CollectionType;

    move-result-object v1

    .line 44
    invoke-static {}, Lorg/thoughtcrime/securesms/util/JsonUtils;->getMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashSet;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 46
    sget-object v1, Lorg/thoughtcrime/securesms/components/emoji/RecentEmojiPageModel;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 47
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$getDisplayEmoji$0(Ljava/lang/String;)Lorg/thoughtcrime/securesms/components/emoji/Emoji;
    .locals 3

    .line 62
    new-instance v0, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-direct {v0, v1}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getDisplayEmoji()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/thoughtcrime/securesms/components/emoji/Emoji;",
            ">;"
        }
    .end annotation

    .line 62
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/emoji/RecentEmojiPageModel;->getEmoji()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/annimon/stream/Stream;->of(Ljava/lang/Iterable;)Lcom/annimon/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/RecentEmojiPageModel$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/thoughtcrime/securesms/components/emoji/RecentEmojiPageModel$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Lcom/annimon/stream/Stream;->map(Lcom/annimon/stream/function/Function;)Lcom/annimon/stream/Stream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/annimon/stream/Stream;->toList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEmoji()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/emoji/RecentEmojiPageModel;->recentlyUsed:Ljava/util/LinkedHashSet;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 57
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    return-object v0
.end method

.method public getIconAttr()I
    .locals 1

    const v0, 0x7f04020f

    return v0
.end method

.method public getSprite()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public hasSpriteMap()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDynamic()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCodePointSelected(Ljava/lang/String;)V
    .locals 2

    .line 78
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/RecentEmojiPageModel;->recentlyUsed:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 79
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/RecentEmojiPageModel;->recentlyUsed:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/emoji/RecentEmojiPageModel;->recentlyUsed:Ljava/util/LinkedHashSet;

    invoke-virtual {p1}, Ljava/util/LinkedHashSet;->size()I

    move-result p1

    const/16 v0, 0x32

    if-le p1, v0, :cond_0

    .line 82
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/emoji/RecentEmojiPageModel;->recentlyUsed:Ljava/util/LinkedHashSet;

    invoke-virtual {p1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 83
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 87
    :cond_0
    new-instance p1, Ljava/util/LinkedHashSet;

    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/RecentEmojiPageModel;->recentlyUsed:Ljava/util/LinkedHashSet;

    invoke-direct {p1, v0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 88
    new-instance v0, Lorg/thoughtcrime/securesms/components/emoji/RecentEmojiPageModel$1;

    invoke-direct {v0, p0, p1}, Lorg/thoughtcrime/securesms/components/emoji/RecentEmojiPageModel$1;-><init>(Lorg/thoughtcrime/securesms/components/emoji/RecentEmojiPageModel;Ljava/util/LinkedHashSet;)V

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 103
    invoke-virtual {v0, p1, v1}, Lorg/thoughtcrime/securesms/components/emoji/RecentEmojiPageModel$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
