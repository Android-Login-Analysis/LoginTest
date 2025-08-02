.class public Lcom/annimon/stream/operator/ObjTakeUntil;
.super Lcom/annimon/stream/iterator/LsaExtIterator;
.source "ObjTakeUntil.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/annimon/stream/iterator/LsaExtIterator<",
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

.field private final stopPredicate:Lcom/annimon/stream/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/annimon/stream/function/Predicate<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Iterator;Lcom/annimon/stream/function/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TT;>;",
            "Lcom/annimon/stream/function/Predicate<",
            "-TT;>;)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Lcom/annimon/stream/iterator/LsaExtIterator;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/annimon/stream/operator/ObjTakeUntil;->iterator:Ljava/util/Iterator;

    .line 14
    iput-object p2, p0, Lcom/annimon/stream/operator/ObjTakeUntil;->stopPredicate:Lcom/annimon/stream/function/Predicate;

    return-void
.end method


# virtual methods
.method protected nextIteration()V
    .locals 2

    .line 19
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjTakeUntil;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/annimon/stream/operator/ObjTakeUntil;->isInit:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/annimon/stream/operator/ObjTakeUntil;->stopPredicate:Lcom/annimon/stream/function/Predicate;

    iget-object v1, p0, Lcom/annimon/stream/operator/ObjTakeUntil;->next:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/annimon/stream/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/annimon/stream/operator/ObjTakeUntil;->hasNext:Z

    .line 20
    iget-boolean v0, p0, Lcom/annimon/stream/operator/ObjTakeUntil;->hasNext:Z

    if-eqz v0, :cond_2

    .line 21
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjTakeUntil;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/annimon/stream/operator/ObjTakeUntil;->next:Ljava/lang/Object;

    :cond_2
    return-void
.end method
