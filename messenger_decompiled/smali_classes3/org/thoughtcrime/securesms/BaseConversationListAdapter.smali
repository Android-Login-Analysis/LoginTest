.class public abstract Lorg/thoughtcrime/securesms/BaseConversationListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "BaseConversationListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected batchMode:Z

.field protected final batchSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 10
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/thoughtcrime/securesms/BaseConversationListAdapter;->batchSet:Ljava/util/Set;

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lorg/thoughtcrime/securesms/BaseConversationListAdapter;->batchMode:Z

    return-void
.end method


# virtual methods
.method public getBatchSelections()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lorg/thoughtcrime/securesms/BaseConversationListAdapter;->batchSet:Ljava/util/Set;

    return-object v0
.end method

.method public initializeBatchMode(Z)V
    .locals 0

    .line 16
    iput-boolean p1, p0, Lorg/thoughtcrime/securesms/BaseConversationListAdapter;->batchMode:Z

    .line 17
    iget-object p1, p0, Lorg/thoughtcrime/securesms/BaseConversationListAdapter;->batchSet:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 18
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/BaseConversationListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public abstract selectAllThreads()V
.end method

.method public toggleThreadInBatchSet(J)V
    .locals 3

    .line 22
    iget-object v0, p0, Lorg/thoughtcrime/securesms/BaseConversationListAdapter;->batchSet:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lorg/thoughtcrime/securesms/BaseConversationListAdapter;->batchSet:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    .line 25
    iget-object v0, p0, Lorg/thoughtcrime/securesms/BaseConversationListAdapter;->batchSet:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method
