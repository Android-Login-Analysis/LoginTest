.class public Lcom/annimon/stream/operator/ObjScanIdentity;
.super Lcom/annimon/stream/iterator/LsaExtIterator;
.source "ObjScanIdentity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/annimon/stream/iterator/LsaExtIterator<",
        "TR;>;"
    }
.end annotation


# instance fields
.field private final accumulator:Lcom/annimon/stream/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/annimon/stream/function/BiFunction<",
            "-TR;-TT;+TR;>;"
        }
    .end annotation
.end field

.field private final identity:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field private final iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Iterator;Ljava/lang/Object;Lcom/annimon/stream/function/BiFunction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TT;>;TR;",
            "Lcom/annimon/stream/function/BiFunction<",
            "-TR;-TT;+TR;>;)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Lcom/annimon/stream/iterator/LsaExtIterator;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/annimon/stream/operator/ObjScanIdentity;->iterator:Ljava/util/Iterator;

    .line 16
    iput-object p2, p0, Lcom/annimon/stream/operator/ObjScanIdentity;->identity:Ljava/lang/Object;

    .line 17
    iput-object p3, p0, Lcom/annimon/stream/operator/ObjScanIdentity;->accumulator:Lcom/annimon/stream/function/BiFunction;

    return-void
.end method


# virtual methods
.method protected nextIteration()V
    .locals 3

    .line 22
    iget-boolean v0, p0, Lcom/annimon/stream/operator/ObjScanIdentity;->isInit:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lcom/annimon/stream/operator/ObjScanIdentity;->hasNext:Z

    .line 25
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjScanIdentity;->identity:Ljava/lang/Object;

    iput-object v0, p0, Lcom/annimon/stream/operator/ObjScanIdentity;->next:Ljava/lang/Object;

    return-void

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjScanIdentity;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    iput-boolean v0, p0, Lcom/annimon/stream/operator/ObjScanIdentity;->hasNext:Z

    .line 29
    iget-boolean v0, p0, Lcom/annimon/stream/operator/ObjScanIdentity;->hasNext:Z

    if-eqz v0, :cond_1

    .line 30
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjScanIdentity;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/annimon/stream/operator/ObjScanIdentity;->accumulator:Lcom/annimon/stream/function/BiFunction;

    iget-object v2, p0, Lcom/annimon/stream/operator/ObjScanIdentity;->next:Ljava/lang/Object;

    invoke-interface {v1, v2, v0}, Lcom/annimon/stream/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/annimon/stream/operator/ObjScanIdentity;->next:Ljava/lang/Object;

    :cond_1
    return-void
.end method
