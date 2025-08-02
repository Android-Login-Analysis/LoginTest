.class public Lorg/thoughtcrime/securesms/ConversationAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ConversationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/ConversationAdapter;
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
            "Lorg/thoughtcrime/securesms/BindableConversationItem;",
            ">(TV;)V"
        }
    .end annotation

    .line 107
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getItem()Lorg/thoughtcrime/securesms/BindableConversationItem;
    .locals 1

    .line 116
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationAdapter$ViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/BindableConversationItem;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/view/View;",
            ":",
            "Lorg/thoughtcrime/securesms/BindableConversationItem;",
            ">()TV;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationAdapter$ViewHolder;->itemView:Landroid/view/View;

    return-object v0
.end method
