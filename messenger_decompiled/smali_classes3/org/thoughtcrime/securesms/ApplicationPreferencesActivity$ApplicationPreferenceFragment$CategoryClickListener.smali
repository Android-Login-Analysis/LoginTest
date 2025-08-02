.class Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment$CategoryClickListener;
.super Ljava/lang/Object;
.source "ApplicationPreferencesActivity.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CategoryClickListener"
.end annotation


# instance fields
.field private final category:Ljava/lang/String;

.field final synthetic this$0:Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment;


# direct methods
.method constructor <init>(Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment;Ljava/lang/String;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment$CategoryClickListener;->this$0:Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    iput-object p2, p0, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment$CategoryClickListener;->category:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method synthetic lambda$onPreferenceClick$0$org-thoughtcrime-securesms-ApplicationPreferencesActivity$ApplicationPreferenceFragment$CategoryClickListener(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 255
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment$CategoryClickListener;->this$0:Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p2, p0, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment$CategoryClickListener;->this$0:Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Lorg/thoughtcrime/securesms/permissions/Permissions;->getApplicationSettingsIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method synthetic lambda$onPreferenceClick$1$org-thoughtcrime-securesms-ApplicationPreferencesActivity$ApplicationPreferenceFragment$CategoryClickListener(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 277
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment$CategoryClickListener;->this$0:Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity;->showBackupProvider()V

    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 9

    .line 246
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment$CategoryClickListener;->category:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "preference_category_multidevice"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_1
    const-string v0, "preference_category_advanced"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_2
    const-string v0, "preference_category_notifications"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_3
    const-string v0, "preference_category_help"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_4
    const-string v0, "preference_category_connectivity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_5
    const-string v0, "preference_category_chats"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_6
    const-string v0, "preference_category_appearance"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v2, 0x0

    :goto_0
    const p1, 0x7f1202f1

    const/4 v0, 0x0

    packed-switch v2, :pswitch_data_0

    .line 290
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 270
    :pswitch_0
    iget-object v2, p0, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment$CategoryClickListener;->this$0:Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment;

    invoke-virtual {v2}, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment$CategoryClickListener;->this$0:Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment;

    const v4, 0x7f1202ae

    invoke-virtual {v3, v4}, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment$CategoryClickListener;->this$0:Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment;

    const v7, 0x7f1202ad

    .line 271
    invoke-virtual {v6, v7}, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment$CategoryClickListener;->this$0:Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment;

    const v8, 0x7f12011e

    invoke-virtual {v6, v8}, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x3e9

    .line 270
    invoke-static {v2, v3, v5, v6}, Lorg/thoughtcrime/securesms/util/ScreenLockUtil;->applyScreenLock(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_9

    .line 273
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v3, p0, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment$CategoryClickListener;->this$0:Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment;

    invoke-virtual {v3}, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 274
    invoke-virtual {v2, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    .line 275
    invoke-virtual {v2, v7}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment$CategoryClickListener$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment$CategoryClickListener$$ExternalSyntheticLambda1;-><init>(Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment$CategoryClickListener;)V

    .line 276
    invoke-virtual {v2, p1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v2, 0x7f120097

    .line 278
    invoke-virtual {p1, v2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 279
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    goto/16 :goto_2

    .line 284
    :pswitch_1
    new-instance p1, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;

    invoke-direct {p1}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;-><init>()V

    goto/16 :goto_3

    .line 248
    :pswitch_2
    iget-object v2, p0, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment$CategoryClickListener;->this$0:Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment;

    invoke-virtual {v2}, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v2

    .line 249
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x21

    if-lt v3, v4, :cond_8

    invoke-virtual {v2}, Landroidx/core/app/NotificationManagerCompat;->areNotificationsEnabled()Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_1

    .line 252
    :cond_7
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v3, p0, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment$CategoryClickListener;->this$0:Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment;

    invoke-virtual {v3}, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f1202cb

    .line 253
    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f1202f7

    .line 254
    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment$CategoryClickListener$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment$CategoryClickListener$$ExternalSyntheticLambda0;-><init>(Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment$CategoryClickListener;)V

    .line 255
    invoke-virtual {v2, p1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v2, 0x1040000

    .line 256
    invoke-virtual {p1, v2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 257
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    goto :goto_2

    .line 250
    :cond_8
    :goto_1
    new-instance p1, Lorg/thoughtcrime/securesms/preferences/NotificationsPreferenceFragment;

    invoke-direct {p1}, Lorg/thoughtcrime/securesms/preferences/NotificationsPreferenceFragment;-><init>()V

    goto :goto_3

    .line 287
    :pswitch_3
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment$CategoryClickListener;->this$0:Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment$CategoryClickListener;->this$0:Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment;

    invoke-virtual {v3}, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lorg/thoughtcrime/securesms/LocalHelpActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v2}, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 261
    :pswitch_4
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment$CategoryClickListener;->this$0:Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment$CategoryClickListener;->this$0:Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment;

    invoke-virtual {v3}, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lorg/thoughtcrime/securesms/ConnectivityActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v2}, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment;->startActivity(Landroid/content/Intent;)V

    :cond_9
    :goto_2
    move-object p1, v0

    goto :goto_3

    .line 267
    :pswitch_5
    new-instance p1, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;

    invoke-direct {p1}, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;-><init>()V

    goto :goto_3

    .line 264
    :pswitch_6
    new-instance p1, Lorg/thoughtcrime/securesms/preferences/AppearancePreferenceFragment;

    invoke-direct {p1}, Lorg/thoughtcrime/securesms/preferences/AppearancePreferenceFragment;-><init>()V

    :goto_3
    if-eqz p1, :cond_a

    .line 294
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 295
    invoke-virtual {p1, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 297
    iget-object v2, p0, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment$CategoryClickListener;->this$0:Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment;

    invoke-virtual {v2}, Lorg/thoughtcrime/securesms/ApplicationPreferencesActivity$ApplicationPreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    .line 298
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    const v3, 0x1020002

    .line 299
    invoke-virtual {v2, v3, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 300
    invoke-virtual {v2, v0}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 301
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_a
    return v1

    :sswitch_data_0
    .sparse-switch
        -0x7168c71f -> :sswitch_6
        -0x60223e82 -> :sswitch_5
        -0x4bca450c -> :sswitch_4
        0x2632ad7e -> :sswitch_3
        0x3c8e6b4b -> :sswitch_2
        0x4e65dfdf -> :sswitch_1
        0x592177f2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
