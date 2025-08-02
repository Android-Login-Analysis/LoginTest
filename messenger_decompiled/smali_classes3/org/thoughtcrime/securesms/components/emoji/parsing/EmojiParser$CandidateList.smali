.class public Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiParser$CandidateList;
.super Ljava/lang/Object;
.source "EmojiParser.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CandidateList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiParser$Candidate;",
        ">;"
    }
.end annotation


# instance fields
.field public final allEmojis:Z

.field public final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiParser$Candidate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiParser$Candidate;",
            ">;Z)V"
        }
    .end annotation

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiParser$CandidateList;->list:Ljava/util/List;

    .line 123
    iput-boolean p2, p0, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiParser$CandidateList;->allEmojis:Z

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiParser$Candidate;",
            ">;"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiParser$CandidateList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 127
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiParser$CandidateList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
