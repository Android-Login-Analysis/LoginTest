.class Lorg/thoughtcrime/securesms/ProfileActivity$ProfilePagerAdapter;
.super Landroidx/fragment/app/FragmentStatePagerAdapter;
.source "ProfileActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/ProfileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProfilePagerAdapter"
.end annotation


# instance fields
.field private currentFragment:Ljava/lang/Object;

.field final synthetic this$0:Lorg/thoughtcrime/securesms/ProfileActivity;


# direct methods
.method constructor <init>(Lorg/thoughtcrime/securesms/ProfileActivity;Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lorg/thoughtcrime/securesms/ProfileActivity$ProfilePagerAdapter;->this$0:Lorg/thoughtcrime/securesms/ProfileActivity;

    .line 281
    invoke-direct {p0, p2}, Landroidx/fragment/app/FragmentStatePagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    const/4 p1, 0x0

    .line 278
    iput-object p1, p0, Lorg/thoughtcrime/securesms/ProfileActivity$ProfilePagerAdapter;->currentFragment:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 348
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileActivity$ProfilePagerAdapter;->this$0:Lorg/thoughtcrime/securesms/ProfileActivity;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/ProfileActivity;->access$000(Lorg/thoughtcrime/securesms/ProfileActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 6

    .line 303
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileActivity$ProfilePagerAdapter;->this$0:Lorg/thoughtcrime/securesms/ProfileActivity;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/ProfileActivity;->access$000(Lorg/thoughtcrime/securesms/ProfileActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 305
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/16 v1, 0xa

    const-string v2, "locale_extra"

    const-string v3, "chat_id"

    const/4 v4, -0x1

    if-eq p1, v1, :cond_7

    const/16 v1, 0x14

    if-eq p1, v1, :cond_5

    const/16 v1, 0x19

    const/4 v5, 0x1

    if-eq p1, v1, :cond_3

    const/16 v1, 0x23

    if-eq p1, v1, :cond_1

    .line 336
    new-instance p1, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;

    invoke-direct {p1}, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;-><init>()V

    .line 337
    iget-object v1, p0, Lorg/thoughtcrime/securesms/ProfileActivity$ProfilePagerAdapter;->this$0:Lorg/thoughtcrime/securesms/ProfileActivity;

    invoke-static {v1}, Lorg/thoughtcrime/securesms/ProfileActivity;->access$100(Lorg/thoughtcrime/securesms/ProfileActivity;)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/thoughtcrime/securesms/ProfileActivity$ProfilePagerAdapter;->this$0:Lorg/thoughtcrime/securesms/ProfileActivity;

    invoke-static {v1}, Lorg/thoughtcrime/securesms/ProfileActivity;->access$200(Lorg/thoughtcrime/securesms/ProfileActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/thoughtcrime/securesms/ProfileActivity$ProfilePagerAdapter;->this$0:Lorg/thoughtcrime/securesms/ProfileActivity;

    invoke-static {v1}, Lorg/thoughtcrime/securesms/ProfileActivity;->access$100(Lorg/thoughtcrime/securesms/ProfileActivity;)I

    move-result v4

    :goto_0
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 338
    iget-object v1, p0, Lorg/thoughtcrime/securesms/ProfileActivity$ProfilePagerAdapter;->this$0:Lorg/thoughtcrime/securesms/ProfileActivity;

    iget-object v1, v1, Lorg/thoughtcrime/securesms/ProfileActivity;->dynamicLanguage:Lorg/thoughtcrime/securesms/util/DynamicLanguage;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/util/DynamicLanguage;->getCurrentLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto/16 :goto_6

    .line 329
    :cond_1
    new-instance p1, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;

    invoke-direct {p1}, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;-><init>()V

    .line 330
    iget-object v1, p0, Lorg/thoughtcrime/securesms/ProfileActivity$ProfilePagerAdapter;->this$0:Lorg/thoughtcrime/securesms/ProfileActivity;

    invoke-static {v1}, Lorg/thoughtcrime/securesms/ProfileActivity;->access$100(Lorg/thoughtcrime/securesms/ProfileActivity;)I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/thoughtcrime/securesms/ProfileActivity$ProfilePagerAdapter;->this$0:Lorg/thoughtcrime/securesms/ProfileActivity;

    invoke-static {v1}, Lorg/thoughtcrime/securesms/ProfileActivity;->access$200(Lorg/thoughtcrime/securesms/ProfileActivity;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lorg/thoughtcrime/securesms/ProfileActivity$ProfilePagerAdapter;->this$0:Lorg/thoughtcrime/securesms/ProfileActivity;

    invoke-static {v1}, Lorg/thoughtcrime/securesms/ProfileActivity;->access$100(Lorg/thoughtcrime/securesms/ProfileActivity;)I

    move-result v4

    :goto_1
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "show_webxdc"

    .line 331
    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 332
    iget-object v1, p0, Lorg/thoughtcrime/securesms/ProfileActivity$ProfilePagerAdapter;->this$0:Lorg/thoughtcrime/securesms/ProfileActivity;

    iget-object v1, v1, Lorg/thoughtcrime/securesms/ProfileActivity;->dynamicLanguage:Lorg/thoughtcrime/securesms/util/DynamicLanguage;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/util/DynamicLanguage;->getCurrentLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto/16 :goto_6

    .line 322
    :cond_3
    new-instance p1, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;

    invoke-direct {p1}, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;-><init>()V

    .line 323
    iget-object v1, p0, Lorg/thoughtcrime/securesms/ProfileActivity$ProfilePagerAdapter;->this$0:Lorg/thoughtcrime/securesms/ProfileActivity;

    invoke-static {v1}, Lorg/thoughtcrime/securesms/ProfileActivity;->access$100(Lorg/thoughtcrime/securesms/ProfileActivity;)I

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lorg/thoughtcrime/securesms/ProfileActivity$ProfilePagerAdapter;->this$0:Lorg/thoughtcrime/securesms/ProfileActivity;

    invoke-static {v1}, Lorg/thoughtcrime/securesms/ProfileActivity;->access$200(Lorg/thoughtcrime/securesms/ProfileActivity;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lorg/thoughtcrime/securesms/ProfileActivity$ProfilePagerAdapter;->this$0:Lorg/thoughtcrime/securesms/ProfileActivity;

    invoke-static {v1}, Lorg/thoughtcrime/securesms/ProfileActivity;->access$100(Lorg/thoughtcrime/securesms/ProfileActivity;)I

    move-result v4

    :goto_2
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "show_audio"

    .line 324
    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 325
    iget-object v1, p0, Lorg/thoughtcrime/securesms/ProfileActivity$ProfilePagerAdapter;->this$0:Lorg/thoughtcrime/securesms/ProfileActivity;

    iget-object v1, v1, Lorg/thoughtcrime/securesms/ProfileActivity;->dynamicLanguage:Lorg/thoughtcrime/securesms/util/DynamicLanguage;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/util/DynamicLanguage;->getCurrentLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto/16 :goto_6

    .line 316
    :cond_5
    new-instance p1, Lorg/thoughtcrime/securesms/ProfileGalleryFragment;

    invoke-direct {p1}, Lorg/thoughtcrime/securesms/ProfileGalleryFragment;-><init>()V

    .line 317
    iget-object v1, p0, Lorg/thoughtcrime/securesms/ProfileActivity$ProfilePagerAdapter;->this$0:Lorg/thoughtcrime/securesms/ProfileActivity;

    invoke-static {v1}, Lorg/thoughtcrime/securesms/ProfileActivity;->access$100(Lorg/thoughtcrime/securesms/ProfileActivity;)I

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lorg/thoughtcrime/securesms/ProfileActivity$ProfilePagerAdapter;->this$0:Lorg/thoughtcrime/securesms/ProfileActivity;

    invoke-static {v1}, Lorg/thoughtcrime/securesms/ProfileActivity;->access$200(Lorg/thoughtcrime/securesms/ProfileActivity;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_3

    :cond_6
    iget-object v1, p0, Lorg/thoughtcrime/securesms/ProfileActivity$ProfilePagerAdapter;->this$0:Lorg/thoughtcrime/securesms/ProfileActivity;

    invoke-static {v1}, Lorg/thoughtcrime/securesms/ProfileActivity;->access$100(Lorg/thoughtcrime/securesms/ProfileActivity;)I

    move-result v4

    :goto_3
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 318
    iget-object v1, p0, Lorg/thoughtcrime/securesms/ProfileActivity$ProfilePagerAdapter;->this$0:Lorg/thoughtcrime/securesms/ProfileActivity;

    iget-object v1, v1, Lorg/thoughtcrime/securesms/ProfileActivity;->dynamicLanguage:Lorg/thoughtcrime/securesms/util/DynamicLanguage;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/util/DynamicLanguage;->getCurrentLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_6

    .line 309
    :cond_7
    new-instance p1, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;

    invoke-direct {p1}, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;-><init>()V

    .line 310
    iget-object v1, p0, Lorg/thoughtcrime/securesms/ProfileActivity$ProfilePagerAdapter;->this$0:Lorg/thoughtcrime/securesms/ProfileActivity;

    invoke-static {v1}, Lorg/thoughtcrime/securesms/ProfileActivity;->access$100(Lorg/thoughtcrime/securesms/ProfileActivity;)I

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lorg/thoughtcrime/securesms/ProfileActivity$ProfilePagerAdapter;->this$0:Lorg/thoughtcrime/securesms/ProfileActivity;

    invoke-static {v1}, Lorg/thoughtcrime/securesms/ProfileActivity;->access$200(Lorg/thoughtcrime/securesms/ProfileActivity;)Z

    move-result v1

    if-nez v1, :cond_8

    const/4 v1, -0x1

    goto :goto_4

    :cond_8
    iget-object v1, p0, Lorg/thoughtcrime/securesms/ProfileActivity$ProfilePagerAdapter;->this$0:Lorg/thoughtcrime/securesms/ProfileActivity;

    invoke-static {v1}, Lorg/thoughtcrime/securesms/ProfileActivity;->access$100(Lorg/thoughtcrime/securesms/ProfileActivity;)I

    move-result v1

    :goto_4
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 311
    iget-object v1, p0, Lorg/thoughtcrime/securesms/ProfileActivity$ProfilePagerAdapter;->this$0:Lorg/thoughtcrime/securesms/ProfileActivity;

    invoke-static {v1}, Lorg/thoughtcrime/securesms/ProfileActivity;->access$300(Lorg/thoughtcrime/securesms/ProfileActivity;)I

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lorg/thoughtcrime/securesms/ProfileActivity$ProfilePagerAdapter;->this$0:Lorg/thoughtcrime/securesms/ProfileActivity;

    invoke-static {v1}, Lorg/thoughtcrime/securesms/ProfileActivity;->access$200(Lorg/thoughtcrime/securesms/ProfileActivity;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_5

    :cond_9
    iget-object v1, p0, Lorg/thoughtcrime/securesms/ProfileActivity$ProfilePagerAdapter;->this$0:Lorg/thoughtcrime/securesms/ProfileActivity;

    invoke-static {v1}, Lorg/thoughtcrime/securesms/ProfileActivity;->access$300(Lorg/thoughtcrime/securesms/ProfileActivity;)I

    move-result v4

    :goto_5
    const-string v1, "contact_id"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 312
    iget-object v1, p0, Lorg/thoughtcrime/securesms/ProfileActivity$ProfilePagerAdapter;->this$0:Lorg/thoughtcrime/securesms/ProfileActivity;

    iget-object v1, v1, Lorg/thoughtcrime/securesms/ProfileActivity;->dynamicLanguage:Lorg/thoughtcrime/securesms/util/DynamicLanguage;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/util/DynamicLanguage;->getCurrentLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 342
    :goto_6
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    .line 353
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileActivity$ProfilePagerAdapter;->this$0:Lorg/thoughtcrime/securesms/ProfileActivity;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/ProfileActivity;->access$000(Lorg/thoughtcrime/securesms/ProfileActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_6

    const/16 v0, 0x14

    if-eq p1, v0, :cond_5

    const/16 v0, 0x19

    if-eq p1, v0, :cond_4

    const/16 v0, 0x1e

    if-eq p1, v0, :cond_3

    const/16 v0, 0x23

    if-eq p1, v0, :cond_2

    const/16 v0, 0x28

    if-eq p1, v0, :cond_1

    const/16 v0, 0x32

    if-ne p1, v0, :cond_0

    .line 386
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ProfileActivity$ProfilePagerAdapter;->this$0:Lorg/thoughtcrime/securesms/ProfileActivity;

    const v0, 0x7f120401

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 389
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 383
    :cond_1
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ProfileActivity$ProfilePagerAdapter;->this$0:Lorg/thoughtcrime/securesms/ProfileActivity;

    const v0, 0x7f120400

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 380
    :cond_2
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ProfileActivity$ProfilePagerAdapter;->this$0:Lorg/thoughtcrime/securesms/ProfileActivity;

    const v0, 0x7f120435

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 377
    :cond_3
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ProfileActivity$ProfilePagerAdapter;->this$0:Lorg/thoughtcrime/securesms/ProfileActivity;

    const v0, 0x7f120167

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 374
    :cond_4
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ProfileActivity$ProfilePagerAdapter;->this$0:Lorg/thoughtcrime/securesms/ProfileActivity;

    const v0, 0x7f120066

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 371
    :cond_5
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ProfileActivity$ProfilePagerAdapter;->this$0:Lorg/thoughtcrime/securesms/ProfileActivity;

    const v0, 0x7f1203fc

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 356
    :cond_6
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ProfileActivity$ProfilePagerAdapter;->this$0:Lorg/thoughtcrime/securesms/ProfileActivity;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/ProfileActivity;->access$400(Lorg/thoughtcrime/securesms/ProfileActivity;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 357
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ProfileActivity$ProfilePagerAdapter;->this$0:Lorg/thoughtcrime/securesms/ProfileActivity;

    const v0, 0x7f120373

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 358
    :cond_7
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ProfileActivity$ProfilePagerAdapter;->this$0:Lorg/thoughtcrime/securesms/ProfileActivity;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/ProfileActivity;->access$500(Lorg/thoughtcrime/securesms/ProfileActivity;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 359
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ProfileActivity$ProfilePagerAdapter;->this$0:Lorg/thoughtcrime/securesms/ProfileActivity;

    const v0, 0x7f1203f9

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 361
    :cond_8
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ProfileActivity$ProfilePagerAdapter;->this$0:Lorg/thoughtcrime/securesms/ProfileActivity;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/ProfileActivity;->access$600(Lorg/thoughtcrime/securesms/ProfileActivity;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 362
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ProfileActivity$ProfilePagerAdapter;->this$0:Lorg/thoughtcrime/securesms/ProfileActivity;

    const v0, 0x7f120093

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 364
    :cond_9
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ProfileActivity$ProfilePagerAdapter;->this$0:Lorg/thoughtcrime/securesms/ProfileActivity;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/ProfileActivity;->access$700(Lorg/thoughtcrime/securesms/ProfileActivity;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 365
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ProfileActivity$ProfilePagerAdapter;->this$0:Lorg/thoughtcrime/securesms/ProfileActivity;

    const v0, 0x7f12020a

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 367
    :cond_a
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ProfileActivity$ProfilePagerAdapter;->this$0:Lorg/thoughtcrime/securesms/ProfileActivity;

    const v0, 0x7f1203fe

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 286
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentStatePagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 287
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ProfileActivity$ProfilePagerAdapter;->currentFragment:Ljava/lang/Object;

    if-eqz p1, :cond_2

    if-eq p1, p3, :cond_2

    .line 289
    instance-of p2, p1, Lorg/thoughtcrime/securesms/MessageSelectorFragment;

    if-eqz p2, :cond_0

    .line 290
    check-cast p1, Lorg/thoughtcrime/securesms/MessageSelectorFragment;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/MessageSelectorFragment;->getActionMode()Landroidx/appcompat/view/ActionMode;

    move-result-object p1

    goto :goto_0

    .line 291
    :cond_0
    instance-of p2, p1, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;

    if-eqz p2, :cond_1

    .line 292
    check-cast p1, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;->getActionMode()Landroidx/appcompat/view/ActionMode;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 295
    invoke-virtual {p1}, Landroidx/appcompat/view/ActionMode;->finish()V

    .line 298
    :cond_2
    iput-object p3, p0, Lorg/thoughtcrime/securesms/ProfileActivity$ProfilePagerAdapter;->currentFragment:Ljava/lang/Object;

    return-void
.end method
