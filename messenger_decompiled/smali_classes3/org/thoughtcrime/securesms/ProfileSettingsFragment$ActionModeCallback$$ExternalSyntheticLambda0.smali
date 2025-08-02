.class public final synthetic Lorg/thoughtcrime/securesms/ProfileSettingsFragment$ActionModeCallback$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/thoughtcrime/securesms/ProfileSettingsFragment$ActionModeCallback;

.field public final synthetic f$1:Ljava/util/Collection;

.field public final synthetic f$2:Landroidx/appcompat/view/ActionMode;


# direct methods
.method public synthetic constructor <init>(Lorg/thoughtcrime/securesms/ProfileSettingsFragment$ActionModeCallback;Ljava/util/Collection;Landroidx/appcompat/view/ActionMode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/ProfileSettingsFragment$ActionModeCallback$$ExternalSyntheticLambda0;->f$0:Lorg/thoughtcrime/securesms/ProfileSettingsFragment$ActionModeCallback;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/ProfileSettingsFragment$ActionModeCallback$$ExternalSyntheticLambda0;->f$1:Ljava/util/Collection;

    iput-object p3, p0, Lorg/thoughtcrime/securesms/ProfileSettingsFragment$ActionModeCallback$$ExternalSyntheticLambda0;->f$2:Landroidx/appcompat/view/ActionMode;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileSettingsFragment$ActionModeCallback$$ExternalSyntheticLambda0;->f$0:Lorg/thoughtcrime/securesms/ProfileSettingsFragment$ActionModeCallback;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/ProfileSettingsFragment$ActionModeCallback$$ExternalSyntheticLambda0;->f$1:Ljava/util/Collection;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/ProfileSettingsFragment$ActionModeCallback$$ExternalSyntheticLambda0;->f$2:Landroidx/appcompat/view/ActionMode;

    invoke-virtual {v0, v1, v2, p1, p2}, Lorg/thoughtcrime/securesms/ProfileSettingsFragment$ActionModeCallback;->lambda$onActionItemClicked$0$org-thoughtcrime-securesms-ProfileSettingsFragment$ActionModeCallback(Ljava/util/Collection;Landroidx/appcompat/view/ActionMode;Landroid/content/DialogInterface;I)V

    return-void
.end method
