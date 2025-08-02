.class Lcom/github/penfeizhou/animation/apng/decode/FDATChunk;
.super Lcom/github/penfeizhou/animation/apng/decode/Chunk;
.source "FDATChunk.java"


# static fields
.field static final ID:I


# instance fields
.field sequence_number:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "fdAT"

    .line 13
    invoke-static {v0}, Lcom/github/penfeizhou/animation/apng/decode/Chunk;->fourCCToInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/github/penfeizhou/animation/apng/decode/FDATChunk;->ID:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/github/penfeizhou/animation/apng/decode/Chunk;-><init>()V

    return-void
.end method


# virtual methods
.method innerParse(Lcom/github/penfeizhou/animation/apng/io/APNGReader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18
    invoke-virtual {p1}, Lcom/github/penfeizhou/animation/apng/io/APNGReader;->readInt()I

    move-result p1

    iput p1, p0, Lcom/github/penfeizhou/animation/apng/decode/FDATChunk;->sequence_number:I

    return-void
.end method
