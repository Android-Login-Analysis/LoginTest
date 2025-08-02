.class public Lcom/annimon/stream/operator/ObjFilter;
.super Ljava/lang/Object;
.source "ObjFilter.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private hasNext:Z

.field private hasNextEvaluated:Z

.field private final iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private next:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
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

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/annimon/stream/operator/ObjFilter;->iterator:Ljava/util/Iterator;

    .line 16
    iput-object p2, p0, Lcom/annimon/stream/operator/ObjFilter;->predicate:Lcom/annimon/stream/function/Predicate;

    return-void
.end method

.method private nextIteration()V
    .locals 2

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjFilter;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjFilter;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/annimon/stream/operator/ObjFilter;->next:Ljava/lang/Object;

    .line 43
    iget-object v1, p0, Lcom/annimon/stream/operator/ObjFilter;->predicate:Lcom/annimon/stream/function/Predicate;

    invoke-interface {v1, v0}, Lcom/annimon/stream/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lcom/annimon/stream/operator/ObjFilter;->hasNext:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/annimon/stream/operator/ObjFilter;->hasNext:Z

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 21
    iget-boolean v0, p0, Lcom/annimon/stream/operator/ObjFilter;->hasNextEvaluated:Z

    if-nez v0, :cond_0

    .line 22
    invoke-direct {p0}, Lcom/annimon/stream/operator/ObjFilter;->nextIteration()V

    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcom/annimon/stream/operator/ObjFilter;->hasNextEvaluated:Z

    .line 25
    :cond_0
    iget-boolean v0, p0, Lcom/annimon/stream/operator/ObjFilter;->hasNext:Z

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 30
    iget-boolean v0, p0, Lcom/annimon/stream/operator/ObjFilter;->hasNextEvaluated:Z

    if-nez v0, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/annimon/stream/operator/ObjFilter;->hasNext()Z

    move-result v0

    iput-boolean v0, p0, Lcom/annimon/stream/operator/ObjFilter;->hasNext:Z

    .line 33
    :cond_0
    iget-boolean v0, p0, Lcom/annimon/stream/operator/ObjFilter;->hasNext:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/annimon/stream/operator/ObjFilter;->hasNextEvaluated:Z

    .line 37
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjFilter;->next:Ljava/lang/Object;

    return-object v0

    .line 34
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    .line 53
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
