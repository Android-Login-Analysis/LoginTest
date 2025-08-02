.class Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$EmojiTreeNode;
.super Ljava/lang/Object;
.source "EmojiTree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmojiTreeNode"
.end annotation


# instance fields
.field private final children:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$EmojiTreeNode;",
            ">;"
        }
    .end annotation
.end field

.field private emoji:Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiDrawInfo;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$EmojiTreeNode;->children:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$1;)V
    .locals 0

    .line 96
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$EmojiTreeNode;-><init>()V

    return-void
.end method


# virtual methods
.method addChild(C)V
    .locals 2

    .line 114
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$EmojiTreeNode;->children:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$EmojiTreeNode;

    invoke-direct {v1}, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$EmojiTreeNode;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method getChild(C)Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$EmojiTreeNode;
    .locals 1

    .line 118
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$EmojiTreeNode;->children:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$EmojiTreeNode;

    return-object p1
.end method

.method public getEmoji()Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiDrawInfo;
    .locals 1

    .line 106
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$EmojiTreeNode;->emoji:Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiDrawInfo;

    return-object v0
.end method

.method hasChild(C)Z
    .locals 1

    .line 110
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$EmojiTreeNode;->children:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method isEndOfEmoji()Z
    .locals 1

    .line 122
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$EmojiTreeNode;->emoji:Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiDrawInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setEmoji(Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiDrawInfo;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$EmojiTreeNode;->emoji:Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiDrawInfo;

    return-void
.end method
