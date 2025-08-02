.class Lorg/thoughtcrime/securesms/ConversationFragment$ConversationFragmentItemClickListener;
.super Ljava/lang/Object;
.source "ConversationFragment.java"

# interfaces
.implements Lorg/thoughtcrime/securesms/ConversationAdapter$ItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/ConversationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConversationFragmentItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/ConversationFragment;


# direct methods
.method private constructor <init>(Lorg/thoughtcrime/securesms/ConversationFragment;)V
    .locals 0

    .line 773
    iput-object p1, p0, Lorg/thoughtcrime/securesms/ConversationFragment$ConversationFragmentItemClickListener;->this$0:Lorg/thoughtcrime/securesms/ConversationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/thoughtcrime/securesms/ConversationFragment;Lorg/thoughtcrime/securesms/ConversationFragment$1;)V
    .locals 0

    .line 773
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/ConversationFragment$ConversationFragmentItemClickListener;-><init>(Lorg/thoughtcrime/securesms/ConversationFragment;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$onItemLongClick$0$org-thoughtcrime-securesms-ConversationFragment$ConversationFragmentItemClickListener()V
    .locals 1

    .line 823
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationFragment$ConversationFragmentItemClickListener;->this$0:Lorg/thoughtcrime/securesms/ConversationFragment;

    iget-object v0, v0, Lorg/thoughtcrime/securesms/ConversationFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    if-eqz v0, :cond_0

    .line 824
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationFragment$ConversationFragmentItemClickListener;->this$0:Lorg/thoughtcrime/securesms/ConversationFragment;

    iget-object v0, v0, Lorg/thoughtcrime/securesms/ConversationFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    invoke-virtual {v0}, Landroidx/appcompat/view/ActionMode;->finish()V

    :cond_0
    return-void
.end method

.method public onDownloadClicked(Lcom/b44t/messenger/DcMsg;)V
    .locals 1

    .line 868
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationFragment$ConversationFragmentItemClickListener;->this$0:Lorg/thoughtcrime/securesms/ConversationFragment;

    iget-object v0, v0, Lorg/thoughtcrime/securesms/ConversationFragment;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getId()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/b44t/messenger/DcContext;->downloadFullMsg(I)V

    return-void
.end method

.method public onItemClick(Lcom/b44t/messenger/DcMsg;)V
    .locals 3

    .line 777
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationFragment$ConversationFragmentItemClickListener;->this$0:Lorg/thoughtcrime/securesms/ConversationFragment;

    iget-object v0, v0, Lorg/thoughtcrime/securesms/ConversationFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    if-eqz v0, :cond_1

    .line 778
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationFragment$ConversationFragmentItemClickListener;->this$0:Lorg/thoughtcrime/securesms/ConversationFragment;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/ConversationFragment;->access$600(Lorg/thoughtcrime/securesms/ConversationFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/ConversationAdapter;

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/ConversationAdapter;->toggleSelection(Lcom/b44t/messenger/DcMsg;)V

    .line 779
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationFragment$ConversationFragmentItemClickListener;->this$0:Lorg/thoughtcrime/securesms/ConversationFragment;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/ConversationFragment;->access$600(Lorg/thoughtcrime/securesms/ConversationFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 781
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationFragment$ConversationFragmentItemClickListener;->this$0:Lorg/thoughtcrime/securesms/ConversationFragment;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/ConversationFragment;->access$800(Lorg/thoughtcrime/securesms/ConversationFragment;)Lorg/thoughtcrime/securesms/ConversationAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/ConversationAdapter;->getSelectedItems()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 782
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationFragment$ConversationFragmentItemClickListener;->this$0:Lorg/thoughtcrime/securesms/ConversationFragment;

    iget-object p1, p1, Lorg/thoughtcrime/securesms/ConversationFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    invoke-virtual {p1}, Landroidx/appcompat/view/ActionMode;->finish()V

    goto/16 :goto_0

    .line 784
    :cond_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationFragment$ConversationFragmentItemClickListener;->this$0:Lorg/thoughtcrime/securesms/ConversationFragment;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/ConversationFragment;->hideAddReactionView()V

    .line 785
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationFragment$ConversationFragmentItemClickListener;->this$0:Lorg/thoughtcrime/securesms/ConversationFragment;

    iget-object p1, p1, Lorg/thoughtcrime/securesms/ConversationFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    invoke-virtual {p1}, Landroidx/appcompat/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object p1

    .line 786
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationFragment$ConversationFragmentItemClickListener;->this$0:Lorg/thoughtcrime/securesms/ConversationFragment;

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/ConversationFragment;->setCorrectMenuVisibility(Landroid/view/Menu;)V

    .line 787
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationFragment$ConversationFragmentItemClickListener;->this$0:Lorg/thoughtcrime/securesms/ConversationFragment;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/ConversationFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    const/16 v1, 0xa

    invoke-static {p1, v1, v0}, Lorg/thoughtcrime/securesms/util/views/ConversationAdaptiveActionsToolbar;->adjustMenuActions(Landroid/view/Menu;II)V

    .line 788
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationFragment$ConversationFragmentItemClickListener;->this$0:Lorg/thoughtcrime/securesms/ConversationFragment;

    iget-object p1, p1, Lorg/thoughtcrime/securesms/ConversationFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationFragment$ConversationFragmentItemClickListener;->this$0:Lorg/thoughtcrime/securesms/ConversationFragment;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/ConversationFragment;->access$800(Lorg/thoughtcrime/securesms/ConversationFragment;)Lorg/thoughtcrime/securesms/ConversationAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/ConversationAdapter;->getSelectedItems()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 789
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationFragment$ConversationFragmentItemClickListener;->this$0:Lorg/thoughtcrime/securesms/ConversationFragment;

    iget-object p1, p1, Lorg/thoughtcrime/securesms/ConversationFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/ActionMode;->setTitleOptionalHint(Z)V

    goto/16 :goto_0

    .line 792
    :cond_1
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->isSetupMessage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 793
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationFragment$ConversationFragmentItemClickListener;->this$0:Lorg/thoughtcrime/securesms/ConversationFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/thoughtcrime/securesms/ConversationFragment;->querySetupCode(Lcom/b44t/messenger/DcMsg;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 795
    :cond_2
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getType()I

    move-result v0

    const/16 v1, 0x46

    if-ne v0, v1, :cond_3

    .line 796
    new-instance v0, Lorg/thoughtcrime/securesms/videochat/VideochatUtil;

    invoke-direct {v0}, Lorg/thoughtcrime/securesms/videochat/VideochatUtil;-><init>()V

    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationFragment$ConversationFragmentItemClickListener;->this$0:Lorg/thoughtcrime/securesms/ConversationFragment;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/ConversationFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getId()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lorg/thoughtcrime/securesms/videochat/VideochatUtil;->join(Landroid/app/Activity;I)V

    goto :goto_0

    .line 798
    :cond_3
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationFragment$ConversationFragmentItemClickListener;->this$0:Lorg/thoughtcrime/securesms/ConversationFragment;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/ConversationFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/thoughtcrime/securesms/components/reminder/DozeReminder;->isDozeReminderMsg(Landroid/content/Context;Lcom/b44t/messenger/DcMsg;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 799
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationFragment$ConversationFragmentItemClickListener;->this$0:Lorg/thoughtcrime/securesms/ConversationFragment;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/ConversationFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lorg/thoughtcrime/securesms/components/reminder/DozeReminder;->dozeReminderTapped(Landroid/content/Context;)V

    goto :goto_0

    .line 801
    :cond_4
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getInfoType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 802
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationFragment$ConversationFragmentItemClickListener;->this$0:Lorg/thoughtcrime/securesms/ConversationFragment;

    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getParent()Lcom/b44t/messenger/DcMsg;

    move-result-object p1

    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getId()I

    move-result p1

    invoke-static {v0, p1}, Lorg/thoughtcrime/securesms/ConversationFragment;->access$900(Lorg/thoughtcrime/securesms/ConversationFragment;I)V

    goto :goto_0

    .line 805
    :cond_5
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationFragment$ConversationFragmentItemClickListener;->this$0:Lorg/thoughtcrime/securesms/ConversationFragment;

    iget-object v0, v0, Lorg/thoughtcrime/securesms/ConversationFragment;->dcContext:Lcom/b44t/messenger/DcContext;

    const-string v1, "configured_mail_user"

    invoke-virtual {v0, v1}, Lcom/b44t/messenger/DcContext;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 806
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 807
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationFragment$ConversationFragmentItemClickListener;->this$0:Lorg/thoughtcrime/securesms/ConversationFragment;

    .line 808
    invoke-static {p1}, Lorg/thoughtcrime/securesms/ConversationFragment;->access$800(Lorg/thoughtcrime/securesms/ConversationFragment;)Lorg/thoughtcrime/securesms/ConversationAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/ConversationAdapter;->getChat()Lcom/b44t/messenger/DcChat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/b44t/messenger/DcChat;->isDeviceTalk()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 810
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationFragment$ConversationFragmentItemClickListener;->this$0:Lorg/thoughtcrime/securesms/ConversationFragment;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationFragment$ConversationFragmentItemClickListener;->this$0:Lorg/thoughtcrime/securesms/ConversationFragment;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/ConversationFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lorg/thoughtcrime/securesms/RegistrationActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/ConversationFragment;->startActivity(Landroid/content/Intent;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public onItemLongClick(Lcom/b44t/messenger/DcMsg;Landroid/view/View;)V
    .locals 3

    .line 817
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationFragment$ConversationFragmentItemClickListener;->this$0:Lorg/thoughtcrime/securesms/ConversationFragment;

    iget-object v0, v0, Lorg/thoughtcrime/securesms/ConversationFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    if-nez v0, :cond_0

    .line 818
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationFragment$ConversationFragmentItemClickListener;->this$0:Lorg/thoughtcrime/securesms/ConversationFragment;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/ConversationFragment;->access$600(Lorg/thoughtcrime/securesms/ConversationFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/ConversationAdapter;

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/ConversationAdapter;->toggleSelection(Lcom/b44t/messenger/DcMsg;)V

    .line 819
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationFragment$ConversationFragmentItemClickListener;->this$0:Lorg/thoughtcrime/securesms/ConversationFragment;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/ConversationFragment;->access$600(Lorg/thoughtcrime/securesms/ConversationFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 821
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationFragment$ConversationFragmentItemClickListener;->this$0:Lorg/thoughtcrime/securesms/ConversationFragment;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/ConversationFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/app/AppCompatActivity;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/ConversationFragment$ConversationFragmentItemClickListener;->this$0:Lorg/thoughtcrime/securesms/ConversationFragment;

    invoke-static {v2}, Lorg/thoughtcrime/securesms/ConversationFragment;->access$1000(Lorg/thoughtcrime/securesms/ConversationFragment;)Lorg/thoughtcrime/securesms/ConversationFragment$ActionModeCallback;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AppCompatActivity;->startSupportActionMode(Landroidx/appcompat/view/ActionMode$Callback;)Landroidx/appcompat/view/ActionMode;

    move-result-object v1

    iput-object v1, v0, Lorg/thoughtcrime/securesms/ConversationFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 822
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationFragment$ConversationFragmentItemClickListener;->this$0:Lorg/thoughtcrime/securesms/ConversationFragment;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/ConversationFragment;->access$500(Lorg/thoughtcrime/securesms/ConversationFragment;)Lorg/thoughtcrime/securesms/reactions/AddReactionView;

    move-result-object v0

    new-instance v1, Lorg/thoughtcrime/securesms/ConversationFragment$ConversationFragmentItemClickListener$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/thoughtcrime/securesms/ConversationFragment$ConversationFragmentItemClickListener$$ExternalSyntheticLambda0;-><init>(Lorg/thoughtcrime/securesms/ConversationFragment$ConversationFragmentItemClickListener;)V

    invoke-virtual {v0, p1, p2, v1}, Lorg/thoughtcrime/securesms/reactions/AddReactionView;->show(Lcom/b44t/messenger/DcMsg;Landroid/view/View;Lorg/thoughtcrime/securesms/reactions/AddReactionView$AddReactionListener;)V

    :cond_0
    return-void
.end method

.method public onQuoteClicked(Lcom/b44t/messenger/DcMsg;)V
    .locals 6

    .line 832
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getQuotedMsg()Lcom/b44t/messenger/DcMsg;

    move-result-object p1

    if-nez p1, :cond_0

    .line 834
    invoke-static {}, Lorg/thoughtcrime/securesms/ConversationFragment;->access$1100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Clicked on a quote whose original message we never had."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationFragment$ConversationFragmentItemClickListener;->this$0:Lorg/thoughtcrime/securesms/ConversationFragment;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/ConversationFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v0, 0x7f120000

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 839
    :cond_0
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getChatId()I

    move-result v0

    if-eqz v0, :cond_2

    int-to-long v1, v0

    .line 840
    iget-object v3, p0, Lorg/thoughtcrime/securesms/ConversationFragment$ConversationFragmentItemClickListener;->this$0:Lorg/thoughtcrime/securesms/ConversationFragment;

    invoke-static {v3}, Lorg/thoughtcrime/securesms/ConversationFragment;->access$1200(Lorg/thoughtcrime/securesms/ConversationFragment;)J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    .line 841
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/ConversationFragment$ConversationFragmentItemClickListener;->this$0:Lorg/thoughtcrime/securesms/ConversationFragment;

    invoke-virtual {v2}, Lorg/thoughtcrime/securesms/ConversationFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lorg/thoughtcrime/securesms/ConversationActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "chat_id"

    .line 842
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 843
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationFragment$ConversationFragmentItemClickListener;->this$0:Lorg/thoughtcrime/securesms/ConversationFragment;

    iget-object v0, v0, Lorg/thoughtcrime/securesms/ConversationFragment;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-static {p1, v0}, Lcom/b44t/messenger/DcMsg;->getMessagePosition(Lcom/b44t/messenger/DcMsg;Lcom/b44t/messenger/DcContext;)I

    move-result p1

    const-string v0, "starting_position"

    .line 844
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p1, 0x4000000

    .line 845
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 846
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationFragment$ConversationFragmentItemClickListener;->this$0:Lorg/thoughtcrime/securesms/ConversationFragment;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/ConversationFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lorg/thoughtcrime/securesms/ConversationActivity;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/ConversationActivity;->hideSoftKeyboard()V

    .line 847
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationFragment$ConversationFragmentItemClickListener;->this$0:Lorg/thoughtcrime/securesms/ConversationFragment;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/ConversationFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 848
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationFragment$ConversationFragmentItemClickListener;->this$0:Lorg/thoughtcrime/securesms/ConversationFragment;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/ConversationFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 850
    :cond_1
    invoke-static {}, Lorg/thoughtcrime/securesms/ConversationFragment;->access$1100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Activity was null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 853
    :cond_2
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationFragment$ConversationFragmentItemClickListener;->this$0:Lorg/thoughtcrime/securesms/ConversationFragment;

    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getId()I

    move-result p1

    invoke-static {v0, p1}, Lorg/thoughtcrime/securesms/ConversationFragment;->access$900(Lorg/thoughtcrime/securesms/ConversationFragment;I)V

    :goto_0
    return-void
.end method

.method public onReactionClicked(Lcom/b44t/messenger/DcMsg;)V
    .locals 2

    .line 873
    new-instance v0, Lorg/thoughtcrime/securesms/reactions/ReactionsDetailsFragment;

    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getId()I

    move-result p1

    invoke-direct {v0, p1}, Lorg/thoughtcrime/securesms/reactions/ReactionsDetailsFragment;-><init>(I)V

    .line 874
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationFragment$ConversationFragmentItemClickListener;->this$0:Lorg/thoughtcrime/securesms/ConversationFragment;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/ConversationFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/thoughtcrime/securesms/reactions/ReactionsDetailsFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public onShowFullClicked(Lcom/b44t/messenger/DcMsg;)V
    .locals 3

    .line 859
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationFragment$ConversationFragmentItemClickListener;->this$0:Lorg/thoughtcrime/securesms/ConversationFragment;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/ConversationFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lorg/thoughtcrime/securesms/FullMsgActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "msg_id"

    .line 860
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getId()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 861
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationFragment$ConversationFragmentItemClickListener;->this$0:Lorg/thoughtcrime/securesms/ConversationFragment;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/ConversationFragment;->access$800(Lorg/thoughtcrime/securesms/ConversationFragment;)Lorg/thoughtcrime/securesms/ConversationAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/ConversationAdapter;->getChat()Lcom/b44t/messenger/DcChat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/b44t/messenger/DcChat;->isHalfBlocked()Z

    move-result p1

    const-string v1, "block_loading_remote"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 862
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationFragment$ConversationFragmentItemClickListener;->this$0:Lorg/thoughtcrime/securesms/ConversationFragment;

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/ConversationFragment;->startActivity(Landroid/content/Intent;)V

    .line 863
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationFragment$ConversationFragmentItemClickListener;->this$0:Lorg/thoughtcrime/securesms/ConversationFragment;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/ConversationFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f010031

    const v1, 0x7f01001f

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentActivity;->overridePendingTransition(II)V

    return-void
.end method
