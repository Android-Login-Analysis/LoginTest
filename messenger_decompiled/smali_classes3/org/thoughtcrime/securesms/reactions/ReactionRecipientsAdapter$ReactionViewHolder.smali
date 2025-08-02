.class public Lorg/thoughtcrime/securesms/reactions/ReactionRecipientsAdapter$ReactionViewHolder;
.super Lorg/thoughtcrime/securesms/reactions/ReactionRecipientsAdapter$ViewHolder;
.source "ReactionRecipientsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/reactions/ReactionRecipientsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReactionViewHolder"
.end annotation


# direct methods
.method constructor <init>(Landroid/view/View;Lorg/thoughtcrime/securesms/reactions/ReactionRecipientsAdapter$ItemClickListener;)V
    .locals 1

    .line 44
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/reactions/ReactionRecipientsAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 45
    new-instance v0, Lorg/thoughtcrime/securesms/reactions/ReactionRecipientsAdapter$ReactionViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lorg/thoughtcrime/securesms/reactions/ReactionRecipientsAdapter$ReactionViewHolder$$ExternalSyntheticLambda0;-><init>(Lorg/thoughtcrime/securesms/reactions/ReactionRecipientsAdapter$ReactionViewHolder;Lorg/thoughtcrime/securesms/reactions/ReactionRecipientsAdapter$ItemClickListener;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public bind(Lorg/thoughtcrime/securesms/mms/GlideRequests;ILjava/lang/String;)V
    .locals 1

    .line 57
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/reactions/ReactionRecipientsAdapter$ReactionViewHolder;->getView()Lorg/thoughtcrime/securesms/reactions/ReactionRecipientItem;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/thoughtcrime/securesms/reactions/ReactionRecipientItem;->bind(Lorg/thoughtcrime/securesms/mms/GlideRequests;ILjava/lang/String;)V

    return-void
.end method

.method public getView()Lorg/thoughtcrime/securesms/reactions/ReactionRecipientItem;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/thoughtcrime/securesms/reactions/ReactionRecipientsAdapter$ReactionViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/thoughtcrime/securesms/reactions/ReactionRecipientItem;

    return-object v0
.end method

.method synthetic lambda$new$0$org-thoughtcrime-securesms-reactions-ReactionRecipientsAdapter$ReactionViewHolder(Lorg/thoughtcrime/securesms/reactions/ReactionRecipientsAdapter$ItemClickListener;Landroid/view/View;)V
    .locals 0

    .line 0
    if-eqz p1, :cond_0

    .line 47
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/reactions/ReactionRecipientsAdapter$ReactionViewHolder;->getView()Lorg/thoughtcrime/securesms/reactions/ReactionRecipientItem;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/thoughtcrime/securesms/reactions/ReactionRecipientsAdapter$ItemClickListener;->onItemClick(Lorg/thoughtcrime/securesms/reactions/ReactionRecipientItem;)V

    :cond_0
    return-void
.end method

.method public unbind(Lorg/thoughtcrime/securesms/mms/GlideRequests;)V
    .locals 1

    .line 62
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/reactions/ReactionRecipientsAdapter$ReactionViewHolder;->getView()Lorg/thoughtcrime/securesms/reactions/ReactionRecipientItem;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/reactions/ReactionRecipientItem;->unbind(Lorg/thoughtcrime/securesms/mms/GlideRequests;)V

    return-void
.end method
