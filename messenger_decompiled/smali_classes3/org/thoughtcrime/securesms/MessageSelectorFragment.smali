.class public abstract Lorg/thoughtcrime/securesms/MessageSelectorFragment;
.super Landroidx/fragment/app/Fragment;
.source "MessageSelectorFragment.java"

# interfaces
.implements Lorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;


# instance fields
.field protected actionMode:Landroidx/appcompat/view/ActionMode;

.field protected dcContext:Lcom/b44t/messenger/DcContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method private performSave(Ljava/util/Set;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/b44t/messenger/DcMsg;",
            ">;)V"
        }
    .end annotation

    .line 98
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Lorg/thoughtcrime/securesms/util/SaveAttachmentTask$Attachment;

    .line 100
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/b44t/messenger/DcMsg;

    .line 101
    new-instance v9, Lorg/thoughtcrime/securesms/util/SaveAttachmentTask$Attachment;

    .line 102
    invoke-virtual {v2}, Lcom/b44t/messenger/DcMsg;->getFileAsFile()Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2}, Lcom/b44t/messenger/DcMsg;->getFilemime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/b44t/messenger/DcMsg;->getDateReceived()J

    move-result-wide v6

    invoke-virtual {v2}, Lcom/b44t/messenger/DcMsg;->getFilename()Ljava/lang/String;

    move-result-object v8

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lorg/thoughtcrime/securesms/util/SaveAttachmentTask$Attachment;-><init>(Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;)V

    aput-object v9, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 105
    :cond_0
    new-instance p1, Lorg/thoughtcrime/securesms/util/SaveAttachmentTask;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/MessageSelectorFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lorg/thoughtcrime/securesms/util/SaveAttachmentTask;-><init>(Landroid/content/Context;)V

    .line 106
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, v1, v0}, Lorg/thoughtcrime/securesms/util/SaveAttachmentTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 107
    iget-object p1, p0, Lorg/thoughtcrime/securesms/MessageSelectorFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/appcompat/view/ActionMode;->finish()V

    :cond_1
    return-void
.end method


# virtual methods
.method protected getActionMode()Landroidx/appcompat/view/ActionMode;
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/thoughtcrime/securesms/MessageSelectorFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    return-object v0
.end method

.method protected getSelectedMessageRecord(Ljava/util/Set;)Lcom/b44t/messenger/DcMsg;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/b44t/messenger/DcMsg;",
            ">;)",
            "Lcom/b44t/messenger/DcMsg;"
        }
    .end annotation

    .line 42
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/b44t/messenger/DcMsg;

    return-object p1

    .line 43
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method protected handleDeleteMessages(ILjava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Lcom/b44t/messenger/DcMsg;",
            ">;)V"
        }
    .end annotation

    .line 59
    invoke-static {p2}, Lcom/b44t/messenger/DcMsg;->msgSetToIds(Ljava/util/Set;)[I

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/thoughtcrime/securesms/MessageSelectorFragment;->handleDeleteMessages(I[I)V

    return-void
.end method

.method protected handleDeleteMessages(I[I)V
    .locals 6

    .line 63
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/MessageSelectorFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b44t/messenger/DcContext;->getChat(I)Lcom/b44t/messenger/DcChat;

    move-result-object p1

    .line 65
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/MessageSelectorFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 66
    invoke-virtual {p1}, Lcom/b44t/messenger/DcChat;->isDeviceTalk()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f100002

    goto :goto_0

    :cond_0
    const p1, 0x7f100001

    :goto_0
    array-length v1, p2

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    array-length v4, p2

    .line 67
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 65
    invoke-virtual {v0, p1, v1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 69
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/MessageSelectorFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 70
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 71
    invoke-virtual {p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lorg/thoughtcrime/securesms/MessageSelectorFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lorg/thoughtcrime/securesms/MessageSelectorFragment$$ExternalSyntheticLambda0;-><init>(Lorg/thoughtcrime/securesms/MessageSelectorFragment;[I)V

    const p2, 0x7f1200e4

    .line 72
    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 p2, 0x1040000

    const/4 v0, 0x0

    .line 76
    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 77
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method protected handleDisplayDetails(Lcom/b44t/messenger/DcMsg;)V
    .locals 4

    .line 47
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/MessageSelectorFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0c0099

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0900e8

    .line 48
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 49
    iget-object v3, p0, Lorg/thoughtcrime/securesms/MessageSelectorFragment;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getId()I

    move-result p1

    invoke-virtual {v3, p1}, Lcom/b44t/messenger/DcContext;->getMsgInfo(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/MessageSelectorFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 52
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x104000a

    .line 53
    invoke-virtual {p1, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 54
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 55
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method protected handleResendMessage(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/b44t/messenger/DcMsg;",
            ">;)V"
        }
    .end annotation

    .line 122
    invoke-static {p1}, Lcom/b44t/messenger/DcMsg;->msgSetToIds(Ljava/util/Set;)[I

    move-result-object p1

    .line 123
    iget-object v0, p0, Lorg/thoughtcrime/securesms/MessageSelectorFragment;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {v0, p1}, Lcom/b44t/messenger/DcContext;->resendMsgs([I)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 124
    iget-object p1, p0, Lorg/thoughtcrime/securesms/MessageSelectorFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    invoke-virtual {p1}, Landroidx/appcompat/view/ActionMode;->finish()V

    .line 125
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/MessageSelectorFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f1203ca

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 127
    :cond_0
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/MessageSelectorFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lorg/thoughtcrime/securesms/MessageSelectorFragment;->dcContext:Lcom/b44t/messenger/DcContext;

    .line 128
    invoke-virtual {v1}, Lcom/b44t/messenger/DcContext;->getLastError()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 129
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x104000a

    const/4 v1, 0x0

    .line 130
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 131
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    :goto_0
    return-void
.end method

.method protected handleSaveAttachment(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/b44t/messenger/DcMsg;",
            ">;)V"
        }
    .end annotation

    .line 81
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/MessageSelectorFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lorg/thoughtcrime/securesms/MessageSelectorFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lorg/thoughtcrime/securesms/MessageSelectorFragment$$ExternalSyntheticLambda1;-><init>(Lorg/thoughtcrime/securesms/MessageSelectorFragment;Ljava/util/Set;)V

    invoke-static {v0, v1}, Lorg/thoughtcrime/securesms/util/SaveAttachmentTask;->showWarningDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method protected handleShare(Lcom/b44t/messenger/DcMsg;)V
    .locals 2

    .line 118
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/MessageSelectorFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getId()I

    move-result p1

    const-string v1, "android.intent.action.SEND"

    invoke-static {v0, p1, v1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->openForViewOrShare(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method protected handleShowInChat(Lcom/b44t/messenger/DcMsg;)V
    .locals 3

    .line 111
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/MessageSelectorFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lorg/thoughtcrime/securesms/ConversationActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "chat_id"

    .line 112
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getChatId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 113
    iget-object v1, p0, Lorg/thoughtcrime/securesms/MessageSelectorFragment;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-static {p1, v1}, Lcom/b44t/messenger/DcMsg;->getMessagePosition(Lcom/b44t/messenger/DcMsg;Lcom/b44t/messenger/DcContext;)I

    move-result p1

    const-string v1, "starting_position"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 114
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/MessageSelectorFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method synthetic lambda$handleDeleteMessages$0$org-thoughtcrime-securesms-MessageSelectorFragment([ILandroid/content/DialogInterface;I)V
    .locals 0

    .line 73
    iget-object p2, p0, Lorg/thoughtcrime/securesms/MessageSelectorFragment;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {p2, p1}, Lcom/b44t/messenger/DcContext;->deleteMsgs([I)V

    .line 74
    iget-object p1, p0, Lorg/thoughtcrime/securesms/MessageSelectorFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/appcompat/view/ActionMode;->finish()V

    :cond_0
    return-void
.end method

.method synthetic lambda$handleSaveAttachment$1$org-thoughtcrime-securesms-MessageSelectorFragment(Ljava/util/Set;)V
    .locals 0

    .line 92
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/MessageSelectorFragment;->performSave(Ljava/util/Set;)V

    return-void
.end method

.method synthetic lambda$handleSaveAttachment$2$org-thoughtcrime-securesms-MessageSelectorFragment(Ljava/util/Set;Landroid/content/DialogInterface;I)V
    .locals 2

    .line 82
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/MessageSelectorFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lorg/thoughtcrime/securesms/util/StorageUtil;->canWriteToMediaStore(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 83
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/MessageSelectorFragment;->performSave(Ljava/util/Set;)V

    return-void

    .line 87
    :cond_0
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/MessageSelectorFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Lorg/thoughtcrime/securesms/permissions/Permissions;->with(Landroid/app/Activity;)Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object p2

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v1, p3, v0

    .line 88
    invoke-virtual {p2, p3}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->request([Ljava/lang/String;)Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object p2

    .line 89
    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->alwaysGrantOnSdk30()Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object p2

    .line 90
    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->ifNecessary()Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object p2

    const p3, 0x7f1202f8

    .line 91
    invoke-virtual {p0, p3}, Lorg/thoughtcrime/securesms/MessageSelectorFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->withPermanentDenialDialog(Ljava/lang/String;)Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object p2

    new-instance p3, Lorg/thoughtcrime/securesms/MessageSelectorFragment$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0, p1}, Lorg/thoughtcrime/securesms/MessageSelectorFragment$$ExternalSyntheticLambda2;-><init>(Lorg/thoughtcrime/securesms/MessageSelectorFragment;Ljava/util/Set;)V

    .line 92
    invoke-virtual {p2, p3}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->onAllGranted(Ljava/lang/Runnable;)Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object p1

    .line 93
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->execute()V

    return-void
.end method

.method public synthetic runOnMain()Z
    .locals 1

    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate$-CC;->$default$runOnMain(Lorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)Z

    move-result v0

    return v0
.end method

.method protected abstract setCorrectMenuVisibility(Landroid/view/Menu;)V
.end method
