.class public Lcom/github/penfeizhou/animation/webp/decode/WebPDecoder;
.super Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;
.source "WebPDecoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder<",
        "Lcom/github/penfeizhou/animation/webp/io/WebPReader;",
        "Lcom/github/penfeizhou/animation/webp/io/WebPWriter;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WebPDecoder"


# instance fields
.field private alpha:Z

.field private backgroundColor:I

.field private canvasHeight:I

.field private canvasWidth:I

.field private loopCount:I

.field private final mTransparentFillPaint:Landroid/graphics/Paint;

.field private mWriter:Lcom/github/penfeizhou/animation/webp/io/WebPWriter;

.field private paint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/github/penfeizhou/animation/loader/Loader;Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$RenderListener;)V
    .locals 1

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;-><init>(Lcom/github/penfeizhou/animation/loader/Loader;Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$RenderListener;)V

    .line 45
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/github/penfeizhou/animation/webp/decode/WebPDecoder;->mTransparentFillPaint:Landroid/graphics/Paint;

    const/4 p2, 0x0

    .line 46
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 47
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 48
    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method


# virtual methods
.method protected getLoopCount()I
    .locals 1

    .line 66
    iget v0, p0, Lcom/github/penfeizhou/animation/webp/decode/WebPDecoder;->loopCount:I

    return v0
.end method

.method protected bridge synthetic getReader(Lcom/github/penfeizhou/animation/io/Reader;)Lcom/github/penfeizhou/animation/io/Reader;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lcom/github/penfeizhou/animation/webp/decode/WebPDecoder;->getReader(Lcom/github/penfeizhou/animation/io/Reader;)Lcom/github/penfeizhou/animation/webp/io/WebPReader;

    move-result-object p1

    return-object p1
.end method

.method protected getReader(Lcom/github/penfeizhou/animation/io/Reader;)Lcom/github/penfeizhou/animation/webp/io/WebPReader;
    .locals 1

    .line 61
    new-instance v0, Lcom/github/penfeizhou/animation/webp/io/WebPReader;

    invoke-direct {v0, p1}, Lcom/github/penfeizhou/animation/webp/io/WebPReader;-><init>(Lcom/github/penfeizhou/animation/io/Reader;)V

    return-object v0
.end method

.method protected bridge synthetic getWriter()Lcom/github/penfeizhou/animation/io/Writer;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/github/penfeizhou/animation/webp/decode/WebPDecoder;->getWriter()Lcom/github/penfeizhou/animation/webp/io/WebPWriter;

    move-result-object v0

    return-object v0
.end method

.method protected getWriter()Lcom/github/penfeizhou/animation/webp/io/WebPWriter;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/github/penfeizhou/animation/webp/decode/WebPDecoder;->mWriter:Lcom/github/penfeizhou/animation/webp/io/WebPWriter;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/github/penfeizhou/animation/webp/io/WebPWriter;

    invoke-direct {v0}, Lcom/github/penfeizhou/animation/webp/io/WebPWriter;-><init>()V

    iput-object v0, p0, Lcom/github/penfeizhou/animation/webp/decode/WebPDecoder;->mWriter:Lcom/github/penfeizhou/animation/webp/io/WebPWriter;

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/github/penfeizhou/animation/webp/decode/WebPDecoder;->mWriter:Lcom/github/penfeizhou/animation/webp/io/WebPWriter;

    return-object v0
.end method

.method protected bridge synthetic read(Lcom/github/penfeizhou/animation/io/Reader;)Landroid/graphics/Rect;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    check-cast p1, Lcom/github/penfeizhou/animation/webp/io/WebPReader;

    invoke-virtual {p0, p1}, Lcom/github/penfeizhou/animation/webp/decode/WebPDecoder;->read(Lcom/github/penfeizhou/animation/webp/io/WebPReader;)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method

.method protected read(Lcom/github/penfeizhou/animation/webp/io/WebPReader;)Landroid/graphics/Rect;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    invoke-static {p1}, Lcom/github/penfeizhou/animation/webp/decode/WebPParser;->parse(Lcom/github/penfeizhou/animation/webp/io/WebPReader;)Ljava/util/List;

    move-result-object v0

    .line 79
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/penfeizhou/animation/webp/decode/BaseChunk;

    .line 80
    instance-of v6, v4, Lcom/github/penfeizhou/animation/webp/decode/VP8XChunk;

    if-eqz v6, :cond_1

    .line 81
    check-cast v4, Lcom/github/penfeizhou/animation/webp/decode/VP8XChunk;

    iget v3, v4, Lcom/github/penfeizhou/animation/webp/decode/VP8XChunk;->canvasWidth:I

    iput v3, p0, Lcom/github/penfeizhou/animation/webp/decode/WebPDecoder;->canvasWidth:I

    .line 82
    iget v3, v4, Lcom/github/penfeizhou/animation/webp/decode/VP8XChunk;->canvasHeight:I

    iput v3, p0, Lcom/github/penfeizhou/animation/webp/decode/WebPDecoder;->canvasHeight:I

    .line 83
    invoke-virtual {v4}, Lcom/github/penfeizhou/animation/webp/decode/VP8XChunk;->alpha()Z

    move-result v3

    iput-boolean v3, p0, Lcom/github/penfeizhou/animation/webp/decode/WebPDecoder;->alpha:Z

    const/4 v3, 0x1

    goto :goto_0

    .line 85
    :cond_1
    instance-of v6, v4, Lcom/github/penfeizhou/animation/webp/decode/ANIMChunk;

    if-eqz v6, :cond_2

    .line 87
    check-cast v4, Lcom/github/penfeizhou/animation/webp/decode/ANIMChunk;

    iget v2, v4, Lcom/github/penfeizhou/animation/webp/decode/ANIMChunk;->backgroundColor:I

    iput v2, p0, Lcom/github/penfeizhou/animation/webp/decode/WebPDecoder;->backgroundColor:I

    .line 88
    iget v2, v4, Lcom/github/penfeizhou/animation/webp/decode/ANIMChunk;->loopCount:I

    iput v2, p0, Lcom/github/penfeizhou/animation/webp/decode/WebPDecoder;->loopCount:I

    const/4 v2, 0x1

    goto :goto_0

    .line 89
    :cond_2
    instance-of v5, v4, Lcom/github/penfeizhou/animation/webp/decode/ANMFChunk;

    if-eqz v5, :cond_0

    .line 90
    iget-object v5, p0, Lcom/github/penfeizhou/animation/webp/decode/WebPDecoder;->frames:Ljava/util/List;

    new-instance v6, Lcom/github/penfeizhou/animation/webp/decode/AnimationFrame;

    check-cast v4, Lcom/github/penfeizhou/animation/webp/decode/ANMFChunk;

    invoke-direct {v6, p1, v4}, Lcom/github/penfeizhou/animation/webp/decode/AnimationFrame;-><init>(Lcom/github/penfeizhou/animation/webp/io/WebPReader;Lcom/github/penfeizhou/animation/webp/decode/ANMFChunk;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    if-nez v2, :cond_5

    if-nez v3, :cond_4

    .line 96
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 97
    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 98
    invoke-virtual {p1}, Lcom/github/penfeizhou/animation/webp/io/WebPReader;->toInputStream()Ljava/io/InputStream;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 99
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v2, p0, Lcom/github/penfeizhou/animation/webp/decode/WebPDecoder;->canvasWidth:I

    .line 100
    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v0, p0, Lcom/github/penfeizhou/animation/webp/decode/WebPDecoder;->canvasHeight:I

    .line 102
    :cond_4
    iget-object v0, p0, Lcom/github/penfeizhou/animation/webp/decode/WebPDecoder;->frames:Ljava/util/List;

    new-instance v2, Lcom/github/penfeizhou/animation/webp/decode/StillFrame;

    iget v3, p0, Lcom/github/penfeizhou/animation/webp/decode/WebPDecoder;->canvasWidth:I

    iget v4, p0, Lcom/github/penfeizhou/animation/webp/decode/WebPDecoder;->canvasHeight:I

    invoke-direct {v2, p1, v3, v4}, Lcom/github/penfeizhou/animation/webp/decode/StillFrame;-><init>(Lcom/github/penfeizhou/animation/webp/io/WebPReader;II)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    iput v5, p0, Lcom/github/penfeizhou/animation/webp/decode/WebPDecoder;->loopCount:I

    .line 105
    :cond_5
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/github/penfeizhou/animation/webp/decode/WebPDecoder;->paint:Landroid/graphics/Paint;

    .line 106
    invoke-virtual {p1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 107
    iget-boolean p1, p0, Lcom/github/penfeizhou/animation/webp/decode/WebPDecoder;->alpha:Z

    if-nez p1, :cond_6

    .line 108
    iget-object p1, p0, Lcom/github/penfeizhou/animation/webp/decode/WebPDecoder;->mTransparentFillPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/github/penfeizhou/animation/webp/decode/WebPDecoder;->backgroundColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 110
    :cond_6
    new-instance p1, Landroid/graphics/Rect;

    iget v0, p0, Lcom/github/penfeizhou/animation/webp/decode/WebPDecoder;->canvasWidth:I

    iget v2, p0, Lcom/github/penfeizhou/animation/webp/decode/WebPDecoder;->canvasHeight:I

    invoke-direct {p1, v1, v1, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1
.end method

.method protected release()V
    .locals 0

    return-void
.end method

.method protected renderFrame(Lcom/github/penfeizhou/animation/decode/Frame;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/penfeizhou/animation/decode/Frame<",
            "Lcom/github/penfeizhou/animation/webp/io/WebPReader;",
            "Lcom/github/penfeizhou/animation/webp/io/WebPWriter;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_8

    .line 115
    iget-object v0, p0, Lcom/github/penfeizhou/animation/webp/decode/WebPDecoder;->fullRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/github/penfeizhou/animation/webp/decode/WebPDecoder;->fullRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_8

    iget-object v0, p0, Lcom/github/penfeizhou/animation/webp/decode/WebPDecoder;->fullRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-gtz v0, :cond_1

    goto/16 :goto_2

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/github/penfeizhou/animation/webp/decode/WebPDecoder;->fullRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v1, p0, Lcom/github/penfeizhou/animation/webp/decode/WebPDecoder;->sampleSize:I

    div-int/2addr v0, v1

    iget-object v1, p0, Lcom/github/penfeizhou/animation/webp/decode/WebPDecoder;->fullRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v2, p0, Lcom/github/penfeizhou/animation/webp/decode/WebPDecoder;->sampleSize:I

    div-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/github/penfeizhou/animation/webp/decode/WebPDecoder;->obtainBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 125
    :cond_2
    iget-object v1, p0, Lcom/github/penfeizhou/animation/webp/decode/WebPDecoder;->cachedCanvas:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Canvas;

    if-nez v1, :cond_3

    .line 127
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 128
    iget-object v2, p0, Lcom/github/penfeizhou/animation/webp/decode/WebPDecoder;->cachedCanvas:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    :cond_3
    iget-object v2, p0, Lcom/github/penfeizhou/animation/webp/decode/WebPDecoder;->frameBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 132
    iget-object v2, p0, Lcom/github/penfeizhou/animation/webp/decode/WebPDecoder;->frameBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 134
    iget v2, p0, Lcom/github/penfeizhou/animation/webp/decode/WebPDecoder;->frameIndex:I

    if-nez v2, :cond_5

    .line 135
    iget-boolean v2, p0, Lcom/github/penfeizhou/animation/webp/decode/WebPDecoder;->alpha:Z

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    .line 136
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 138
    :cond_4
    iget v2, p0, Lcom/github/penfeizhou/animation/webp/decode/WebPDecoder;->backgroundColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 141
    :cond_5
    iget-object v2, p0, Lcom/github/penfeizhou/animation/webp/decode/WebPDecoder;->frames:Ljava/util/List;

    iget v3, p0, Lcom/github/penfeizhou/animation/webp/decode/WebPDecoder;->frameIndex:I

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/penfeizhou/animation/decode/Frame;

    .line 143
    instance-of v3, v2, Lcom/github/penfeizhou/animation/webp/decode/AnimationFrame;

    if-eqz v3, :cond_6

    move-object v3, v2

    check-cast v3, Lcom/github/penfeizhou/animation/webp/decode/AnimationFrame;

    iget-boolean v3, v3, Lcom/github/penfeizhou/animation/webp/decode/AnimationFrame;->disposalMethod:Z

    if-eqz v3, :cond_6

    .line 145
    iget v3, v2, Lcom/github/penfeizhou/animation/decode/Frame;->frameX:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v3, v3, v4

    iget v5, p0, Lcom/github/penfeizhou/animation/webp/decode/WebPDecoder;->sampleSize:I

    int-to-float v5, v5

    div-float v5, v3, v5

    .line 146
    iget v3, v2, Lcom/github/penfeizhou/animation/decode/Frame;->frameY:I

    int-to-float v3, v3

    mul-float v3, v3, v4

    iget v4, p0, Lcom/github/penfeizhou/animation/webp/decode/WebPDecoder;->sampleSize:I

    int-to-float v4, v4

    div-float v6, v3, v4

    .line 147
    iget v3, v2, Lcom/github/penfeizhou/animation/decode/Frame;->frameX:I

    mul-int/lit8 v3, v3, 0x2

    iget v4, v2, Lcom/github/penfeizhou/animation/decode/Frame;->frameWidth:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/github/penfeizhou/animation/webp/decode/WebPDecoder;->sampleSize:I

    int-to-float v4, v4

    div-float v7, v3, v4

    .line 148
    iget v3, v2, Lcom/github/penfeizhou/animation/decode/Frame;->frameY:I

    mul-int/lit8 v3, v3, 0x2

    iget v2, v2, Lcom/github/penfeizhou/animation/decode/Frame;->frameHeight:I

    add-int/2addr v3, v2

    int-to-float v2, v3

    iget v3, p0, Lcom/github/penfeizhou/animation/webp/decode/WebPDecoder;->sampleSize:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 149
    iget-object v8, p0, Lcom/github/penfeizhou/animation/webp/decode/WebPDecoder;->mTransparentFillPaint:Landroid/graphics/Paint;

    move-object v3, v1

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v2

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 153
    :cond_6
    :goto_0
    iget v2, p1, Lcom/github/penfeizhou/animation/decode/Frame;->frameWidth:I

    if-lez v2, :cond_7

    iget v2, p1, Lcom/github/penfeizhou/animation/decode/Frame;->frameHeight:I

    if-lez v2, :cond_7

    .line 154
    iget v2, p1, Lcom/github/penfeizhou/animation/decode/Frame;->frameWidth:I

    iget v3, p0, Lcom/github/penfeizhou/animation/webp/decode/WebPDecoder;->sampleSize:I

    div-int/2addr v2, v3

    iget v3, p1, Lcom/github/penfeizhou/animation/decode/Frame;->frameHeight:I

    iget v4, p0, Lcom/github/penfeizhou/animation/webp/decode/WebPDecoder;->sampleSize:I

    div-int/2addr v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/github/penfeizhou/animation/webp/decode/WebPDecoder;->obtainBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_1

    :cond_7
    const/4 v2, 0x0

    .line 156
    :goto_1
    iget-object v5, p0, Lcom/github/penfeizhou/animation/webp/decode/WebPDecoder;->paint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/github/penfeizhou/animation/webp/decode/WebPDecoder;->sampleSize:I

    invoke-virtual {p0}, Lcom/github/penfeizhou/animation/webp/decode/WebPDecoder;->getWriter()Lcom/github/penfeizhou/animation/webp/io/WebPWriter;

    move-result-object v8

    move-object v3, p1

    move-object v4, v1

    move-object v7, v2

    invoke-virtual/range {v3 .. v8}, Lcom/github/penfeizhou/animation/decode/Frame;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;ILandroid/graphics/Bitmap;Lcom/github/penfeizhou/animation/io/Writer;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/github/penfeizhou/animation/webp/decode/WebPDecoder;->recycleBitmap(Landroid/graphics/Bitmap;)V

    .line 157
    invoke-virtual {p0, v2}, Lcom/github/penfeizhou/animation/webp/decode/WebPDecoder;->recycleBitmap(Landroid/graphics/Bitmap;)V

    .line 158
    iget-object p1, p0, Lcom/github/penfeizhou/animation/webp/decode/WebPDecoder;->frameBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 159
    iget-object p1, p0, Lcom/github/penfeizhou/animation/webp/decode/WebPDecoder;->frameBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 160
    invoke-virtual {p0, v0}, Lcom/github/penfeizhou/animation/webp/decode/WebPDecoder;->recycleBitmap(Landroid/graphics/Bitmap;)V

    :cond_8
    :goto_2
    return-void
.end method
