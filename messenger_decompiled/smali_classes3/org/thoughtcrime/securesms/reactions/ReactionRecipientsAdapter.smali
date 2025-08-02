.class public Lorg/thoughtcrime/securesms/reactions/ReactionRecipientsAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ReactionRecipientsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/reactions/ReactionRecipientsAdapter$ItemClickListener;,
        Lorg/thoughtcrime/securesms/reactions/ReactionRecipientsAdapter$ReactionViewHolder;,
        Lorg/thoughtcrime/securesms/reactions/ReactionRecipientsAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private final clickListener:Lorg/thoughtcrime/securesms/reactions/ReactionRecipientsAdapter$ItemClickListener;

.field private contactsReactions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/thoughtcrime/securesms/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final glideRequests:Lorg/thoughtcrime/securesms/mms/GlideRequests;

.field private final layoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/thoughtcrime/securesms/mms/GlideRequests;Lorg/thoughtcrime/securesms/reactions/ReactionRecipientsAdapter$ItemClickListener;)V
    .locals 1

    .line 70
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/reactions/ReactionRecipientsAdapter;->contactsReactions:Ljava/util/ArrayList;

    .line 71
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/reactions/ReactionRecipientsAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 72
    iput-object p2, p0, Lorg/thoughtcrime/securesms/reactions/ReactionRecipientsAdapter;->glideRequests:Lorg/thoughtcrime/securesms/mms/GlideRequests;

    .line 73
    iput-object p3, p0, Lorg/thoughtcrime/securesms/reactions/ReactionRecipientsAdapter;->clickListener:Lorg/thoughtcrime/securesms/reactions/ReactionRecipientsAdapter$ItemClickListener;

    return-void
.end method


# virtual methods
.method public changeData(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/thoughtcrime/securesms/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 99
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    iput-object p1, p0, Lorg/thoughtcrime/securesms/reactions/ReactionRecipientsAdapter;->contactsReactions:Ljava/util/ArrayList;

    .line 100
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/reactions/ReactionRecipientsAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 27
    iget-object v0, p0, Lorg/thoughtcrime/securesms/reactions/ReactionRecipientsAdapter;->contactsReactions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 85
    iget-object v0, p0, Lorg/thoughtcrime/securesms/reactions/ReactionRecipientsAdapter;->contactsReactions:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/thoughtcrime/securesms/util/Pair;

    .line 86
    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/util/Pair;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 87
    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/util/Pair;->second()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 89
    check-cast p1, Lorg/thoughtcrime/securesms/reactions/ReactionRecipientsAdapter$ViewHolder;

    .line 90
    iget-object v1, p0, Lorg/thoughtcrime/securesms/reactions/ReactionRecipientsAdapter;->glideRequests:Lorg/thoughtcrime/securesms/mms/GlideRequests;

    invoke-virtual {p1, v1}, Lorg/thoughtcrime/securesms/reactions/ReactionRecipientsAdapter$ViewHolder;->unbind(Lorg/thoughtcrime/securesms/mms/GlideRequests;)V

    .line 91
    iget-object v1, p0, Lorg/thoughtcrime/securesms/reactions/ReactionRecipientsAdapter;->glideRequests:Lorg/thoughtcrime/securesms/mms/GlideRequests;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0, p2}, Lorg/thoughtcrime/securesms/reactions/ReactionRecipientsAdapter$ViewHolder;->bind(Lorg/thoughtcrime/securesms/mms/GlideRequests;ILjava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2}, Lorg/thoughtcrime/securesms/reactions/ReactionRecipientsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/thoughtcrime/securesms/reactions/ReactionRecipientsAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/thoughtcrime/securesms/reactions/ReactionRecipientsAdapter$ViewHolder;
    .locals 3

    .line 79
    new-instance p2, Lorg/thoughtcrime/securesms/reactions/ReactionRecipientsAdapter$ReactionViewHolder;

    iget-object v0, p0, Lorg/thoughtcrime/securesms/reactions/ReactionRecipientsAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0c00f0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lorg/thoughtcrime/securesms/reactions/ReactionRecipientsAdapter;->clickListener:Lorg/thoughtcrime/securesms/reactions/ReactionRecipientsAdapter$ItemClickListener;

    invoke-direct {p2, p1, v0}, Lorg/thoughtcrime/securesms/reactions/ReactionRecipientsAdapter$ReactionViewHolder;-><init>(Landroid/view/View;Lorg/thoughtcrime/securesms/reactions/ReactionRecipientsAdapter$ItemClickListener;)V

    return-object p2
.end method
