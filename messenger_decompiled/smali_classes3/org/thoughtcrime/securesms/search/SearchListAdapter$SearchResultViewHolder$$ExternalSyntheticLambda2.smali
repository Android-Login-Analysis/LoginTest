.class public final synthetic Lorg/thoughtcrime/securesms/search/SearchListAdapter$SearchResultViewHolder$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lorg/thoughtcrime/securesms/search/SearchListAdapter$EventListener;

.field public final synthetic f$1:Lcom/b44t/messenger/DcChatlist$Item;


# direct methods
.method public synthetic constructor <init>(Lorg/thoughtcrime/securesms/search/SearchListAdapter$EventListener;Lcom/b44t/messenger/DcChatlist$Item;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/search/SearchListAdapter$SearchResultViewHolder$$ExternalSyntheticLambda2;->f$0:Lorg/thoughtcrime/securesms/search/SearchListAdapter$EventListener;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/search/SearchListAdapter$SearchResultViewHolder$$ExternalSyntheticLambda2;->f$1:Lcom/b44t/messenger/DcChatlist$Item;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    iget-object v0, p0, Lorg/thoughtcrime/securesms/search/SearchListAdapter$SearchResultViewHolder$$ExternalSyntheticLambda2;->f$0:Lorg/thoughtcrime/securesms/search/SearchListAdapter$EventListener;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/search/SearchListAdapter$SearchResultViewHolder$$ExternalSyntheticLambda2;->f$1:Lcom/b44t/messenger/DcChatlist$Item;

    invoke-static {v0, v1, p1}, Lorg/thoughtcrime/securesms/search/SearchListAdapter$SearchResultViewHolder;->lambda$bind$1(Lorg/thoughtcrime/securesms/search/SearchListAdapter$EventListener;Lcom/b44t/messenger/DcChatlist$Item;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
