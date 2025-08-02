.class public Lorg/thoughtcrime/securesms/components/emoji/StaticEmojiPageModel;
.super Ljava/lang/Object;
.source "StaticEmojiPageModel.java"

# interfaces
.implements Lorg/thoughtcrime/securesms/components/emoji/EmojiPageModel;


# instance fields
.field private final emoji:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/thoughtcrime/securesms/components/emoji/Emoji;",
            ">;"
        }
    .end annotation
.end field

.field private final iconAttr:I

.field private final sprite:Ljava/lang/String;


# direct methods
.method public constructor <init>(I[Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 19
    array-length v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p2, v3

    .line 20
    new-instance v5, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    aput-object v4, v6, v2

    invoke-direct {v5, v6}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 23
    :cond_0
    iput p1, p0, Lorg/thoughtcrime/securesms/components/emoji/StaticEmojiPageModel;->iconAttr:I

    .line 24
    iput-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/StaticEmojiPageModel;->emoji:Ljava/util/List;

    .line 25
    iput-object p3, p0, Lorg/thoughtcrime/securesms/components/emoji/StaticEmojiPageModel;->sprite:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I[Lorg/thoughtcrime/securesms/components/emoji/Emoji;Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lorg/thoughtcrime/securesms/components/emoji/StaticEmojiPageModel;->iconAttr:I

    .line 30
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/emoji/StaticEmojiPageModel;->emoji:Ljava/util/List;

    .line 31
    iput-object p3, p0, Lorg/thoughtcrime/securesms/components/emoji/StaticEmojiPageModel;->sprite:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDisplayEmoji()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/thoughtcrime/securesms/components/emoji/Emoji;",
            ">;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/StaticEmojiPageModel;->emoji:Ljava/util/List;

    return-object v0
.end method

.method public getEmoji()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 40
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 41
    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/emoji/StaticEmojiPageModel;->emoji:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    .line 42
    invoke-virtual {v2}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;->getVariations()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getIconAttr()I
    .locals 1

    .line 35
    iget v0, p0, Lorg/thoughtcrime/securesms/components/emoji/StaticEmojiPageModel;->iconAttr:I

    return v0
.end method

.method public getSprite()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/StaticEmojiPageModel;->sprite:Ljava/lang/String;

    return-object v0
.end method

.method public hasSpriteMap()Z
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/StaticEmojiPageModel;->sprite:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDynamic()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
