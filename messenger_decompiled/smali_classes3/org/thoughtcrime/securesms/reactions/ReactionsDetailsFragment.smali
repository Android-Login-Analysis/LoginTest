.class public Lorg/thoughtcrime/securesms/reactions/ReactionsDetailsFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "ReactionsDetailsFragment.java"

# interfaces
.implements Lorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/reactions/ReactionsDetailsFragment$ListClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ReactionsDetailsFragment"


# instance fields
.field private adapter:Lorg/thoughtcrime/securesms/reactions/ReactionRecipientsAdapter;

.field private final msgId:I

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 40
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 41
    iput p1, p0, Lorg/thoughtcrime/securesms/reactions/ReactionsDetailsFragment;->msgId:I

    return-void
.end method

.method static synthetic access$100(Lorg/thoughtcrime/securesms/reactions/ReactionsDetailsFragment;I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/reactions/ReactionsDetailsFragment;->openConversation(I)V

    return-void
.end method

.method private openConversation(I)V
    .locals 3

    .line 108
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/reactions/ReactionsDetailsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lorg/thoughtcrime/securesms/ProfileActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "contact_id"

    .line 109
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 110
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/reactions/ReactionsDetailsFragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private refreshData()V
    .locals 11

    .line 84
    iget-object v0, p0, Lorg/thoughtcrime/securesms/reactions/ReactionsDetailsFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    return-void

    .line 86
    :cond_0
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/reactions/ReactionsDetailsFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b44t/messenger/DcContext;->getAccountId()I

    move-result v0

    .line 88
    :try_start_0
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/reactions/ReactionsDetailsFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getRpc(Landroid/content/Context;)Lcom/b44t/messenger/rpc/Rpc;

    move-result-object v1

    iget v2, p0, Lorg/thoughtcrime/securesms/reactions/ReactionsDetailsFragment;->msgId:I

    invoke-virtual {v1, v0, v2}, Lcom/b44t/messenger/rpc/Rpc;->getMsgReactions(II)Lcom/b44t/messenger/rpc/Reactions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b44t/messenger/rpc/Reactions;->getReactionsByContact()Ljava/util/Map;

    move-result-object v0

    .line 89
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x1

    .line 90
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 91
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 92
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    array-length v8, v7

    :goto_0
    if-ge v6, v8, :cond_1

    aget-object v9, v7, v6

    .line 93
    new-instance v10, Lorg/thoughtcrime/securesms/util/Pair;

    invoke-direct {v10, v5, v9}, Lorg/thoughtcrime/securesms/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    .line 97
    array-length v0, v3

    :goto_1
    if-ge v6, v0, :cond_3

    aget-object v4, v3, v6

    .line 98
    new-instance v5, Lorg/thoughtcrime/securesms/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v5, v7, v4}, Lorg/thoughtcrime/securesms/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 101
    :cond_3
    iget-object v0, p0, Lorg/thoughtcrime/securesms/reactions/ReactionsDetailsFragment;->adapter:Lorg/thoughtcrime/securesms/reactions/ReactionRecipientsAdapter;

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/reactions/ReactionRecipientsAdapter;->changeData(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Lcom/b44t/messenger/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 103
    invoke-virtual {v0}, Lcom/b44t/messenger/rpc/RpcException;->printStackTrace()V

    :goto_2
    return-void
.end method


# virtual methods
.method public handleEvent(Lcom/b44t/messenger/DcEvent;)V
    .locals 2

    .line 76
    invoke-virtual {p1}, Lcom/b44t/messenger/DcEvent;->getId()I

    move-result v0

    const/16 v1, 0x7d1

    if-ne v0, v1, :cond_0

    .line 77
    invoke-virtual {p1}, Lcom/b44t/messenger/DcEvent;->getData2Int()I

    move-result p1

    iget v0, p0, Lorg/thoughtcrime/securesms/reactions/ReactionsDetailsFragment;->msgId:I

    if-ne p1, v0, :cond_0

    .line 78
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/reactions/ReactionsDetailsFragment;->refreshData()V

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .line 47
    new-instance p1, Lorg/thoughtcrime/securesms/reactions/ReactionRecipientsAdapter;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/reactions/ReactionsDetailsFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/reactions/ReactionsDetailsFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lorg/thoughtcrime/securesms/mms/GlideApp;->with(Landroidx/fragment/app/FragmentActivity;)Lorg/thoughtcrime/securesms/mms/GlideRequests;

    move-result-object v1

    new-instance v2, Lorg/thoughtcrime/securesms/reactions/ReactionsDetailsFragment$ListClickListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lorg/thoughtcrime/securesms/reactions/ReactionsDetailsFragment$ListClickListener;-><init>(Lorg/thoughtcrime/securesms/reactions/ReactionsDetailsFragment;Lorg/thoughtcrime/securesms/reactions/ReactionsDetailsFragment$1;)V

    invoke-direct {p1, v0, v1, v2}, Lorg/thoughtcrime/securesms/reactions/ReactionRecipientsAdapter;-><init>(Landroid/content/Context;Lorg/thoughtcrime/securesms/mms/GlideRequests;Lorg/thoughtcrime/securesms/reactions/ReactionRecipientsAdapter$ItemClickListener;)V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/reactions/ReactionsDetailsFragment;->adapter:Lorg/thoughtcrime/securesms/reactions/ReactionRecipientsAdapter;

    .line 49
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/reactions/ReactionsDetailsFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c00f1

    .line 50
    invoke-virtual {p1, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0902d5

    .line 51
    invoke-static {p1, v0}, Lorg/thoughtcrime/securesms/util/ViewUtil;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/reactions/ReactionsDetailsFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 52
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/reactions/ReactionsDetailsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 54
    iget-object v0, p0, Lorg/thoughtcrime/securesms/reactions/ReactionsDetailsFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/reactions/ReactionsDetailsFragment;->adapter:Lorg/thoughtcrime/securesms/reactions/ReactionRecipientsAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 56
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/reactions/ReactionsDetailsFragment;->refreshData()V

    .line 58
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/reactions/ReactionsDetailsFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getEventCenter(Landroid/content/Context;)Lorg/thoughtcrime/securesms/connect/DcEventCenter;

    move-result-object v0

    const/16 v1, 0x7d1

    .line 59
    invoke-virtual {v0, v1, p0}, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->addObserver(ILorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)V

    .line 61
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/reactions/ReactionsDetailsFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f12039a

    .line 62
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1202d8

    .line 63
    invoke-virtual {v0, v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 64
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 69
    sget-object v0, Lorg/thoughtcrime/securesms/reactions/ReactionsDetailsFragment;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroy()V

    .line 71
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/reactions/ReactionsDetailsFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getEventCenter(Landroid/content/Context;)Lorg/thoughtcrime/securesms/connect/DcEventCenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->removeObservers(Lorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)V

    return-void
.end method

.method public synthetic runOnMain()Z
    .locals 1

    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate$-CC;->$default$runOnMain(Lorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)Z

    move-result v0

    return v0
.end method
