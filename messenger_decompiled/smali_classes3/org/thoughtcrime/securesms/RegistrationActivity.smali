.class public Lorg/thoughtcrime/securesms/RegistrationActivity;
.super Lorg/thoughtcrime/securesms/BaseActionBarActivity;
.source "RegistrationActivity.java"

# interfaces
.implements Lorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/RegistrationActivity$VerificationType;,
        Lorg/thoughtcrime/securesms/RegistrationActivity$PrecheckOauth2AsyncTask;
    }
.end annotation


# instance fields
.field private advancedGroup:Landroidx/constraintlayout/widget/Group;

.field private advancedIcon:Landroid/widget/ImageView;

.field authMethod:Landroid/widget/Spinner;

.field certCheck:Landroid/widget/Spinner;

.field private final dynamicTheme:Lorg/thoughtcrime/securesms/util/DynamicTheme;

.field private emailInput:Lcom/google/android/material/textfield/TextInputEditText;

.field private encryptCheckbox:Landroid/widget/CheckBox;

.field imapSecurity:Landroid/widget/Spinner;

.field private oauth2DeclinedByUser:Z

.field private oauth2Requested:J

.field private passwordInput:Lcom/google/android/material/textfield/TextInputEditText;

.field private progressDialog:Lorg/thoughtcrime/securesms/util/views/ProgressDialog;

.field private provider:Lcom/b44t/messenger/DcProvider;

.field private providerHint:Landroid/widget/TextView;

.field private providerLayout:Landroid/view/View;

.field private providerLink:Landroid/widget/TextView;

.field private proxyGroup:Landroidx/constraintlayout/widget/Group;

.field private proxySwitch:Landroidx/appcompat/widget/SwitchCompat;

.field smtpSecurity:Landroid/widget/Spinner;


# direct methods
.method public static synthetic $r8$lambda$hn_n7z3nNzkSB56Dgw5KqFV4dh8(Lorg/thoughtcrime/securesms/RegistrationActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/thoughtcrime/securesms/RegistrationActivity;->continueLogin()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 73
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/BaseActionBarActivity;-><init>()V

    .line 81
    new-instance v0, Lorg/thoughtcrime/securesms/util/DynamicTheme;

    invoke-direct {v0}, Lorg/thoughtcrime/securesms/util/DynamicTheme;-><init>()V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/RegistrationActivity;->dynamicTheme:Lorg/thoughtcrime/securesms/util/DynamicTheme;

    const-wide/16 v0, 0x0

    .line 347
    iput-wide v0, p0, Lorg/thoughtcrime/securesms/RegistrationActivity;->oauth2Requested:J

    const/4 v0, 0x0

    .line 352
    iput-boolean v0, p0, Lorg/thoughtcrime/securesms/RegistrationActivity;->oauth2DeclinedByUser:Z

    return-void
.end method

.method static synthetic access$000(Lorg/thoughtcrime/securesms/RegistrationActivity;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/RegistrationActivity;->maybeCleanProviderInfo()V

    return-void
.end method

.method static synthetic access$100(Lorg/thoughtcrime/securesms/RegistrationActivity;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/RegistrationActivity;->updateProviderInfo()V

    return-void
.end method

.method static synthetic access$200(Lorg/thoughtcrime/securesms/RegistrationActivity;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/RegistrationActivity;->onLogin()V

    return-void
.end method

.method static synthetic access$302(Lorg/thoughtcrime/securesms/RegistrationActivity;J)J
    .locals 0

    .line 73
    iput-wide p1, p0, Lorg/thoughtcrime/securesms/RegistrationActivity;->oauth2Requested:J

    return-wide p1
.end method

.method static synthetic access$402(Lorg/thoughtcrime/securesms/RegistrationActivity;Z)Z
    .locals 0

    .line 73
    iput-boolean p1, p0, Lorg/thoughtcrime/securesms/RegistrationActivity;->oauth2DeclinedByUser:Z

    return p1
.end method

.method private checkOauth2start()Lcom/b44t/messenger/util/concurrent/ListenableFuture;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/b44t/messenger/util/concurrent/ListenableFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 358
    new-instance v0, Lcom/b44t/messenger/util/concurrent/SettableFuture;

    invoke-direct {v0}, Lcom/b44t/messenger/util/concurrent/SettableFuture;-><init>()V

    .line 360
    iget-object v1, p0, Lorg/thoughtcrime/securesms/RegistrationActivity;->emailInput:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 361
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 362
    new-instance v2, Lorg/thoughtcrime/securesms/RegistrationActivity$PrecheckOauth2AsyncTask;

    invoke-direct {v2, p0, v1, v0}, Lorg/thoughtcrime/securesms/RegistrationActivity$PrecheckOauth2AsyncTask;-><init>(Lorg/thoughtcrime/securesms/RegistrationActivity;Ljava/lang/String;Lcom/b44t/messenger/util/concurrent/SettableFuture;)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v1}, Lorg/thoughtcrime/securesms/RegistrationActivity$PrecheckOauth2AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 365
    :cond_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b44t/messenger/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    :goto_0
    return-object v0
.end method

.method private continueLogin()V
    .locals 4

    .line 579
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/RegistrationActivity;->setupConfig()V

    .line 581
    iget-object v0, p0, Lorg/thoughtcrime/securesms/RegistrationActivity;->progressDialog:Lorg/thoughtcrime/securesms/util/views/ProgressDialog;

    if-eqz v0, :cond_0

    .line 582
    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    .line 583
    iput-object v0, p0, Lorg/thoughtcrime/securesms/RegistrationActivity;->progressDialog:Lorg/thoughtcrime/securesms/util/views/ProgressDialog;

    .line 586
    :cond_0
    new-instance v0, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/RegistrationActivity;->progressDialog:Lorg/thoughtcrime/securesms/util/views/ProgressDialog;

    const v1, 0x7f1202dd

    .line 587
    invoke-virtual {p0, v1}, Lorg/thoughtcrime/securesms/RegistrationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 588
    iget-object v0, p0, Lorg/thoughtcrime/securesms/RegistrationActivity;->progressDialog:Lorg/thoughtcrime/securesms/util/views/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 589
    iget-object v0, p0, Lorg/thoughtcrime/securesms/RegistrationActivity;->progressDialog:Lorg/thoughtcrime/securesms/util/views/ProgressDialog;

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;->setCancelable(Z)V

    .line 590
    iget-object v0, p0, Lorg/thoughtcrime/securesms/RegistrationActivity;->progressDialog:Lorg/thoughtcrime/securesms/util/views/ProgressDialog;

    const/high16 v1, 0x1040000

    invoke-virtual {p0, v1}, Lorg/thoughtcrime/securesms/RegistrationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/thoughtcrime/securesms/RegistrationActivity$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lorg/thoughtcrime/securesms/RegistrationActivity$$ExternalSyntheticLambda7;-><init>(Lorg/thoughtcrime/securesms/RegistrationActivity;)V

    const/4 v3, -0x2

    invoke-virtual {v0, v3, v1, v2}, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 591
    iget-object v0, p0, Lorg/thoughtcrime/securesms/RegistrationActivity;->progressDialog:Lorg/thoughtcrime/securesms/util/views/ProgressDialog;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;->show()V

    return-void
.end method

.method private do_register()V
    .locals 2

    .line 284
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/RegistrationActivity;->checkOauth2start()Lcom/b44t/messenger/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v1, Lorg/thoughtcrime/securesms/RegistrationActivity$2;

    invoke-direct {v1, p0}, Lorg/thoughtcrime/securesms/RegistrationActivity$2;-><init>(Lorg/thoughtcrime/securesms/RegistrationActivity;)V

    invoke-interface {v0, v1}, Lcom/b44t/messenger/util/concurrent/ListenableFuture;->addListener(Lcom/b44t/messenger/util/concurrent/ListenableFuture$Listener;)V

    return-void
.end method

.method private focusListener(Landroid/view/View;ZLorg/thoughtcrime/securesms/RegistrationActivity$VerificationType;)V
    .locals 0

    if-nez p2, :cond_4

    .line 315
    check-cast p1, Lcom/google/android/material/textfield/TextInputEditText;

    .line 316
    sget-object p2, Lorg/thoughtcrime/securesms/RegistrationActivity$4;->$SwitchMap$org$thoughtcrime$securesms$RegistrationActivity$VerificationType:[I

    invoke-virtual {p3}, Lorg/thoughtcrime/securesms/RegistrationActivity$VerificationType;->ordinal()I

    move-result p3

    aget p2, p2, p3

    const/4 p3, 0x1

    if-eq p2, p3, :cond_2

    const/4 p3, 0x2

    if-eq p2, p3, :cond_1

    const/4 p3, 0x3

    if-eq p2, p3, :cond_0

    goto :goto_0

    .line 341
    :cond_0
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/RegistrationActivity;->verifyPort(Lcom/google/android/material/textfield/TextInputEditText;)V

    goto :goto_0

    .line 338
    :cond_1
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/RegistrationActivity;->verifyServer(Lcom/google/android/material/textfield/TextInputEditText;)V

    goto :goto_0

    .line 318
    :cond_2
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/RegistrationActivity;->verifyEmail(Lcom/google/android/material/textfield/TextInputEditText;)V

    .line 319
    iget-boolean p1, p0, Lorg/thoughtcrime/securesms/RegistrationActivity;->oauth2DeclinedByUser:Z

    if-nez p1, :cond_3

    .line 320
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/RegistrationActivity;->checkOauth2start()Lcom/b44t/messenger/util/concurrent/ListenableFuture;

    move-result-object p1

    new-instance p2, Lorg/thoughtcrime/securesms/RegistrationActivity$3;

    invoke-direct {p2, p0}, Lorg/thoughtcrime/securesms/RegistrationActivity$3;-><init>(Lorg/thoughtcrime/securesms/RegistrationActivity;)V

    invoke-interface {p1, p2}, Lcom/b44t/messenger/util/concurrent/ListenableFuture;->addListener(Lcom/b44t/messenger/util/concurrent/ListenableFuture$Listener;)V

    goto :goto_0

    .line 334
    :cond_3
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/RegistrationActivity;->updateProviderInfo()V

    :cond_4
    :goto_0
    return-void
.end method

.method static synthetic lambda$onOptionsItemSelected$12(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method private maybeCleanProviderInfo()V
    .locals 2

    .line 454
    iget-object v0, p0, Lorg/thoughtcrime/securesms/RegistrationActivity;->provider:Lcom/b44t/messenger/DcProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/thoughtcrime/securesms/RegistrationActivity;->providerLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 455
    iput-object v0, p0, Lorg/thoughtcrime/securesms/RegistrationActivity;->provider:Lcom/b44t/messenger/DcProvider;

    .line 456
    iget-object v0, p0, Lorg/thoughtcrime/securesms/RegistrationActivity;->providerLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private onAdvancedSettings()V
    .locals 2

    .line 532
    iget-object v0, p0, Lorg/thoughtcrime/securesms/RegistrationActivity;->advancedGroup:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/Group;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 534
    iget-object v0, p0, Lorg/thoughtcrime/securesms/RegistrationActivity;->proxyGroup:Landroidx/constraintlayout/widget/Group;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 535
    iget-object v0, p0, Lorg/thoughtcrime/securesms/RegistrationActivity;->advancedGroup:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 536
    iget-object v0, p0, Lorg/thoughtcrime/securesms/RegistrationActivity;->advancedIcon:Landroid/widget/ImageView;

    const/high16 v1, 0x42340000    # 45.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    goto :goto_1

    .line 538
    :cond_1
    iget-object v0, p0, Lorg/thoughtcrime/securesms/RegistrationActivity;->advancedGroup:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 539
    iget-object v0, p0, Lorg/thoughtcrime/securesms/RegistrationActivity;->proxySwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/thoughtcrime/securesms/RegistrationActivity;->proxyGroup:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 540
    :cond_2
    iget-object v0, p0, Lorg/thoughtcrime/securesms/RegistrationActivity;->advancedIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    :goto_1
    return-void
.end method

.method private onLogin()V
    .locals 3

    .line 545
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/RegistrationActivity;->verifyRequiredFields()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f1201de

    const/4 v1, 0x1

    .line 546
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 550
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/RegistrationActivity;->encryptCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 551
    invoke-static {}, Lorg/thoughtcrime/securesms/connect/AccountManager;->getInstance()Lorg/thoughtcrime/securesms/connect/AccountManager;

    move-result-object v0

    .line 553
    iget-object v1, p0, Lorg/thoughtcrime/securesms/RegistrationActivity;->progressDialog:Lorg/thoughtcrime/securesms/util/views/ProgressDialog;

    if-eqz v1, :cond_1

    .line 554
    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;->dismiss()V

    const/4 v1, 0x0

    .line 555
    iput-object v1, p0, Lorg/thoughtcrime/securesms/RegistrationActivity;->progressDialog:Lorg/thoughtcrime/securesms/util/views/ProgressDialog;

    .line 558
    :cond_1
    new-instance v1, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;

    invoke-direct {v1, p0}, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/thoughtcrime/securesms/RegistrationActivity;->progressDialog:Lorg/thoughtcrime/securesms/util/views/ProgressDialog;

    const v2, 0x7f1202dd

    .line 559
    invoke-virtual {p0, v2}, Lorg/thoughtcrime/securesms/RegistrationActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 560
    iget-object v1, p0, Lorg/thoughtcrime/securesms/RegistrationActivity;->progressDialog:Lorg/thoughtcrime/securesms/util/views/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 561
    iget-object v1, p0, Lorg/thoughtcrime/securesms/RegistrationActivity;->progressDialog:Lorg/thoughtcrime/securesms/util/views/ProgressDialog;

    invoke-virtual {v1, v2}, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;->setCancelable(Z)V

    .line 562
    iget-object v1, p0, Lorg/thoughtcrime/securesms/RegistrationActivity;->progressDialog:Lorg/thoughtcrime/securesms/util/views/ProgressDialog;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;->show()V

    .line 565
    iget-object v1, p0, Lorg/thoughtcrime/securesms/RegistrationActivity;->encryptCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 566
    new-instance v1, Lorg/thoughtcrime/securesms/RegistrationActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, v0}, Lorg/thoughtcrime/securesms/RegistrationActivity$$ExternalSyntheticLambda4;-><init>(Lorg/thoughtcrime/securesms/RegistrationActivity;Lorg/thoughtcrime/securesms/connect/AccountManager;)V

    invoke-static {v1}, Lorg/thoughtcrime/securesms/util/Util;->runOnBackground(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 574
    :cond_2
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/RegistrationActivity;->continueLogin()V

    :goto_0
    return-void
.end method

.method private onProviderLink()V
    .locals 4

    .line 461
    iget-object v0, p0, Lorg/thoughtcrime/securesms/RegistrationActivity;->provider:Lcom/b44t/messenger/DcProvider;

    if-eqz v0, :cond_1

    .line 462
    invoke-virtual {v0}, Lcom/b44t/messenger/DcProvider;->getOverviewPage()Ljava/lang/String;

    move-result-object v0

    .line 463
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 465
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lorg/thoughtcrime/securesms/RegistrationActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const v0, 0x7f1202c1

    .line 467
    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    const-string v0, "ErrProviderWithoutUrl"

    .line 471
    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method private registerForEvents()V
    .locals 2

    .line 232
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getEventCenter(Landroid/content/Context;)Lorg/thoughtcrime/securesms/connect/DcEventCenter;

    move-result-object v0

    const/16 v1, 0x7f9

    invoke-virtual {v0, v1, p0}, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->addObserver(ILorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)V

    return-void
.end method

.method private setConfig(ILjava/lang/String;Z)V
    .locals 1

    .line 638
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/RegistrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textfield/TextInputEditText;

    .line 639
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p3, :cond_0

    .line 641
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 643
    :cond_0
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object p3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    :cond_1
    invoke-virtual {p3, p2, p1}, Lcom/b44t/messenger/DcContext;->setConfig(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setupConfig()V
    .locals 5

    const v0, 0x7f09010d

    const-string v1, "addr"

    const/4 v2, 0x1

    .line 601
    invoke-direct {p0, v0, v1, v2}, Lorg/thoughtcrime/securesms/RegistrationActivity;->setConfig(ILjava/lang/String;Z)V

    const v0, 0x7f09028e

    const-string v1, "mail_pw"

    const/4 v3, 0x0

    .line 602
    invoke-direct {p0, v0, v1, v3}, Lorg/thoughtcrime/securesms/RegistrationActivity;->setConfig(ILjava/lang/String;Z)V

    const v0, 0x7f09018f

    const-string v1, "mail_server"

    .line 603
    invoke-direct {p0, v0, v1, v2}, Lorg/thoughtcrime/securesms/RegistrationActivity;->setConfig(ILjava/lang/String;Z)V

    const v0, 0x7f09018b

    const-string v1, "mail_port"

    .line 604
    invoke-direct {p0, v0, v1, v2}, Lorg/thoughtcrime/securesms/RegistrationActivity;->setConfig(ILjava/lang/String;Z)V

    const v0, 0x7f090189

    const-string v1, "mail_user"

    .line 605
    invoke-direct {p0, v0, v1, v3}, Lorg/thoughtcrime/securesms/RegistrationActivity;->setConfig(ILjava/lang/String;Z)V

    const v0, 0x7f09034b

    const-string v1, "send_server"

    .line 606
    invoke-direct {p0, v0, v1, v2}, Lorg/thoughtcrime/securesms/RegistrationActivity;->setConfig(ILjava/lang/String;Z)V

    const v0, 0x7f090347

    const-string v1, "send_port"

    .line 607
    invoke-direct {p0, v0, v1, v2}, Lorg/thoughtcrime/securesms/RegistrationActivity;->setConfig(ILjava/lang/String;Z)V

    const v0, 0x7f090343

    const-string v1, "send_user"

    .line 608
    invoke-direct {p0, v0, v1, v3}, Lorg/thoughtcrime/securesms/RegistrationActivity;->setConfig(ILjava/lang/String;Z)V

    const v0, 0x7f090345

    const-string v1, "send_pw"

    .line 609
    invoke-direct {p0, v0, v1, v3}, Lorg/thoughtcrime/securesms/RegistrationActivity;->setConfig(ILjava/lang/String;Z)V

    .line 610
    iget-object v0, p0, Lorg/thoughtcrime/securesms/RegistrationActivity;->proxySwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result v0

    const-string v1, "socks5_enabled"

    if-eqz v0, :cond_0

    .line 611
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/b44t/messenger/DcContext;->setConfigInt(Ljava/lang/String;I)V

    const v0, 0x7f090353

    const-string v1, "socks5_host"

    .line 612
    invoke-direct {p0, v0, v1, v2}, Lorg/thoughtcrime/securesms/RegistrationActivity;->setConfig(ILjava/lang/String;Z)V

    const v0, 0x7f090357

    const-string v1, "socks5_port"

    .line 613
    invoke-direct {p0, v0, v1, v2}, Lorg/thoughtcrime/securesms/RegistrationActivity;->setConfig(ILjava/lang/String;Z)V

    const v0, 0x7f09035a

    const-string v1, "socks5_user"

    .line 614
    invoke-direct {p0, v0, v1, v2}, Lorg/thoughtcrime/securesms/RegistrationActivity;->setConfig(ILjava/lang/String;Z)V

    const v0, 0x7f090355

    const-string v1, "socks5_password"

    .line 615
    invoke-direct {p0, v0, v1, v3}, Lorg/thoughtcrime/securesms/RegistrationActivity;->setConfig(ILjava/lang/String;Z)V

    goto :goto_0

    .line 617
    :cond_0
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object v0

    invoke-virtual {v0, v1, v3}, Lcom/b44t/messenger/DcContext;->setConfigInt(Ljava/lang/String;I)V

    .line 620
    :goto_0
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object v0

    iget-object v1, p0, Lorg/thoughtcrime/securesms/RegistrationActivity;->imapSecurity:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    const-string v4, "mail_security"

    invoke-virtual {v0, v4, v1}, Lcom/b44t/messenger/DcContext;->setConfigInt(Ljava/lang/String;I)V

    .line 621
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object v0

    iget-object v1, p0, Lorg/thoughtcrime/securesms/RegistrationActivity;->smtpSecurity:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    const-string v4, "send_security"

    invoke-virtual {v0, v4, v1}, Lcom/b44t/messenger/DcContext;->setConfigInt(Ljava/lang/String;I)V

    .line 624
    iget-object v0, p0, Lorg/thoughtcrime/securesms/RegistrationActivity;->authMethod:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-ne v0, v2, :cond_1

    const/4 v3, 0x2

    .line 625
    :cond_1
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object v0

    const-string v1, "server_flags"

    invoke-virtual {v0, v1, v3}, Lcom/b44t/messenger/DcContext;->setConfigInt(Ljava/lang/String;I)V

    .line 627
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object v0

    iget-object v1, p0, Lorg/thoughtcrime/securesms/RegistrationActivity;->certCheck:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    const-string v2, "smtp_certificate_checks"

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setConfigInt(Ljava/lang/String;I)V

    .line 628
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object v0

    iget-object v1, p0, Lorg/thoughtcrime/securesms/RegistrationActivity;->certCheck:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    const-string v2, "imap_certificate_checks"

    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setConfigInt(Ljava/lang/String;I)V

    .line 632
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getAccounts(Landroid/content/Context;)Lcom/b44t/messenger/DcAccounts;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b44t/messenger/DcAccounts;->stopIo()V

    .line 633
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getEventCenter(Landroid/content/Context;)Lorg/thoughtcrime/securesms/connect/DcEventCenter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->captureNextError()V

    .line 634
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b44t/messenger/DcContext;->configure()V

    return-void
.end method

.method private showLog()V
    .locals 3

    .line 242
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/RegistrationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lorg/thoughtcrime/securesms/LogViewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 243
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/RegistrationActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private stopLoginProcess()V
    .locals 1

    .line 647
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b44t/messenger/DcContext;->stopOngoingProcess()V

    return-void
.end method

.method private updateProviderInfo()V
    .locals 1

    .line 421
    new-instance v0, Lorg/thoughtcrime/securesms/RegistrationActivity$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/RegistrationActivity$$ExternalSyntheticLambda5;-><init>(Lorg/thoughtcrime/securesms/RegistrationActivity;)V

    invoke-static {v0}, Lorg/thoughtcrime/securesms/util/Util;->runOnBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method private verifyEmail(Lcom/google/android/material/textfield/TextInputEditText;)V
    .locals 3

    const v0, 0x7f1201db

    .line 498
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/RegistrationActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 499
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 500
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/b44t/messenger/DcContext;->mayBeValidAddr(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 501
    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputEditText;->setError(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private verifyPort(Lcom/google/android/material/textfield/TextInputEditText;)V
    .locals 3

    const v0, 0x7f1201dd

    .line 517
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/RegistrationActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 518
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 519
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 521
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    const v2, 0xffff

    if-le v1, v2, :cond_1

    .line 523
    :cond_0
    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputEditText;->setError(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 526
    :catch_0
    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputEditText;->setError(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private verifyRequiredFields()Z
    .locals 2

    .line 595
    iget-object v0, p0, Lorg/thoughtcrime/securesms/RegistrationActivity;->emailInput:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 596
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/b44t/messenger/DcContext;->mayBeValidAddr(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/thoughtcrime/securesms/RegistrationActivity;->passwordInput:Lcom/google/android/material/textfield/TextInputEditText;

    .line 597
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private verifyServer(Lcom/google/android/material/textfield/TextInputEditText;)V
    .locals 3

    const v0, 0x7f1201df

    .line 506
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/RegistrationActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 507
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 508
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Landroid/util/Patterns;->DOMAIN_NAME:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Landroid/util/Patterns;->IP_ADDRESS:Ljava/util/regex/Pattern;

    .line 509
    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    .line 510
    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "localhost"

    .line 511
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 512
    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputEditText;->setError(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public handleEvent(Lcom/b44t/messenger/DcEvent;)V
    .locals 5

    .line 652
    invoke-virtual {p1}, Lcom/b44t/messenger/DcEvent;->getId()I

    move-result v0

    const/16 v1, 0x7f9

    if-ne v0, v1, :cond_2

    .line 653
    invoke-virtual {p1}, Lcom/b44t/messenger/DcEvent;->getData1Int()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 655
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getAccounts(Landroid/content/Context;)Lcom/b44t/messenger/DcAccounts;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b44t/messenger/DcAccounts;->startIo()V

    .line 656
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getEventCenter(Landroid/content/Context;)Lorg/thoughtcrime/securesms/connect/DcEventCenter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->endCaptureNextError()V

    .line 657
    iget-object v0, p0, Lorg/thoughtcrime/securesms/RegistrationActivity;->progressDialog:Lorg/thoughtcrime/securesms/util/views/ProgressDialog;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;->dismiss()V

    .line 658
    invoke-virtual {p1}, Lcom/b44t/messenger/DcEvent;->getData2Str()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/thoughtcrime/securesms/WelcomeActivity;->maybeShowConfigurationError(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x3e8

    cmp-long p1, v0, v2

    if-gez p1, :cond_1

    long-to-int p1, v0

    .line 661
    div-int/lit8 p1, p1, 0xa

    .line 662
    iget-object v0, p0, Lorg/thoughtcrime/securesms/RegistrationActivity;->progressDialog:Lorg/thoughtcrime/securesms/util/views/ProgressDialog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/RegistrationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1202dd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, " %d%%"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    cmp-long p1, v0, v2

    if-nez p1, :cond_2

    .line 665
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getAccounts(Landroid/content/Context;)Lcom/b44t/messenger/DcAccounts;

    move-result-object p1

    invoke-virtual {p1}, Lcom/b44t/messenger/DcAccounts;->startIo()V

    .line 666
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getEventCenter(Landroid/content/Context;)Lorg/thoughtcrime/securesms/connect/DcEventCenter;

    move-result-object p1

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->endCaptureNextError()V

    .line 667
    iget-object p1, p0, Lorg/thoughtcrime/securesms/RegistrationActivity;->progressDialog:Lorg/thoughtcrime/securesms/util/views/ProgressDialog;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;->dismiss()V

    .line 668
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/RegistrationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lorg/thoughtcrime/securesms/ConversationListActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 669
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/RegistrationActivity;->startActivity(Landroid/content/Intent;)V

    .line 670
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/RegistrationActivity;->finish()V

    :cond_2
    :goto_0
    return-void
.end method

.method synthetic lambda$continueLogin$17$org-thoughtcrime-securesms-RegistrationActivity(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 590
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/RegistrationActivity;->stopLoginProcess()V

    return-void
.end method

.method synthetic lambda$onCreate$0$org-thoughtcrime-securesms-RegistrationActivity(Landroid/view/View;)V
    .locals 0

    .line 118
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/RegistrationActivity;->onProviderLink()V

    return-void
.end method

.method synthetic lambda$onCreate$1$org-thoughtcrime-securesms-RegistrationActivity(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 139
    iget-object p1, p0, Lorg/thoughtcrime/securesms/RegistrationActivity;->proxyGroup:Landroidx/constraintlayout/widget/Group;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/thoughtcrime/securesms/RegistrationActivity;->advancedGroup:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {p2}, Landroidx/constraintlayout/widget/Group;->getVisibility()I

    move-result p2

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    :goto_0
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    return-void
.end method

.method synthetic lambda$onCreate$10$org-thoughtcrime-securesms-RegistrationActivity(Landroid/view/View;)V
    .locals 0

    .line 167
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/RegistrationActivity;->onAdvancedSettings()V

    return-void
.end method

.method synthetic lambda$onCreate$11$org-thoughtcrime-securesms-RegistrationActivity(Landroid/view/View;)V
    .locals 0

    .line 169
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/RegistrationActivity;->showLog()V

    return-void
.end method

.method synthetic lambda$onCreate$2$org-thoughtcrime-securesms-RegistrationActivity(Landroid/view/View;Z)V
    .locals 1

    .line 143
    sget-object v0, Lorg/thoughtcrime/securesms/RegistrationActivity$VerificationType;->SERVER:Lorg/thoughtcrime/securesms/RegistrationActivity$VerificationType;

    invoke-direct {p0, p1, p2, v0}, Lorg/thoughtcrime/securesms/RegistrationActivity;->focusListener(Landroid/view/View;ZLorg/thoughtcrime/securesms/RegistrationActivity$VerificationType;)V

    return-void
.end method

.method synthetic lambda$onCreate$3$org-thoughtcrime-securesms-RegistrationActivity(Landroid/view/View;Z)V
    .locals 1

    .line 144
    sget-object v0, Lorg/thoughtcrime/securesms/RegistrationActivity$VerificationType;->PORT:Lorg/thoughtcrime/securesms/RegistrationActivity$VerificationType;

    invoke-direct {p0, p1, p2, v0}, Lorg/thoughtcrime/securesms/RegistrationActivity;->focusListener(Landroid/view/View;ZLorg/thoughtcrime/securesms/RegistrationActivity$VerificationType;)V

    return-void
.end method

.method synthetic lambda$onCreate$4$org-thoughtcrime-securesms-RegistrationActivity(Landroid/view/View;Z)V
    .locals 1

    .line 161
    sget-object v0, Lorg/thoughtcrime/securesms/RegistrationActivity$VerificationType;->EMAIL:Lorg/thoughtcrime/securesms/RegistrationActivity$VerificationType;

    invoke-direct {p0, p1, p2, v0}, Lorg/thoughtcrime/securesms/RegistrationActivity;->focusListener(Landroid/view/View;ZLorg/thoughtcrime/securesms/RegistrationActivity$VerificationType;)V

    return-void
.end method

.method synthetic lambda$onCreate$5$org-thoughtcrime-securesms-RegistrationActivity(Landroid/view/View;Z)V
    .locals 1

    .line 162
    sget-object v0, Lorg/thoughtcrime/securesms/RegistrationActivity$VerificationType;->SERVER:Lorg/thoughtcrime/securesms/RegistrationActivity$VerificationType;

    invoke-direct {p0, p1, p2, v0}, Lorg/thoughtcrime/securesms/RegistrationActivity;->focusListener(Landroid/view/View;ZLorg/thoughtcrime/securesms/RegistrationActivity$VerificationType;)V

    return-void
.end method

.method synthetic lambda$onCreate$6$org-thoughtcrime-securesms-RegistrationActivity(Landroid/view/View;Z)V
    .locals 1

    .line 163
    sget-object v0, Lorg/thoughtcrime/securesms/RegistrationActivity$VerificationType;->PORT:Lorg/thoughtcrime/securesms/RegistrationActivity$VerificationType;

    invoke-direct {p0, p1, p2, v0}, Lorg/thoughtcrime/securesms/RegistrationActivity;->focusListener(Landroid/view/View;ZLorg/thoughtcrime/securesms/RegistrationActivity$VerificationType;)V

    return-void
.end method

.method synthetic lambda$onCreate$7$org-thoughtcrime-securesms-RegistrationActivity(Landroid/view/View;Z)V
    .locals 1

    .line 164
    sget-object v0, Lorg/thoughtcrime/securesms/RegistrationActivity$VerificationType;->SERVER:Lorg/thoughtcrime/securesms/RegistrationActivity$VerificationType;

    invoke-direct {p0, p1, p2, v0}, Lorg/thoughtcrime/securesms/RegistrationActivity;->focusListener(Landroid/view/View;ZLorg/thoughtcrime/securesms/RegistrationActivity$VerificationType;)V

    return-void
.end method

.method synthetic lambda$onCreate$8$org-thoughtcrime-securesms-RegistrationActivity(Landroid/view/View;Z)V
    .locals 1

    .line 165
    sget-object v0, Lorg/thoughtcrime/securesms/RegistrationActivity$VerificationType;->PORT:Lorg/thoughtcrime/securesms/RegistrationActivity$VerificationType;

    invoke-direct {p0, p1, p2, v0}, Lorg/thoughtcrime/securesms/RegistrationActivity;->focusListener(Landroid/view/View;ZLorg/thoughtcrime/securesms/RegistrationActivity$VerificationType;)V

    return-void
.end method

.method synthetic lambda$onCreate$9$org-thoughtcrime-securesms-RegistrationActivity(Landroid/view/View;)V
    .locals 0

    .line 166
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/RegistrationActivity;->onAdvancedSettings()V

    return-void
.end method

.method synthetic lambda$onLogin$16$org-thoughtcrime-securesms-RegistrationActivity(Lorg/thoughtcrime/securesms/connect/AccountManager;)V
    .locals 1

    .line 567
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getEventCenter(Landroid/content/Context;)Lorg/thoughtcrime/securesms/connect/DcEventCenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->removeObservers(Lorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)V

    .line 568
    invoke-virtual {p1, p0}, Lorg/thoughtcrime/securesms/connect/AccountManager;->switchToEncrypted(Landroid/app/Activity;)V

    .line 570
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/RegistrationActivity;->registerForEvents()V

    .line 571
    new-instance p1, Lorg/thoughtcrime/securesms/RegistrationActivity$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/thoughtcrime/securesms/RegistrationActivity$$ExternalSyntheticLambda0;-><init>(Lorg/thoughtcrime/securesms/RegistrationActivity;)V

    invoke-static {p1}, Lorg/thoughtcrime/securesms/util/Util;->runOnMain(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$onOptionsItemSelected$13$org-thoughtcrime-securesms-RegistrationActivity(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 267
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/RegistrationActivity;->do_register()V

    return-void
.end method

.method synthetic lambda$updateProviderInfo$14$org-thoughtcrime-securesms-RegistrationActivity()V
    .locals 5

    .line 424
    iget-object v0, p0, Lorg/thoughtcrime/securesms/RegistrationActivity;->provider:Lcom/b44t/messenger/DcProvider;

    const/16 v1, 0x8

    if-eqz v0, :cond_2

    .line 425
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/RegistrationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 426
    iget-object v2, p0, Lorg/thoughtcrime/securesms/RegistrationActivity;->providerHint:Landroid/widget/TextView;

    iget-object v3, p0, Lorg/thoughtcrime/securesms/RegistrationActivity;->provider:Lcom/b44t/messenger/DcProvider;

    invoke-virtual {v3}, Lcom/b44t/messenger/DcProvider;->getBeforeLoginHint()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 427
    iget-object v2, p0, Lorg/thoughtcrime/securesms/RegistrationActivity;->provider:Lcom/b44t/messenger/DcProvider;

    invoke-virtual {v2}, Lcom/b44t/messenger/DcProvider;->getStatus()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v2, v3, :cond_1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 443
    iget-object v0, p0, Lorg/thoughtcrime/securesms/RegistrationActivity;->providerLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 436
    :cond_0
    iget-object v1, p0, Lorg/thoughtcrime/securesms/RegistrationActivity;->providerHint:Landroid/widget/TextView;

    const v2, 0x7f06033a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 437
    iget-object v1, p0, Lorg/thoughtcrime/securesms/RegistrationActivity;->providerLink:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 438
    iget-object v0, p0, Lorg/thoughtcrime/securesms/RegistrationActivity;->providerLayout:Landroid/view/View;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/RegistrationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060339

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 439
    iget-object v0, p0, Lorg/thoughtcrime/securesms/RegistrationActivity;->providerLayout:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 429
    :cond_1
    iget-object v1, p0, Lorg/thoughtcrime/securesms/RegistrationActivity;->providerHint:Landroid/widget/TextView;

    const v2, 0x7f06033c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 430
    iget-object v1, p0, Lorg/thoughtcrime/securesms/RegistrationActivity;->providerLink:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 431
    iget-object v1, p0, Lorg/thoughtcrime/securesms/RegistrationActivity;->providerLayout:Landroid/view/View;

    const v2, 0x7f06033b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 432
    iget-object v0, p0, Lorg/thoughtcrime/securesms/RegistrationActivity;->providerLayout:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 447
    :cond_2
    iget-object v0, p0, Lorg/thoughtcrime/securesms/RegistrationActivity;->providerLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method synthetic lambda$updateProviderInfo$15$org-thoughtcrime-securesms-RegistrationActivity()V
    .locals 2

    .line 422
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object v0

    iget-object v1, p0, Lorg/thoughtcrime/securesms/RegistrationActivity;->emailInput:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b44t/messenger/DcContext;->getProviderFromEmailWithDns(Ljava/lang/String;)Lcom/b44t/messenger/DcProvider;

    move-result-object v0

    iput-object v0, p0, Lorg/thoughtcrime/securesms/RegistrationActivity;->provider:Lcom/b44t/messenger/DcProvider;

    .line 423
    new-instance v0, Lorg/thoughtcrime/securesms/RegistrationActivity$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/RegistrationActivity$$ExternalSyntheticLambda6;-><init>(Lorg/thoughtcrime/securesms/RegistrationActivity;)V

    invoke-static {v0}, Lorg/thoughtcrime/securesms/util/Util;->runOnMain(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11

    .line 107
    invoke-super {p0, p1}, Lorg/thoughtcrime/securesms/BaseActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 108
    iget-object p1, p0, Lorg/thoughtcrime/securesms/RegistrationActivity;->dynamicTheme:Lorg/thoughtcrime/securesms/util/DynamicTheme;

    invoke-virtual {p1, p0}, Lorg/thoughtcrime/securesms/util/DynamicTheme;->onCreate(Landroid/app/Activity;)V

    const p1, 0x7f0c00f6

    .line 110
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/RegistrationActivity;->setContentView(I)V

    const p1, 0x7f09010d

    .line 112
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/RegistrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object p1, p0, Lorg/thoughtcrime/securesms/RegistrationActivity;->emailInput:Lcom/google/android/material/textfield/TextInputEditText;

    const p1, 0x7f09028e

    .line 113
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/RegistrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object p1, p0, Lorg/thoughtcrime/securesms/RegistrationActivity;->passwordInput:Lcom/google/android/material/textfield/TextInputEditText;

    const p1, 0x7f0902ab

    .line 115
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/RegistrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/RegistrationActivity;->providerLayout:Landroid/view/View;

    const p1, 0x7f0902aa

    .line 116
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/RegistrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/thoughtcrime/securesms/RegistrationActivity;->providerHint:Landroid/widget/TextView;

    const p1, 0x7f0902ac

    .line 117
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/RegistrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/thoughtcrime/securesms/RegistrationActivity;->providerLink:Landroid/widget/TextView;

    .line 118
    new-instance v0, Lorg/thoughtcrime/securesms/RegistrationActivity$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/RegistrationActivity$$ExternalSyntheticLambda10;-><init>(Lorg/thoughtcrime/securesms/RegistrationActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090121

    .line 120
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/RegistrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lorg/thoughtcrime/securesms/RegistrationActivity;->encryptCheckbox:Landroid/widget/CheckBox;

    const p1, 0x7f09004e

    .line 122
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/RegistrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/Group;

    iput-object p1, p0, Lorg/thoughtcrime/securesms/RegistrationActivity;->advancedGroup:Landroidx/constraintlayout/widget/Group;

    const p1, 0x7f09004f

    .line 123
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/RegistrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lorg/thoughtcrime/securesms/RegistrationActivity;->advancedIcon:Landroid/widget/ImageView;

    const p1, 0x7f090050

    .line 124
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/RegistrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f09018f

    .line 125
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/RegistrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    const v1, 0x7f09018b

    .line 126
    invoke-virtual {p0, v1}, Lorg/thoughtcrime/securesms/RegistrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputEditText;

    const v2, 0x7f09034b

    .line 127
    invoke-virtual {p0, v2}, Lorg/thoughtcrime/securesms/RegistrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/textfield/TextInputEditText;

    const v3, 0x7f090347

    .line 128
    invoke-virtual {p0, v3}, Lorg/thoughtcrime/securesms/RegistrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/textfield/TextInputEditText;

    const v4, 0x7f0903d6

    .line 129
    invoke-virtual {p0, v4}, Lorg/thoughtcrime/securesms/RegistrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f09018c

    .line 131
    invoke-virtual {p0, v5}, Lorg/thoughtcrime/securesms/RegistrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    iput-object v5, p0, Lorg/thoughtcrime/securesms/RegistrationActivity;->imapSecurity:Landroid/widget/Spinner;

    const v5, 0x7f090348

    .line 132
    invoke-virtual {p0, v5}, Lorg/thoughtcrime/securesms/RegistrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    iput-object v5, p0, Lorg/thoughtcrime/securesms/RegistrationActivity;->smtpSecurity:Landroid/widget/Spinner;

    const v5, 0x7f09006e

    .line 133
    invoke-virtual {p0, v5}, Lorg/thoughtcrime/securesms/RegistrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    iput-object v5, p0, Lorg/thoughtcrime/securesms/RegistrationActivity;->authMethod:Landroid/widget/Spinner;

    const v5, 0x7f09009c

    .line 134
    invoke-virtual {p0, v5}, Lorg/thoughtcrime/securesms/RegistrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    iput-object v5, p0, Lorg/thoughtcrime/securesms/RegistrationActivity;->certCheck:Landroid/widget/Spinner;

    const v5, 0x7f090351

    .line 136
    invoke-virtual {p0, v5}, Lorg/thoughtcrime/securesms/RegistrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/widget/Group;

    iput-object v5, p0, Lorg/thoughtcrime/securesms/RegistrationActivity;->proxyGroup:Landroidx/constraintlayout/widget/Group;

    const v5, 0x7f090358

    .line 137
    invoke-virtual {p0, v5}, Lorg/thoughtcrime/securesms/RegistrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/widget/SwitchCompat;

    iput-object v5, p0, Lorg/thoughtcrime/securesms/RegistrationActivity;->proxySwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 138
    new-instance v6, Lorg/thoughtcrime/securesms/RegistrationActivity$$ExternalSyntheticLambda13;

    invoke-direct {v6, p0}, Lorg/thoughtcrime/securesms/RegistrationActivity$$ExternalSyntheticLambda13;-><init>(Lorg/thoughtcrime/securesms/RegistrationActivity;)V

    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v5, 0x7f090353

    .line 141
    invoke-virtual {p0, v5}, Lorg/thoughtcrime/securesms/RegistrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/textfield/TextInputEditText;

    const v6, 0x7f090357

    .line 142
    invoke-virtual {p0, v6}, Lorg/thoughtcrime/securesms/RegistrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/google/android/material/textfield/TextInputEditText;

    .line 143
    new-instance v7, Lorg/thoughtcrime/securesms/RegistrationActivity$$ExternalSyntheticLambda14;

    invoke-direct {v7, p0}, Lorg/thoughtcrime/securesms/RegistrationActivity$$ExternalSyntheticLambda14;-><init>(Lorg/thoughtcrime/securesms/RegistrationActivity;)V

    invoke-virtual {v5, v7}, Lcom/google/android/material/textfield/TextInputEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 144
    new-instance v7, Lorg/thoughtcrime/securesms/RegistrationActivity$$ExternalSyntheticLambda15;

    invoke-direct {v7, p0}, Lorg/thoughtcrime/securesms/RegistrationActivity$$ExternalSyntheticLambda15;-><init>(Lorg/thoughtcrime/securesms/RegistrationActivity;)V

    invoke-virtual {v6, v7}, Lcom/google/android/material/textfield/TextInputEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 146
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/RegistrationActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v7

    const/4 v8, 0x1

    if-eqz v7, :cond_0

    const v9, 0x7f1201e1

    .line 148
    invoke-virtual {v7, v9}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 149
    invoke-virtual {v7, v8}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const v9, 0x7f0800fc

    .line 150
    invoke-virtual {v7, v9}, Landroidx/appcompat/app/ActionBar;->setHomeAsUpIndicator(I)V

    .line 153
    :cond_0
    iget-object v7, p0, Lorg/thoughtcrime/securesms/RegistrationActivity;->emailInput:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v9, Lorg/thoughtcrime/securesms/RegistrationActivity$1;

    invoke-direct {v9, p0}, Lorg/thoughtcrime/securesms/RegistrationActivity$1;-><init>(Lorg/thoughtcrime/securesms/RegistrationActivity;)V

    invoke-virtual {v7, v9}, Lcom/google/android/material/textfield/TextInputEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 161
    iget-object v7, p0, Lorg/thoughtcrime/securesms/RegistrationActivity;->emailInput:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v9, Lorg/thoughtcrime/securesms/RegistrationActivity$$ExternalSyntheticLambda16;

    invoke-direct {v9, p0}, Lorg/thoughtcrime/securesms/RegistrationActivity$$ExternalSyntheticLambda16;-><init>(Lorg/thoughtcrime/securesms/RegistrationActivity;)V

    invoke-virtual {v7, v9}, Lcom/google/android/material/textfield/TextInputEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 162
    new-instance v7, Lorg/thoughtcrime/securesms/RegistrationActivity$$ExternalSyntheticLambda17;

    invoke-direct {v7, p0}, Lorg/thoughtcrime/securesms/RegistrationActivity$$ExternalSyntheticLambda17;-><init>(Lorg/thoughtcrime/securesms/RegistrationActivity;)V

    invoke-virtual {v0, v7}, Lcom/google/android/material/textfield/TextInputEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 163
    new-instance v7, Lorg/thoughtcrime/securesms/RegistrationActivity$$ExternalSyntheticLambda18;

    invoke-direct {v7, p0}, Lorg/thoughtcrime/securesms/RegistrationActivity$$ExternalSyntheticLambda18;-><init>(Lorg/thoughtcrime/securesms/RegistrationActivity;)V

    invoke-virtual {v1, v7}, Lcom/google/android/material/textfield/TextInputEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 164
    new-instance v7, Lorg/thoughtcrime/securesms/RegistrationActivity$$ExternalSyntheticLambda1;

    invoke-direct {v7, p0}, Lorg/thoughtcrime/securesms/RegistrationActivity$$ExternalSyntheticLambda1;-><init>(Lorg/thoughtcrime/securesms/RegistrationActivity;)V

    invoke-virtual {v2, v7}, Lcom/google/android/material/textfield/TextInputEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 165
    new-instance v7, Lorg/thoughtcrime/securesms/RegistrationActivity$$ExternalSyntheticLambda2;

    invoke-direct {v7, p0}, Lorg/thoughtcrime/securesms/RegistrationActivity$$ExternalSyntheticLambda2;-><init>(Lorg/thoughtcrime/securesms/RegistrationActivity;)V

    invoke-virtual {v3, v7}, Lcom/google/android/material/textfield/TextInputEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 166
    new-instance v7, Lorg/thoughtcrime/securesms/RegistrationActivity$$ExternalSyntheticLambda3;

    invoke-direct {v7, p0}, Lorg/thoughtcrime/securesms/RegistrationActivity$$ExternalSyntheticLambda3;-><init>(Lorg/thoughtcrime/securesms/RegistrationActivity;)V

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iget-object p1, p0, Lorg/thoughtcrime/securesms/RegistrationActivity;->advancedIcon:Landroid/widget/ImageView;

    new-instance v7, Lorg/thoughtcrime/securesms/RegistrationActivity$$ExternalSyntheticLambda11;

    invoke-direct {v7, p0}, Lorg/thoughtcrime/securesms/RegistrationActivity$$ExternalSyntheticLambda11;-><init>(Lorg/thoughtcrime/securesms/RegistrationActivity;)V

    invoke-virtual {p1, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object p1, p0, Lorg/thoughtcrime/securesms/RegistrationActivity;->advancedIcon:Landroid/widget/ImageView;

    const/high16 v7, 0x42340000    # 45.0f

    invoke-virtual {p1, v7}, Landroid/widget/ImageView;->setRotation(F)V

    .line 169
    new-instance p1, Lorg/thoughtcrime/securesms/RegistrationActivity$$ExternalSyntheticLambda12;

    invoke-direct {p1, p0}, Lorg/thoughtcrime/securesms/RegistrationActivity$$ExternalSyntheticLambda12;-><init>(Lorg/thoughtcrime/securesms/RegistrationActivity;)V

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/RegistrationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->isConfigured(Landroid/content/Context;)Z

    move-result p1

    const-string v4, "mail_pw"

    const-string v7, "addr"

    if-eqz p1, :cond_4

    const p1, 0x7f090189

    .line 172
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/RegistrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textfield/TextInputEditText;

    .line 174
    invoke-static {p0, v7}, Lorg/thoughtcrime/securesms/connect/DcHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 175
    iget-object v9, p0, Lorg/thoughtcrime/securesms/RegistrationActivity;->emailInput:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v9, v7}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 176
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 177
    iget-object v9, p0, Lorg/thoughtcrime/securesms/RegistrationActivity;->emailInput:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v9, v10, v7}, Lcom/google/android/material/textfield/TextInputEditText;->setSelection(II)V

    .line 180
    :cond_1
    iget-object v7, p0, Lorg/thoughtcrime/securesms/RegistrationActivity;->passwordInput:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-static {p0, v4}, Lorg/thoughtcrime/securesms/connect/DcHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    const-string v4, "mail_user"

    .line 181
    invoke-static {p0, v4}, Lorg/thoughtcrime/securesms/connect/DcHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "mail_server"

    .line 182
    invoke-static {p0, p1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "mail_port"

    .line 183
    invoke-static {p0, p1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iget-object p1, p0, Lorg/thoughtcrime/securesms/RegistrationActivity;->imapSecurity:Landroid/widget/Spinner;

    const-string v0, "mail_security"

    invoke-static {p0, v0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    const p1, 0x7f090343

    .line 185
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/RegistrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textfield/TextInputEditText;

    const v0, 0x7f090345

    .line 186
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/RegistrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    const-string v1, "send_user"

    .line 187
    invoke-static {p0, v1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "send_pw"

    .line 188
    invoke-static {p0, p1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "send_server"

    .line 189
    invoke-static {p0, p1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "send_port"

    .line 190
    invoke-static {p0, p1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object p1, p0, Lorg/thoughtcrime/securesms/RegistrationActivity;->smtpSecurity:Landroid/widget/Spinner;

    const-string v0, "send_security"

    invoke-static {p0, v0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 193
    iget-object p1, p0, Lorg/thoughtcrime/securesms/RegistrationActivity;->proxySwitch:Landroidx/appcompat/widget/SwitchCompat;

    const-string v0, "socks5_enabled"

    invoke-static {p0, v0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, v8, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    const-string p1, "socks5_host"

    .line 194
    invoke-static {p0, p1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "socks5_port"

    .line 195
    invoke-static {p0, p1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f09035a

    .line 196
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/RegistrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textfield/TextInputEditText;

    const v0, 0x7f090355

    .line 197
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/RegistrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    const-string v2, "socks5_user"

    .line 198
    invoke-static {p0, v2}, Lorg/thoughtcrime/securesms/connect/DcHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "socks5_password"

    .line 199
    invoke-static {p0, p1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "server_flags"

    .line 201
    invoke-static {p0, p1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v8, 0x0

    .line 204
    :goto_1
    iget-object p1, p0, Lorg/thoughtcrime/securesms/RegistrationActivity;->authMethod:Landroid/widget/Spinner;

    invoke-virtual {p1, v8}, Landroid/widget/Spinner;->setSelection(I)V

    const-string p1, "imap_certificate_checks"

    .line 206
    invoke-static {p0, p1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    .line 207
    iget-object v0, p0, Lorg/thoughtcrime/securesms/RegistrationActivity;->certCheck:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 208
    iget-object p1, p0, Lorg/thoughtcrime/securesms/RegistrationActivity;->encryptCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setHeight(I)V

    .line 209
    iget-object p1, p0, Lorg/thoughtcrime/securesms/RegistrationActivity;->encryptCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 210
    iget-object p1, p0, Lorg/thoughtcrime/securesms/RegistrationActivity;->encryptCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setFocusable(Z)V

    goto :goto_3

    .line 211
    :cond_4
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/RegistrationActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/RegistrationActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "ACCOUNT_DATA"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 213
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/RegistrationActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 214
    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 215
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 216
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 217
    iget-object v1, p0, Lorg/thoughtcrime/securesms/RegistrationActivity;->emailInput:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v1, v0}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 218
    iget-object v0, p0, Lorg/thoughtcrime/securesms/RegistrationActivity;->passwordInput:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 219
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/RegistrationActivity;->onLogin()V

    goto :goto_3

    .line 222
    :cond_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_6

    const-string v0, " Missing emailAddress."

    goto :goto_2

    :cond_6
    move-object v0, v1

    :goto_2
    const-string v2, "Companion app auto-configuration failed."

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 223
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string v1, " Missing password."

    :cond_7
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 224
    invoke-static {p0, p1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 228
    :cond_8
    :goto_3
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/RegistrationActivity;->registerForEvents()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 303
    invoke-super {p0}, Lorg/thoughtcrime/securesms/BaseActionBarActivity;->onDestroy()V

    .line 304
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getEventCenter(Landroid/content/Context;)Lorg/thoughtcrime/securesms/connect/DcEventCenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->removeObservers(Lorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 5

    .line 478
    invoke-super {p0, p1}, Lorg/thoughtcrime/securesms/BaseActionBarActivity;->onNewIntent(Landroid/content/Intent;)V

    const-string v0, "android.intent.action.VIEW"

    .line 479
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 480
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 481
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/com.b44t.messenger"

    .line 482
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "/auth"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 483
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/thoughtcrime/securesms/RegistrationActivity;->oauth2Requested:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xa4cb80

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    :cond_1
    return-void

    :cond_2
    const-string v0, "code"

    .line 488
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 489
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 490
    iget-object v0, p0, Lorg/thoughtcrime/securesms/RegistrationActivity;->passwordInput:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 491
    iget-object p1, p0, Lorg/thoughtcrime/securesms/RegistrationActivity;->authMethod:Landroid/widget/Spinner;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 492
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/RegistrationActivity;->onLogin()V

    :cond_3
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .line 256
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0900f4

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 259
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getSelfAddr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 260
    iget-object v0, p0, Lorg/thoughtcrime/securesms/RegistrationActivity;->emailInput:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 261
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 262
    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 264
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    aput-object v0, v3, v2

    const p1, 0x7f120047

    .line 265
    invoke-virtual {p0, p1, v3}, Lorg/thoughtcrime/securesms/RegistrationActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lorg/thoughtcrime/securesms/RegistrationActivity$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lorg/thoughtcrime/securesms/RegistrationActivity$$ExternalSyntheticLambda8;-><init>()V

    const v1, 0x7f120097

    .line 266
    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lorg/thoughtcrime/securesms/RegistrationActivity$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/RegistrationActivity$$ExternalSyntheticLambda9;-><init>(Lorg/thoughtcrime/securesms/RegistrationActivity;)V

    const v1, 0x7f1202f1

    .line 267
    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 268
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    goto :goto_0

    .line 270
    :cond_0
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/RegistrationActivity;->do_register()V

    :goto_0
    return v2

    :cond_1
    const v1, 0x102002c

    if-ne v0, v1, :cond_2

    .line 275
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/RegistrationActivity;->finish()V

    return v2

    .line 278
    :cond_2
    invoke-super {p0, p1}, Lorg/thoughtcrime/securesms/BaseActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 248
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/RegistrationActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 249
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    const v1, 0x7f0e0016

    .line 250
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 251
    invoke-super {p0, p1}, Lorg/thoughtcrime/securesms/BaseActionBarActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 309
    invoke-static {p0, p1, p2, p3}, Lorg/thoughtcrime/securesms/permissions/Permissions;->onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 237
    invoke-super {p0}, Lorg/thoughtcrime/securesms/BaseActionBarActivity;->onResume()V

    .line 238
    iget-object v0, p0, Lorg/thoughtcrime/securesms/RegistrationActivity;->dynamicTheme:Lorg/thoughtcrime/securesms/util/DynamicTheme;

    invoke-virtual {v0, p0}, Lorg/thoughtcrime/securesms/util/DynamicTheme;->onResume(Landroid/app/Activity;)V

    return-void
.end method

.method public synthetic runOnMain()Z
    .locals 1

    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate$-CC;->$default$runOnMain(Lorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)Z

    move-result v0

    return v0
.end method
