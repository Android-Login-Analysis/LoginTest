.class public Lcom/annimon/stream/operator/ObjSkip;
.super Lcom/annimon/stream/iterator/LsaIterator;
.source "ObjSkip.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/annimon/stream/iterator/LsaIterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private final n:J

.field private skipped:J


# direct methods
.method public constructor <init>(Ljava/util/Iterator;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TT;>;J)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Lcom/annimon/stream/iterator/LsaIterator;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/annimon/stream/operator/ObjSkip;->iterator:Ljava/util/Iterator;

    .line 14
    iput-wide p2, p0, Lcom/annimon/stream/operator/ObjSkip;->n:J

    const-wide/16 p1, 0x0

    .line 15
    iput-wide p1, p0, Lcom/annimon/stream/operator/ObjSkip;->skipped:J

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 5

    .line 20
    :goto_0
    iget-wide v0, p0, Lcom/annimon/stream/operator/ObjSkip;->skipped:J

    iget-wide v2, p0, Lcom/annimon/stream/operator/ObjSkip;->n:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 21
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjSkip;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjSkip;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    iget-wide v0, p0, Lcom/annimon/stream/operator/ObjSkip;->skipped:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/annimon/stream/operator/ObjSkip;->skipped:J

    goto :goto_0

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjSkip;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public nextIteration()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjSkip;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
