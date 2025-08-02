.class public Lcom/github/penfeizhou/animation/webp/decode/ANIMChunk;
.super Lcom/github/penfeizhou/animation/webp/decode/BaseChunk;
.source "ANIMChunk.java"


# static fields
.field static final ID:I


# instance fields
.field backgroundColor:I

.field loopCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ANIM"

    .line 23
    invoke-static {v0}, Lcom/github/penfeizhou/animation/webp/decode/BaseChunk;->fourCCToInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/github/penfeizhou/animation/webp/decode/ANIMChunk;->ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/github/penfeizhou/animation/webp/decode/BaseChunk;-><init>()V

    return-void
.end method


# virtual methods
.method innerParse(Lcom/github/penfeizhou/animation/webp/io/WebPReader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    invoke-virtual {p1}, Lcom/github/penfeizhou/animation/webp/io/WebPReader;->getUInt32()I

    move-result v0

    iput v0, p0, Lcom/github/penfeizhou/animation/webp/decode/ANIMChunk;->backgroundColor:I

    .line 38
    invoke-virtual {p1}, Lcom/github/penfeizhou/animation/webp/io/WebPReader;->getUInt16()I

    move-result p1

    iput p1, p0, Lcom/github/penfeizhou/animation/webp/decode/ANIMChunk;->loopCount:I

    return-void
.end method
