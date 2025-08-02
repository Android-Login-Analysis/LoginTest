.class Lorg/thoughtcrime/securesms/ConversationListFragment$1;
.super Ljava/util/TimerTask;
.source "ConversationListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/thoughtcrime/securesms/ConversationListFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/ConversationListFragment;


# direct methods
.method constructor <init>(Lorg/thoughtcrime/securesms/ConversationListFragment;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lorg/thoughtcrime/securesms/ConversationListFragment$1;->this$0:Lorg/thoughtcrime/securesms/ConversationListFragment;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$run$0$org-thoughtcrime-securesms-ConversationListFragment$1()V
    .locals 2

    .line 159
    invoke-static {}, Lorg/thoughtcrime/securesms/ConversationListFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\ud83e\udd20 update timer: refreshing chatlist"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationListFragment$1;->this$0:Lorg/thoughtcrime/securesms/ConversationListFragment;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/ConversationListFragment;->access$100(Lorg/thoughtcrime/securesms/ConversationListFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public run()V
    .locals 1

    .line 158
    new-instance v0, Lorg/thoughtcrime/securesms/ConversationListFragment$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/ConversationListFragment$1$$ExternalSyntheticLambda0;-><init>(Lorg/thoughtcrime/securesms/ConversationListFragment$1;)V

    invoke-static {v0}, Lorg/thoughtcrime/securesms/util/Util;->runOnMain(Ljava/lang/Runnable;)V

    return-void
.end method
