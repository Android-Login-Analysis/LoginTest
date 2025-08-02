.class public Lorg/thoughtcrime/securesms/components/subsampling/AttachmentBitmapDecoder;
.super Ljava/lang/Object;
.source "AttachmentBitmapDecoder.java"

# interfaces
.implements Lcom/davemorrissey/labs/subscaleview/decoder/ImageDecoder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 22
    invoke-static {p2}, Lorg/thoughtcrime/securesms/mms/PartAuthority;->isLocalUri(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaImageDecoder;

    invoke-direct {v0}, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaImageDecoder;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaImageDecoder;->decode(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 26
    :cond_0
    invoke-static {p1, p2}, Lorg/thoughtcrime/securesms/mms/PartAuthority;->getAttachmentStream(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    .line 29
    :try_start_0
    new-instance p2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 30
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, p2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v0, 0x0

    .line 32
    invoke-static {p1, v0, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_2

    if-eqz p1, :cond_1

    .line 40
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_1
    return-object p2

    .line 35
    :cond_2
    :try_start_1
    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "Skia image region decoder returned null bitmap - image format may not be supported"

    invoke-direct {p2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p2

    if-eqz p1, :cond_3

    .line 40
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 41
    :cond_3
    throw p2
.end method
