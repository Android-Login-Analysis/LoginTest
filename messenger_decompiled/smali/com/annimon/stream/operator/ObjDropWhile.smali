.class public Lcom/annimon/stream/operator/ObjDropWhile;
.super Lcom/annimon/stream/iterator/LsaExtIterator;
.source "ObjDropWhile.java"


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

.field private final predicate:Lcom/annimon/stream/function/Predicate;
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
    iput-object p1, p0, Lcom/annimon/stream/operator/ObjDropWhile;->iterator:Ljava/util/Iterator;

    .line 14
    iput-object p2, p0, Lcom/annimon/stream/operator/ObjDropWhile;->predicate:Lcom/annimon/stream/function/Predicate;

    return-void
.end method


# virtual methods
.method protected nextIteration()V
    .locals 2

    .line 19
    iget-boolean v0, p0, Lcom/annimon/stream/operator/ObjDropWhile;->isInit:Z

    if-nez v0, :cond_1

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjDropWhile;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    iput-boolean v0, p0, Lcom/annimon/stream/operator/ObjDropWhile;->hasNext:Z

    if-eqz v0, :cond_1

    .line 22
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjDropWhile;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/annimon/stream/operator/ObjDropWhile;->next:Ljava/lang/Object;

    .line 23
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjDropWhile;->predicate:Lcom/annimon/stream/function/Predicate;

    iget-object v1, p0, Lcom/annimon/stream/operator/ObjDropWhile;->next:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/annimon/stream/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 29
    :cond_1
    iget-boolean v0, p0, Lcom/annimon/stream/operator/ObjDropWhile;->hasNext:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/annimon/stream/operator/ObjDropWhile;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/annimon/stream/operator/ObjDropWhile;->hasNext:Z

    .line 30
    iget-boolean v0, p0, Lcom/annimon/stream/operator/ObjDropWhile;->hasNext:Z

    if-nez v0, :cond_3

    return-void

    .line 32
    :cond_3
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjDropWhile;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/annimon/stream/operator/ObjDropWhile;->next:Ljava/lang/Object;

    return-void
.end method
