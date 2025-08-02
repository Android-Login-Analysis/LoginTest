.class public Lcom/github/penfeizhou/animation/webp/decode/VP8XChunk;
.super Lcom/github/penfeizhou/animation/webp/decode/BaseChunk;
.source "VP8XChunk.java"


# static fields
.field private static final FLAG_ALPHA:I = 0x10

.field private static final FLAG_ANIMATION:I = 0x2

.field static final ID:I


# instance fields
.field public canvasHeight:I

.field public canvasWidth:I

.field flags:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "VP8X"

    .line 14
    invoke-static {v0}, Lcom/github/penfeizhou/animation/webp/decode/BaseChunk;->fourCCToInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/github/penfeizhou/animation/webp/decode/VP8XChunk;->ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/github/penfeizhou/animation/webp/decode/BaseChunk;-><init>()V

    return-void
.end method


# virtual methods
.method alpha()Z
    .locals 2

    .line 80
    iget-byte v0, p0, Lcom/github/penfeizhou/animation/webp/decode/VP8XChunk;->flags:B

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method animation()Z
    .locals 2

    .line 73
    iget-byte v0, p0, Lcom/github/penfeizhou/animation/webp/decode/VP8XChunk;->flags:B

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method innerParse(Lcom/github/penfeizhou/animation/webp/io/WebPReader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    invoke-virtual {p1}, Lcom/github/penfeizhou/animation/webp/io/WebPReader;->peek()B

    move-result v0

    iput-byte v0, p0, Lcom/github/penfeizhou/animation/webp/decode/VP8XChunk;->flags:B

    const-wide/16 v0, 0x3

    .line 64
    invoke-virtual {p1, v0, v1}, Lcom/github/penfeizhou/animation/webp/io/WebPReader;->skip(J)J

    .line 65
    invoke-virtual {p1}, Lcom/github/penfeizhou/animation/webp/io/WebPReader;->get1Based()I

    move-result v0

    iput v0, p0, Lcom/github/penfeizhou/animation/webp/decode/VP8XChunk;->canvasWidth:I

    .line 66
    invoke-virtual {p1}, Lcom/github/penfeizhou/animation/webp/io/WebPReader;->get1Based()I

    move-result p1

    iput p1, p0, Lcom/github/penfeizhou/animation/webp/decode/VP8XChunk;->canvasHeight:I

    return-void
.end method
