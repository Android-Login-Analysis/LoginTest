.class Lorg/thoughtcrime/securesms/ConversationListFragment$2;
.super Landroid/os/AsyncTask;
.source "ConversationListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/thoughtcrime/securesms/ConversationListFragment;->updateReminders()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/content/Context;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/ConversationListFragment;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lorg/thoughtcrime/securesms/ConversationListFragment;Landroid/app/Activity;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lorg/thoughtcrime/securesms/ConversationListFragment$2;->this$0:Lorg/thoughtcrime/securesms/ConversationListFragment;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/ConversationListFragment$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method static synthetic lambda$onPostExecute$0(Landroid/app/Activity;)V
    .locals 0

    .line 214
    invoke-static {p0}, Lorg/thoughtcrime/securesms/components/reminder/DozeReminder;->maybeAskDirectly(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic lambda$onPostExecute$1(Landroid/app/Activity;)V
    .locals 4

    .line 217
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object v0

    .line 218
    new-instance v1, Lcom/b44t/messenger/DcMsg;

    const/16 v2, 0xa

    invoke-direct {v1, v0, v2}, Lcom/b44t/messenger/DcMsg;-><init>(Lcom/b44t/messenger/DcContext;I)V

    .line 219
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\ud83d\udc49 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v3, 0x7f1202cb

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " \ud83d\udc48\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x7f1202f7

    .line 220
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 219
    invoke-virtual {v1, p0}, Lcom/b44t/messenger/DcMsg;->setText(Ljava/lang/String;)V

    const-string p0, "android.notifications-disabled"

    .line 221
    invoke-virtual {v0, p0, v1}, Lcom/b44t/messenger/DcContext;->addDeviceMsg(Ljava/lang/String;Lcom/b44t/messenger/DcMsg;)I

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 190
    check-cast p1, [Landroid/content/Context;

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/ConversationListFragment$2;->doInBackground([Landroid/content/Context;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Landroid/content/Context;)Ljava/lang/Void;
    .locals 1

    const/4 v0, 0x0

    .line 193
    aget-object p1, p1, v0

    .line 195
    :try_start_0
    invoke-static {p1}, Lorg/thoughtcrime/securesms/components/reminder/DozeReminder;->isEligible(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    invoke-static {p1}, Lorg/thoughtcrime/securesms/components/reminder/DozeReminder;->addDozeReminderDeviceMsg(Landroid/content/Context;)V

    .line 198
    :cond_0
    invoke-static {}, Lorg/thoughtcrime/securesms/notifications/FcmReceiveService;->waitForRegisterFinished()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 200
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 190
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/ConversationListFragment$2;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3

    .line 207
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x21

    if-lt p1, v0, :cond_1

    .line 208
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationListFragment$2;->val$activity:Landroid/app/Activity;

    const-string v0, "pref_asked_for_notification_permission"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lorg/thoughtcrime/securesms/util/Prefs;->getBooleanPreference(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_0

    .line 209
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationListFragment$2;->val$activity:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-static {p1, v0, v2}, Lorg/thoughtcrime/securesms/util/Prefs;->setBooleanPreference(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 210
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationListFragment$2;->val$activity:Landroid/app/Activity;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/permissions/Permissions;->with(Landroid/app/Activity;)Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/String;

    const-string v2, "android.permission.POST_NOTIFICATIONS"

    aput-object v2, v0, v1

    .line 211
    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->request([Ljava/lang/String;)Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object p1

    .line 212
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->ifNecessary()Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object p1

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationListFragment$2;->val$activity:Landroid/app/Activity;

    new-instance v1, Lorg/thoughtcrime/securesms/ConversationListFragment$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lorg/thoughtcrime/securesms/ConversationListFragment$2$$ExternalSyntheticLambda0;-><init>(Landroid/app/Activity;)V

    .line 213
    invoke-virtual {p1, v1}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->onAllGranted(Ljava/lang/Runnable;)Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object p1

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationListFragment$2;->val$activity:Landroid/app/Activity;

    new-instance v1, Lorg/thoughtcrime/securesms/ConversationListFragment$2$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lorg/thoughtcrime/securesms/ConversationListFragment$2$$ExternalSyntheticLambda1;-><init>(Landroid/app/Activity;)V

    .line 216
    invoke-virtual {p1, v1}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->onAnyDenied(Ljava/lang/Runnable;)Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object p1

    .line 223
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->execute()V

    goto :goto_0

    .line 225
    :cond_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationListFragment$2;->val$activity:Landroid/app/Activity;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/components/reminder/DozeReminder;->maybeAskDirectly(Landroid/content/Context;)V

    goto :goto_0

    .line 228
    :cond_1
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationListFragment$2;->val$activity:Landroid/app/Activity;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/components/reminder/DozeReminder;->maybeAskDirectly(Landroid/content/Context;)V

    :goto_0
    return-void
.end method
