.class public abstract Lcom/github/penfeizhou/animation/FrameAnimationDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "FrameAnimationDrawable.java"

# interfaces
.implements Landroidx/vectordrawable/graphics/drawable/Animatable2Compat;
.implements Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$RenderListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Decoder:",
        "Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder<",
        "**>;>",
        "Landroid/graphics/drawable/Drawable;",
        "Landroidx/vectordrawable/graphics/drawable/Animatable2Compat;",
        "Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$RenderListener;"
    }
.end annotation


# static fields
.field private static final MSG_ANIMATION_END:I = 0x2

.field private static final MSG_ANIMATION_START:I = 0x1

.field private static final TAG:Ljava/lang/String; = "FrameAnimationDrawable"


# instance fields
.field private final animationCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;",
            ">;"
        }
    .end annotation
.end field

.field private autoPlay:Z

.field private bitmap:Landroid/graphics/Bitmap;

.field private final drawFilter:Landroid/graphics/DrawFilter;

.field private final frameSeqDecoder:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TDecoder;"
        }
    .end annotation
.end field

.field private final invalidateRunnable:Ljava/lang/Runnable;

.field private final matrix:Landroid/graphics/Matrix;

.field private noMeasure:Z

.field private final obtainedCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/drawable/Drawable$Callback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final paint:Landroid/graphics/Paint;

.field private final uiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TDecoder;)V"
        }
    .end annotation

    .line 81
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 40
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->paint:Landroid/graphics/Paint;

    .line 42
    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v1, p0, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->drawFilter:Landroid/graphics/DrawFilter;

    .line 43
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->matrix:Landroid/graphics/Matrix;

    .line 44
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->animationCallbacks:Ljava/util/Set;

    .line 48
    new-instance v1, Lcom/github/penfeizhou/animation/FrameAnimationDrawable$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/github/penfeizhou/animation/FrameAnimationDrawable$1;-><init>(Lcom/github/penfeizhou/animation/FrameAnimationDrawable;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->uiHandler:Landroid/os/Handler;

    .line 69
    new-instance v1, Lcom/github/penfeizhou/animation/FrameAnimationDrawable$2;

    invoke-direct {v1, p0}, Lcom/github/penfeizhou/animation/FrameAnimationDrawable$2;-><init>(Lcom/github/penfeizhou/animation/FrameAnimationDrawable;)V

    iput-object v1, p0, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->invalidateRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x1

    .line 75
    iput-boolean v1, p0, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->autoPlay:Z

    .line 77
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->obtainedCallbacks:Ljava/util/Set;

    .line 79
    iput-boolean v3, p0, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->noMeasure:Z

    .line 82
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 83
    iput-object p1, p0, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->frameSeqDecoder:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;

    return-void
.end method

.method public constructor <init>(Lcom/github/penfeizhou/animation/loader/Loader;)V
    .locals 4

    .line 86
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 40
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->paint:Landroid/graphics/Paint;

    .line 42
    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v1, p0, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->drawFilter:Landroid/graphics/DrawFilter;

    .line 43
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->matrix:Landroid/graphics/Matrix;

    .line 44
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->animationCallbacks:Ljava/util/Set;

    .line 48
    new-instance v1, Lcom/github/penfeizhou/animation/FrameAnimationDrawable$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/github/penfeizhou/animation/FrameAnimationDrawable$1;-><init>(Lcom/github/penfeizhou/animation/FrameAnimationDrawable;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->uiHandler:Landroid/os/Handler;

    .line 69
    new-instance v1, Lcom/github/penfeizhou/animation/FrameAnimationDrawable$2;

    invoke-direct {v1, p0}, Lcom/github/penfeizhou/animation/FrameAnimationDrawable$2;-><init>(Lcom/github/penfeizhou/animation/FrameAnimationDrawable;)V

    iput-object v1, p0, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->invalidateRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x1

    .line 75
    iput-boolean v1, p0, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->autoPlay:Z

    .line 77
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->obtainedCallbacks:Ljava/util/Set;

    .line 79
    iput-boolean v3, p0, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->noMeasure:Z

    .line 87
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 88
    invoke-virtual {p0, p1, p0}, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->createFrameSeqDecoder(Lcom/github/penfeizhou/animation/loader/Loader;Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$RenderListener;)Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;

    move-result-object p1

    iput-object p1, p0, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->frameSeqDecoder:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;

    return-void
.end method

.method static synthetic access$000(Lcom/github/penfeizhou/animation/FrameAnimationDrawable;)Ljava/util/Set;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->animationCallbacks:Ljava/util/Set;

    return-object p0
.end method

.method private hookRecordCallbacks()V
    .locals 6

    .line 319
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 320
    invoke-virtual {p0}, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    .line 322
    new-instance v2, Ljava/util/HashSet;

    iget-object v3, p0, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->obtainedCallbacks:Ljava/util/Set;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 323
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 324
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/Drawable$Callback;

    if-nez v5, :cond_0

    .line 326
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    if-ne v5, v1, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    .line 331
    :cond_1
    invoke-interface {v5, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 335
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 336
    iget-object v4, p0, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->obtainedCallbacks:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    if-nez v3, :cond_4

    .line 339
    iget-object v0, p0, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->obtainedCallbacks:Ljava/util/Set;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_4
    return-void
.end method

.method private innerStart()V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->frameSeqDecoder:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;

    invoke-virtual {v0, p0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->addRenderListener(Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$RenderListener;)V

    .line 142
    iget-boolean v0, p0, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->autoPlay:Z

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->frameSeqDecoder:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;

    invoke-virtual {v0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->start()V

    goto :goto_0

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->frameSeqDecoder:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;

    invoke-virtual {v0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->frameSeqDecoder:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;

    invoke-virtual {v0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method private innerStop()V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->frameSeqDecoder:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;

    invoke-virtual {v0, p0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->removeRenderListener(Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$RenderListener;)V

    .line 162
    iget-boolean v0, p0, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->autoPlay:Z

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->frameSeqDecoder:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;

    invoke-virtual {v0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->stop()V

    goto :goto_0

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->frameSeqDecoder:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;

    invoke-virtual {v0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->stopIfNeeded()V

    :goto_0
    return-void
.end method


# virtual methods
.method public clearAnimationCallbacks()V
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->animationCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method protected abstract createFrameSeqDecoder(Lcom/github/penfeizhou/animation/loader/Loader;Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$RenderListener;)Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/penfeizhou/animation/loader/Loader;",
            "Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$RenderListener;",
            ")TDecoder;"
        }
    .end annotation
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 176
    iget-object v0, p0, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->drawFilter:Landroid/graphics/DrawFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 180
    iget-object v0, p0, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->bitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->matrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getCallback()Landroid/graphics/drawable/Drawable$Callback;
    .locals 1

    .line 315
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    return-object v0
.end method

.method public getFrameSeqDecoder()Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TDecoder;"
        }
    .end annotation

    .line 356
    iget-object v0, p0, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->frameSeqDecoder:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 275
    iget-boolean v0, p0, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->noMeasure:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 279
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->frameSeqDecoder:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;

    invoke-virtual {v0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 263
    iget-boolean v0, p0, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->noMeasure:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 267
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->frameSeqDecoder:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;

    invoke-virtual {v0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public getMemorySize()I
    .locals 3

    .line 301
    iget-object v0, p0, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->frameSeqDecoder:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;

    invoke-virtual {v0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->getMemorySize()I

    move-result v0

    .line 302
    iget-object v1, p0, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 303
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 304
    iget-object v1, p0, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v1}, Landroidx/work/impl/utils/NetworkApi21$$ExternalSyntheticApiModelOutline0;->m(Landroid/graphics/Bitmap;)I

    move-result v1

    goto :goto_0

    .line 306
    :cond_0
    iget-object v1, p0, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    :cond_1
    const/4 v1, 0x1

    .line 309
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public invalidateSelf()V
    .locals 3

    .line 345
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 346
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->obtainedCallbacks:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 347
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 348
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable$Callback;

    if-eqz v1, :cond_0

    .line 349
    invoke-virtual {p0}, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 350
    invoke-interface {v1, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public isPaused()Z
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->frameSeqDecoder:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;

    invoke-virtual {v0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->isPaused()Z

    move-result v0

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->frameSeqDecoder:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;

    invoke-virtual {v0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->isRunning()Z

    move-result v0

    return v0
.end method

.method public onEnd()V
    .locals 2

    .line 240
    iget-object v0, p0, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->uiHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onRender(Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 220
    invoke-virtual {p0}, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->frameSeqDecoder:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;

    .line 225
    invoke-virtual {v0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->frameSeqDecoder:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;

    invoke-virtual {v1}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->getSampleSize()I

    move-result v1

    div-int/2addr v0, v1

    iget-object v1, p0, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->frameSeqDecoder:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;

    .line 226
    invoke-virtual {v1}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget-object v2, p0, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->frameSeqDecoder:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;

    invoke-virtual {v2}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->getSampleSize()I

    move-result v2

    div-int/2addr v1, v2

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 224
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->bitmap:Landroid/graphics/Bitmap;

    .line 229
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 230
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget-object v1, p0, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 231
    sget-object p1, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->TAG:Ljava/lang/String;

    const-string v0, "onRender:Buffer not large enough for pixels"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 234
    :cond_3
    iget-object v0, p0, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 235
    iget-object p1, p0, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->uiHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->invalidateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->uiHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public pause()V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->frameSeqDecoder:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;

    invoke-virtual {v0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->pause()V

    return-void
.end method

.method public registerAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->animationCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public reset()V
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->bitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->frameSeqDecoder:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;

    invoke-virtual {v0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->reset()V

    return-void
.end method

.method public resume()V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->frameSeqDecoder:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;

    invoke-virtual {v0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->resume()V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setAutoPlay(Z)V
    .locals 0

    .line 92
    iput-boolean p1, p0, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->autoPlay:Z

    return-void
.end method

.method public setBounds(IIII)V
    .locals 1

    .line 185
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 186
    iget-object p1, p0, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->frameSeqDecoder:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;

    invoke-virtual {p0}, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    invoke-virtual {p0}, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->setDesiredSize(II)Z

    move-result p1

    .line 187
    iget-object p2, p0, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->matrix:Landroid/graphics/Matrix;

    .line 188
    invoke-virtual {p0}, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p3

    int-to-float p3, p3

    const/high16 p4, 0x3f800000    # 1.0f

    mul-float p3, p3, p4

    iget-object v0, p0, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->frameSeqDecoder:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;

    invoke-virtual {v0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->getSampleSize()I

    move-result v0

    int-to-float v0, v0

    mul-float p3, p3, v0

    iget-object v0, p0, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->frameSeqDecoder:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;

    invoke-virtual {v0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p3, v0

    .line 189
    invoke-virtual {p0}, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, p4

    iget-object p4, p0, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->frameSeqDecoder:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;

    invoke-virtual {p4}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->getSampleSize()I

    move-result p4

    int-to-float p4, p4

    mul-float v0, v0, p4

    iget-object p4, p0, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->frameSeqDecoder:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;

    invoke-virtual {p4}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->getBounds()Landroid/graphics/Rect;

    move-result-object p4

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p4

    int-to-float p4, p4

    div-float/2addr v0, p4

    .line 187
    invoke-virtual {p2, p3, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    if-eqz p1, :cond_0

    .line 192
    iget-object p1, p0, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->frameSeqDecoder:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;

    .line 193
    invoke-virtual {p1}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget-object p2, p0, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->frameSeqDecoder:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;

    invoke-virtual {p2}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->getSampleSize()I

    move-result p2

    div-int/2addr p1, p2

    iget-object p2, p0, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->frameSeqDecoder:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;

    .line 194
    invoke-virtual {p2}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    iget-object p3, p0, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->frameSeqDecoder:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;

    invoke-virtual {p3}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->getSampleSize()I

    move-result p3

    div-int/2addr p2, p3

    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 192
    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->bitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setLoopLimit(I)V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->frameSeqDecoder:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;

    invoke-virtual {v0, p1}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->setLoopLimit(I)V

    return-void
.end method

.method public setNoMeasure(Z)V
    .locals 0

    .line 96
    iput-boolean p1, p0, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->noMeasure:Z

    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1

    .line 245
    invoke-direct {p0}, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->hookRecordCallbacks()V

    .line 246
    iget-boolean v0, p0, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->autoPlay:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 251
    invoke-virtual {p0}, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 252
    invoke-direct {p0}, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->innerStart()V

    goto :goto_0

    .line 254
    :cond_0
    invoke-virtual {p0}, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 255
    invoke-direct {p0}, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->innerStop()V

    .line 258
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    return p1
.end method

.method public start()V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->frameSeqDecoder:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;

    invoke-virtual {v0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->frameSeqDecoder:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;

    invoke-virtual {v0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->stop()V

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->frameSeqDecoder:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;

    invoke-virtual {v0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->reset()V

    .line 133
    invoke-direct {p0}, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->innerStart()V

    return-void
.end method

.method public stop()V
    .locals 0

    .line 153
    invoke-direct {p0}, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->innerStop()V

    return-void
.end method

.method public unregisterAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)Z
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->animationCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
