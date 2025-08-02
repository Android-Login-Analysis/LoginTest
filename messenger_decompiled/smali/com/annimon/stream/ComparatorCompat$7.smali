.class final Lcom/annimon/stream/ComparatorCompat$7;
.super Ljava/lang/Object;
.source "ComparatorCompat.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/ComparatorCompat;->comparingDouble(Lcom/annimon/stream/function/ToDoubleFunction;)Lcom/annimon/stream/ComparatorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$keyExtractor:Lcom/annimon/stream/function/ToDoubleFunction;


# direct methods
.method constructor <init>(Lcom/annimon/stream/function/ToDoubleFunction;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/annimon/stream/ComparatorCompat$7;->val$keyExtractor:Lcom/annimon/stream/function/ToDoubleFunction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 206
    iget-object v0, p0, Lcom/annimon/stream/ComparatorCompat$7;->val$keyExtractor:Lcom/annimon/stream/function/ToDoubleFunction;

    invoke-interface {v0, p1}, Lcom/annimon/stream/function/ToDoubleFunction;->applyAsDouble(Ljava/lang/Object;)D

    move-result-wide v0

    .line 207
    iget-object p1, p0, Lcom/annimon/stream/ComparatorCompat$7;->val$keyExtractor:Lcom/annimon/stream/function/ToDoubleFunction;

    invoke-interface {p1, p2}, Lcom/annimon/stream/function/ToDoubleFunction;->applyAsDouble(Ljava/lang/Object;)D

    move-result-wide p1

    .line 208
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    return p1
.end method
