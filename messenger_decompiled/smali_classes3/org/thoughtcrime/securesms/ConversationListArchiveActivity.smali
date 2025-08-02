.class public Lorg/thoughtcrime/securesms/ConversationListArchiveActivity;
.super Lorg/thoughtcrime/securesms/PassphraseRequiredActionBarActivity;
.source "ConversationListArchiveActivity.java"

# interfaces
.implements Lorg/thoughtcrime/securesms/BaseConversationListFragment$ConversationSelectedListener;


# instance fields
.field private conversationListFragment:Lorg/thoughtcrime/securesms/ConversationListFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/PassphraseRequiredActionBarActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .line 81
    invoke-static {p0}, Lorg/thoughtcrime/securesms/util/RelayUtil;->isRelayingMessageContent(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    invoke-super {p0}, Lorg/thoughtcrime/securesms/PassphraseRequiredActionBarActivity;->onBackPressed()V

    goto :goto_0

    .line 86
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/thoughtcrime/securesms/ConversationListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    .line 87
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 88
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/ConversationListArchiveActivity;->startActivity(Landroid/content/Intent;)V

    .line 89
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationListArchiveActivity;->finish()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;Z)V
    .locals 2

    .line 26
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationListArchiveActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 27
    invoke-static {p0}, Lorg/thoughtcrime/securesms/util/RelayUtil;->isRelayingMessageContent(Landroid/app/Activity;)Z

    move-result p1

    const v0, 0x7f1200a3

    if-eqz p1, :cond_1

    .line 28
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationListArchiveActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-static {p0}, Lorg/thoughtcrime/securesms/util/RelayUtil;->isSharing(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f1200b9

    goto :goto_0

    :cond_0
    const v1, 0x7f12016e

    :goto_0
    invoke-virtual {p1, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 29
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationListArchiveActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setSubtitle(I)V

    goto :goto_1

    .line 31
    :cond_1
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationListArchiveActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 34
    :goto_1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "archive"

    .line 35
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 37
    new-instance p2, Lorg/thoughtcrime/securesms/ConversationListFragment;

    invoke-direct {p2}, Lorg/thoughtcrime/securesms/ConversationListFragment;-><init>()V

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationListArchiveActivity;->dynamicLanguage:Lorg/thoughtcrime/securesms/util/DynamicLanguage;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/util/DynamicLanguage;->getCurrentLocale()Ljava/util/Locale;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {p0, v1, p2, v0, p1}, Lorg/thoughtcrime/securesms/ConversationListArchiveActivity;->initFragment(ILandroidx/fragment/app/Fragment;Ljava/util/Locale;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lorg/thoughtcrime/securesms/ConversationListFragment;

    iput-object p1, p0, Lorg/thoughtcrime/securesms/ConversationListArchiveActivity;->conversationListFragment:Lorg/thoughtcrime/securesms/ConversationListFragment;

    return-void
.end method

.method public onCreateConversation(I)V
    .locals 2

    .line 95
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/thoughtcrime/securesms/ConversationActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "chat_id"

    .line 96
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "from_archived"

    const/4 v1, 0x1

    .line 97
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 98
    invoke-static {p0}, Lorg/thoughtcrime/securesms/util/RelayUtil;->isRelayingMessageContent(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 99
    invoke-static {p0, v0}, Lorg/thoughtcrime/securesms/util/RelayUtil;->acquireRelayMessageContent(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 104
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationListArchiveActivity;->finish()V

    .line 106
    :cond_0
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/ConversationListArchiveActivity;->startActivity(Landroid/content/Intent;)V

    const p1, 0x7f010031

    const v0, 0x7f01001f

    .line 108
    invoke-virtual {p0, p1, v0}, Lorg/thoughtcrime/securesms/ConversationListArchiveActivity;->overridePendingTransition(II)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 42
    invoke-super {p0, p1}, Lorg/thoughtcrime/securesms/PassphraseRequiredActionBarActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 43
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/ConversationListArchiveActivity;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 64
    invoke-super {p0, p1}, Lorg/thoughtcrime/securesms/PassphraseRequiredActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 66
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    const v0, 0x7f0901c0

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 72
    :cond_0
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object p1

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/b44t/messenger/DcContext;->marknoticedChat(I)V

    return v1

    .line 68
    :cond_1
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationListArchiveActivity;->onBackPressed()V

    return v1
.end method

.method protected onPause()V
    .locals 2

    .line 48
    invoke-super {p0}, Lorg/thoughtcrime/securesms/PassphraseRequiredActionBarActivity;->onPause()V

    .line 49
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationListArchiveActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f01001e

    const v1, 0x7f010032

    invoke-virtual {p0, v0, v1}, Lorg/thoughtcrime/securesms/ConversationListArchiveActivity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 54
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ConversationListArchiveActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 55
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    const v1, 0x7f0e0001

    .line 57
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 58
    invoke-super {p0, p1}, Lorg/thoughtcrime/securesms/PassphraseRequiredActionBarActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onSwitchToArchive()V
    .locals 1

    .line 113
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
