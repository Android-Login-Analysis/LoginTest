.class public Lorg/thoughtcrime/securesms/ConversationListAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ConversationListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/ConversationListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ViewHolder"
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/view/View;",
            ":",
            "Lorg/thoughtcrime/securesms/BindableConversationListItem;",
            ">(TV;)V"
        }
    .end annotation

    .line 62
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getItem()Lorg/thoughtcrime/securesms/BindableConversationListItem;
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationListAdapter$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/thoughtcrime/securesms/BindableConversationListItem;

    return-object v0
.end method
