.class public final synthetic Lorg/thoughtcrime/securesms/ContactSelectionListFragment$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/thoughtcrime/securesms/ContactSelectionListFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/thoughtcrime/securesms/ContactSelectionListFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/ContactSelectionListFragment$$ExternalSyntheticLambda2;->f$0:Lorg/thoughtcrime/securesms/ContactSelectionListFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ContactSelectionListFragment$$ExternalSyntheticLambda2;->f$0:Lorg/thoughtcrime/securesms/ContactSelectionListFragment;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->lambda$handleDeleteSelected$0$org-thoughtcrime-securesms-ContactSelectionListFragment()V

    return-void
.end method
