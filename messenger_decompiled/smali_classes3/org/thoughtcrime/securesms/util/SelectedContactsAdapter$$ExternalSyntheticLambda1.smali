.class public final synthetic Lorg/thoughtcrime/securesms/util/SelectedContactsAdapter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/thoughtcrime/securesms/util/SelectedContactsAdapter;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lorg/thoughtcrime/securesms/util/SelectedContactsAdapter;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/util/SelectedContactsAdapter$$ExternalSyntheticLambda1;->f$0:Lorg/thoughtcrime/securesms/util/SelectedContactsAdapter;

    iput p2, p0, Lorg/thoughtcrime/securesms/util/SelectedContactsAdapter$$ExternalSyntheticLambda1;->f$1:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lorg/thoughtcrime/securesms/util/SelectedContactsAdapter$$ExternalSyntheticLambda1;->f$0:Lorg/thoughtcrime/securesms/util/SelectedContactsAdapter;

    iget v1, p0, Lorg/thoughtcrime/securesms/util/SelectedContactsAdapter$$ExternalSyntheticLambda1;->f$1:I

    invoke-virtual {v0, v1, p1}, Lorg/thoughtcrime/securesms/util/SelectedContactsAdapter;->lambda$getView$1$org-thoughtcrime-securesms-util-SelectedContactsAdapter(ILandroid/view/View;)V

    return-void
.end method
