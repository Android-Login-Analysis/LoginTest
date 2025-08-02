.class Lorg/thoughtcrime/securesms/BaseConversationListFragment$2;
.super Landroid/os/AsyncTask;
.source "BaseConversationListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/thoughtcrime/securesms/BaseConversationListFragment;->handleDeleteAllSelected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private dialog:Lorg/thoughtcrime/securesms/util/views/ProgressDialog;

.field final synthetic this$0:Lorg/thoughtcrime/securesms/BaseConversationListFragment;

.field final synthetic val$dcContext:Lcom/b44t/messenger/DcContext;

.field final synthetic val$selectedConversations:Ljava/util/Set;


# direct methods
.method constructor <init>(Lorg/thoughtcrime/securesms/BaseConversationListFragment;Lcom/b44t/messenger/DcContext;Ljava/util/Set;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lorg/thoughtcrime/securesms/BaseConversationListFragment$2;->this$0:Lorg/thoughtcrime/securesms/BaseConversationListFragment;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/BaseConversationListFragment$2;->val$dcContext:Lcom/b44t/messenger/DcContext;

    iput-object p3, p0, Lorg/thoughtcrime/securesms/BaseConversationListFragment$2;->val$selectedConversations:Ljava/util/Set;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 259
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/BaseConversationListFragment$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    .line 272
    iget-object p1, p0, Lorg/thoughtcrime/securesms/BaseConversationListFragment$2;->val$dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {p1}, Lcom/b44t/messenger/DcContext;->getAccountId()I

    move-result p1

    .line 273
    iget-object v0, p0, Lorg/thoughtcrime/securesms/BaseConversationListFragment$2;->val$selectedConversations:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 274
    iget-object v3, p0, Lorg/thoughtcrime/securesms/BaseConversationListFragment$2;->this$0:Lorg/thoughtcrime/securesms/BaseConversationListFragment;

    invoke-virtual {v3}, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getNotificationCenter(Landroid/content/Context;)Lorg/thoughtcrime/securesms/notifications/NotificationCenter;

    move-result-object v3

    long-to-int v2, v1

    invoke-virtual {v3, p1, v2}, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->removeNotifications(II)V

    .line 275
    iget-object v1, p0, Lorg/thoughtcrime/securesms/BaseConversationListFragment$2;->val$dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {v1, v2}, Lcom/b44t/messenger/DcContext;->deleteChat(I)V

    .line 276
    iget-object v1, p0, Lorg/thoughtcrime/securesms/BaseConversationListFragment$2;->this$0:Lorg/thoughtcrime/securesms/BaseConversationListFragment;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lorg/thoughtcrime/securesms/connect/DirectShareUtil;->clearShortcut(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 259
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/BaseConversationListFragment$2;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    .line 283
    iget-object p1, p0, Lorg/thoughtcrime/securesms/BaseConversationListFragment$2;->dialog:Lorg/thoughtcrime/securesms/util/views/ProgressDialog;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;->dismiss()V

    .line 284
    iget-object p1, p0, Lorg/thoughtcrime/securesms/BaseConversationListFragment$2;->this$0:Lorg/thoughtcrime/securesms/BaseConversationListFragment;

    iget-object p1, p1, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    if-eqz p1, :cond_0

    .line 285
    iget-object p1, p0, Lorg/thoughtcrime/securesms/BaseConversationListFragment$2;->this$0:Lorg/thoughtcrime/securesms/BaseConversationListFragment;

    iget-object p1, p1, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    invoke-virtual {p1}, Landroidx/appcompat/view/ActionMode;->finish()V

    .line 286
    iget-object p1, p0, Lorg/thoughtcrime/securesms/BaseConversationListFragment$2;->this$0:Lorg/thoughtcrime/securesms/BaseConversationListFragment;

    const/4 v0, 0x0

    iput-object v0, p1, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 5

    .line 264
    iget-object v0, p0, Lorg/thoughtcrime/securesms/BaseConversationListFragment$2;->this$0:Lorg/thoughtcrime/securesms/BaseConversationListFragment;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lorg/thoughtcrime/securesms/BaseConversationListFragment$2;->this$0:Lorg/thoughtcrime/securesms/BaseConversationListFragment;

    .line 266
    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f1202dd

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, ""

    .line 264
    invoke-static {v0, v4, v1, v2, v3}, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lorg/thoughtcrime/securesms/util/views/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lorg/thoughtcrime/securesms/BaseConversationListFragment$2;->dialog:Lorg/thoughtcrime/securesms/util/views/ProgressDialog;

    return-void
.end method
