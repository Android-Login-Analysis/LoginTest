.class public Lcom/annimon/stream/operator/ObjPeek;
.super Lcom/annimon/stream/iterator/LsaIterator;
.source "ObjPeek.java"


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
.field private final action:Lcom/annimon/stream/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/annimon/stream/function/Consumer<",
            "-TT;>;"
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
.method public constructor <init>(Ljava/util/Iterator;Lcom/annimon/stream/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TT;>;",
            "Lcom/annimon/stream/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Lcom/annimon/stream/iterator/LsaIterator;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/annimon/stream/operator/ObjPeek;->iterator:Ljava/util/Iterator;

    .line 14
    iput-object p2, p0, Lcom/annimon/stream/operator/ObjPeek;->action:Lcom/annimon/stream/function/Consumer;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjPeek;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public nextIteration()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjPeek;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/annimon/stream/operator/ObjPeek;->action:Lcom/annimon/stream/function/Consumer;

    invoke-interface {v1, v0}, Lcom/annimon/stream/function/Consumer;->accept(Ljava/lang/Object;)V

    return-object v0
.end method
