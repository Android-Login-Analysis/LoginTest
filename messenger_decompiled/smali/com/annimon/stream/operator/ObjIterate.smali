.class public Lcom/annimon/stream/operator/ObjIterate;
.super Lcom/annimon/stream/iterator/LsaIterator;
.source "ObjIterate.java"


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
.field private current:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final op:Lcom/annimon/stream/function/UnaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/annimon/stream/function/UnaryOperator<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/annimon/stream/function/UnaryOperator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/annimon/stream/function/UnaryOperator<",
            "TT;>;)V"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Lcom/annimon/stream/iterator/LsaIterator;-><init>()V

    .line 12
    iput-object p2, p0, Lcom/annimon/stream/operator/ObjIterate;->op:Lcom/annimon/stream/function/UnaryOperator;

    .line 13
    iput-object p1, p0, Lcom/annimon/stream/operator/ObjIterate;->current:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public nextIteration()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjIterate;->current:Ljava/lang/Object;

    .line 24
    iget-object v1, p0, Lcom/annimon/stream/operator/ObjIterate;->op:Lcom/annimon/stream/function/UnaryOperator;

    invoke-interface {v1, v0}, Lcom/annimon/stream/function/UnaryOperator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/annimon/stream/operator/ObjIterate;->current:Ljava/lang/Object;

    return-object v0
.end method
