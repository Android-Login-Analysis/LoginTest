.class public final synthetic Lorg/thoughtcrime/securesms/ContactSelectionListFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/thoughtcrime/securesms/ContactSelectionListFragment;

.field public final synthetic f$1:Landroid/util/SparseIntArray;


# direct methods
.method public synthetic constructor <init>(Lorg/thoughtcrime/securesms/ContactSelectionListFragment;Landroid/util/SparseIntArray;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/ContactSelectionListFragment$$ExternalSyntheticLambda0;->f$0:Lorg/thoughtcrime/securesms/ContactSelectionListFragment;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/ContactSelectionListFragment$$ExternalSyntheticLambda0;->f$1:Landroid/util/SparseIntArray;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ContactSelectionListFragment$$ExternalSyntheticLambda0;->f$0:Lorg/thoughtcrime/securesms/ContactSelectionListFragment;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/ContactSelectionListFragment$$ExternalSyntheticLambda0;->f$1:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->lambda$handleDeleteSelected$1$org-thoughtcrime-securesms-ContactSelectionListFragment(Landroid/util/SparseIntArray;)V

    return-void
.end method
