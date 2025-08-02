.class public final synthetic Lorg/thoughtcrime/securesms/MessageSelectorFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/thoughtcrime/securesms/MessageSelectorFragment;

.field public final synthetic f$1:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Lorg/thoughtcrime/securesms/MessageSelectorFragment;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/MessageSelectorFragment$$ExternalSyntheticLambda1;->f$0:Lorg/thoughtcrime/securesms/MessageSelectorFragment;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/MessageSelectorFragment$$ExternalSyntheticLambda1;->f$1:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lorg/thoughtcrime/securesms/MessageSelectorFragment$$ExternalSyntheticLambda1;->f$0:Lorg/thoughtcrime/securesms/MessageSelectorFragment;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/MessageSelectorFragment$$ExternalSyntheticLambda1;->f$1:Ljava/util/Set;

    invoke-virtual {v0, v1, p1, p2}, Lorg/thoughtcrime/securesms/MessageSelectorFragment;->lambda$handleSaveAttachment$2$org-thoughtcrime-securesms-MessageSelectorFragment(Ljava/util/Set;Landroid/content/DialogInterface;I)V

    return-void
.end method
