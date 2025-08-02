.class public Lcom/github/penfeizhou/animation/gif/decode/ColorTable;
.super Ljava/lang/Object;
.source "ColorTable.java"

# interfaces
.implements Lcom/github/penfeizhou/animation/gif/decode/Block;


# instance fields
.field private colorTable:[I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/github/penfeizhou/animation/gif/decode/ColorTable;->colorTable:[I

    return-void
.end method


# virtual methods
.method public getColorTable()[I
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/github/penfeizhou/animation/gif/decode/ColorTable;->colorTable:[I

    return-object v0
.end method

.method public receive(Lcom/github/penfeizhou/animation/gif/io/GifReader;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 66
    :goto_0
    iget-object v1, p0, Lcom/github/penfeizhou/animation/gif/decode/ColorTable;->colorTable:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 67
    invoke-virtual {p1}, Lcom/github/penfeizhou/animation/gif/io/GifReader;->peek()B

    move-result v1

    .line 68
    invoke-virtual {p1}, Lcom/github/penfeizhou/animation/gif/io/GifReader;->peek()B

    move-result v2

    .line 69
    invoke-virtual {p1}, Lcom/github/penfeizhou/animation/gif/io/GifReader;->peek()B

    move-result v3

    .line 71
    iget-object v4, p0, Lcom/github/penfeizhou/animation/gif/decode/ColorTable;->colorTable:[I

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    const/high16 v5, -0x1000000

    or-int/2addr v3, v5

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v3

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v2

    aput v1, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public size()I
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/github/penfeizhou/animation/gif/decode/ColorTable;->colorTable:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x3

    return v0
.end method
