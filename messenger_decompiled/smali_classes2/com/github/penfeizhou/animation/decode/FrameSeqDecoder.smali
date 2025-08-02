.class public abstract Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;
.super Ljava/lang/Object;
.source "FrameSeqDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$RenderListener;,
        Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/github/penfeizhou/animation/io/Reader;",
        "W::",
        "Lcom/github/penfeizhou/animation/io/Writer;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field private static final RECT_EMPTY:Landroid/graphics/Rect;

.field private static final TAG:Ljava/lang/String; = "FrameSeqDecoder"


# instance fields
.field private final cacheBitmaps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final cacheBitmapsLock:Ljava/lang/Object;

.field protected cachedCanvas:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/Canvas;",
            ">;"
        }
    .end annotation
.end field

.field private finished:Z

.field protected frameBuffer:Ljava/nio/ByteBuffer;

.field protected frameIndex:I

.field protected frames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/penfeizhou/animation/decode/Frame<",
            "TR;TW;>;>;"
        }
    .end annotation
.end field

.field protected volatile fullRect:Landroid/graphics/Rect;

.field private loopLimit:Ljava/lang/Integer;

.field private final mLoader:Lcom/github/penfeizhou/animation/loader/Loader;

.field private mReader:Lcom/github/penfeizhou/animation/io/Reader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field private volatile mState:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

.field private mWriter:Lcom/github/penfeizhou/animation/io/Writer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TW;"
        }
    .end annotation
.end field

.field private final paused:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private playCount:I

.field private final renderListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$RenderListener;",
            ">;"
        }
    .end annotation
.end field

.field private final renderTask:Ljava/lang/Runnable;

.field protected sampleSize:I

.field private final taskId:I

.field private final workerHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->RECT_EMPTY:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Lcom/github/penfeizhou/animation/loader/Loader;Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$RenderListener;)V
    .locals 4

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->frames:Ljava/util/List;

    const/4 v0, -0x1

    .line 43
    iput v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->frameIndex:I

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->loopLimit:Ljava/lang/Integer;

    .line 46
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->renderListeners:Ljava/util/Set;

    .line 47
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->paused:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 49
    new-instance v2, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$1;

    invoke-direct {v2, p0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$1;-><init>(Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;)V

    iput-object v2, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->renderTask:Ljava/lang/Runnable;

    .line 71
    iput v3, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->sampleSize:I

    .line 73
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->cacheBitmaps:Ljava/util/Set;

    .line 74
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->cacheBitmapsLock:Ljava/lang/Object;

    .line 76
    new-instance v2, Ljava/util/WeakHashMap;

    invoke-direct {v2}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v2, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->cachedCanvas:Ljava/util/Map;

    .line 79
    invoke-virtual {p0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->getWriter()Lcom/github/penfeizhou/animation/io/Writer;

    move-result-object v2

    iput-object v2, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->mWriter:Lcom/github/penfeizhou/animation/io/Writer;

    .line 80
    iput-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->mReader:Lcom/github/penfeizhou/animation/io/Reader;

    const/4 v0, 0x0

    .line 85
    iput-boolean v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->finished:Z

    .line 94
    sget-object v0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;->IDLE:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    iput-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->mState:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    .line 179
    iput-object p1, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->mLoader:Lcom/github/penfeizhou/animation/loader/Loader;

    if-eqz p2, :cond_0

    .line 181
    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 183
    :cond_0
    invoke-static {}, Lcom/github/penfeizhou/animation/executor/FrameDecoderExecutor;->getInstance()Lcom/github/penfeizhou/animation/executor/FrameDecoderExecutor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/penfeizhou/animation/executor/FrameDecoderExecutor;->generateTaskId()I

    move-result p1

    iput p1, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->taskId:I

    .line 184
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Lcom/github/penfeizhou/animation/executor/FrameDecoderExecutor;->getInstance()Lcom/github/penfeizhou/animation/executor/FrameDecoderExecutor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/penfeizhou/animation/executor/FrameDecoderExecutor;->getLooper(I)Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->workerHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->paused:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$100(Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;)Z
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->canStep()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->innerStop()V

    return-void
.end method

.method static synthetic access$1102(Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;I)I
    .locals 0

    .line 36
    iput p1, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->playCount:I

    return p1
.end method

.method static synthetic access$1202(Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;Z)Z
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->finished:Z

    return p1
.end method

.method static synthetic access$200(Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;)J
    .locals 2

    .line 36
    invoke-direct {p0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->step()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$300(Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;)Landroid/os/Handler;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->workerHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;)Ljava/util/Set;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->renderListeners:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$500(Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;)Lcom/github/penfeizhou/animation/io/Reader;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->mReader:Lcom/github/penfeizhou/animation/io/Reader;

    return-object p0
.end method

.method static synthetic access$502(Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;Lcom/github/penfeizhou/animation/io/Reader;)Lcom/github/penfeizhou/animation/io/Reader;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->mReader:Lcom/github/penfeizhou/animation/io/Reader;

    return-object p1
.end method

.method static synthetic access$600(Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;)Lcom/github/penfeizhou/animation/loader/Loader;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->mLoader:Lcom/github/penfeizhou/animation/loader/Loader;

    return-object p0
.end method

.method static synthetic access$700(Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;Landroid/graphics/Rect;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->initCanvasBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$800()Landroid/graphics/Rect;
    .locals 1

    .line 36
    sget-object v0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->RECT_EMPTY:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$900(Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->innerStart()V

    return-void
.end method

.method private canStep()Z
    .locals 4

    .line 483
    invoke-virtual {p0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->isRunning()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 486
    :cond_0
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->frames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 489
    :cond_1
    invoke-direct {p0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->getNumPlays()I

    move-result v0

    const/4 v2, 0x1

    if-gtz v0, :cond_2

    return v2

    .line 492
    :cond_2
    iget v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->playCount:I

    invoke-direct {p0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->getNumPlays()I

    move-result v3

    sub-int/2addr v3, v2

    if-ge v0, v3, :cond_3

    return v2

    .line 494
    :cond_3
    iget v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->playCount:I

    invoke-direct {p0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->getNumPlays()I

    move-result v3

    sub-int/2addr v3, v2

    if-ne v0, v3, :cond_4

    iget v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->frameIndex:I

    invoke-virtual {p0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->getFrameCount()I

    move-result v3

    sub-int/2addr v3, v2

    if-ge v0, v3, :cond_4

    return v2

    .line 497
    :cond_4
    iput-boolean v2, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->finished:Z

    return v1
.end method

.method private debugInfo()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method private getNumPlays()I
    .locals 1

    .line 479
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->loopLimit:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->getLoopCount()I

    move-result v0

    :goto_0
    return v0
.end method

.method private initCanvasBounds(Landroid/graphics/Rect;)V
    .locals 1

    .line 249
    iput-object p1, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->fullRect:Landroid/graphics/Rect;

    .line 250
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    mul-int v0, v0, p1

    iget p1, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->sampleSize:I

    mul-int p1, p1, p1

    div-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->frameBuffer:Ljava/nio/ByteBuffer;

    .line 251
    iget-object p1, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->mWriter:Lcom/github/penfeizhou/animation/io/Writer;

    if-nez p1, :cond_0

    .line 252
    invoke-virtual {p0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->getWriter()Lcom/github/penfeizhou/animation/io/Writer;

    move-result-object p1

    iput-object p1, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->mWriter:Lcom/github/penfeizhou/animation/io/Writer;

    :cond_0
    return-void
.end method

.method private innerStart()V
    .locals 8

    const-string v0, " Set state to RUNNING,cost "

    .line 295
    iget-object v1, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->paused:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 297
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 299
    :try_start_0
    iget-object v3, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->frames:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v3, :cond_1

    .line 301
    :try_start_1
    iget-object v3, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->mReader:Lcom/github/penfeizhou/animation/io/Reader;

    if-nez v3, :cond_0

    .line 302
    iget-object v3, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->mLoader:Lcom/github/penfeizhou/animation/loader/Loader;

    invoke-interface {v3}, Lcom/github/penfeizhou/animation/loader/Loader;->obtain()Lcom/github/penfeizhou/animation/io/Reader;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->getReader(Lcom/github/penfeizhou/animation/io/Reader;)Lcom/github/penfeizhou/animation/io/Reader;

    move-result-object v3

    iput-object v3, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->mReader:Lcom/github/penfeizhou/animation/io/Reader;

    goto :goto_0

    .line 304
    :cond_0
    invoke-interface {v3}, Lcom/github/penfeizhou/animation/io/Reader;->reset()V

    .line 306
    :goto_0
    iget-object v3, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->mReader:Lcom/github/penfeizhou/animation/io/Reader;

    invoke-virtual {p0, v3}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->read(Lcom/github/penfeizhou/animation/io/Reader;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->initCanvasBounds(Landroid/graphics/Rect;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    .line 308
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 312
    :cond_1
    :goto_1
    sget-object v3, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->debugInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    sget-object v0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;->RUNNING:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    iput-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->mState:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    .line 315
    invoke-direct {p0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->getNumPlays()I

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->finished:Z

    if-nez v0, :cond_2

    goto :goto_2

    .line 322
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->debugInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " No need to started"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_3
    :goto_2
    const/4 v0, -0x1

    .line 316
    iput v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->frameIndex:I

    .line 317
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->renderTask:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 318
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->renderListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$RenderListener;

    .line 319
    invoke-interface {v1}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$RenderListener;->onStart()V

    goto :goto_3

    :cond_4
    :goto_4
    return-void

    :catchall_1
    move-exception v3

    .line 312
    sget-object v4, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->debugInfo()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v1

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    sget-object v0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;->RUNNING:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    iput-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->mState:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    .line 314
    goto :goto_6

    :goto_5
    throw v3

    :goto_6
    goto :goto_5
.end method

.method private innerStop()V
    .locals 4

    .line 328
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->workerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->renderTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 329
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->frames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 330
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->cacheBitmapsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 331
    :try_start_0
    iget-object v1, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->cacheBitmaps:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 332
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 333
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 336
    :cond_1
    iget-object v1, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->cacheBitmaps:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 337
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->frameBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 339
    iput-object v1, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->frameBuffer:Ljava/nio/ByteBuffer;

    .line 341
    :cond_2
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->cachedCanvas:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 343
    :try_start_1
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->mReader:Lcom/github/penfeizhou/animation/io/Reader;

    if-eqz v0, :cond_3

    .line 344
    invoke-interface {v0}, Lcom/github/penfeizhou/animation/io/Reader;->close()V

    .line 345
    iput-object v1, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->mReader:Lcom/github/penfeizhou/animation/io/Reader;

    .line 347
    :cond_3
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->mWriter:Lcom/github/penfeizhou/animation/io/Writer;

    if-eqz v0, :cond_4

    .line 348
    invoke-interface {v0}, Lcom/github/penfeizhou/animation/io/Writer;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 351
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 353
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->release()V

    .line 357
    sget-object v0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;->IDLE:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    iput-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->mState:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    .line 358
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->renderListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$RenderListener;

    .line 359
    invoke-interface {v1}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$RenderListener;->onEnd()V

    goto :goto_2

    :cond_5
    return-void

    :catchall_0
    move-exception v1

    .line 337
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :goto_3
    throw v1

    :goto_4
    goto :goto_3
.end method

.method private step()J
    .locals 2

    .line 503
    iget v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->frameIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->frameIndex:I

    .line 504
    invoke-virtual {p0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->getFrameCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 505
    iput v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->frameIndex:I

    .line 506
    iget v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->playCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->playCount:I

    .line 508
    :cond_0
    iget v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->frameIndex:I

    invoke-virtual {p0, v0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->getFrame(I)Lcom/github/penfeizhou/animation/decode/Frame;

    move-result-object v0

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    return-wide v0

    .line 512
    :cond_1
    invoke-virtual {p0, v0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->renderFrame(Lcom/github/penfeizhou/animation/decode/Frame;)V

    .line 513
    iget v0, v0, Lcom/github/penfeizhou/animation/decode/Frame;->frameDuration:I

    int-to-long v0, v0

    return-wide v0
.end method


# virtual methods
.method public addRenderListener(Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$RenderListener;)V
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->workerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$2;

    invoke-direct {v1, p0, p1}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$2;-><init>(Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$RenderListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getBounds()Landroid/graphics/Rect;
    .locals 3

    .line 218
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->fullRect:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    .line 219
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->mState:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    sget-object v1, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;->FINISHING:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    if-ne v0, v1, :cond_0

    .line 220
    sget-object v0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->TAG:Ljava/lang/String;

    const-string v1, "In finishing,do not interrupt"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 223
    iget-object v1, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->workerHandler:Landroid/os/Handler;

    new-instance v2, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$5;

    invoke-direct {v2, p0, v0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$5;-><init>(Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;Ljava/lang/Thread;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 243
    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->fullRect:Landroid/graphics/Rect;

    if-nez v0, :cond_2

    sget-object v0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->RECT_EMPTY:Landroid/graphics/Rect;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->fullRect:Landroid/graphics/Rect;

    :goto_0
    return-object v0
.end method

.method protected getDesiredSample(II)I
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_1

    .line 468
    :cond_0
    invoke-virtual {p0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/2addr v1, p1

    invoke-virtual {p0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    div-int/2addr p1, p2

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_0
    mul-int/lit8 p2, v0, 0x2

    if-gt p2, p1, :cond_1

    move v0, p2

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method public getFrame(I)Lcom/github/penfeizhou/animation/decode/Frame;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/github/penfeizhou/animation/decode/Frame<",
            "TR;TW;>;"
        }
    .end annotation

    if-ltz p1, :cond_1

    .line 519
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->frames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 522
    :cond_0
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->frames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/penfeizhou/animation/decode/Frame;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getFrameBitmap(I)Landroid/graphics/Bitmap;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 531
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->mState:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    sget-object v1, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;->IDLE:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    if-eq v0, v1, :cond_0

    .line 532
    sget-object p1, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->debugInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",stop first"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    .line 535
    :cond_0
    sget-object v0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;->RUNNING:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    iput-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->mState:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    .line 536
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->paused:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 537
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->frames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 538
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->mReader:Lcom/github/penfeizhou/animation/io/Reader;

    if-nez v0, :cond_1

    .line 539
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->mLoader:Lcom/github/penfeizhou/animation/loader/Loader;

    invoke-interface {v0}, Lcom/github/penfeizhou/animation/loader/Loader;->obtain()Lcom/github/penfeizhou/animation/io/Reader;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->getReader(Lcom/github/penfeizhou/animation/io/Reader;)Lcom/github/penfeizhou/animation/io/Reader;

    move-result-object v0

    iput-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->mReader:Lcom/github/penfeizhou/animation/io/Reader;

    goto :goto_0

    .line 541
    :cond_1
    invoke-interface {v0}, Lcom/github/penfeizhou/animation/io/Reader;->reset()V

    .line 543
    :goto_0
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->mReader:Lcom/github/penfeizhou/animation/io/Reader;

    invoke-virtual {p0, v0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->read(Lcom/github/penfeizhou/animation/io/Reader;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->initCanvasBounds(Landroid/graphics/Rect;)V

    :cond_2
    if-gez p1, :cond_3

    .line 546
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->frames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr p1, v0

    :cond_3
    if-gez p1, :cond_4

    goto :goto_1

    :cond_4
    move v2, p1

    :goto_1
    const/4 p1, -0x1

    .line 551
    iput p1, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->frameIndex:I

    .line 552
    :goto_2
    iget p1, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->frameIndex:I

    if-ge p1, v2, :cond_5

    .line 553
    invoke-direct {p0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->canStep()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 554
    invoke-direct {p0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->step()J

    goto :goto_2

    .line 559
    :cond_5
    iget-object p1, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->frameBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 560
    invoke-virtual {p0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-virtual {p0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->getSampleSize()I

    move-result v0

    div-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->getSampleSize()I

    move-result v1

    div-int/2addr v0, v1

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 561
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->frameBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 562
    invoke-direct {p0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->innerStop()V

    return-object p1
.end method

.method public getFrameCount()I
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->frames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected abstract getLoopCount()I
.end method

.method public getMemorySize()I
    .locals 6

    .line 567
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->cacheBitmapsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 569
    :try_start_0
    iget-object v1, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->cacheBitmaps:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    .line 570
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 573
    :cond_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-lt v4, v5, :cond_1

    .line 574
    invoke-static {v3}, Landroidx/work/impl/utils/NetworkApi21$$ExternalSyntheticApiModelOutline0;->m(Landroid/graphics/Bitmap;)I

    move-result v3

    goto :goto_1

    .line 576
    :cond_1
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v3

    :goto_1
    add-int/2addr v2, v3

    goto :goto_0

    .line 579
    :cond_2
    iget-object v1, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->frameBuffer:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_3

    .line 580
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    add-int/2addr v2, v1

    .line 582
    :cond_3
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    .line 583
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method

.method protected abstract getReader(Lcom/github/penfeizhou/animation/io/Reader;)Lcom/github/penfeizhou/animation/io/Reader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/penfeizhou/animation/io/Reader;",
            ")TR;"
        }
    .end annotation
.end method

.method public getSampleSize()I
    .locals 1

    .line 435
    iget v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->sampleSize:I

    return v0
.end method

.method protected abstract getWriter()Lcom/github/penfeizhou/animation/io/Writer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TW;"
        }
    .end annotation
.end method

.method public isPaused()Z
    .locals 1

    .line 404
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->paused:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isRunning()Z
    .locals 2

    .line 400
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->mState:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    sget-object v1, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;->RUNNING:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->mState:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    sget-object v1, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;->INITIALIZING:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected obtainBitmap(II)Landroid/graphics/Bitmap;
    .locals 8

    .line 101
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->cacheBitmapsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 103
    :try_start_0
    iget-object v1, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->cacheBitmaps:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 104
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    mul-int v3, p1, p2

    mul-int/lit8 v3, v3, 0x4

    .line 106
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    .line 108
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    const/4 v7, 0x0

    if-lt v5, v6, :cond_2

    if-eqz v4, :cond_4

    .line 109
    invoke-static {v4}, Landroidx/work/impl/utils/NetworkApi21$$ExternalSyntheticApiModelOutline0;->m(Landroid/graphics/Bitmap;)I

    move-result v5

    if-lt v5, v3, :cond_4

    .line 110
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 111
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v1, p1, :cond_0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eq v1, p2, :cond_1

    :cond_0
    if-lez p1, :cond_1

    if-lez p2, :cond_1

    .line 113
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, p1, p2, v1}, Landroidx/work/impl/utils/NetworkApi21$$ExternalSyntheticApiModelOutline0;->m(Landroid/graphics/Bitmap;IILandroid/graphics/Bitmap$Config;)V

    .line 116
    :cond_1
    invoke-virtual {v4, v7}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 117
    monitor-exit v0

    return-object v4

    :cond_2
    if-eqz v4, :cond_4

    .line 120
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v5

    if-lt v5, v3, :cond_4

    .line 121
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ne v2, p1, :cond_3

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    if-ne p1, p2, :cond_3

    .line 122
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 123
    invoke-virtual {v4, v7}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 125
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v4

    :cond_4
    move-object v3, v4

    goto :goto_0

    :cond_5
    if-lez p1, :cond_7

    if-gtz p2, :cond_6

    goto :goto_2

    .line 134
    :cond_6
    :try_start_1
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 135
    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 139
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p1

    .line 137
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 141
    :goto_1
    monitor-exit v0

    return-object v3

    .line 131
    :cond_7
    :goto_2
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p1

    .line 142
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public pause()V
    .locals 3

    .line 423
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->workerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->renderTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 424
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->paused:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    return-void
.end method

.method protected abstract read(Lcom/github/penfeizhou/animation/io/Reader;)Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)",
            "Landroid/graphics/Rect;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected recycleBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->cacheBitmapsLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 148
    :try_start_0
    iget-object v1, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->cacheBitmaps:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 150
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected abstract release()V
.end method

.method public removeRenderListener(Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$RenderListener;)V
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->workerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$3;

    invoke-direct {v1, p0, p1}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$3;-><init>(Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$RenderListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected abstract renderFrame(Lcom/github/penfeizhou/animation/decode/Frame;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/penfeizhou/animation/decode/Frame<",
            "TR;TW;>;)V"
        }
    .end annotation
.end method

.method public reset()V
    .locals 2

    .line 412
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->workerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$8;

    invoke-direct {v1, p0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$8;-><init>(Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public resume()V
    .locals 3

    .line 428
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->paused:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 429
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->workerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->renderTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 430
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->workerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->renderTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setDesiredSize(II)Z
    .locals 2

    .line 440
    invoke-virtual {p0, p1, p2}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->getDesiredSample(II)I

    move-result p1

    .line 441
    iget p2, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->sampleSize:I

    if-eq p1, p2, :cond_0

    .line 443
    invoke-virtual {p0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->isRunning()Z

    move-result p2

    .line 444
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->workerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->renderTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 445
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->workerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$9;-><init>(Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;IZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setLoopLimit(I)V
    .locals 0

    .line 408
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->loopLimit:Ljava/lang/Integer;

    return-void
.end method

.method public start()V
    .locals 3

    .line 267
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->fullRect:Landroid/graphics/Rect;

    sget-object v1, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->RECT_EMPTY:Landroid/graphics/Rect;

    if-ne v0, v1, :cond_0

    return-void

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->mState:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    sget-object v1, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;->RUNNING:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->mState:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    sget-object v1, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;->INITIALIZING:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    if-ne v0, v1, :cond_1

    goto :goto_1

    .line 274
    :cond_1
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->mState:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    sget-object v1, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;->FINISHING:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    if-ne v0, v1, :cond_2

    .line 275
    sget-object v0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->debugInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Processing,wait for finish at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->mState:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_2
    sget-object v0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;->INITIALIZING:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    iput-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->mState:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    .line 281
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->workerHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_3

    .line 282
    invoke-direct {p0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->innerStart()V

    goto :goto_0

    .line 284
    :cond_3
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->workerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$6;

    invoke-direct {v1, p0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$6;-><init>(Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    .line 271
    :cond_4
    :goto_1
    sget-object v0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->debugInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Already started"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public stop()V
    .locals 3

    .line 364
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->fullRect:Landroid/graphics/Rect;

    sget-object v1, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->RECT_EMPTY:Landroid/graphics/Rect;

    if-ne v0, v1, :cond_0

    return-void

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->mState:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    sget-object v1, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;->FINISHING:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->mState:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    sget-object v1, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;->IDLE:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    if-ne v0, v1, :cond_1

    goto :goto_1

    .line 371
    :cond_1
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->mState:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    sget-object v1, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;->INITIALIZING:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    if-ne v0, v1, :cond_2

    .line 372
    sget-object v0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->debugInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Processing,wait for finish at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->mState:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :cond_2
    sget-object v0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;->FINISHING:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    iput-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->mState:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    .line 378
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->workerHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_3

    .line 379
    invoke-direct {p0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->innerStop()V

    goto :goto_0

    .line 381
    :cond_3
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->workerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$7;

    invoke-direct {v1, p0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$7;-><init>(Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    .line 368
    :cond_4
    :goto_1
    sget-object v0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->debugInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "No need to stop"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public stopIfNeeded()V
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->workerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$4;

    invoke-direct {v1, p0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$4;-><init>(Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
