.class Lcom/github/penfeizhou/animation/apng/decode/IDATChunk;
.super Lcom/github/penfeizhou/animation/apng/decode/Chunk;
.source "IDATChunk.java"


# static fields
.field static final ID:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "IDAT"

    .line 9
    invoke-static {v0}, Lcom/github/penfeizhou/animation/apng/decode/Chunk;->fourCCToInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/github/penfeizhou/animation/apng/decode/IDATChunk;->ID:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/github/penfeizhou/animation/apng/decode/Chunk;-><init>()V

    return-void
.end method
