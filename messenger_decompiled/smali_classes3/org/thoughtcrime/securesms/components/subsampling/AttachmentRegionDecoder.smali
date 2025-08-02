.class public Lorg/thoughtcrime/securesms/components/subsampling/AttachmentRegionDecoder;
.super Ljava/lang/Object;
.source "AttachmentRegionDecoder.java"

# interfaces
.implements Lcom/davemorrissey/labs/subscaleview/decoder/ImageRegionDecoder;


# static fields
.field private static final TAG:Ljava/lang/String; = "org.thoughtcrime.securesms.components.subsampling.AttachmentRegionDecoder"


# instance fields
.field private bitmapRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

.field private passthrough:Lcom/davemorrissey/labs/subscaleview/decoder/SkiaImageRegionDecoder;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decodeRegion(Landroid/graphics/Rect;I)Landroid/graphics/Bitmap;
    .locals 3

    .line 46
    sget-object v0, Lorg/thoughtcrime/securesms/components/subsampling/AttachmentRegionDecoder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Decode region: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/subsampling/AttachmentRegionDecoder;->passthrough:Lcom/davemorrissey/labs/subscaleview/decoder/SkiaImageRegionDecoder;

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {v0, p1, p2}, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaImageRegionDecoder;->decodeRegion(Landroid/graphics/Rect;I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 52
    :cond_0
    monitor-enter p0

    .line 53
    :try_start_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 54
    iput p2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 55
    sget-object p2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object p2, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 57
    iget-object p2, p0, Lorg/thoughtcrime/securesms/components/subsampling/AttachmentRegionDecoder;->bitmapRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {p2, p1, v0}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 63
    monitor-exit p0

    return-object p1

    .line 60
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Skia image decoder returned null bitmap - image format may not be supported"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 64
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public init(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Point;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 30
    sget-object v0, Lorg/thoughtcrime/securesms/components/subsampling/AttachmentRegionDecoder;->TAG:Ljava/lang/String;

    const-string v1, "Init!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-static {p2}, Lorg/thoughtcrime/securesms/mms/PartAuthority;->isLocalUri(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaImageRegionDecoder;

    invoke-direct {v0}, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaImageRegionDecoder;-><init>()V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/components/subsampling/AttachmentRegionDecoder;->passthrough:Lcom/davemorrissey/labs/subscaleview/decoder/SkiaImageRegionDecoder;

    .line 33
    invoke-virtual {v0, p1, p2}, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaImageRegionDecoder;->init(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Point;

    move-result-object p1

    return-object p1

    .line 36
    :cond_0
    invoke-static {p1, p2}, Lorg/thoughtcrime/securesms/mms/PartAuthority;->getAttachmentStream(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    const/4 p2, 0x0

    .line 38
    invoke-static {p1, p2}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object p2

    iput-object p2, p0, Lorg/thoughtcrime/securesms/components/subsampling/AttachmentRegionDecoder;->bitmapRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    .line 39
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 41
    new-instance p1, Landroid/graphics/Point;

    iget-object p2, p0, Lorg/thoughtcrime/securesms/components/subsampling/AttachmentRegionDecoder;->bitmapRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {p2}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result p2

    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/subsampling/AttachmentRegionDecoder;->bitmapRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v0

    invoke-direct {p1, p2, v0}, Landroid/graphics/Point;-><init>(II)V

    return-object p1
.end method

.method public isReady()Z
    .locals 2

    .line 68
    sget-object v0, Lorg/thoughtcrime/securesms/components/subsampling/AttachmentRegionDecoder;->TAG:Ljava/lang/String;

    const-string v1, "isReady"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/subsampling/AttachmentRegionDecoder;->passthrough:Lcom/davemorrissey/labs/subscaleview/decoder/SkiaImageRegionDecoder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaImageRegionDecoder;->isReady()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/subsampling/AttachmentRegionDecoder;->bitmapRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    if-eqz v0, :cond_2

    .line 70
    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public recycle()V
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/subsampling/AttachmentRegionDecoder;->passthrough:Lcom/davemorrissey/labs/subscaleview/decoder/SkiaImageRegionDecoder;

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0}, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaImageRegionDecoder;->recycle()V

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lorg/thoughtcrime/securesms/components/subsampling/AttachmentRegionDecoder;->passthrough:Lcom/davemorrissey/labs/subscaleview/decoder/SkiaImageRegionDecoder;

    goto :goto_0

    .line 78
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/subsampling/AttachmentRegionDecoder;->bitmapRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    :goto_0
    return-void
.end method
