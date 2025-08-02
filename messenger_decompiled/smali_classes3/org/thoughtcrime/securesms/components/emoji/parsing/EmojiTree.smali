.class public Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree;
.super Ljava/lang/Object;
.source "EmojiTree.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$EmojiTreeNode;,
        Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$Matches;
    }
.end annotation


# static fields
.field private static final TERMINATOR:C = '\ufe0f'


# instance fields
.field private final root:Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$EmojiTreeNode;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$EmojiTreeNode;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$EmojiTreeNode;-><init>(Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$1;)V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree;->root:Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$EmojiTreeNode;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiDrawInfo;)V
    .locals 5

    .line 38
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree;->root:Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$EmojiTreeNode;

    .line 40
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-char v3, p1, v2

    .line 41
    invoke-virtual {v0, v3}, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$EmojiTreeNode;->hasChild(C)Z

    move-result v4

    if-nez v4, :cond_0

    .line 42
    invoke-virtual {v0, v3}, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$EmojiTreeNode;->addChild(C)V

    .line 45
    :cond_0
    invoke-virtual {v0, v3}, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$EmojiTreeNode;->getChild(C)Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$EmojiTreeNode;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {v0, p2}, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$EmojiTreeNode;->setEmoji(Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiDrawInfo;)V

    return-void
.end method

.method public getEmoji(Ljava/lang/CharSequence;II)Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiDrawInfo;
    .locals 4

    .line 78
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree;->root:Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$EmojiTreeNode;

    :goto_0
    const/4 v1, 0x0

    if-ge p2, p3, :cond_1

    .line 81
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 83
    invoke-virtual {v0, v2}, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$EmojiTreeNode;->hasChild(C)Z

    move-result v3

    if-nez v3, :cond_0

    return-object v1

    .line 87
    :cond_0
    invoke-virtual {v0, v2}, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$EmojiTreeNode;->getChild(C)Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$EmojiTreeNode;

    move-result-object v0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 90
    :cond_1
    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$EmojiTreeNode;->getEmoji()Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiDrawInfo;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$EmojiTreeNode;->getEmoji()Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiDrawInfo;

    move-result-object p1

    return-object p1

    :cond_2
    add-int/lit8 p3, p3, -0x1

    .line 91
    invoke-interface {p1, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    const p2, 0xfe0f

    if-eq p1, p2, :cond_3

    invoke-virtual {v0, p2}, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$EmojiTreeNode;->hasChild(C)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v0, p2}, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$EmojiTreeNode;->getChild(C)Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$EmojiTreeNode;

    move-result-object p1

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$EmojiTreeNode;->getEmoji()Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiDrawInfo;

    move-result-object p1

    return-object p1

    :cond_3
    return-object v1
.end method

.method public isEmoji(Ljava/lang/CharSequence;II)Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$Matches;
    .locals 3

    if-nez p1, :cond_0

    .line 53
    sget-object p1, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$Matches;->POSSIBLY:Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$Matches;

    return-object p1

    .line 56
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree;->root:Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$EmojiTreeNode;

    :goto_0
    if-ge p2, p3, :cond_2

    .line 59
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 61
    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$EmojiTreeNode;->hasChild(C)Z

    move-result v2

    if-nez v2, :cond_1

    .line 62
    sget-object p1, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$Matches;->IMPOSSIBLE:Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$Matches;

    return-object p1

    .line 65
    :cond_1
    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$EmojiTreeNode;->getChild(C)Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$EmojiTreeNode;

    move-result-object v0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 68
    :cond_2
    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$EmojiTreeNode;->isEndOfEmoji()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 69
    sget-object p1, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$Matches;->EXACTLY:Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$Matches;

    return-object p1

    :cond_3
    add-int/lit8 p3, p3, -0x1

    .line 70
    invoke-interface {p1, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    const p2, 0xfe0f

    if-eq p1, p2, :cond_4

    invoke-virtual {v0, p2}, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$EmojiTreeNode;->hasChild(C)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {v0, p2}, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$EmojiTreeNode;->getChild(C)Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$EmojiTreeNode;

    move-result-object p1

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$EmojiTreeNode;->isEndOfEmoji()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 71
    sget-object p1, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$Matches;->EXACTLY:Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$Matches;

    return-object p1

    .line 73
    :cond_4
    sget-object p1, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$Matches;->POSSIBLY:Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$Matches;

    return-object p1
.end method
