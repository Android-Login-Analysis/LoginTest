.class public Lcom/github/penfeizhou/animation/webp/decode/StillFrame;
.super Lcom/github/penfeizhou/animation/decode/Frame;
.source "StillFrame.java"


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
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/github/penfeizhou/animation/webp/io/WebPReader;II)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/github/penfeizhou/animation/decode/Frame;-><init>(Lcom/github/penfeizhou/animation/io/Reader;)V

    .line 24
    iput p2, p0, Lcom/github/penfeizhou/animation/webp/decode/StillFrame;->frameWidth:I

    .line 25
    iput p3, p0, Lcom/github/penfeizhou/animation/webp/decode/StillFrame;->frameHeight:I

    return-void
.end method


# virtual methods
.method public bridge synthetic draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;ILandroid/graphics/Bitmap;Lcom/github/penfeizhou/animation/io/Writer;)Landroid/graphics/Bitmap;
    .locals 0

    .line 21
    check-cast p5, Lcom/github/penfeizhou/animation/webp/io/WebPWriter;

    invoke-virtual/range {p0 .. p5}, Lcom/github/penfeizhou/animation/webp/decode/StillFrame;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;ILandroid/graphics/Bitmap;Lcom/github/penfeizhou/animation/webp/io/WebPWriter;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;ILandroid/graphics/Bitmap;Lcom/github/penfeizhou/animation/webp/io/WebPWriter;)Landroid/graphics/Bitmap;
    .locals 3

    .line 30
    new-instance p5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 32
    iput p3, p5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v1, 0x1

    .line 33
    iput-boolean v1, p5, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 34
    iput-object p4, p5, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    const/4 p4, 0x0

    .line 39
    :try_start_0
    iget-object v2, p0, Lcom/github/penfeizhou/animation/webp/decode/StillFrame;->reader:Lcom/github/penfeizhou/animation/io/Reader;

    check-cast v2, Lcom/github/penfeizhou/animation/webp/io/WebPReader;

    invoke-virtual {v2}, Lcom/github/penfeizhou/animation/webp/io/WebPReader;->toInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2, p4, p5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p5

    .line 41
    :try_start_1
    invoke-virtual {p5}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 43
    new-instance p5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 44
    iput-boolean v0, p5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 45
    iput p3, p5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 46
    iput-boolean v1, p5, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 47
    iget-object p3, p0, Lcom/github/penfeizhou/animation/webp/decode/StillFrame;->reader:Lcom/github/penfeizhou/animation/io/Reader;

    check-cast p3, Lcom/github/penfeizhou/animation/webp/io/WebPReader;

    invoke-virtual {p3}, Lcom/github/penfeizhou/animation/webp/io/WebPReader;->toInputStream()Ljava/io/InputStream;

    move-result-object p3

    invoke-static {p3, p4, p5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 50
    :goto_0
    :try_start_2
    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/4 p4, 0x0

    .line 51
    invoke-virtual {p1, p3, p4, p4, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    move-object p4, p3

    .line 53
    :goto_1
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    move-object p3, p4

    :goto_2
    return-object p3
.end method
