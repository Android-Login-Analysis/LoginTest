.class Lorg/thoughtcrime/securesms/accounts/AccountSelectionListFragment$ListClickListener;
.super Ljava/lang/Object;
.source "AccountSelectionListFragment.java"

# interfaces
.implements Lorg/thoughtcrime/securesms/accounts/AccountSelectionListAdapter$ItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/accounts/AccountSelectionListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/accounts/AccountSelectionListFragment;


# direct methods
.method private constructor <init>(Lorg/thoughtcrime/securesms/accounts/AccountSelectionListFragment;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListFragment$ListClickListener;->this$0:Lorg/thoughtcrime/securesms/accounts/AccountSelectionListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/thoughtcrime/securesms/accounts/AccountSelectionListFragment;Lorg/thoughtcrime/securesms/accounts/AccountSelectionListFragment$1;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListFragment$ListClickListener;-><init>(Lorg/thoughtcrime/securesms/accounts/AccountSelectionListFragment;)V

    return-void
.end method

.method static synthetic lambda$onDeleteButtonClick$0(Landroid/app/Activity;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 93
    invoke-static {}, Lorg/thoughtcrime/securesms/connect/AccountManager;->getInstance()Lorg/thoughtcrime/securesms/connect/AccountManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/thoughtcrime/securesms/connect/AccountManager;->showSwitchAccountMenu(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic lambda$onDeleteButtonClick$1(Landroid/app/Activity;ILcom/b44t/messenger/DcAccounts;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 95
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getNotificationCenter(Landroid/content/Context;)Lorg/thoughtcrime/securesms/notifications/NotificationCenter;

    move-result-object p3

    invoke-virtual {p3, p1}, Lorg/thoughtcrime/securesms/notifications/NotificationCenter;->removeAllNotifiations(I)V

    .line 96
    invoke-virtual {p2, p1}, Lcom/b44t/messenger/DcAccounts;->removeAccount(I)Z

    .line 97
    invoke-static {}, Lorg/thoughtcrime/securesms/connect/AccountManager;->getInstance()Lorg/thoughtcrime/securesms/connect/AccountManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/thoughtcrime/securesms/connect/AccountManager;->showSwitchAccountMenu(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public onDeleteButtonClick(I)V
    .locals 5

    .line 86
    iget-object v0, p0, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListFragment$ListClickListener;->this$0:Lorg/thoughtcrime/securesms/accounts/AccountSelectionListFragment;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListFragment$ListClickListener;->this$0:Lorg/thoughtcrime/securesms/accounts/AccountSelectionListFragment;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListFragment;->dismiss()V

    if-nez v0, :cond_0

    return-void

    .line 89
    :cond_0
    invoke-static {v0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getAccounts(Landroid/content/Context;)Lcom/b44t/messenger/DcAccounts;

    move-result-object v1

    .line 90
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 91
    invoke-virtual {v1, p1}, Lcom/b44t/messenger/DcAccounts;->getAccount(I)Lcom/b44t/messenger/DcContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/b44t/messenger/DcContext;->getNameNAddr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f12016c

    .line 92
    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListFragment$ListClickListener$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListFragment$ListClickListener$$ExternalSyntheticLambda0;-><init>(Landroid/app/Activity;)V

    const v4, 0x7f120097

    .line 93
    invoke-virtual {v2, v4, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListFragment$ListClickListener$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0, p1, v1}, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListFragment$ListClickListener$$ExternalSyntheticLambda1;-><init>(Landroid/app/Activity;ILcom/b44t/messenger/DcAccounts;)V

    const p1, 0x7f1202d8

    .line 94
    invoke-virtual {v2, p1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 99
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method public onItemClick(Lorg/thoughtcrime/securesms/accounts/AccountSelectionListItem;)V
    .locals 2

    .line 74
    iget-object v0, p0, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListFragment$ListClickListener;->this$0:Lorg/thoughtcrime/securesms/accounts/AccountSelectionListFragment;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListFragment$ListClickListener;->this$0:Lorg/thoughtcrime/securesms/accounts/AccountSelectionListFragment;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListFragment;->dismiss()V

    .line 76
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListItem;->getAccountId()I

    move-result p1

    const/4 v1, -0x6

    if-ne p1, v1, :cond_0

    .line 78
    invoke-static {}, Lorg/thoughtcrime/securesms/connect/AccountManager;->getInstance()Lorg/thoughtcrime/securesms/connect/AccountManager;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/thoughtcrime/securesms/connect/AccountManager;->switchAccountAndStartActivity(Landroid/app/Activity;I)V

    goto :goto_0

    .line 79
    :cond_0
    invoke-static {v0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getAccounts(Landroid/content/Context;)Lcom/b44t/messenger/DcAccounts;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b44t/messenger/DcAccounts;->getSelectedAccount()Lcom/b44t/messenger/DcContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b44t/messenger/DcContext;->getAccountId()I

    move-result v1

    if-eq p1, v1, :cond_1

    .line 80
    invoke-static {}, Lorg/thoughtcrime/securesms/connect/AccountManager;->getInstance()Lorg/thoughtcrime/securesms/connect/AccountManager;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lorg/thoughtcrime/securesms/connect/AccountManager;->switchAccountAndStartActivity(Landroid/app/Activity;I)V

    :cond_1
    :goto_0
    return-void
.end method
