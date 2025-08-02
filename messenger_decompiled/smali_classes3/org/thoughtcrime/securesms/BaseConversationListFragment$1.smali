.class Lorg/thoughtcrime/securesms/BaseConversationListFragment$1;
.super Lorg/thoughtcrime/securesms/util/task/SnackbarAsyncTask;
.source "BaseConversationListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/thoughtcrime/securesms/BaseConversationListFragment;->handleArchiveAllSelected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/thoughtcrime/securesms/util/task/SnackbarAsyncTask<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/BaseConversationListFragment;

.field final synthetic val$archive:Z

.field final synthetic val$dcContext:Lcom/b44t/messenger/DcContext;

.field final synthetic val$selectedConversations:Ljava/util/Set;


# direct methods
.method constructor <init>(Lorg/thoughtcrime/securesms/BaseConversationListFragment;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;IZLjava/util/Set;Lcom/b44t/messenger/DcContext;Z)V
    .locals 6

    .line 216
    iput-object p1, p0, Lorg/thoughtcrime/securesms/BaseConversationListFragment$1;->this$0:Lorg/thoughtcrime/securesms/BaseConversationListFragment;

    iput-object p7, p0, Lorg/thoughtcrime/securesms/BaseConversationListFragment$1;->val$selectedConversations:Ljava/util/Set;

    iput-object p8, p0, Lorg/thoughtcrime/securesms/BaseConversationListFragment$1;->val$dcContext:Lcom/b44t/messenger/DcContext;

    iput-boolean p9, p0, Lorg/thoughtcrime/securesms/BaseConversationListFragment$1;->val$archive:Z

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/thoughtcrime/securesms/util/task/SnackbarAsyncTask;-><init>(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;IZ)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic executeAction(Ljava/lang/Object;)V
    .locals 0

    .line 216
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/BaseConversationListFragment$1;->executeAction(Ljava/lang/Void;)V

    return-void
.end method

.method protected executeAction(Ljava/lang/Void;)V
    .locals 3

    .line 230
    iget-object p1, p0, Lorg/thoughtcrime/securesms/BaseConversationListFragment$1;->val$selectedConversations:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 231
    iget-object v2, p0, Lorg/thoughtcrime/securesms/BaseConversationListFragment$1;->val$dcContext:Lcom/b44t/messenger/DcContext;

    long-to-int v1, v0

    .line 232
    iget-boolean v0, p0, Lorg/thoughtcrime/securesms/BaseConversationListFragment$1;->val$archive:Z

    .line 231
    invoke-virtual {v2, v1, v0}, Lcom/b44t/messenger/DcContext;->setChatVisibility(II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 216
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/BaseConversationListFragment$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    .line 220
    invoke-super {p0, p1}, Lorg/thoughtcrime/securesms/util/task/SnackbarAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    .line 222
    iget-object p1, p0, Lorg/thoughtcrime/securesms/BaseConversationListFragment$1;->this$0:Lorg/thoughtcrime/securesms/BaseConversationListFragment;

    iget-object p1, p1, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    if-eqz p1, :cond_0

    .line 223
    iget-object p1, p0, Lorg/thoughtcrime/securesms/BaseConversationListFragment$1;->this$0:Lorg/thoughtcrime/securesms/BaseConversationListFragment;

    iget-object p1, p1, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    invoke-virtual {p1}, Landroidx/appcompat/view/ActionMode;->finish()V

    .line 224
    iget-object p1, p0, Lorg/thoughtcrime/securesms/BaseConversationListFragment$1;->this$0:Lorg/thoughtcrime/securesms/BaseConversationListFragment;

    const/4 v0, 0x0

    iput-object v0, p1, Lorg/thoughtcrime/securesms/BaseConversationListFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    :cond_0
    return-void
.end method

.method protected bridge synthetic reverseAction(Ljava/lang/Object;)V
    .locals 0

    .line 216
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/BaseConversationListFragment$1;->reverseAction(Ljava/lang/Void;)V

    return-void
.end method

.method protected reverseAction(Ljava/lang/Void;)V
    .locals 3

    .line 238
    iget-object p1, p0, Lorg/thoughtcrime/securesms/BaseConversationListFragment$1;->val$selectedConversations:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 239
    iget-object v2, p0, Lorg/thoughtcrime/securesms/BaseConversationListFragment$1;->val$dcContext:Lcom/b44t/messenger/DcContext;

    long-to-int v1, v0

    .line 240
    iget-boolean v0, p0, Lorg/thoughtcrime/securesms/BaseConversationListFragment$1;->val$archive:Z

    xor-int/lit8 v0, v0, 0x1

    .line 239
    invoke-virtual {v2, v1, v0}, Lcom/b44t/messenger/DcContext;->setChatVisibility(II)V

    goto :goto_0

    :cond_0
    return-void
.end method
