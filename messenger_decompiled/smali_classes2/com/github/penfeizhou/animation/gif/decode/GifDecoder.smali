.class public Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;
.super Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;
.source "GifDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/penfeizhou/animation/gif/decode/GifDecoder$SnapShot;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder<",
        "Lcom/github/penfeizhou/animation/gif/io/GifReader;",
        "Lcom/github/penfeizhou/animation/gif/io/GifWriter;",
        ">;"
    }
.end annotation


# instance fields
.field private bgColor:I

.field private mGifWriter:Lcom/github/penfeizhou/animation/gif/io/GifWriter;

.field private mLoopCount:I

.field private final paint:Landroid/graphics/Paint;

.field private final snapShot:Lcom/github/penfeizhou/animation/gif/decode/GifDecoder$SnapShot;


# direct methods
.method public constructor <init>(Lcom/github/penfeizhou/animation/loader/Loader;Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$RenderListener;)V
    .locals 2

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;-><init>(Lcom/github/penfeizhou/animation/loader/Loader;Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$RenderListener;)V

    .line 28
    new-instance p1, Lcom/github/penfeizhou/animation/gif/io/GifWriter;

    invoke-direct {p1}, Lcom/github/penfeizhou/animation/gif/io/GifWriter;-><init>()V

    iput-object p1, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->mGifWriter:Lcom/github/penfeizhou/animation/gif/io/GifWriter;

    .line 29
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->paint:Landroid/graphics/Paint;

    const/4 p2, 0x0

    .line 30
    iput p2, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->bgColor:I

    .line 31
    new-instance v0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder$SnapShot;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder$SnapShot;-><init>(Lcom/github/penfeizhou/animation/gif/decode/GifDecoder$1;)V

    iput-object v0, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->snapShot:Lcom/github/penfeizhou/animation/gif/decode/GifDecoder$SnapShot;

    .line 32
    iput p2, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->mLoopCount:I

    const/4 p2, 0x1

    .line 44
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method


# virtual methods
.method protected getDesiredSample(II)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected getLoopCount()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->mLoopCount:I

    return v0
.end method

.method protected getReader(Lcom/github/penfeizhou/animation/io/Reader;)Lcom/github/penfeizhou/animation/gif/io/GifReader;
    .locals 1

    .line 57
    new-instance v0, Lcom/github/penfeizhou/animation/gif/io/GifReader;

    invoke-direct {v0, p1}, Lcom/github/penfeizhou/animation/gif/io/GifReader;-><init>(Lcom/github/penfeizhou/animation/io/Reader;)V

    return-object v0
.end method

.method protected bridge synthetic getReader(Lcom/github/penfeizhou/animation/io/Reader;)Lcom/github/penfeizhou/animation/io/Reader;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->getReader(Lcom/github/penfeizhou/animation/io/Reader;)Lcom/github/penfeizhou/animation/gif/io/GifReader;

    move-result-object p1

    return-object p1
.end method

.method protected getWriter()Lcom/github/penfeizhou/animation/gif/io/GifWriter;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->mGifWriter:Lcom/github/penfeizhou/animation/gif/io/GifWriter;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/github/penfeizhou/animation/gif/io/GifWriter;

    invoke-direct {v0}, Lcom/github/penfeizhou/animation/gif/io/GifWriter;-><init>()V

    iput-object v0, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->mGifWriter:Lcom/github/penfeizhou/animation/gif/io/GifWriter;

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->mGifWriter:Lcom/github/penfeizhou/animation/gif/io/GifWriter;

    return-object v0
.end method

.method protected bridge synthetic getWriter()Lcom/github/penfeizhou/animation/io/Writer;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->getWriter()Lcom/github/penfeizhou/animation/gif/io/GifWriter;

    move-result-object v0

    return-object v0
.end method

.method protected read(Lcom/github/penfeizhou/animation/gif/io/GifReader;)Landroid/graphics/Rect;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    invoke-static {p1}, Lcom/github/penfeizhou/animation/gif/decode/GifParser;->parse(Lcom/github/penfeizhou/animation/gif/io/GifReader;)Ljava/util/List;

    move-result-object v0

    .line 78
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    move-object v3, v2

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/github/penfeizhou/animation/gif/decode/Block;

    .line 79
    instance-of v8, v7, Lcom/github/penfeizhou/animation/gif/decode/LogicalScreenDescriptor;

    if-eqz v8, :cond_1

    .line 80
    check-cast v7, Lcom/github/penfeizhou/animation/gif/decode/LogicalScreenDescriptor;

    iget v5, v7, Lcom/github/penfeizhou/animation/gif/decode/LogicalScreenDescriptor;->screenWidth:I

    .line 81
    iget v6, v7, Lcom/github/penfeizhou/animation/gif/decode/LogicalScreenDescriptor;->screenHeight:I

    .line 82
    invoke-virtual {v7}, Lcom/github/penfeizhou/animation/gif/decode/LogicalScreenDescriptor;->gColorTableFlag()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 83
    iget-byte v4, v7, Lcom/github/penfeizhou/animation/gif/decode/LogicalScreenDescriptor;->bgColorIndex:B

    and-int/lit16 v4, v4, 0xff

    goto :goto_0

    .line 85
    :cond_1
    instance-of v8, v7, Lcom/github/penfeizhou/animation/gif/decode/ColorTable;

    if-eqz v8, :cond_2

    .line 86
    check-cast v7, Lcom/github/penfeizhou/animation/gif/decode/ColorTable;

    move-object v2, v7

    goto :goto_0

    .line 87
    :cond_2
    instance-of v8, v7, Lcom/github/penfeizhou/animation/gif/decode/GraphicControlExtension;

    if-eqz v8, :cond_3

    .line 88
    check-cast v7, Lcom/github/penfeizhou/animation/gif/decode/GraphicControlExtension;

    move-object v3, v7

    goto :goto_0

    .line 89
    :cond_3
    instance-of v8, v7, Lcom/github/penfeizhou/animation/gif/decode/ImageDescriptor;

    if-eqz v8, :cond_4

    .line 90
    new-instance v8, Lcom/github/penfeizhou/animation/gif/decode/GifFrame;

    check-cast v7, Lcom/github/penfeizhou/animation/gif/decode/ImageDescriptor;

    invoke-direct {v8, p1, v2, v3, v7}, Lcom/github/penfeizhou/animation/gif/decode/GifFrame;-><init>(Lcom/github/penfeizhou/animation/gif/io/GifReader;Lcom/github/penfeizhou/animation/gif/decode/ColorTable;Lcom/github/penfeizhou/animation/gif/decode/GraphicControlExtension;Lcom/github/penfeizhou/animation/gif/decode/ImageDescriptor;)V

    .line 91
    iget-object v7, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->frames:Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 92
    :cond_4
    instance-of v8, v7, Lcom/github/penfeizhou/animation/gif/decode/ApplicationExtension;

    if-eqz v8, :cond_0

    check-cast v7, Lcom/github/penfeizhou/animation/gif/decode/ApplicationExtension;

    iget-object v8, v7, Lcom/github/penfeizhou/animation/gif/decode/ApplicationExtension;->identifier:Ljava/lang/String;

    const-string v9, "NETSCAPE2.0"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 93
    iget v7, v7, Lcom/github/penfeizhou/animation/gif/decode/ApplicationExtension;->loopCount:I

    iput v7, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->mLoopCount:I

    goto :goto_0

    :cond_5
    mul-int p1, v5, v6

    .line 96
    iget v0, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->sampleSize:I

    iget v3, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->sampleSize:I

    mul-int v0, v0, v3

    div-int v0, p1, v0

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->frameBuffer:Ljava/nio/ByteBuffer;

    .line 97
    iget-object v0, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->snapShot:Lcom/github/penfeizhou/animation/gif/decode/GifDecoder$SnapShot;

    iget v3, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->sampleSize:I

    iget v7, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->sampleSize:I

    mul-int v3, v3, v7

    div-int/2addr p1, v3

    add-int/lit8 p1, p1, 0x1

    mul-int/lit8 p1, p1, 0x4

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, v0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder$SnapShot;->byteBuffer:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_6

    if-ltz v4, :cond_6

    .line 98
    invoke-virtual {v2}, Lcom/github/penfeizhou/animation/gif/decode/ColorTable;->getColorTable()[I

    move-result-object p1

    array-length p1, p1

    if-ge v4, p1, :cond_6

    .line 99
    invoke-virtual {v2}, Lcom/github/penfeizhou/animation/gif/decode/ColorTable;->getColorTable()[I

    move-result-object p1

    aget p1, p1, v4

    and-int/lit16 v0, p1, 0xff

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 p1, p1, 0x10

    and-int/lit16 p1, p1, 0xff

    .line 100
    invoke-static {v0, v2, p1}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    iput p1, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->bgColor:I

    .line 102
    :cond_6
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, v1, v1, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1
.end method

.method protected bridge synthetic read(Lcom/github/penfeizhou/animation/io/Reader;)Landroid/graphics/Rect;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    check-cast p1, Lcom/github/penfeizhou/animation/gif/io/GifReader;

    invoke-virtual {p0, p1}, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->read(Lcom/github/penfeizhou/animation/gif/io/GifReader;)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method

.method protected release()V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->snapShot:Lcom/github/penfeizhou/animation/gif/decode/GifDecoder$SnapShot;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder$SnapShot;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 68
    iput-object v1, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->mGifWriter:Lcom/github/penfeizhou/animation/gif/io/GifWriter;

    return-void
.end method

.method protected renderFrame(Lcom/github/penfeizhou/animation/decode/Frame;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/penfeizhou/animation/decode/Frame<",
            "Lcom/github/penfeizhou/animation/gif/io/GifReader;",
            "Lcom/github/penfeizhou/animation/gif/io/GifWriter;",
            ">;)V"
        }
    .end annotation

    .line 112
    move-object v0, p1

    check-cast v0, Lcom/github/penfeizhou/animation/gif/decode/GifFrame;

    .line 113
    iget-object v1, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->fullRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v2, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->sampleSize:I

    div-int/2addr v1, v2

    iget-object v2, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->fullRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->sampleSize:I

    div-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->obtainBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 114
    iget-object v1, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->cachedCanvas:Ljava/util/Map;

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Canvas;

    if-nez v1, :cond_0

    .line 116
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 117
    iget-object v2, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->cachedCanvas:Ljava/util/Map;

    invoke-interface {v2, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    move-object v7, v1

    .line 119
    iget-object v1, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->frameBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 120
    iget-object v1, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->frameBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 122
    invoke-virtual {v0}, Lcom/github/penfeizhou/animation/gif/decode/GifFrame;->transparencyFlag()Z

    move-result v1

    if-nez v1, :cond_1

    .line 123
    iget v1, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->bgColor:I

    move v8, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    const/4 v8, 0x0

    .line 125
    :goto_0
    iget v1, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->frameIndex:I

    if-nez v1, :cond_2

    .line 126
    invoke-virtual {v6, v8}, Landroid/graphics/Bitmap;->eraseColor(I)V

    goto/16 :goto_2

    .line 128
    :cond_2
    iget-object v1, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->frames:Ljava/util/List;

    iget v2, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->frameIndex:I

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/penfeizhou/animation/gif/decode/GifFrame;

    .line 129
    invoke-virtual {v7}, Landroid/graphics/Canvas;->save()I

    .line 130
    iget v2, v1, Lcom/github/penfeizhou/animation/gif/decode/GifFrame;->frameX:I

    iget v3, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->sampleSize:I

    div-int/2addr v2, v3

    iget v3, v1, Lcom/github/penfeizhou/animation/gif/decode/GifFrame;->frameY:I

    iget v4, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->sampleSize:I

    div-int/2addr v3, v4

    iget v4, v1, Lcom/github/penfeizhou/animation/gif/decode/GifFrame;->frameX:I

    iget v5, v1, Lcom/github/penfeizhou/animation/gif/decode/GifFrame;->frameWidth:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->sampleSize:I

    div-int/2addr v4, v5

    iget v5, v1, Lcom/github/penfeizhou/animation/gif/decode/GifFrame;->frameY:I

    iget v9, v1, Lcom/github/penfeizhou/animation/gif/decode/GifFrame;->frameHeight:I

    add-int/2addr v5, v9

    iget v9, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->sampleSize:I

    div-int/2addr v5, v9

    invoke-virtual {v7, v2, v3, v4, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 134
    iget v2, v1, Lcom/github/penfeizhou/animation/gif/decode/GifFrame;->disposalMethod:I

    const/4 v3, 0x2

    const/4 v4, 0x3

    if-eq v2, v3, :cond_4

    if-eq v2, v4, :cond_3

    goto :goto_1

    .line 143
    :cond_3
    iget-object v2, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->snapShot:Lcom/github/penfeizhou/animation/gif/decode/GifDecoder$SnapShot;

    iget-object v2, v2, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder$SnapShot;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 144
    iget v2, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->bgColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 145
    iget-object v2, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->fullRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget v3, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->sampleSize:I

    div-int/2addr v2, v3

    iget-object v3, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->fullRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget v5, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->sampleSize:I

    div-int/2addr v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->obtainBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 146
    iget-object v3, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->snapShot:Lcom/github/penfeizhou/animation/gif/decode/GifDecoder$SnapShot;

    iget-object v3, v3, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder$SnapShot;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 147
    iget-object v3, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->paint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v7, v2, v5, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 148
    invoke-virtual {p0, v2}, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->recycleBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 140
    :cond_4
    iget v2, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->bgColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 151
    :goto_1
    invoke-virtual {v7}, Landroid/graphics/Canvas;->restore()V

    .line 152
    iget v2, v0, Lcom/github/penfeizhou/animation/gif/decode/GifFrame;->disposalMethod:I

    if-ne v2, v4, :cond_5

    .line 153
    iget v1, v1, Lcom/github/penfeizhou/animation/gif/decode/GifFrame;->disposalMethod:I

    if-eq v1, v4, :cond_5

    .line 154
    iget-object v1, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->frameBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 155
    iget-object v1, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->snapShot:Lcom/github/penfeizhou/animation/gif/decode/GifDecoder$SnapShot;

    iget-object v1, v1, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder$SnapShot;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 156
    iget-object v1, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->snapShot:Lcom/github/penfeizhou/animation/gif/decode/GifDecoder$SnapShot;

    iget-object v1, v1, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder$SnapShot;->byteBuffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->frameBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 160
    :cond_5
    :goto_2
    iget v1, p1, Lcom/github/penfeizhou/animation/decode/Frame;->frameWidth:I

    iget v2, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->sampleSize:I

    div-int/2addr v1, v2

    iget p1, p1, Lcom/github/penfeizhou/animation/decode/Frame;->frameHeight:I

    iget v2, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->sampleSize:I

    div-int/2addr p1, v2

    invoke-virtual {p0, v1, p1}, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->obtainBitmap(II)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 161
    iget-object v2, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->paint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->sampleSize:I

    invoke-virtual {p0}, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->getWriter()Lcom/github/penfeizhou/animation/gif/io/GifWriter;

    move-result-object v5

    move-object v1, v7

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/github/penfeizhou/animation/gif/decode/GifFrame;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;ILandroid/graphics/Bitmap;Lcom/github/penfeizhou/animation/gif/io/GifWriter;)Landroid/graphics/Bitmap;

    .line 162
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v8, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 163
    invoke-virtual {p0, p1}, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->recycleBitmap(Landroid/graphics/Bitmap;)V

    .line 164
    iget-object p1, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->frameBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 165
    iget-object p1, p0, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->frameBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, p1}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 166
    invoke-virtual {p0, v6}, Lcom/github/penfeizhou/animation/gif/decode/GifDecoder;->recycleBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
