.class public Lorg/thoughtcrime/securesms/components/emoji/CompositeEmojiPageModel;
.super Ljava/lang/Object;
.source "CompositeEmojiPageModel.java"

# interfaces
.implements Lorg/thoughtcrime/securesms/components/emoji/EmojiPageModel;


# instance fields
.field private final iconAttr:I

.field private final models:[Lorg/thoughtcrime/securesms/components/emoji/EmojiPageModel;


# direct methods
.method public varargs constructor <init>(I[Lorg/thoughtcrime/securesms/components/emoji/EmojiPageModel;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lorg/thoughtcrime/securesms/components/emoji/CompositeEmojiPageModel;->iconAttr:I

    .line 16
    iput-object p2, p0, Lorg/thoughtcrime/securesms/components/emoji/CompositeEmojiPageModel;->models:[Lorg/thoughtcrime/securesms/components/emoji/EmojiPageModel;

    return-void
.end method


# virtual methods
.method public getDisplayEmoji()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/thoughtcrime/securesms/components/emoji/Emoji;",
            ">;"
        }
    .end annotation

    .line 34
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 35
    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/emoji/CompositeEmojiPageModel;->models:[Lorg/thoughtcrime/securesms/components/emoji/EmojiPageModel;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 36
    invoke-interface {v4}, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageModel;->getDisplayEmoji()Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getEmoji()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 25
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 26
    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/emoji/CompositeEmojiPageModel;->models:[Lorg/thoughtcrime/securesms/components/emoji/EmojiPageModel;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 27
    invoke-interface {v4}, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageModel;->getEmoji()Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getIconAttr()I
    .locals 1

    .line 20
    iget v0, p0, Lorg/thoughtcrime/securesms/components/emoji/CompositeEmojiPageModel;->iconAttr:I

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

    const/4 v0, 0x0

    return v0
.end method
