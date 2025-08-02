.class public Lcom/annimon/stream/operator/ObjDistinct;
.super Lcom/annimon/stream/iterator/LsaExtIterator;
.source "ObjDistinct.java"


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

.field private final set:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TT;>;)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Lcom/annimon/stream/iterator/LsaExtIterator;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/annimon/stream/operator/ObjDistinct;->iterator:Ljava/util/Iterator;

    .line 15
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/annimon/stream/operator/ObjDistinct;->set:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method protected nextIteration()V
    .locals 2

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjDistinct;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    iput-boolean v0, p0, Lcom/annimon/stream/operator/ObjDistinct;->hasNext:Z

    if-eqz v0, :cond_1

    .line 21
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjDistinct;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/annimon/stream/operator/ObjDistinct;->next:Ljava/lang/Object;

    .line 22
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjDistinct;->set:Ljava/util/Set;

    iget-object v1, p0, Lcom/annimon/stream/operator/ObjDistinct;->next:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    return-void
.end method
