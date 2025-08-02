.class final Lcom/annimon/stream/Collectors$34;
.super Ljava/lang/Object;
.source "Collectors.java"

# interfaces
.implements Lcom/annimon/stream/function/BiConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/Collectors;->flatMapping(Lcom/annimon/stream/function/Function;Lcom/annimon/stream/Collector;)Lcom/annimon/stream/Collector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/annimon/stream/function/BiConsumer<",
        "TA;TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$accumulator:Lcom/annimon/stream/function/BiConsumer;

.field final synthetic val$mapper:Lcom/annimon/stream/function/Function;


# direct methods
.method constructor <init>(Lcom/annimon/stream/function/Function;Lcom/annimon/stream/function/BiConsumer;)V
    .locals 0

    .line 627
    iput-object p1, p0, Lcom/annimon/stream/Collectors$34;->val$mapper:Lcom/annimon/stream/function/Function;

    iput-object p2, p0, Lcom/annimon/stream/Collectors$34;->val$accumulator:Lcom/annimon/stream/function/BiConsumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TT;)V"
        }
    .end annotation

    .line 630
    iget-object v0, p0, Lcom/annimon/stream/Collectors$34;->val$mapper:Lcom/annimon/stream/function/Function;

    invoke-interface {v0, p2}, Lcom/annimon/stream/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/annimon/stream/Stream;

    if-nez p2, :cond_0

    return-void

    .line 632
    :cond_0
    new-instance v0, Lcom/annimon/stream/Collectors$34$1;

    invoke-direct {v0, p0, p1}, Lcom/annimon/stream/Collectors$34$1;-><init>(Lcom/annimon/stream/Collectors$34;Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Lcom/annimon/stream/Stream;->forEach(Lcom/annimon/stream/function/Consumer;)V

    return-void
.end method
