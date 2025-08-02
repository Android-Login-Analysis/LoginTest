.class public Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiPageBitmap;
.super Ljava/lang/Object;
.source "EmojiPageBitmap.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EmojiPageBitmap"


# instance fields
.field private bitmapReference:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final decodeScale:F

.field private final model:Lorg/thoughtcrime/securesms/components/emoji/EmojiPageModel;

.field private task:Lorg/thoughtcrime/securesms/util/ListenableFutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/thoughtcrime/securesms/util/ListenableFutureTask<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/thoughtcrime/securesms/components/emoji/EmojiPageModel;F)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiPageBitmap;->context:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiPageBitmap;->model:Lorg/thoughtcrime/securesms/components/emoji/EmojiPageModel;

    .line 37
    iput p3, p0, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiPageBitmap;->decodeScale:F

    return-void
.end method

.method static synthetic access$000(Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiPageBitmap;)Lorg/thoughtcrime/securesms/util/ListenableFutureTask;
    .locals 0

    .line 23
    iget-object p0, p0, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiPageBitmap;->task:Lorg/thoughtcrime/securesms/util/ListenableFutureTask;

    return-object p0
.end method

.method static synthetic access$002(Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiPageBitmap;Lorg/thoughtcrime/securesms/util/ListenableFutureTask;)Lorg/thoughtcrime/securesms/util/ListenableFutureTask;
    .locals 0

    .line 23
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiPageBitmap;->task:Lorg/thoughtcrime/securesms/util/ListenableFutureTask;

    return-object p1
.end method


# virtual methods
.method public get()Lorg/thoughtcrime/securesms/util/ListenableFutureTask;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/thoughtcrime/securesms/util/ListenableFutureTask<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 42
    invoke-static {}, Lorg/thoughtcrime/securesms/util/Util;->assertMainThread()V

    .line 43
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiPageBitmap;->bitmapReference:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 44
    new-instance v0, Lorg/thoughtcrime/securesms/util/ListenableFutureTask;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiPageBitmap;->bitmapReference:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Lorg/thoughtcrime/securesms/util/ListenableFutureTask;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 45
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiPageBitmap;->task:Lorg/thoughtcrime/securesms/util/ListenableFutureTask;

    if-eqz v0, :cond_1

    return-object v0

    .line 48
    :cond_1
    new-instance v0, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiPageBitmap$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiPageBitmap$$ExternalSyntheticLambda0;-><init>(Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiPageBitmap;)V

    .line 57
    new-instance v1, Lorg/thoughtcrime/securesms/util/ListenableFutureTask;

    invoke-direct {v1, v0}, Lorg/thoughtcrime/securesms/util/ListenableFutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iput-object v1, p0, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiPageBitmap;->task:Lorg/thoughtcrime/securesms/util/ListenableFutureTask;

    .line 58
    new-instance v0, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiPageBitmap$1;

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiPageBitmap$1;-><init>(Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiPageBitmap;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 67
    invoke-virtual {v0, v1, v2}, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiPageBitmap$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 69
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiPageBitmap;->task:Lorg/thoughtcrime/securesms/util/ListenableFutureTask;

    return-object v0
.end method

.method synthetic lambda$get$0$org-thoughtcrime-securesms-components-emoji-parsing-EmojiPageBitmap()Landroid/graphics/Bitmap;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 0
    const-string v0, "loading page "

    .line 50
    :try_start_0
    sget-object v1, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiPageBitmap;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiPageBitmap;->model:Lorg/thoughtcrime/securesms/components/emoji/EmojiPageModel;

    invoke-interface {v0}, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageModel;->getSprite()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiPageBitmap;->loadPage()Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 53
    sget-object v1, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiPageBitmap;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public loadPage()Landroid/graphics/Bitmap;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiPageBitmap;->bitmapReference:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiPageBitmap;->bitmapReference:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0

    .line 76
    :cond_0
    iget v0, p0, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiPageBitmap;->decodeScale:F

    .line 77
    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiPageBitmap;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 78
    iget-object v2, p0, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiPageBitmap;->model:Lorg/thoughtcrime/securesms/components/emoji/EmojiPageModel;

    invoke-interface {v2}, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageModel;->getSprite()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 79
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 81
    iget-object v3, p0, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiPageBitmap;->context:Landroid/content/Context;

    invoke-static {v3}, Lorg/thoughtcrime/securesms/util/Util;->isLowMemory(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 82
    sget-object v0, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiPageBitmap;->TAG:Ljava/lang/String;

    const-string v3, "Low memory detected. Changing sample size."

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    .line 83
    iput v0, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 84
    iget v0, p0, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiPageBitmap;->decodeScale:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v0, v0, v3

    .line 87
    :cond_1
    new-instance v3, Lorg/thoughtcrime/securesms/util/Stopwatch;

    iget-object v4, p0, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiPageBitmap;->model:Lorg/thoughtcrime/securesms/components/emoji/EmojiPageModel;

    invoke-interface {v4}, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageModel;->getSprite()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/thoughtcrime/securesms/util/Stopwatch;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 88
    invoke-static {v1, v4, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    const-string v2, "decode"

    .line 89
    invoke-virtual {v3, v2}, Lorg/thoughtcrime/securesms/util/Stopwatch;->split(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v0

    float-to-int v2, v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v0

    float-to-int v0, v4

    const/4 v4, 0x1

    invoke-static {v1, v2, v0, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v2, "scale"

    .line 92
    invoke-virtual {v3, v2}, Lorg/thoughtcrime/securesms/util/Stopwatch;->split(Ljava/lang/String;)V

    .line 93
    sget-object v2, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiPageBitmap;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lorg/thoughtcrime/securesms/util/Stopwatch;->stop(Ljava/lang/String;)V

    .line 95
    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiPageBitmap;->bitmapReference:Ljava/lang/ref/SoftReference;

    .line 96
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onPageLoaded("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiPageBitmap;->model:Lorg/thoughtcrime/securesms/components/emoji/EmojiPageModel;

    invoke-interface {v4}, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageModel;->getSprite()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")  originalByteCount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  scaledByteCount: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  scaledSize: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 96
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiPageBitmap;->model:Lorg/thoughtcrime/securesms/components/emoji/EmojiPageModel;

    invoke-interface {v0}, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageModel;->getSprite()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
