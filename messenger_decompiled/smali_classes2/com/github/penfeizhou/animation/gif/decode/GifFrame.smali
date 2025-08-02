.class public Lcom/github/penfeizhou/animation/gif/decode/GifFrame;
.super Lcom/github/penfeizhou/animation/decode/Frame;
.source "GifFrame.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/penfeizhou/animation/decode/Frame<",
        "Lcom/github/penfeizhou/animation/gif/io/GifReader;",
        "Lcom/github/penfeizhou/animation/gif/io/GifWriter;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_DELAY:I = 0xa

.field private static final sDataBlock:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[B>;"
        }
    .end annotation
.end field


# instance fields
.field public final colorTable:Lcom/github/penfeizhou/animation/gif/decode/ColorTable;

.field public final disposalMethod:I

.field private final imageDataOffset:I

.field private final interlace:Z

.field private final lzwMinCodeSize:I

.field public final transparentColorIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "animation-decoder-gif"

    .line 23
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 31
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/github/penfeizhou/animation/gif/decode/GifFrame;->sDataBlock:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Lcom/github/penfeizhou/animation/gif/io/GifReader;Lcom/github/penfeizhou/animation/gif/decode/ColorTable;Lcom/github/penfeizhou/animation/gif/decode/GraphicControlExtension;Lcom/github/penfeizhou/animation/gif/decode/ImageDescriptor;)V
    .locals 2

    .line 39
    invoke-direct {p0, p1}, Lcom/github/penfeizhou/animation/decode/Frame;-><init>(Lcom/github/penfeizhou/animation/io/Reader;)V

    const/4 p1, -0x1

    if-eqz p3, :cond_2

    .line 41
    invoke-virtual {p3}, Lcom/github/penfeizhou/animation/gif/decode/GraphicControlExtension;->disposalMethod()I

    move-result v0

    iput v0, p0, Lcom/github/penfeizhou/animation/gif/decode/GifFrame;->disposalMethod:I

    .line 42
    iget v0, p3, Lcom/github/penfeizhou/animation/gif/decode/GraphicControlExtension;->delayTime:I

    const/16 v1, 0xa

    if-gtz v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    iget v0, p3, Lcom/github/penfeizhou/animation/gif/decode/GraphicControlExtension;->delayTime:I

    :goto_0
    mul-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/github/penfeizhou/animation/gif/decode/GifFrame;->frameDuration:I

    .line 45
    invoke-virtual {p3}, Lcom/github/penfeizhou/animation/gif/decode/GraphicControlExtension;->transparencyFlag()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    iget p1, p3, Lcom/github/penfeizhou/animation/gif/decode/GraphicControlExtension;->transparentColorIndex:I

    iput p1, p0, Lcom/github/penfeizhou/animation/gif/decode/GifFrame;->transparentColorIndex:I

    goto :goto_1

    .line 48
    :cond_1
    iput p1, p0, Lcom/github/penfeizhou/animation/gif/decode/GifFrame;->transparentColorIndex:I

    goto :goto_1

    :cond_2
    const/4 p3, 0x0

    .line 51
    iput p3, p0, Lcom/github/penfeizhou/animation/gif/decode/GifFrame;->disposalMethod:I

    .line 52
    iput p1, p0, Lcom/github/penfeizhou/animation/gif/decode/GifFrame;->transparentColorIndex:I

    .line 54
    :goto_1
    iget p1, p4, Lcom/github/penfeizhou/animation/gif/decode/ImageDescriptor;->frameX:I

    iput p1, p0, Lcom/github/penfeizhou/animation/gif/decode/GifFrame;->frameX:I

    .line 55
    iget p1, p4, Lcom/github/penfeizhou/animation/gif/decode/ImageDescriptor;->frameY:I

    iput p1, p0, Lcom/github/penfeizhou/animation/gif/decode/GifFrame;->frameY:I

    .line 56
    iget p1, p4, Lcom/github/penfeizhou/animation/gif/decode/ImageDescriptor;->frameWidth:I

    iput p1, p0, Lcom/github/penfeizhou/animation/gif/decode/GifFrame;->frameWidth:I

    .line 57
    iget p1, p4, Lcom/github/penfeizhou/animation/gif/decode/ImageDescriptor;->frameHeight:I

    iput p1, p0, Lcom/github/penfeizhou/animation/gif/decode/GifFrame;->frameHeight:I

    .line 58
    invoke-virtual {p4}, Lcom/github/penfeizhou/animation/gif/decode/ImageDescriptor;->interlaceFlag()Z

    move-result p1

    iput-boolean p1, p0, Lcom/github/penfeizhou/animation/gif/decode/GifFrame;->interlace:Z

    .line 59
    invoke-virtual {p4}, Lcom/github/penfeizhou/animation/gif/decode/ImageDescriptor;->localColorTableFlag()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 60
    iget-object p1, p4, Lcom/github/penfeizhou/animation/gif/decode/ImageDescriptor;->localColorTable:Lcom/github/penfeizhou/animation/gif/decode/ColorTable;

    iput-object p1, p0, Lcom/github/penfeizhou/animation/gif/decode/GifFrame;->colorTable:Lcom/github/penfeizhou/animation/gif/decode/ColorTable;

    goto :goto_2

    .line 62
    :cond_3
    iput-object p2, p0, Lcom/github/penfeizhou/animation/gif/decode/GifFrame;->colorTable:Lcom/github/penfeizhou/animation/gif/decode/ColorTable;

    .line 64
    :goto_2
    iget p1, p4, Lcom/github/penfeizhou/animation/gif/decode/ImageDescriptor;->lzwMinimumCodeSize:I

    iput p1, p0, Lcom/github/penfeizhou/animation/gif/decode/GifFrame;->lzwMinCodeSize:I

    .line 65
    iget p1, p4, Lcom/github/penfeizhou/animation/gif/decode/ImageDescriptor;->imageDataOffset:I

    iput p1, p0, Lcom/github/penfeizhou/animation/gif/decode/GifFrame;->imageDataOffset:I

    return-void
.end method

.method private native uncompressLZW(Lcom/github/penfeizhou/animation/gif/io/GifReader;[II[IIIIZ[B)V
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;ILandroid/graphics/Bitmap;Lcom/github/penfeizhou/animation/gif/io/GifWriter;)Landroid/graphics/Bitmap;
    .locals 2

    .line 75
    :try_start_0
    iget v0, p0, Lcom/github/penfeizhou/animation/gif/decode/GifFrame;->frameWidth:I

    iget v1, p0, Lcom/github/penfeizhou/animation/gif/decode/GifFrame;->frameHeight:I

    mul-int v0, v0, v1

    mul-int v1, p3, p3

    div-int/2addr v0, v1

    invoke-virtual {p5, v0}, Lcom/github/penfeizhou/animation/gif/io/GifWriter;->reset(I)V

    .line 76
    invoke-virtual {p5}, Lcom/github/penfeizhou/animation/gif/io/GifWriter;->asIntArray()[I

    move-result-object v0

    .line 77
    invoke-virtual {p0, v0, p3}, Lcom/github/penfeizhou/animation/gif/decode/GifFrame;->encode([II)V

    .line 78
    invoke-virtual {p5}, Lcom/github/penfeizhou/animation/gif/io/GifWriter;->asBuffer()Ljava/nio/IntBuffer;

    move-result-object p5

    invoke-virtual {p5}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object p5

    invoke-virtual {p4, p5}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 79
    iget-object p5, p0, Lcom/github/penfeizhou/animation/gif/decode/GifFrame;->srcRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput v0, p5, Landroid/graphics/Rect;->left:I

    .line 80
    iget-object p5, p0, Lcom/github/penfeizhou/animation/gif/decode/GifFrame;->srcRect:Landroid/graphics/Rect;

    iput v0, p5, Landroid/graphics/Rect;->top:I

    .line 81
    iget-object p5, p0, Lcom/github/penfeizhou/animation/gif/decode/GifFrame;->srcRect:Landroid/graphics/Rect;

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p5, Landroid/graphics/Rect;->right:I

    .line 82
    iget-object p5, p0, Lcom/github/penfeizhou/animation/gif/decode/GifFrame;->srcRect:Landroid/graphics/Rect;

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p5, Landroid/graphics/Rect;->bottom:I

    .line 83
    iget-object p5, p0, Lcom/github/penfeizhou/animation/gif/decode/GifFrame;->dstRect:Landroid/graphics/Rect;

    iget v0, p0, Lcom/github/penfeizhou/animation/gif/decode/GifFrame;->frameX:I

    int-to-float v0, v0

    int-to-float p3, p3

    div-float/2addr v0, p3

    float-to-int v0, v0

    iput v0, p5, Landroid/graphics/Rect;->left:I

    .line 84
    iget-object p5, p0, Lcom/github/penfeizhou/animation/gif/decode/GifFrame;->dstRect:Landroid/graphics/Rect;

    iget v0, p0, Lcom/github/penfeizhou/animation/gif/decode/GifFrame;->frameY:I

    int-to-float v0, v0

    div-float/2addr v0, p3

    float-to-int v0, v0

    iput v0, p5, Landroid/graphics/Rect;->top:I

    .line 85
    iget-object p5, p0, Lcom/github/penfeizhou/animation/gif/decode/GifFrame;->dstRect:Landroid/graphics/Rect;

    iget v0, p0, Lcom/github/penfeizhou/animation/gif/decode/GifFrame;->frameX:I

    int-to-float v0, v0

    div-float/2addr v0, p3

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p5, Landroid/graphics/Rect;->right:I

    .line 86
    iget-object p5, p0, Lcom/github/penfeizhou/animation/gif/decode/GifFrame;->dstRect:Landroid/graphics/Rect;

    iget v0, p0, Lcom/github/penfeizhou/animation/gif/decode/GifFrame;->frameY:I

    int-to-float v0, v0

    div-float/2addr v0, p3

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    int-to-float p3, p3

    add-float/2addr v0, p3

    float-to-int p3, v0

    iput p3, p5, Landroid/graphics/Rect;->bottom:I

    .line 88
    iget-object p3, p0, Lcom/github/penfeizhou/animation/gif/decode/GifFrame;->srcRect:Landroid/graphics/Rect;

    iget-object p5, p0, Lcom/github/penfeizhou/animation/gif/decode/GifFrame;->dstRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p4, p3, p5, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 90
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object p4
.end method

.method public bridge synthetic draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;ILandroid/graphics/Bitmap;Lcom/github/penfeizhou/animation/io/Writer;)Landroid/graphics/Bitmap;
    .locals 0

    .line 21
    check-cast p5, Lcom/github/penfeizhou/animation/gif/io/GifWriter;

    invoke-virtual/range {p0 .. p5}, Lcom/github/penfeizhou/animation/gif/decode/GifFrame;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;ILandroid/graphics/Bitmap;Lcom/github/penfeizhou/animation/gif/io/GifWriter;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public encode([II)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/github/penfeizhou/animation/gif/decode/GifFrame;->reader:Lcom/github/penfeizhou/animation/io/Reader;

    check-cast v0, Lcom/github/penfeizhou/animation/gif/io/GifReader;

    invoke-virtual {v0}, Lcom/github/penfeizhou/animation/gif/io/GifReader;->reset()V

    .line 97
    iget-object v0, p0, Lcom/github/penfeizhou/animation/gif/decode/GifFrame;->reader:Lcom/github/penfeizhou/animation/io/Reader;

    check-cast v0, Lcom/github/penfeizhou/animation/gif/io/GifReader;

    iget v1, p0, Lcom/github/penfeizhou/animation/gif/decode/GifFrame;->imageDataOffset:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/github/penfeizhou/animation/gif/io/GifReader;->skip(J)J

    .line 98
    sget-object v0, Lcom/github/penfeizhou/animation/gif/decode/GifFrame;->sDataBlock:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    if-nez v1, :cond_0

    const/16 v1, 0xff

    new-array v1, v1, [B

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    move-object v11, v1

    .line 103
    iget-object v0, p0, Lcom/github/penfeizhou/animation/gif/decode/GifFrame;->reader:Lcom/github/penfeizhou/animation/io/Reader;

    move-object v3, v0

    check-cast v3, Lcom/github/penfeizhou/animation/gif/io/GifReader;

    iget-object v0, p0, Lcom/github/penfeizhou/animation/gif/decode/GifFrame;->colorTable:Lcom/github/penfeizhou/animation/gif/decode/ColorTable;

    .line 104
    invoke-virtual {v0}, Lcom/github/penfeizhou/animation/gif/decode/ColorTable;->getColorTable()[I

    move-result-object v4

    iget v5, p0, Lcom/github/penfeizhou/animation/gif/decode/GifFrame;->transparentColorIndex:I

    iget v0, p0, Lcom/github/penfeizhou/animation/gif/decode/GifFrame;->frameWidth:I

    div-int v7, v0, p2

    iget v0, p0, Lcom/github/penfeizhou/animation/gif/decode/GifFrame;->frameHeight:I

    div-int v8, v0, p2

    iget v9, p0, Lcom/github/penfeizhou/animation/gif/decode/GifFrame;->lzwMinCodeSize:I

    iget-boolean v10, p0, Lcom/github/penfeizhou/animation/gif/decode/GifFrame;->interlace:Z

    move-object v2, p0

    move-object v6, p1

    .line 103
    invoke-direct/range {v2 .. v11}, Lcom/github/penfeizhou/animation/gif/decode/GifFrame;->uncompressLZW(Lcom/github/penfeizhou/animation/gif/io/GifReader;[II[IIIIZ[B)V

    return-void
.end method

.method public transparencyFlag()Z
    .locals 1

    .line 69
    iget v0, p0, Lcom/github/penfeizhou/animation/gif/decode/GifFrame;->transparentColorIndex:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
