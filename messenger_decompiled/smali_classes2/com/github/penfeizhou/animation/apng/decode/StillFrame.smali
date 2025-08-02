.class public Lcom/github/penfeizhou/animation/apng/decode/StillFrame;
.super Lcom/github/penfeizhou/animation/decode/Frame;
.source "StillFrame.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/penfeizhou/animation/decode/Frame<",
        "Lcom/github/penfeizhou/animation/apng/io/APNGReader;",
        "Lcom/github/penfeizhou/animation/apng/io/APNGWriter;",
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

.method public constructor <init>(Lcom/github/penfeizhou/animation/apng/io/APNGReader;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/github/penfeizhou/animation/decode/Frame;-><init>(Lcom/github/penfeizhou/animation/io/Reader;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;ILandroid/graphics/Bitmap;Lcom/github/penfeizhou/animation/apng/io/APNGWriter;)Landroid/graphics/Bitmap;
    .locals 3

    .line 27
    new-instance p5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 29
    iput p3, p5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v1, 0x1

    .line 30
    iput-boolean v1, p5, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 31
    iput-object p4, p5, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    const/4 p4, 0x0

    .line 34
    :try_start_0
    iget-object v2, p0, Lcom/github/penfeizhou/animation/apng/decode/StillFrame;->reader:Lcom/github/penfeizhou/animation/io/Reader;

    check-cast v2, Lcom/github/penfeizhou/animation/apng/io/APNGReader;

    invoke-virtual {v2}, Lcom/github/penfeizhou/animation/apng/io/APNGReader;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 37
    :try_start_1
    iget-object v2, p0, Lcom/github/penfeizhou/animation/apng/decode/StillFrame;->reader:Lcom/github/penfeizhou/animation/io/Reader;

    check-cast v2, Lcom/github/penfeizhou/animation/apng/io/APNGReader;

    invoke-virtual {v2}, Lcom/github/penfeizhou/animation/apng/io/APNGReader;->toInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2, p4, p5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p3
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 40
    :catch_0
    :try_start_2
    new-instance p5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 41
    iput-boolean v0, p5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 42
    iput p3, p5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 43
    iput-boolean v1, p5, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 44
    iget-object p3, p0, Lcom/github/penfeizhou/animation/apng/decode/StillFrame;->reader:Lcom/github/penfeizhou/animation/io/Reader;

    check-cast p3, Lcom/github/penfeizhou/animation/apng/io/APNGReader;

    invoke-virtual {p3}, Lcom/github/penfeizhou/animation/apng/io/APNGReader;->toInputStream()Ljava/io/InputStream;

    move-result-object p3

    invoke-static {p3, p4, p5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 47
    :goto_0
    :try_start_3
    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/4 p4, 0x0

    .line 48
    invoke-virtual {p1, p3, p4, p4, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    move-object p4, p3

    goto :goto_1

    :catch_2
    move-exception p1

    .line 50
    :goto_1
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    move-object p3, p4

    :goto_2
    return-object p3
.end method

.method public bridge synthetic draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;ILandroid/graphics/Bitmap;Lcom/github/penfeizhou/animation/io/Writer;)Landroid/graphics/Bitmap;
    .locals 0

    .line 19
    check-cast p5, Lcom/github/penfeizhou/animation/apng/io/APNGWriter;

    invoke-virtual/range {p0 .. p5}, Lcom/github/penfeizhou/animation/apng/decode/StillFrame;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;ILandroid/graphics/Bitmap;Lcom/github/penfeizhou/animation/apng/io/APNGWriter;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
