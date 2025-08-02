.class public Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiDrawInfo;
.super Ljava/lang/Object;
.source "EmojiDrawInfo.java"


# instance fields
.field private final index:I

.field private final page:Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiPageBitmap;


# direct methods
.method public constructor <init>(Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiPageBitmap;I)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiDrawInfo;->page:Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiPageBitmap;

    .line 13
    iput p2, p0, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiDrawInfo;->index:I

    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .line 21
    iget v0, p0, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiDrawInfo;->index:I

    return v0
.end method

.method public getPage()Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiPageBitmap;
    .locals 1

    .line 17
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiDrawInfo;->page:Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiPageBitmap;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DrawInfo{page="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiDrawInfo;->page:Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiPageBitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiDrawInfo;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
