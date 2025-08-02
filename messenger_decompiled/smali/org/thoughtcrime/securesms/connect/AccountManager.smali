.class public Lorg/thoughtcrime/securesms/connect/AccountManager;
.super Ljava/lang/Object;
.source "AccountManager.java"


# static fields
.field private static final LAST_ACCOUNT_ID:Ljava/lang/String; = "last_account_id"

.field private static final TAG:Ljava/lang/String; = "AccountManager"

.field private static self:Lorg/thoughtcrime/securesms/connect/AccountManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/thoughtcrime/securesms/connect/AccountManager;
    .locals 1

    .line 45
    sget-object v0, Lorg/thoughtcrime/securesms/connect/AccountManager;->self:Lorg/thoughtcrime/securesms/connect/AccountManager;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lorg/thoughtcrime/securesms/connect/AccountManager;

    invoke-direct {v0}, Lorg/thoughtcrime/securesms/connect/AccountManager;-><init>()V

    sput-object v0, Lorg/thoughtcrime/securesms/connect/AccountManager;->self:Lorg/thoughtcrime/securesms/connect/AccountManager;

    .line 48
    :cond_0
    sget-object v0, Lorg/thoughtcrime/securesms/connect/AccountManager;->self:Lorg/thoughtcrime/securesms/connect/AccountManager;

    return-object v0
.end method

.method private resetDcContext(Landroid/content/Context;)V
    .locals 3

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/ApplicationContext;

    .line 35
    sget-object v1, Lorg/thoughtcrime/securesms/ApplicationContext;->dcAccounts:Lcom/b44t/messenger/DcAccounts;

    invoke-virtual {v1}, Lcom/b44t/messenger/DcAccounts;->getSelectedAccount()Lcom/b44t/messenger/DcContext;

    move-result-object v1

    iput-object v1, v0, Lorg/thoughtcrime/securesms/ApplicationContext;->dcContext:Lcom/b44t/messenger/DcContext;

    .line 36
    invoke-static {p1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->setStockTranslations(Landroid/content/Context;)V

    .line 37
    invoke-static {p1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object p1

    const-string v1, "verified_one_on_one_chats"

    const-string v2, "1"

    invoke-virtual {p1, v1, v2}, Lcom/b44t/messenger/DcContext;->setConfig(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-static {v0}, Lorg/thoughtcrime/securesms/connect/DirectShareUtil;->resetAllShortcuts(Landroid/content/Context;)V

    return-void
.end method

.method private switchAccountAndStartActivity(Landroid/app/Activity;ILjava/lang/String;)V
    .locals 1

    if-nez p2, :cond_0

    .line 125
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/connect/AccountManager;->beginAccountCreation(Landroid/content/Context;)I

    goto :goto_0

    .line 127
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/thoughtcrime/securesms/connect/AccountManager;->switchAccount(Landroid/content/Context;I)V

    .line 130
    :goto_0
    invoke-virtual {p1}, Landroid/app/Activity;->finishAffinity()V

    if-nez p2, :cond_2

    .line 132
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lorg/thoughtcrime/securesms/WelcomeActivity;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p3, :cond_1

    const-string v0, "backup_qr_extra"

    .line 134
    invoke-virtual {p2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    :cond_1
    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 138
    :cond_2
    new-instance p2, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    const-class v0, Lorg/thoughtcrime/securesms/ConversationListActivity;

    invoke-direct {p2, p3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public addAccountFromQr(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    .line 172
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/connect/AccountManager;->beginAccountCreation(Landroid/content/Context;)I

    .line 173
    invoke-virtual {p1}, Landroid/app/Activity;->finishAffinity()V

    .line 174
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "qr_account_extra"

    .line 175
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public addAccountFromSecondDevice(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 180
    invoke-direct {p0, p1, v0, p2}, Lorg/thoughtcrime/securesms/connect/AccountManager;->switchAccountAndStartActivity(Landroid/app/Activity;ILjava/lang/String;)V

    return-void
.end method

.method public beginAccountCreation(Landroid/content/Context;)I
    .locals 4

    .line 89
    invoke-static {p1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getAccounts(Landroid/content/Context;)Lcom/b44t/messenger/DcAccounts;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Lcom/b44t/messenger/DcAccounts;->getSelectedAccount()Lcom/b44t/messenger/DcContext;

    move-result-object v1

    .line 91
    invoke-virtual {v1}, Lcom/b44t/messenger/DcContext;->isOk()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 92
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "last_account_id"

    invoke-virtual {v1}, Lcom/b44t/messenger/DcContext;->getAccountId()I

    move-result v1

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 95
    :cond_0
    invoke-virtual {v0}, Lcom/b44t/messenger/DcAccounts;->addAccount()I

    move-result v0

    .line 96
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/connect/AccountManager;->resetDcContext(Landroid/content/Context;)V

    return v0
.end method

.method public canRollbackAccountCreation(Landroid/content/Context;)Z
    .locals 1

    .line 101
    invoke-static {p1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getAccounts(Landroid/content/Context;)Lcom/b44t/messenger/DcAccounts;

    move-result-object p1

    invoke-virtual {p1}, Lcom/b44t/messenger/DcAccounts;->getAll()[I

    move-result-object p1

    array-length p1, p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public migrateToDcAccounts(Lorg/thoughtcrime/securesms/ApplicationContext;)V
    .locals 9

    .line 55
    :try_start_0
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/ApplicationContext;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 56
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    .line 58
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "messenger"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".db"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 59
    sget-object v5, Lorg/thoughtcrime/securesms/ApplicationContext;->dcAccounts:Lcom/b44t/messenger/DcAccounts;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/b44t/messenger/DcAccounts;->migrateAccount(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 61
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "curr_account_db_name"

    const-string v8, "messenger.db"

    .line 62
    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 63
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v3, v5

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    .line 73
    sget-object p1, Lorg/thoughtcrime/securesms/ApplicationContext;->dcAccounts:Lcom/b44t/messenger/DcAccounts;

    invoke-virtual {p1, v3}, Lcom/b44t/messenger/DcAccounts;->selectAccount(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 76
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method public rollbackAccountCreation(Landroid/app/Activity;)V
    .locals 4

    .line 105
    invoke-static {p1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getAccounts(Landroid/content/Context;)Lcom/b44t/messenger/DcAccounts;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Lcom/b44t/messenger/DcAccounts;->getSelectedAccount()Lcom/b44t/messenger/DcContext;

    move-result-object v1

    .line 108
    invoke-virtual {v1}, Lcom/b44t/messenger/DcContext;->isConfigured()I

    move-result v2

    if-nez v2, :cond_0

    .line 109
    invoke-virtual {v1}, Lcom/b44t/messenger/DcContext;->getAccountId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/b44t/messenger/DcAccounts;->removeAccount(I)Z

    .line 112
    :cond_0
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "last_account_id"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    .line 113
    invoke-virtual {v0, v1}, Lcom/b44t/messenger/DcAccounts;->getAccount(I)Lcom/b44t/messenger/DcContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/b44t/messenger/DcContext;->isOk()Z

    move-result v2

    if-nez v2, :cond_2

    .line 114
    :cond_1
    invoke-virtual {v0}, Lcom/b44t/messenger/DcAccounts;->getSelectedAccount()Lcom/b44t/messenger/DcContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b44t/messenger/DcContext;->getAccountId()I

    move-result v1

    .line 116
    :cond_2
    invoke-virtual {p0, p1, v1}, Lorg/thoughtcrime/securesms/connect/AccountManager;->switchAccountAndStartActivity(Landroid/app/Activity;I)V

    return-void
.end method

.method public showSwitchAccountMenu(Landroid/app/Activity;)V
    .locals 2

    .line 167
    new-instance v0, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListFragment;

    invoke-direct {v0}, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListFragment;-><init>()V

    .line 168
    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/thoughtcrime/securesms/accounts/AccountSelectionListFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public switchAccount(Landroid/content/Context;I)V
    .locals 1

    .line 81
    invoke-static {p1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getAccounts(Landroid/content/Context;)Lcom/b44t/messenger/DcAccounts;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/b44t/messenger/DcAccounts;->selectAccount(I)Z

    .line 82
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/connect/AccountManager;->resetDcContext(Landroid/content/Context;)V

    return-void
.end method

.method public switchAccountAndStartActivity(Landroid/app/Activity;I)V
    .locals 1

    const/4 v0, 0x0

    .line 120
    invoke-direct {p0, p1, p2, v0}, Lorg/thoughtcrime/securesms/connect/AccountManager;->switchAccountAndStartActivity(Landroid/app/Activity;ILjava/lang/String;)V

    return-void
.end method

.method public switchToEncrypted(Landroid/app/Activity;)V
    .locals 4

    .line 147
    sget-object v0, Lorg/thoughtcrime/securesms/connect/AccountManager;->TAG:Ljava/lang/String;

    const-string v1, "Switching to encrypted account..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-static {p1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getAccounts(Landroid/content/Context;)Lcom/b44t/messenger/DcAccounts;

    move-result-object v0

    .line 149
    invoke-virtual {v0}, Lcom/b44t/messenger/DcAccounts;->getSelectedAccount()Lcom/b44t/messenger/DcContext;

    move-result-object v1

    .line 150
    invoke-virtual {v1}, Lcom/b44t/messenger/DcContext;->isConfigured()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 154
    invoke-virtual {v1}, Lcom/b44t/messenger/DcContext;->getAccountId()I

    move-result v1

    .line 155
    invoke-virtual {v0}, Lcom/b44t/messenger/DcAccounts;->addClosedAccount()I

    .line 156
    invoke-virtual {v0, v1}, Lcom/b44t/messenger/DcAccounts;->removeAccount(I)Z

    .line 158
    invoke-virtual {v0}, Lcom/b44t/messenger/DcAccounts;->getSelectedAccount()Lcom/b44t/messenger/DcContext;

    move-result-object v0

    .line 159
    invoke-virtual {v0}, Lcom/b44t/messenger/DcContext;->getAccountId()I

    move-result v1

    invoke-static {p1, v1}, Lorg/thoughtcrime/securesms/crypto/DatabaseSecretProvider;->getOrCreateDatabaseSecret(Landroid/content/Context;I)Lorg/thoughtcrime/securesms/crypto/DatabaseSecret;

    move-result-object v1

    .line 160
    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/crypto/DatabaseSecret;->asString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b44t/messenger/DcContext;->open(Ljava/lang/String;)Z

    .line 161
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/connect/AccountManager;->resetDcContext(Landroid/content/Context;)V

    return-void

    .line 151
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Can\'t switch to encrypted account if already configured"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
