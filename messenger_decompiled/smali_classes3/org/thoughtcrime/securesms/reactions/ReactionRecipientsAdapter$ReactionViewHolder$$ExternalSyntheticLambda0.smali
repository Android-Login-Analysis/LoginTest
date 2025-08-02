.class public final synthetic Lorg/thoughtcrime/securesms/reactions/ReactionRecipientsAdapter$ReactionViewHolder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/thoughtcrime/securesms/reactions/ReactionRecipientsAdapter$ReactionViewHolder;

.field public final synthetic f$1:Lorg/thoughtcrime/securesms/reactions/ReactionRecipientsAdapter$ItemClickListener;


# direct methods
.method public synthetic constructor <init>(Lorg/thoughtcrime/securesms/reactions/ReactionRecipientsAdapter$ReactionViewHolder;Lorg/thoughtcrime/securesms/reactions/ReactionRecipientsAdapter$ItemClickListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/reactions/ReactionRecipientsAdapter$ReactionViewHolder$$ExternalSyntheticLambda0;->f$0:Lorg/thoughtcrime/securesms/reactions/ReactionRecipientsAdapter$ReactionViewHolder;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/reactions/ReactionRecipientsAdapter$ReactionViewHolder$$ExternalSyntheticLambda0;->f$1:Lorg/thoughtcrime/securesms/reactions/ReactionRecipientsAdapter$ItemClickListener;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lorg/thoughtcrime/securesms/reactions/ReactionRecipientsAdapter$ReactionViewHolder$$ExternalSyntheticLambda0;->f$0:Lorg/thoughtcrime/securesms/reactions/ReactionRecipientsAdapter$ReactionViewHolder;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/reactions/ReactionRecipientsAdapter$ReactionViewHolder$$ExternalSyntheticLambda0;->f$1:Lorg/thoughtcrime/securesms/reactions/ReactionRecipientsAdapter$ItemClickListener;

    invoke-virtual {v0, v1, p1}, Lorg/thoughtcrime/securesms/reactions/ReactionRecipientsAdapter$ReactionViewHolder;->lambda$new$0$org-thoughtcrime-securesms-reactions-ReactionRecipientsAdapter$ReactionViewHolder(Lorg/thoughtcrime/securesms/reactions/ReactionRecipientsAdapter$ItemClickListener;Landroid/view/View;)V

    return-void
.end method
