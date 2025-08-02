.class Lcom/annimon/stream/ComparatorCompat$9;
.super Ljava/lang/Object;
.source "ComparatorCompat.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/ComparatorCompat;->thenComparing(Ljava/util/Comparator;)Lcom/annimon/stream/ComparatorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
.field final synthetic this$0:Lcom/annimon/stream/ComparatorCompat;

.field final synthetic val$other:Ljava/util/Comparator;


# direct methods
.method constructor <init>(Lcom/annimon/stream/ComparatorCompat;Ljava/util/Comparator;)V
    .locals 0

    .line 315
    iput-object p1, p0, Lcom/annimon/stream/ComparatorCompat$9;->this$0:Lcom/annimon/stream/ComparatorCompat;

    iput-object p2, p0, Lcom/annimon/stream/ComparatorCompat$9;->val$other:Ljava/util/Comparator;

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

    .line 319
    iget-object v0, p0, Lcom/annimon/stream/ComparatorCompat$9;->this$0:Lcom/annimon/stream/ComparatorCompat;

    invoke-static {v0}, Lcom/annimon/stream/ComparatorCompat;->access$000(Lcom/annimon/stream/ComparatorCompat;)Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/annimon/stream/ComparatorCompat$9;->val$other:Ljava/util/Comparator;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    :goto_0
    return v0
.end method
