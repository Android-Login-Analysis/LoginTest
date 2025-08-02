.class final Lcom/annimon/stream/ComparatorCompat$6;
.super Ljava/lang/Object;
.source "ComparatorCompat.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/ComparatorCompat;->comparingLong(Lcom/annimon/stream/function/ToLongFunction;)Lcom/annimon/stream/ComparatorCompat;
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
.field final synthetic val$keyExtractor:Lcom/annimon/stream/function/ToLongFunction;


# direct methods
.method constructor <init>(Lcom/annimon/stream/function/ToLongFunction;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/annimon/stream/ComparatorCompat$6;->val$keyExtractor:Lcom/annimon/stream/function/ToLongFunction;

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

    .line 183
    iget-object v0, p0, Lcom/annimon/stream/ComparatorCompat$6;->val$keyExtractor:Lcom/annimon/stream/function/ToLongFunction;

    invoke-interface {v0, p1}, Lcom/annimon/stream/function/ToLongFunction;->applyAsLong(Ljava/lang/Object;)J

    move-result-wide v0

    .line 184
    iget-object p1, p0, Lcom/annimon/stream/ComparatorCompat$6;->val$keyExtractor:Lcom/annimon/stream/function/ToLongFunction;

    invoke-interface {p1, p2}, Lcom/annimon/stream/function/ToLongFunction;->applyAsLong(Ljava/lang/Object;)J

    move-result-wide p1

    .line 185
    invoke-static {v0, v1, p1, p2}, Lcom/annimon/stream/Objects;->compareLong(JJ)I

    move-result p1

    return p1
.end method
