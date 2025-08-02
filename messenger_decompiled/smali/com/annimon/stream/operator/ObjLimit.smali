.class public Lcom/annimon/stream/operator/ObjLimit;
.super Lcom/annimon/stream/iterator/LsaIterator;
.source "ObjLimit.java"


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
.field private index:J

.field private final iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private final maxSize:J


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
    iput-object p1, p0, Lcom/annimon/stream/operator/ObjLimit;->iterator:Ljava/util/Iterator;

    .line 14
    iput-wide p2, p0, Lcom/annimon/stream/operator/ObjLimit;->maxSize:J

    const-wide/16 p1, 0x0

    .line 15
    iput-wide p1, p0, Lcom/annimon/stream/operator/ObjLimit;->index:J

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 5

    .line 20
    iget-wide v0, p0, Lcom/annimon/stream/operator/ObjLimit;->index:J

    iget-wide v2, p0, Lcom/annimon/stream/operator/ObjLimit;->maxSize:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    iget-object v0, p0, Lcom/annimon/stream/operator/ObjLimit;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public nextIteration()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 25
    iget-wide v0, p0, Lcom/annimon/stream/operator/ObjLimit;->index:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/annimon/stream/operator/ObjLimit;->index:J

    .line 26
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjLimit;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
