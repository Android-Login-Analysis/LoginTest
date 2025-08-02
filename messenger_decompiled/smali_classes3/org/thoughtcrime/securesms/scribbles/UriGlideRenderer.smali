.class final Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer;
.super Ljava/lang/Object;
.source "UriGlideRenderer.java"

# interfaces
.implements Lorg/thoughtcrime/securesms/imageeditor/Renderer;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_BLUR_DIMENSION:I = 0x12c

.field private static final PREVIEW_DIMENSION_LIMIT:I = 0x800

.field private static final TAG:Ljava/lang/String; = "UriGlideRenderer"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private blurPaint:Landroid/graphics/Paint;

.field private final blurScaleMatrix:Landroid/graphics/Matrix;

.field private blurredBitmap:Landroid/graphics/Bitmap;

.field private final decryptable:Z

.field private final imageProjectionMatrix:Landroid/graphics/Matrix;

.field private final imageUri:Landroid/net/Uri;

.field private final maxHeight:I

.field private final maxWidth:I

.field private final paint:Landroid/graphics/Paint;

.field private final temp:Landroid/graphics/Matrix;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 286
    new-instance v0, Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer$2;

    invoke-direct {v0}, Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer$2;-><init>()V

    sput-object v0, Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/net/Uri;ZII)V
    .locals 2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer;->paint:Landroid/graphics/Paint;

    .line 55
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer;->imageProjectionMatrix:Landroid/graphics/Matrix;

    .line 56
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer;->temp:Landroid/graphics/Matrix;

    .line 57
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer;->blurScaleMatrix:Landroid/graphics/Matrix;

    .line 67
    iput-object p1, p0, Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer;->imageUri:Landroid/net/Uri;

    .line 68
    iput-boolean p2, p0, Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer;->decryptable:Z

    .line 69
    iput p3, p0, Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer;->maxWidth:I

    .line 70
    iput p4, p0, Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer;->maxHeight:I

    const/4 p1, 0x1

    .line 71
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 72
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 73
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setDither(Z)V

    return-void
.end method

.method static synthetic access$000(Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer;Lorg/thoughtcrime/securesms/imageeditor/RendererContext;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer;->setBitmap(Lorg/thoughtcrime/securesms/imageeditor/RendererContext;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$102(Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 46
    iput-object p1, p0, Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer;->bitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method private static blur(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 5

    .line 245
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    const/16 v1, 0x800

    invoke-static {v0, v1}, Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer;->scaleKeepingAspectRatio(Landroid/graphics/Point;I)Landroid/graphics/Point;

    move-result-object v0

    .line 246
    new-instance v1, Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/Point;->x:I

    div-int/lit8 v2, v2, 0x2

    iget v0, v0, Landroid/graphics/Point;->y:I

    div-int/lit8 v0, v0, 0x2

    invoke-direct {v1, v2, v0}, Landroid/graphics/Point;-><init>(II)V

    const/16 v0, 0x12c

    invoke-static {v1, v0}, Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer;->scaleKeepingAspectRatio(Landroid/graphics/Point;I)Landroid/graphics/Point;

    move-result-object v0

    .line 247
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    invoke-static {p0, v1, v2}, Lorg/thoughtcrime/securesms/util/BitmapUtil;->createScaledBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 249
    sget-object v2, Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Bitmap: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", Blur: "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-static {p1}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object p0

    .line 252
    invoke-static {p0, v1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object p1

    .line 253
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v0

    .line 254
    invoke-static {p0}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    invoke-static {p0, v2}, Lkotlinx/coroutines/time/TimeKt$$ExternalSyntheticApiModelOutline0;->m(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object p0

    const/high16 v2, 0x41c80000    # 25.0f

    .line 256
    invoke-static {p0, v2}, Lkotlinx/coroutines/time/TimeKt$$ExternalSyntheticApiModelOutline0;->m(Landroid/renderscript/ScriptIntrinsicBlur;F)V

    .line 257
    invoke-static {p0, p1}, Lkotlinx/coroutines/time/TimeKt$$ExternalSyntheticApiModelOutline0;->m(Landroid/renderscript/ScriptIntrinsicBlur;Landroid/renderscript/Allocation;)V

    .line 258
    invoke-static {p0, v0}, Lkotlinx/coroutines/time/TimeKt$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/renderscript/ScriptIntrinsicBlur;Landroid/renderscript/Allocation;)V

    .line 260
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-static {p0, p1, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 261
    invoke-virtual {v0, p0}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    return-object p0
.end method

.method private static cropMatrix(Landroid/graphics/Bitmap;)Landroid/graphics/Matrix;
    .locals 4

    .line 234
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 235
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-le v1, v2, :cond_0

    .line 236
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v1, p0

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_0

    .line 238
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v1, p0

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    :goto_0
    return-object v0
.end method

.method private getBitmapGlideRequest(Landroid/content/Context;Z)Lorg/thoughtcrime/securesms/mms/GlideRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Lorg/thoughtcrime/securesms/mms/GlideRequest<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 172
    iget v0, p0, Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer;->maxWidth:I

    .line 173
    iget v1, p0, Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer;->maxHeight:I

    if-eqz p2, :cond_0

    const/16 p2, 0x800

    .line 176
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 177
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 180
    :cond_0
    invoke-static {p1}, Lorg/thoughtcrime/securesms/mms/GlideApp;->with(Landroid/content/Context;)Lorg/thoughtcrime/securesms/mms/GlideRequests;

    move-result-object p1

    .line 181
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/mms/GlideRequests;->asBitmap()Lorg/thoughtcrime/securesms/mms/GlideRequest;

    move-result-object p1

    sget-object p2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 182
    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/mms/GlideRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lorg/thoughtcrime/securesms/mms/GlideRequest;

    move-result-object p1

    .line 183
    invoke-virtual {p1, v0, v1}, Lorg/thoughtcrime/securesms/mms/GlideRequest;->override(II)Lorg/thoughtcrime/securesms/mms/GlideRequest;

    move-result-object p1

    .line 184
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/mms/GlideRequest;->centerInside()Lorg/thoughtcrime/securesms/mms/GlideRequest;

    move-result-object p1

    .line 185
    iget-boolean p2, p0, Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer;->decryptable:Z

    if-eqz p2, :cond_1

    new-instance p2, Lorg/thoughtcrime/securesms/mms/DecryptableStreamUriLoader$DecryptableUri;

    iget-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer;->imageUri:Landroid/net/Uri;

    invoke-direct {p2, v0}, Lorg/thoughtcrime/securesms/mms/DecryptableStreamUriLoader$DecryptableUri;-><init>(Landroid/net/Uri;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer;->imageUri:Landroid/net/Uri;

    :goto_0
    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/mms/GlideRequest;->load(Ljava/lang/Object;)Lorg/thoughtcrime/securesms/mms/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method private pixelAlphaNotZero(FF)Z
    .locals 5

    .line 194
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 198
    :cond_0
    iget-object v2, p0, Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer;->imageProjectionMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer;->temp:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    const/4 v2, 0x2

    new-array v3, v2, [F

    .line 201
    iget-object v4, p0, Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer;->temp:Landroid/graphics/Matrix;

    new-array v2, v2, [F

    aput p1, v2, v1

    const/4 p1, 0x1

    aput p2, v2, p1

    invoke-virtual {v4, v3, v2}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    aget p2, v3, v1

    float-to-int p2, p2

    aget v2, v3, p1

    float-to-int v2, v2

    if-ltz p2, :cond_1

    .line 206
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ge p2, v3, :cond_1

    if-ltz v2, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 207
    invoke-virtual {v0, p2, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result p2

    const/high16 v0, -0x1000000

    and-int/2addr p2, v0

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private renderBlurOverlay(Lorg/thoughtcrime/securesms/imageeditor/RendererContext;)V
    .locals 7

    .line 133
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/imageeditor/RendererContext;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    .line 134
    invoke-virtual {v2}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->getZOrder()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 136
    iget-object v1, p0, Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer;->blurPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 137
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer;->blurPaint:Landroid/graphics/Paint;

    .line 138
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 139
    iget-object v1, p0, Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer;->blurPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 140
    iget-object v1, p0, Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer;->blurPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 142
    :cond_1
    iget-object v1, p0, Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer;->blurPaint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 143
    iget-object v1, p0, Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer;->blurPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Lorg/thoughtcrime/securesms/imageeditor/RendererContext;->setMaskPaint(Landroid/graphics/Paint;)V

    .line 144
    invoke-virtual {v2, p1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->draw(Lorg/thoughtcrime/securesms/imageeditor/RendererContext;)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_4

    .line 149
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/imageeditor/RendererContext;->save()V

    .line 150
    iget-object v0, p1, Lorg/thoughtcrime/securesms/imageeditor/RendererContext;->canvasMatrix:Lorg/thoughtcrime/securesms/imageeditor/CanvasMatrix;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer;->imageProjectionMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/imageeditor/CanvasMatrix;->concat(Landroid/graphics/Matrix;)V

    .line 152
    iget-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer;->blurPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 153
    iget-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer;->blurPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 155
    iget-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer;->blurredBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 156
    iget-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer;->bitmap:Landroid/graphics/Bitmap;

    iget-object v3, p1, Lorg/thoughtcrime/securesms/imageeditor/RendererContext;->context:Landroid/content/Context;

    invoke-static {v0, v3}, Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer;->blur(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer;->blurredBitmap:Landroid/graphics/Bitmap;

    .line 158
    iget-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer;->blurScaleMatrix:Landroid/graphics/Matrix;

    new-instance v3, Landroid/graphics/RectF;

    iget-object v4, p0, Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer;->blurredBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer;->blurredBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v3, v2, v2, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v4, Landroid/graphics/RectF;

    iget-object v5, p0, Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer;->bitmap:Landroid/graphics/Bitmap;

    .line 159
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-direct {v4, v2, v2, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v5, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    .line 158
    invoke-virtual {v0, v3, v4, v5}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 163
    :cond_3
    iget-object v0, p1, Lorg/thoughtcrime/securesms/imageeditor/RendererContext;->canvas:Landroid/graphics/Canvas;

    iget-object v3, p0, Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer;->blurScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 164
    iget-object v0, p1, Lorg/thoughtcrime/securesms/imageeditor/RendererContext;->canvas:Landroid/graphics/Canvas;

    iget-object v3, p0, Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer;->blurredBitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer;->blurPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3, v2, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 165
    iget-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer;->blurPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 167
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/imageeditor/RendererContext;->restore()V

    :cond_4
    return-void
.end method

.method private static scaleKeepingAspectRatio(Landroid/graphics/Point;I)Landroid/graphics/Point;
    .locals 4

    .line 266
    iget v0, p0, Landroid/graphics/Point;->x:I

    .line 267
    iget v1, p0, Landroid/graphics/Point;->y:I

    .line 269
    iget v2, p0, Landroid/graphics/Point;->x:I

    if-gt v2, p1, :cond_1

    iget v2, p0, Landroid/graphics/Point;->y:I

    if-le v2, p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    move p0, v1

    goto :goto_1

    .line 273
    :cond_1
    :goto_0
    iget v0, p0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    int-to-float v1, p1

    div-float/2addr v0, v1

    .line 274
    iget v2, p0, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    div-float/2addr v2, v1

    cmpl-float v1, v0, v2

    if-lez v1, :cond_2

    .line 277
    iget p0, p0, Landroid/graphics/Point;->y:I

    int-to-float p0, p0

    div-float/2addr p0, v0

    float-to-int p0, p0

    goto :goto_1

    .line 279
    :cond_2
    iget p0, p0, Landroid/graphics/Point;->x:I

    int-to-float p0, p0

    div-float/2addr p0, v2

    float-to-int p0, p0

    move v3, p1

    move p1, p0

    move p0, v3

    .line 283
    :goto_1
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p0}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method private setBitmap(Lorg/thoughtcrime/securesms/imageeditor/RendererContext;Landroid/graphics/Bitmap;)V
    .locals 4

    .line 225
    iput-object p2, p0, Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer;->bitmap:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_0

    .line 227
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 228
    iget-object v1, p0, Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer;->imageProjectionMatrix:Landroid/graphics/Matrix;

    sget-object v2, Lorg/thoughtcrime/securesms/imageeditor/Bounds;->FULL_BOUNDS:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v1, v0, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 229
    iget-object p1, p1, Lorg/thoughtcrime/securesms/imageeditor/RendererContext;->rendererReady:Lorg/thoughtcrime/securesms/imageeditor/RendererContext$Ready;

    invoke-static {p2}, Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer;->cropMatrix(Landroid/graphics/Bitmap;)Landroid/graphics/Matrix;

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    invoke-direct {v1, v2, p2}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {p1, p0, v0, v1}, Lorg/thoughtcrime/securesms/imageeditor/RendererContext$Ready;->onReady(Lorg/thoughtcrime/securesms/imageeditor/Renderer;Landroid/graphics/Matrix;Landroid/graphics/Point;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 218
    iget-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 219
    iput-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer;->bitmap:Landroid/graphics/Bitmap;

    .line 221
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public hitTest(FF)Z
    .locals 0

    .line 190
    invoke-direct {p0, p1, p2}, Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer;->pixelAlphaNotZero(FF)Z

    move-result p1

    return p1
.end method

.method public render(Lorg/thoughtcrime/securesms/imageeditor/RendererContext;)V
    .locals 5

    .line 78
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    .line 79
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/imageeditor/RendererContext;->isBlockingLoad()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    :try_start_0
    iget-object v0, p1, Lorg/thoughtcrime/securesms/imageeditor/RendererContext;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer;->getBitmapGlideRequest(Landroid/content/Context;Z)Lorg/thoughtcrime/securesms/mms/GlideRequest;

    move-result-object v0

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/mms/GlideRequest;->submit()Lcom/bumptech/glide/request/FutureTarget;

    move-result-object v0

    invoke-interface {v0}, Lcom/bumptech/glide/request/FutureTarget;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 82
    invoke-direct {p0, p1, v0}, Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer;->setBitmap(Lorg/thoughtcrime/securesms/imageeditor/RendererContext;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 84
    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 87
    :cond_0
    iget-object v0, p1, Lorg/thoughtcrime/securesms/imageeditor/RendererContext;->context:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer;->getBitmapGlideRequest(Landroid/content/Context;Z)Lorg/thoughtcrime/securesms/mms/GlideRequest;

    move-result-object v0

    new-instance v1, Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer$1;

    invoke-direct {v1, p0, p1}, Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer$1;-><init>(Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer;Lorg/thoughtcrime/securesms/imageeditor/RendererContext;)V

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/mms/GlideRequest;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    .line 103
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 105
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/imageeditor/RendererContext;->save()V

    .line 107
    iget-object v1, p1, Lorg/thoughtcrime/securesms/imageeditor/RendererContext;->canvasMatrix:Lorg/thoughtcrime/securesms/imageeditor/CanvasMatrix;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer;->imageProjectionMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Lorg/thoughtcrime/securesms/imageeditor/CanvasMatrix;->concat(Landroid/graphics/Matrix;)V

    .line 111
    iget-object v1, p0, Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    .line 112
    iget-object v2, p0, Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Lorg/thoughtcrime/securesms/imageeditor/RendererContext;->getAlpha(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 114
    iget-object v2, p1, Lorg/thoughtcrime/securesms/imageeditor/RendererContext;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/imageeditor/RendererContext;->getMaskPaint()Landroid/graphics/Paint;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/imageeditor/RendererContext;->getMaskPaint()Landroid/graphics/Paint;

    move-result-object v3

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer;->paint:Landroid/graphics/Paint;

    :goto_2
    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 116
    iget-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 118
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/imageeditor/RendererContext;->restore()V

    .line 120
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_4

    .line 121
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer;->renderBlurOverlay(Lorg/thoughtcrime/securesms/imageeditor/RendererContext;)V

    goto :goto_3

    .line 123
    :cond_3
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/imageeditor/RendererContext;->isBlockingLoad()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 125
    iget-object p1, p1, Lorg/thoughtcrime/securesms/imageeditor/RendererContext;->canvas:Landroid/graphics/Canvas;

    sget-object v0, Lorg/thoughtcrime/securesms/imageeditor/Bounds;->FULL_BOUNDS:Landroid/graphics/RectF;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_4
    :goto_3
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 309
    iget-object p2, p0, Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer;->imageUri:Landroid/net/Uri;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 310
    iget-boolean p2, p0, Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer;->decryptable:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 311
    iget p2, p0, Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer;->maxWidth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 312
    iget p2, p0, Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer;->maxHeight:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
