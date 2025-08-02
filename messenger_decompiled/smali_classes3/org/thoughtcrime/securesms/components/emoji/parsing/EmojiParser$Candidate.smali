.class public Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiParser$Candidate;
.super Ljava/lang/Object;
.source "EmojiParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Candidate"
.end annotation


# instance fields
.field private final drawInfo:Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiDrawInfo;

.field private final endIndex:I

.field private final startIndex:I


# direct methods
.method constructor <init>(IILorg/thoughtcrime/securesms/components/emoji/parsing/EmojiDrawInfo;)V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput p1, p0, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiParser$Candidate;->startIndex:I

    .line 100
    iput p2, p0, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiParser$Candidate;->endIndex:I

    .line 101
    iput-object p3, p0, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiParser$Candidate;->drawInfo:Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiDrawInfo;

    return-void
.end method


# virtual methods
.method public getDrawInfo()Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiDrawInfo;
    .locals 1

    .line 105
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiParser$Candidate;->drawInfo:Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiDrawInfo;

    return-object v0
.end method

.method public getEndIndex()I
    .locals 1

    .line 109
    iget v0, p0, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiParser$Candidate;->endIndex:I

    return v0
.end method

.method public getStartIndex()I
    .locals 1

    .line 113
    iget v0, p0, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiParser$Candidate;->startIndex:I

    return v0
.end method
