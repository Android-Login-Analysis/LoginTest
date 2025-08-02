.class public Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiParser;
.super Ljava/lang/Object;
.source "EmojiParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiParser$CandidateList;,
        Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiParser$Candidate;
    }
.end annotation


# instance fields
.field private final emojiTree:Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree;


# direct methods
.method public constructor <init>(Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiParser;->emojiTree:Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree;

    return-void
.end method

.method private getEmojiEndPos(Ljava/lang/CharSequence;I)I
    .locals 4

    add-int/lit8 v0, p2, 0x1

    const/4 v1, -0x1

    .line 79
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-gt v0, v2, :cond_2

    .line 80
    iget-object v2, p0, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiParser;->emojiTree:Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree;

    invoke-virtual {v2, p1, p2, v0}, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree;->isEmoji(Ljava/lang/CharSequence;II)Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$Matches;

    move-result-object v2

    .line 82
    invoke-virtual {v2}, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$Matches;->exactMatch()Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v0

    goto :goto_1

    .line 84
    :cond_0
    invoke-virtual {v2}, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree$Matches;->impossibleMatch()Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method


# virtual methods
.method public findCandidates(Ljava/lang/CharSequence;)Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiParser$CandidateList;
    .locals 9

    .line 43
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 46
    new-instance p1, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiParser$CandidateList;

    invoke-direct {p1, v0, v1}, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiParser$CandidateList;-><init>(Ljava/util/List;Z)V

    return-object p1

    .line 49
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x1

    if-lez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const/4 v4, 0x0

    .line 51
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 52
    invoke-direct {p0, p1, v4}, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiParser;->getEmojiEndPos(Ljava/lang/CharSequence;I)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    .line 55
    iget-object v6, p0, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiParser;->emojiTree:Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree;

    invoke-virtual {v6, p1, v4, v5}, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree;->getEmoji(Ljava/lang/CharSequence;II)Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiDrawInfo;

    move-result-object v6

    add-int/lit8 v7, v5, 0x2

    .line 57
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-gt v7, v8, :cond_2

    .line 58
    invoke-static {p1, v5}, Lorg/thoughtcrime/securesms/components/emoji/parsing/Fitzpatrick;->fitzpatrickFromUnicode(Ljava/lang/CharSequence;I)Lorg/thoughtcrime/securesms/components/emoji/parsing/Fitzpatrick;

    move-result-object v8

    if-eqz v8, :cond_2

    move v5, v7

    .line 63
    :cond_2
    new-instance v7, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiParser$Candidate;

    invoke-direct {v7, v4, v5, v6}, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiParser$Candidate;-><init>(IILorg/thoughtcrime/securesms/components/emoji/parsing/EmojiDrawInfo;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v5, -0x1

    goto :goto_2

    .line 66
    :cond_3
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    if-eq v5, v6, :cond_4

    const/4 v2, 0x0

    :cond_4
    :goto_2
    add-int/2addr v4, v3

    goto :goto_1

    .line 71
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v3

    and-int/2addr p1, v2

    .line 73
    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiParser$CandidateList;

    invoke-direct {v1, v0, p1}, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiParser$CandidateList;-><init>(Ljava/util/List;Z)V

    return-object v1
.end method
