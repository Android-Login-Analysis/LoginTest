.class public Lcom/b44t/messenger/DcEventEmitter;
.super Ljava/lang/Object;
.source "DcEventEmitter.java"


# instance fields
.field private eventEmitterCPtr:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-wide p1, p0, Lcom/b44t/messenger/DcEventEmitter;->eventEmitterCPtr:J

    return-void
.end method

.method private native getNextEventCPtr()J
.end method

.method private native unrefEventEmitterCPtr()V
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 10
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 11
    invoke-direct {p0}, Lcom/b44t/messenger/DcEventEmitter;->unrefEventEmitterCPtr()V

    const-wide/16 v0, 0x0

    .line 12
    iput-wide v0, p0, Lcom/b44t/messenger/DcEventEmitter;->eventEmitterCPtr:J

    return-void
.end method

.method public getNextEvent()Lcom/b44t/messenger/DcEvent;
    .locals 5

    .line 16
    invoke-direct {p0}, Lcom/b44t/messenger/DcEventEmitter;->getNextEventCPtr()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 17
    :cond_0
    new-instance v2, Lcom/b44t/messenger/DcEvent;

    invoke-direct {v2, v0, v1}, Lcom/b44t/messenger/DcEvent;-><init>(J)V

    move-object v0, v2

    :goto_0
    return-object v0
.end method
