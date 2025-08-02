.class public Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter$DividerViewHolder;
.super Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter$ViewHolder;
.source "ContactSelectionListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DividerViewHolder"
.end annotation


# instance fields
.field private final label:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 214
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0901a2

    .line 215
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter$DividerViewHolder;->label:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public bind(Lorg/thoughtcrime/securesms/mms/GlideRequests;ILcom/b44t/messenger/DcContact;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0

    .line 220
    iget-object p1, p0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter$DividerViewHolder;->label:Landroid/widget/TextView;

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    return-void
.end method

.method public unbind(Lorg/thoughtcrime/securesms/mms/GlideRequests;)V
    .locals 0

    return-void
.end method
