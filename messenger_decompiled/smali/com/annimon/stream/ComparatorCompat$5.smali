.class final Lcom/annimon/stream/ComparatorCompat$5;
.super Ljava/lang/Object;
.source "ComparatorCompat.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/ComparatorCompat;->comparingInt(Lcom/annimon/stream/function/ToIntFunction;)Lcom/annimon/stream/ComparatorCompat;
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
.field final synthetic val$keyExtractor:Lcom/annimon/stream/function/ToIntFunction;


# direct methods
.method constructor <init>(Lcom/annimon/stream/function/ToIntFunction;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/annimon/stream/ComparatorCompat$5;->val$keyExtractor:Lcom/annimon/stream/function/ToIntFunction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/annimon/stream/ComparatorCompat$5;->val$keyExtractor:Lcom/annimon/stream/function/ToIntFunction;

    invoke-interface {v0, p1}, Lcom/annimon/stream/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result p1

    .line 161
    iget-object v0, p0, Lcom/annimon/stream/ComparatorCompat$5;->val$keyExtractor:Lcom/annimon/stream/function/ToIntFunction;

    invoke-interface {v0, p2}, Lcom/annimon/stream/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result p2

    .line 162
    invoke-static {p1, p2}, Lcom/annimon/stream/Objects;->compareInt(II)I

    move-result p1

    return p1
.end method
