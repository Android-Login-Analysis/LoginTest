.class final Lcom/annimon/stream/ComparatorCompat$3;
.super Ljava/lang/Object;
.source "ComparatorCompat.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/ComparatorCompat;->comparing(Lcom/annimon/stream/function/Function;Ljava/util/Comparator;)Lcom/annimon/stream/ComparatorCompat;
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
.field final synthetic val$keyComparator:Ljava/util/Comparator;

.field final synthetic val$keyExtractor:Lcom/annimon/stream/function/Function;


# direct methods
.method constructor <init>(Lcom/annimon/stream/function/Function;Ljava/util/Comparator;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/annimon/stream/ComparatorCompat$3;->val$keyExtractor:Lcom/annimon/stream/function/Function;

    iput-object p2, p0, Lcom/annimon/stream/ComparatorCompat$3;->val$keyComparator:Ljava/util/Comparator;

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

    .line 113
    iget-object v0, p0, Lcom/annimon/stream/ComparatorCompat$3;->val$keyExtractor:Lcom/annimon/stream/function/Function;

    invoke-interface {v0, p1}, Lcom/annimon/stream/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 114
    iget-object v0, p0, Lcom/annimon/stream/ComparatorCompat$3;->val$keyExtractor:Lcom/annimon/stream/function/Function;

    invoke-interface {v0, p2}, Lcom/annimon/stream/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 115
    iget-object v0, p0, Lcom/annimon/stream/ComparatorCompat$3;->val$keyComparator:Ljava/util/Comparator;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
