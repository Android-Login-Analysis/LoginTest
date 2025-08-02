.class public final synthetic Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter$ContactViewHolder$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter$ContactViewHolder;

.field public final synthetic f$1:Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter$ItemClickListener;


# direct methods
.method public synthetic constructor <init>(Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter$ContactViewHolder;Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter$ItemClickListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter$ContactViewHolder$$ExternalSyntheticLambda1;->f$0:Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter$ContactViewHolder;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter$ContactViewHolder$$ExternalSyntheticLambda1;->f$1:Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter$ItemClickListener;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    iget-object v0, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter$ContactViewHolder$$ExternalSyntheticLambda1;->f$0:Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter$ContactViewHolder;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter$ContactViewHolder$$ExternalSyntheticLambda1;->f$1:Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter$ItemClickListener;

    invoke-virtual {v0, v1, p1}, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter$ContactViewHolder;->lambda$new$1$org-thoughtcrime-securesms-contacts-ContactSelectionListAdapter$ContactViewHolder(Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter$ItemClickListener;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
