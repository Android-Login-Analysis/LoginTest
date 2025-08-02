.class final Lcom/annimon/stream/function/IndexedBiFunction$Util$1;
.super Ljava/lang/Object;
.source "IndexedBiFunction.java"

# interfaces
.implements Lcom/annimon/stream/function/IndexedBiFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/function/IndexedBiFunction$Util;->wrap(Lcom/annimon/stream/function/BiFunction;)Lcom/annimon/stream/function/IndexedBiFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/annimon/stream/function/IndexedBiFunction<",
        "TT;TU;TR;>;"
    }
.end annotation


# instance fields
.field final synthetic val$function:Lcom/annimon/stream/function/BiFunction;


# direct methods
.method constructor <init>(Lcom/annimon/stream/function/BiFunction;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/annimon/stream/function/IndexedBiFunction$Util$1;->val$function:Lcom/annimon/stream/function/BiFunction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;TU;)TR;"
        }
    .end annotation

    .line 47
    iget-object p1, p0, Lcom/annimon/stream/function/IndexedBiFunction$Util$1;->val$function:Lcom/annimon/stream/function/BiFunction;

    invoke-interface {p1, p2, p3}, Lcom/annimon/stream/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
