.class final Lcom/annimon/stream/function/BiFunction$Util$2;
.super Ljava/lang/Object;
.source "BiFunction.java"

# interfaces
.implements Lcom/annimon/stream/function/BiFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/function/BiFunction$Util;->reverse(Lcom/annimon/stream/function/BiFunction;)Lcom/annimon/stream/function/BiFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/annimon/stream/function/BiFunction<",
        "TU;TT;TR;>;"
    }
.end annotation


# instance fields
.field final synthetic val$function:Lcom/annimon/stream/function/BiFunction;


# direct methods
.method constructor <init>(Lcom/annimon/stream/function/BiFunction;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/annimon/stream/function/BiFunction$Util$2;->val$function:Lcom/annimon/stream/function/BiFunction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;TT;)TR;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/annimon/stream/function/BiFunction$Util$2;->val$function:Lcom/annimon/stream/function/BiFunction;

    invoke-interface {v0, p2, p1}, Lcom/annimon/stream/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
