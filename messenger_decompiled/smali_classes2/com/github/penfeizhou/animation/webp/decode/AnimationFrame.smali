.class public Lcom/github/penfeizhou/animation/webp/decode/AnimationFrame;
.super Lcom/github/penfeizhou/animation/decode/Frame;
.source "AnimationFrame.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/penfeizhou/animation/decode/Frame<",
        "Lcom/github/penfeizhou/animation/webp/io/WebPReader;",
        "Lcom/github/penfeizhou/animation/webp/io/WebPWriter;",
        ">;"
    }
.end annotation


# static fields
.field private static final PORTERDUFF_XFERMODE_SRC:Landroid/graphics/PorterDuffXfermode;

.field private static final PORTERDUFF_XFERMODE_SRC_OVER:Landroid/graphics/PorterDuffXfermode;


# instance fields
.field final blendingMethod:Z

.field final disposalMethod:Z

.field final imagePayloadOffset:I

.field final imagePayloadSize:I

.field private final useAlpha:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Lcom/github/penfeizhou/animation/webp/decode/AnimationFrame;->PORTERDUFF_XFERMODE_SRC_OVER:Landroid/graphics/PorterDuffXfermode;

    .line 28
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Lcom/github/penfeizhou/animation/webp/decode/AnimationFrame;->PORTERDUFF_XFERMODE_SRC:Landroid/graphics/PorterDuffXfermode;

    return-void
.end method

.method public constructor <init>(Lcom/github/penfeizhou/animation/webp/io/WebPReader;Lcom/github/penfeizhou/animation/webp/decode/ANMFChunk;)V
    .locals 2

    .line 31
    invoke-direct {p0, p1}, Lcom/github/penfeizhou/animation/decode/Frame;-><init>(Lcom/github/penfeizhou/animation/io/Reader;)V

    .line 32
    iget p1, p2, Lcom/github/penfeizhou/animation/webp/decode/ANMFChunk;->frameWidth:I

    iput p1, p0, Lcom/github/penfeizhou/animation/webp/decode/AnimationFrame;->frameWidth:I

    .line 33
    iget p1, p2, Lcom/github/penfeizhou/animation/webp/decode/ANMFChunk;->frameHeight:I

    iput p1, p0, Lcom/github/penfeizhou/animation/webp/decode/AnimationFrame;->frameHeight:I

    .line 34
    iget p1, p2, Lcom/github/penfeizhou/animation/webp/decode/ANMFChunk;->frameX:I

    iput p1, p0, Lcom/github/penfeizhou/animation/webp/decode/AnimationFrame;->frameX:I

    .line 35
    iget p1, p2, Lcom/github/penfeizhou/animation/webp/decode/ANMFChunk;->frameY:I

    iput p1, p0, Lcom/github/penfeizhou/animation/webp/decode/AnimationFrame;->frameY:I

    .line 36
    iget p1, p2, Lcom/github/penfeizhou/animation/webp/decode/ANMFChunk;->frameDuration:I

    iput p1, p0, Lcom/github/penfeizhou/animation/webp/decode/AnimationFrame;->frameDuration:I

    .line 37
    iget p1, p0, Lcom/github/penfeizhou/animation/webp/decode/AnimationFrame;->frameDuration:I

    if-nez p1, :cond_0

    const/16 p1, 0x64

    .line 38
    iput p1, p0, Lcom/github/penfeizhou/animation/webp/decode/AnimationFrame;->frameDuration:I

    .line 40
    :cond_0
    invoke-virtual {p2}, Lcom/github/penfeizhou/animation/webp/decode/ANMFChunk;->blendingMethod()Z

    move-result p1

    iput-boolean p1, p0, Lcom/github/penfeizhou/animation/webp/decode/AnimationFrame;->blendingMethod:Z

    .line 41
    invoke-virtual {p2}, Lcom/github/penfeizhou/animation/webp/decode/ANMFChunk;->disposalMethod()Z

    move-result p1

    iput-boolean p1, p0, Lcom/github/penfeizhou/animation/webp/decode/AnimationFrame;->disposalMethod:Z

    .line 42
    iget p1, p2, Lcom/github/penfeizhou/animation/webp/decode/ANMFChunk;->offset:I

    add-int/lit8 p1, p1, 0x8

    add-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/github/penfeizhou/animation/webp/decode/AnimationFrame;->imagePayloadOffset:I

    .line 43
    iget p1, p2, Lcom/github/penfeizhou/animation/webp/decode/ANMFChunk;->payloadSize:I

    add-int/lit8 p1, p1, -0x10

    iget v0, p2, Lcom/github/penfeizhou/animation/webp/decode/ANMFChunk;->payloadSize:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/github/penfeizhou/animation/webp/decode/AnimationFrame;->imagePayloadSize:I

    .line 44
    iget-object p1, p2, Lcom/github/penfeizhou/animation/webp/decode/ANMFChunk;->alphChunk:Lcom/github/penfeizhou/animation/webp/decode/ALPHChunk;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/github/penfeizhou/animation/webp/decode/AnimationFrame;->useAlpha:Z

    return-void
.end method

.method private encode(Lcom/github/penfeizhou/animation/webp/io/WebPWriter;)I
    .locals 4

    const/16 v0, 0x1e

    .line 49
    iget v1, p0, Lcom/github/penfeizhou/animation/webp/decode/AnimationFrame;->imagePayloadSize:I

    add-int/2addr v0, v1

    .line 50
    invoke-virtual {p1, v0}, Lcom/github/penfeizhou/animation/webp/io/WebPWriter;->reset(I)V

    const-string v1, "RIFF"

    .line 52
    invoke-virtual {p1, v1}, Lcom/github/penfeizhou/animation/webp/io/WebPWriter;->putFourCC(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p1, v0}, Lcom/github/penfeizhou/animation/webp/io/WebPWriter;->putUInt32(I)V

    const-string v1, "WEBP"

    .line 54
    invoke-virtual {p1, v1}, Lcom/github/penfeizhou/animation/webp/io/WebPWriter;->putFourCC(Ljava/lang/String;)V

    .line 57
    sget v1, Lcom/github/penfeizhou/animation/webp/decode/VP8XChunk;->ID:I

    invoke-virtual {p1, v1}, Lcom/github/penfeizhou/animation/webp/io/WebPWriter;->putUInt32(I)V

    const/16 v1, 0xa

    .line 58
    invoke-virtual {p1, v1}, Lcom/github/penfeizhou/animation/webp/io/WebPWriter;->putUInt32(I)V

    .line 59
    iget-boolean v1, p0, Lcom/github/penfeizhou/animation/webp/decode/AnimationFrame;->useAlpha:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/16 v1, 0x10

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    int-to-byte v1, v1

    invoke-virtual {p1, v1}, Lcom/github/penfeizhou/animation/webp/io/WebPWriter;->putByte(B)V

    .line 60
    invoke-virtual {p1, v2}, Lcom/github/penfeizhou/animation/webp/io/WebPWriter;->putUInt24(I)V

    .line 61
    iget v1, p0, Lcom/github/penfeizhou/animation/webp/decode/AnimationFrame;->frameWidth:I

    invoke-virtual {p1, v1}, Lcom/github/penfeizhou/animation/webp/io/WebPWriter;->put1Based(I)V

    .line 62
    iget v1, p0, Lcom/github/penfeizhou/animation/webp/decode/AnimationFrame;->frameHeight:I

    invoke-virtual {p1, v1}, Lcom/github/penfeizhou/animation/webp/io/WebPWriter;->put1Based(I)V

    .line 66
    :try_start_0
    iget-object v1, p0, Lcom/github/penfeizhou/animation/webp/decode/AnimationFrame;->reader:Lcom/github/penfeizhou/animation/io/Reader;

    check-cast v1, Lcom/github/penfeizhou/animation/webp/io/WebPReader;

    invoke-virtual {v1}, Lcom/github/penfeizhou/animation/webp/io/WebPReader;->reset()V

    .line 67
    iget-object v1, p0, Lcom/github/penfeizhou/animation/webp/decode/AnimationFrame;->reader:Lcom/github/penfeizhou/animation/io/Reader;

    check-cast v1, Lcom/github/penfeizhou/animation/webp/io/WebPReader;

    iget v2, p0, Lcom/github/penfeizhou/animation/webp/decode/AnimationFrame;->imagePayloadOffset:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/github/penfeizhou/animation/webp/io/WebPReader;->skip(J)J

    .line 68
    iget-object v1, p0, Lcom/github/penfeizhou/animation/webp/decode/AnimationFrame;->reader:Lcom/github/penfeizhou/animation/io/Reader;

    check-cast v1, Lcom/github/penfeizhou/animation/webp/io/WebPReader;

    invoke-virtual {p1}, Lcom/github/penfeizhou/animation/webp/io/WebPWriter;->toByteArray()[B

    move-result-object v2

    invoke-virtual {p1}, Lcom/github/penfeizhou/animation/webp/io/WebPWriter;->position()I

    move-result p1

    iget v3, p0, Lcom/github/penfeizhou/animation/webp/decode/AnimationFrame;->imagePayloadSize:I

    invoke-virtual {v1, v2, p1, v3}, Lcom/github/penfeizhou/animation/webp/io/WebPReader;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 70
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return v0
.end method


# virtual methods
.method public bridge synthetic draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;ILandroid/graphics/Bitmap;Lcom/github/penfeizhou/animation/io/Writer;)Landroid/graphics/Bitmap;
    .locals 0

    .line 21
    check-cast p5, Lcom/github/penfeizhou/animation/webp/io/WebPWriter;

    invoke-virtual/range {p0 .. p5}, Lcom/github/penfeizhou/animation/webp/decode/AnimationFrame;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;ILandroid/graphics/Bitmap;Lcom/github/penfeizhou/animation/webp/io/WebPWriter;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;ILandroid/graphics/Bitmap;Lcom/github/penfeizhou/animation/webp/io/WebPWriter;)Landroid/graphics/Bitmap;
    .locals 4

    .line 76
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x0

    .line 77
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 78
    iput p3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v2, 0x1

    .line 79
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 80
    iput-object p4, v0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 81
    invoke-direct {p0, p5}, Lcom/github/penfeizhou/animation/webp/decode/AnimationFrame;->encode(Lcom/github/penfeizhou/animation/webp/io/WebPWriter;)I

    move-result v3

    .line 82
    invoke-virtual {p5}, Lcom/github/penfeizhou/animation/webp/io/WebPWriter;->toByteArray()[B

    move-result-object p5

    .line 85
    :try_start_0
    invoke-static {p5, v1, v3, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 88
    :catch_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 89
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 90
    iput p3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 91
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 92
    invoke-static {p5, v1, v3, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p5

    :goto_0
    if-eqz p5, :cond_1

    .line 95
    iget-boolean p4, p0, Lcom/github/penfeizhou/animation/webp/decode/AnimationFrame;->blendingMethod:Z

    if-eqz p4, :cond_0

    .line 96
    sget-object p4, Lcom/github/penfeizhou/animation/webp/decode/AnimationFrame;->PORTERDUFF_XFERMODE_SRC:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_1

    .line 98
    :cond_0
    sget-object p4, Lcom/github/penfeizhou/animation/webp/decode/AnimationFrame;->PORTERDUFF_XFERMODE_SRC_OVER:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 100
    :goto_1
    iget-object p4, p0, Lcom/github/penfeizhou/animation/webp/decode/AnimationFrame;->srcRect:Landroid/graphics/Rect;

    iput v1, p4, Landroid/graphics/Rect;->left:I

    .line 101
    iget-object p4, p0, Lcom/github/penfeizhou/animation/webp/decode/AnimationFrame;->srcRect:Landroid/graphics/Rect;

    iput v1, p4, Landroid/graphics/Rect;->top:I

    .line 102
    iget-object p4, p0, Lcom/github/penfeizhou/animation/webp/decode/AnimationFrame;->srcRect:Landroid/graphics/Rect;

    invoke-virtual {p5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p4, Landroid/graphics/Rect;->right:I

    .line 103
    iget-object p4, p0, Lcom/github/penfeizhou/animation/webp/decode/AnimationFrame;->srcRect:Landroid/graphics/Rect;

    invoke-virtual {p5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p4, Landroid/graphics/Rect;->bottom:I

    .line 104
    iget-object p4, p0, Lcom/github/penfeizhou/animation/webp/decode/AnimationFrame;->dstRect:Landroid/graphics/Rect;

    iget v0, p0, Lcom/github/penfeizhou/animation/webp/decode/AnimationFrame;->frameX:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v0, v0, v1

    int-to-float p3, p3

    div-float/2addr v0, p3

    float-to-int v0, v0

    iput v0, p4, Landroid/graphics/Rect;->left:I

    .line 105
    iget-object p4, p0, Lcom/github/penfeizhou/animation/webp/decode/AnimationFrame;->dstRect:Landroid/graphics/Rect;

    iget v0, p0, Lcom/github/penfeizhou/animation/webp/decode/AnimationFrame;->frameY:I

    int-to-float v0, v0

    mul-float v0, v0, v1

    div-float/2addr v0, p3

    float-to-int v0, v0

    iput v0, p4, Landroid/graphics/Rect;->top:I

    .line 106
    iget-object p4, p0, Lcom/github/penfeizhou/animation/webp/decode/AnimationFrame;->dstRect:Landroid/graphics/Rect;

    iget v0, p0, Lcom/github/penfeizhou/animation/webp/decode/AnimationFrame;->frameX:I

    int-to-float v0, v0

    mul-float v0, v0, v1

    div-float/2addr v0, p3

    invoke-virtual {p5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p4, Landroid/graphics/Rect;->right:I

    .line 107
    iget-object p4, p0, Lcom/github/penfeizhou/animation/webp/decode/AnimationFrame;->dstRect:Landroid/graphics/Rect;

    iget v0, p0, Lcom/github/penfeizhou/animation/webp/decode/AnimationFrame;->frameY:I

    int-to-float v0, v0

    mul-float v0, v0, v1

    div-float/2addr v0, p3

    invoke-virtual {p5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    int-to-float p3, p3

    add-float/2addr v0, p3

    float-to-int p3, v0

    iput p3, p4, Landroid/graphics/Rect;->bottom:I

    .line 109
    iget-object p3, p0, Lcom/github/penfeizhou/animation/webp/decode/AnimationFrame;->srcRect:Landroid/graphics/Rect;

    iget-object p4, p0, Lcom/github/penfeizhou/animation/webp/decode/AnimationFrame;->dstRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p5, p3, p4, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    move-object p4, p5

    :cond_1
    return-object p4
.end method
