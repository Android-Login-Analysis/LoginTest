.class final Lcom/annimon/stream/function/IndexedFunction$Util$1;
.super Ljava/lang/Object;
.source "IndexedFunction.java"

# interfaces
.implements Lcom/annimon/stream/function/IndexedFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/function/IndexedFunction$Util;->wrap(Lcom/annimon/stream/function/Function;)Lcom/annimon/stream/function/IndexedFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/annimon/stream/function/IndexedFunction<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final synthetic val$function:Lcom/annimon/stream/function/Function;


# direct methods
.method constructor <init>(Lcom/annimon/stream/function/Function;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/annimon/stream/function/IndexedFunction$Util$1;->val$function:Lcom/annimon/stream/function/Function;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)TR;"
        }
    .end annotation

    .line 44
    iget-object p1, p0, Lcom/annimon/stream/function/IndexedFunction$Util$1;->val$function:Lcom/annimon/stream/function/Function;

    invoke-interface {p1, p2}, Lcom/annimon/stream/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
