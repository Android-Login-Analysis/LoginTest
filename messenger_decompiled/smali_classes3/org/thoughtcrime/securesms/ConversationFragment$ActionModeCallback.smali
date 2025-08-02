.class Lorg/thoughtcrime/securesms/ConversationFragment$ActionModeCallback;
.super Ljava/lang/Object;
.source "ConversationFragment.java"

# interfaces
.implements Landroidx/appcompat/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/ConversationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionModeCallback"
.end annotation


# instance fields
.field private statusBarColor:I

.field final synthetic this$0:Lorg/thoughtcrime/securesms/ConversationFragment;


# direct methods
.method private constructor <init>(Lorg/thoughtcrime/securesms/ConversationFragment;)V
    .locals 0

    .line 889
    iput-object p1, p0, Lorg/thoughtcrime/securesms/ConversationFragment$ActionModeCallback;->this$0:Lorg/thoughtcrime/securesms/ConversationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/thoughtcrime/securesms/ConversationFragment;Lorg/thoughtcrime/securesms/ConversationFragment$1;)V
    .locals 0

    .line 889
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/ConversationFragment$ActionModeCallback;-><init>(Lorg/thoughtcrime/securesms/ConversationFragment;)V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroidx/appcompat/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 3

    .line 931
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationFragment$ActionModeCallback;->this$0:Lorg/thoughtcrime/securesms/ConversationFragment;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/ConversationFragment;->hideAddReactionView()V

    .line 932
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const p2, 0x7f0901ee

    const/4 v0, 0x1

    if-eq p1, p2, :cond_1

    const p2, 0x7f09020a

    if-eq p1, p2, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 941
    :pswitch_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationFragment$ActionModeCallback;->this$0:Lorg/thoughtcrime/securesms/ConversationFragment;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/ConversationFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationFragment$ActionModeCallback;->this$0:Lorg/thoughtcrime/securesms/ConversationFragment;

    invoke-static {p2}, Lorg/thoughtcrime/securesms/ConversationFragment;->access$800(Lorg/thoughtcrime/securesms/ConversationFragment;)Lorg/thoughtcrime/securesms/ConversationAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/ConversationAdapter;->getSelectedItems()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/thoughtcrime/securesms/ConversationFragment;->getSelectedMessageRecord(Ljava/util/Set;)Lcom/b44t/messenger/DcMsg;

    move-result-object p2

    invoke-virtual {p2}, Lcom/b44t/messenger/DcMsg;->getId()I

    move-result p2

    const-string v1, "android.intent.action.SEND"

    invoke-static {p1, p2, v1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->openForViewOrShare(Landroid/content/Context;ILjava/lang/String;)V

    return v0

    .line 956
    :pswitch_1
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationFragment$ActionModeCallback;->this$0:Lorg/thoughtcrime/securesms/ConversationFragment;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/ConversationFragment;->access$800(Lorg/thoughtcrime/securesms/ConversationFragment;)Lorg/thoughtcrime/securesms/ConversationAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/ConversationAdapter;->getSelectedItems()Ljava/util/Set;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/ConversationFragment;->handleSaveAttachment(Ljava/util/Set;)V

    return v0

    .line 963
    :pswitch_2
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationFragment$ActionModeCallback;->this$0:Lorg/thoughtcrime/securesms/ConversationFragment;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/ConversationFragment;->access$800(Lorg/thoughtcrime/securesms/ConversationFragment;)Lorg/thoughtcrime/securesms/ConversationAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/ConversationAdapter;->getSelectedItems()Ljava/util/Set;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/ConversationFragment;->getSelectedMessageRecord(Ljava/util/Set;)Lcom/b44t/messenger/DcMsg;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/thoughtcrime/securesms/ConversationFragment;->access$1600(Lorg/thoughtcrime/securesms/ConversationFragment;Lcom/b44t/messenger/DcMsg;)V

    return v0

    .line 959
    :pswitch_3
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationFragment$ActionModeCallback;->this$0:Lorg/thoughtcrime/securesms/ConversationFragment;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/ConversationFragment;->access$800(Lorg/thoughtcrime/securesms/ConversationFragment;)Lorg/thoughtcrime/securesms/ConversationAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/ConversationAdapter;->getSelectedItems()Ljava/util/Set;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/ConversationFragment;->getSelectedMessageRecord(Ljava/util/Set;)Lcom/b44t/messenger/DcMsg;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/thoughtcrime/securesms/ConversationFragment;->access$1500(Lorg/thoughtcrime/securesms/ConversationFragment;Lcom/b44t/messenger/DcMsg;)V

    .line 960
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationFragment$ActionModeCallback;->this$0:Lorg/thoughtcrime/securesms/ConversationFragment;

    iget-object p1, p1, Lorg/thoughtcrime/securesms/ConversationFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    invoke-virtual {p1}, Landroidx/appcompat/view/ActionMode;->finish()V

    return v0

    .line 948
    :pswitch_4
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationFragment$ActionModeCallback;->this$0:Lorg/thoughtcrime/securesms/ConversationFragment;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/ConversationFragment;->access$800(Lorg/thoughtcrime/securesms/ConversationFragment;)Lorg/thoughtcrime/securesms/ConversationAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/ConversationAdapter;->getSelectedItems()Ljava/util/Set;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/thoughtcrime/securesms/ConversationFragment;->access$1400(Lorg/thoughtcrime/securesms/ConversationFragment;Ljava/util/Set;)V

    .line 949
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationFragment$ActionModeCallback;->this$0:Lorg/thoughtcrime/securesms/ConversationFragment;

    iget-object p1, p1, Lorg/thoughtcrime/securesms/ConversationFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    invoke-virtual {p1}, Landroidx/appcompat/view/ActionMode;->finish()V

    return v0

    .line 944
    :pswitch_5
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationFragment$ActionModeCallback;->this$0:Lorg/thoughtcrime/securesms/ConversationFragment;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/ConversationFragment;->access$800(Lorg/thoughtcrime/securesms/ConversationFragment;)Lorg/thoughtcrime/securesms/ConversationAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/ConversationAdapter;->getSelectedItems()Ljava/util/Set;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/ConversationFragment;->getSelectedMessageRecord(Ljava/util/Set;)Lcom/b44t/messenger/DcMsg;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/ConversationFragment;->handleDisplayDetails(Lcom/b44t/messenger/DcMsg;)V

    .line 945
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationFragment$ActionModeCallback;->this$0:Lorg/thoughtcrime/securesms/ConversationFragment;

    iget-object p1, p1, Lorg/thoughtcrime/securesms/ConversationFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    invoke-virtual {p1}, Landroidx/appcompat/view/ActionMode;->finish()V

    return v0

    .line 938
    :pswitch_6
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationFragment$ActionModeCallback;->this$0:Lorg/thoughtcrime/securesms/ConversationFragment;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/ConversationFragment;->access$1200(Lorg/thoughtcrime/securesms/ConversationFragment;)J

    move-result-wide v1

    long-to-int p2, v1

    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationFragment$ActionModeCallback;->this$0:Lorg/thoughtcrime/securesms/ConversationFragment;

    invoke-static {v1}, Lorg/thoughtcrime/securesms/ConversationFragment;->access$800(Lorg/thoughtcrime/securesms/ConversationFragment;)Lorg/thoughtcrime/securesms/ConversationAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/ConversationAdapter;->getSelectedItems()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Lorg/thoughtcrime/securesms/ConversationFragment;->handleDeleteMessages(ILjava/util/Set;)V

    return v0

    .line 934
    :pswitch_7
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationFragment$ActionModeCallback;->this$0:Lorg/thoughtcrime/securesms/ConversationFragment;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/ConversationFragment;->access$800(Lorg/thoughtcrime/securesms/ConversationFragment;)Lorg/thoughtcrime/securesms/ConversationAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/ConversationAdapter;->getSelectedItems()Ljava/util/Set;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/thoughtcrime/securesms/ConversationFragment;->access$1300(Lorg/thoughtcrime/securesms/ConversationFragment;Ljava/util/Set;)V

    .line 935
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationFragment$ActionModeCallback;->this$0:Lorg/thoughtcrime/securesms/ConversationFragment;

    iget-object p1, p1, Lorg/thoughtcrime/securesms/ConversationFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    invoke-virtual {p1}, Landroidx/appcompat/view/ActionMode;->finish()V

    return v0

    .line 966
    :cond_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationFragment$ActionModeCallback;->this$0:Lorg/thoughtcrime/securesms/ConversationFragment;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/ConversationFragment;->access$800(Lorg/thoughtcrime/securesms/ConversationFragment;)Lorg/thoughtcrime/securesms/ConversationAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/ConversationAdapter;->getSelectedItems()Ljava/util/Set;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/ConversationFragment;->handleResendMessage(Ljava/util/Set;)V

    return v0

    .line 952
    :cond_1
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationFragment$ActionModeCallback;->this$0:Lorg/thoughtcrime/securesms/ConversationFragment;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/ConversationFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationFragment$ActionModeCallback;->this$0:Lorg/thoughtcrime/securesms/ConversationFragment;

    invoke-static {p2}, Lorg/thoughtcrime/securesms/ConversationFragment;->access$800(Lorg/thoughtcrime/securesms/ConversationFragment;)Lorg/thoughtcrime/securesms/ConversationAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/ConversationAdapter;->getSelectedItems()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/thoughtcrime/securesms/ConversationFragment;->getSelectedMessageRecord(Ljava/util/Set;)Lcom/b44t/messenger/DcMsg;

    move-result-object p2

    invoke-virtual {p2}, Lcom/b44t/messenger/DcMsg;->getId()I

    move-result p2

    invoke-static {p1, p2}, Lorg/thoughtcrime/securesms/WebxdcActivity;->addToHomeScreen(Landroid/app/Activity;I)V

    .line 953
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationFragment$ActionModeCallback;->this$0:Lorg/thoughtcrime/securesms/ConversationFragment;

    iget-object p1, p1, Lorg/thoughtcrime/securesms/ConversationFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    invoke-virtual {p1}, Landroidx/appcompat/view/ActionMode;->finish()V

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0901f4
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateActionMode(Landroidx/appcompat/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2

    .line 895
    invoke-virtual {p1}, Landroidx/appcompat/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0008

    .line 896
    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const-string v0, "1"

    .line 898
    invoke-virtual {p1, v0}, Landroidx/appcompat/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 900
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    .line 901
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationFragment$ActionModeCallback;->this$0:Lorg/thoughtcrime/securesms/ConversationFragment;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/ConversationFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 902
    invoke-static {p1}, Lkotlinx/coroutines/time/TimeKt$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/Window;)I

    move-result v0

    iput v0, p0, Lorg/thoughtcrime/securesms/ConversationFragment$ActionModeCallback;->statusBarColor:I

    .line 903
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationFragment$ActionModeCallback;->this$0:Lorg/thoughtcrime/securesms/ConversationFragment;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/ConversationFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {p1, v0}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/Window;I)V

    .line 906
    :cond_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationFragment$ActionModeCallback;->this$0:Lorg/thoughtcrime/securesms/ConversationFragment;

    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/ConversationFragment;->setCorrectMenuVisibility(Landroid/view/Menu;)V

    .line 907
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationFragment$ActionModeCallback;->this$0:Lorg/thoughtcrime/securesms/ConversationFragment;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/ConversationFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    const/16 v0, 0xa

    invoke-static {p2, v0, p1}, Lorg/thoughtcrime/securesms/util/views/ConversationAdaptiveActionsToolbar;->adjustMenuActions(Landroid/view/Menu;II)V

    const/4 p1, 0x1

    return p1
.end method

.method public onDestroyActionMode(Landroidx/appcompat/view/ActionMode;)V
    .locals 1

    .line 918
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationFragment$ActionModeCallback;->this$0:Lorg/thoughtcrime/securesms/ConversationFragment;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/ConversationFragment;->access$600(Lorg/thoughtcrime/securesms/ConversationFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    check-cast p1, Lorg/thoughtcrime/securesms/ConversationAdapter;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/ConversationAdapter;->clearSelection()V

    .line 919
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationFragment$ActionModeCallback;->this$0:Lorg/thoughtcrime/securesms/ConversationFragment;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/ConversationFragment;->access$600(Lorg/thoughtcrime/securesms/ConversationFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 921
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    .line 922
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationFragment$ActionModeCallback;->this$0:Lorg/thoughtcrime/securesms/ConversationFragment;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/ConversationFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    iget v0, p0, Lorg/thoughtcrime/securesms/ConversationFragment$ActionModeCallback;->statusBarColor:I

    invoke-static {p1, v0}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/Window;I)V

    .line 925
    :cond_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationFragment$ActionModeCallback;->this$0:Lorg/thoughtcrime/securesms/ConversationFragment;

    const/4 v0, 0x0

    iput-object v0, p1, Lorg/thoughtcrime/securesms/ConversationFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 926
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationFragment$ActionModeCallback;->this$0:Lorg/thoughtcrime/securesms/ConversationFragment;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/ConversationFragment;->hideAddReactionView()V

    return-void
.end method

.method public onPrepareActionMode(Landroidx/appcompat/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
