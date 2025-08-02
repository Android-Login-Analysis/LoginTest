.class public Lcom/annimon/stream/operator/ObjMapToDouble;
.super Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;
.source "ObjMapToDouble.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;"
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

.field private final mapper:Lcom/annimon/stream/function/ToDoubleFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/annimon/stream/function/ToDoubleFunction<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Iterator;Lcom/annimon/stream/function/ToDoubleFunction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TT;>;",
            "Lcom/annimon/stream/function/ToDoubleFunction<",
            "-TT;>;)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/annimon/stream/operator/ObjMapToDouble;->iterator:Ljava/util/Iterator;

    .line 14
    iput-object p2, p0, Lcom/annimon/stream/operator/ObjMapToDouble;->mapper:Lcom/annimon/stream/function/ToDoubleFunction;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjMapToDouble;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public nextDouble()D
    .locals 2

    .line 24
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjMapToDouble;->mapper:Lcom/annimon/stream/function/ToDoubleFunction;

    iget-object v1, p0, Lcom/annimon/stream/operator/ObjMapToDouble;->iterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/annimon/stream/function/ToDoubleFunction;->applyAsDouble(Ljava/lang/Object;)D

    move-result-wide v0

    return-wide v0
.end method
