.class public Lorg/thoughtcrime/securesms/InstantOnboardingActivity;
.super Lorg/thoughtcrime/securesms/BaseActionBarActivity;
.source "InstantOnboardingActivity.java"

# interfaces
.implements Lorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/InstantOnboardingActivity$AvatarSelectedListener;
    }
.end annotation


# static fields
.field private static final DCACCOUNT:Ljava/lang/String; = "dcaccount"

.field private static final DCLOGIN:Ljava/lang/String; = "dclogin"

.field private static final DEFAULT_CHATMAIL_HOST:Ljava/lang/String; = "nine.testrun.org"

.field public static final FROM_WELCOME:Ljava/lang/String; = "from_welcome"

.field private static final INSTANCES_URL:Ljava/lang/String; = "https://delta.chat/chatmail"

.field public static final QR_ACCOUNT_EXTRA:Ljava/lang/String; = "qr_account_extra"

.field private static final REQUEST_CODE_AVATAR:I = 0x1

.field private static final TAG:Ljava/lang/String; = "InstantOnboardingActivity"


# instance fields
.field private attachmentManager:Lorg/thoughtcrime/securesms/mms/AttachmentManager;

.field private avatar:Landroid/widget/ImageView;

.field private avatarBmp:Landroid/graphics/Bitmap;

.field private avatarChanged:Z

.field private dcContext:Lcom/b44t/messenger/DcContext;

.field private imageLoaded:Z

.field private isDcLogin:Z

.field private name:Landroid/widget/EditText;

.field private privacyPolicyBtn:Landroid/widget/TextView;

.field private progressDialog:Lorg/thoughtcrime/securesms/util/views/ProgressDialog;

.field private providerHost:Ljava/lang/String;

.field private providerQrData:Ljava/lang/String;

.field private signUpBtn:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/BaseActionBarActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/thoughtcrime/securesms/InstantOnboardingActivity;)Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->avatarChanged:Z

    return p0
.end method

.method static synthetic access$002(Lorg/thoughtcrime/securesms/InstantOnboardingActivity;Z)Z
    .locals 0

    .line 61
    iput-boolean p1, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->avatarChanged:Z

    return p1
.end method

.method static synthetic access$102(Lorg/thoughtcrime/securesms/InstantOnboardingActivity;Z)Z
    .locals 0

    .line 61
    iput-boolean p1, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->imageLoaded:Z

    return p1
.end method

.method static synthetic access$200(Lorg/thoughtcrime/securesms/InstantOnboardingActivity;)Landroid/graphics/Bitmap;
    .locals 0

    .line 61
    iget-object p0, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->avatarBmp:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$202(Lorg/thoughtcrime/securesms/InstantOnboardingActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 61
    iput-object p1, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->avatarBmp:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 61
    sget-object v0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lorg/thoughtcrime/securesms/InstantOnboardingActivity;)Lorg/thoughtcrime/securesms/mms/AttachmentManager;
    .locals 0

    .line 61
    iget-object p0, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->attachmentManager:Lorg/thoughtcrime/securesms/mms/AttachmentManager;

    return-object p0
.end method

.method static synthetic access$500(Lorg/thoughtcrime/securesms/InstantOnboardingActivity;)Ljava/lang/String;
    .locals 0

    .line 61
    iget-object p0, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->providerQrData:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lorg/thoughtcrime/securesms/InstantOnboardingActivity;Ljava/lang/String;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->startQrAccountCreation(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lorg/thoughtcrime/securesms/InstantOnboardingActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 61
    iget-object p0, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->avatar:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$800(Lorg/thoughtcrime/securesms/InstantOnboardingActivity;Landroid/net/Uri;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->onFileSelected(Landroid/net/Uri;)V

    return-void
.end method

.method private createProfile()V
    .locals 3

    .line 420
    iget-object v0, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f120305

    const/4 v1, 0x1

    .line 421
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 424
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 426
    new-instance v1, Lorg/thoughtcrime/securesms/InstantOnboardingActivity$3;

    invoke-direct {v1, p0, v0}, Lorg/thoughtcrime/securesms/InstantOnboardingActivity$3;-><init>(Lorg/thoughtcrime/securesms/InstantOnboardingActivity;Ljava/lang/String;)V

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 456
    invoke-virtual {v1, v0, v2}, Lorg/thoughtcrime/securesms/InstantOnboardingActivity$3;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private handleIntent()V
    .locals 3

    .line 233
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 234
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 237
    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dcaccount"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dclogin"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 238
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->setProviderFromQr(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private initializeProfile()V
    .locals 6

    .line 343
    invoke-static {p0}, Lorg/thoughtcrime/securesms/profiles/AvatarHelper;->getSelfAvatarFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 344
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    const/4 v1, 0x1

    .line 345
    iput-boolean v1, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->imageLoaded:Z

    .line 346
    invoke-static {p0}, Lorg/thoughtcrime/securesms/mms/GlideApp;->with(Landroidx/fragment/app/FragmentActivity;)Lorg/thoughtcrime/securesms/mms/GlideRequests;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/thoughtcrime/securesms/mms/GlideRequests;->load(Ljava/io/File;)Lorg/thoughtcrime/securesms/mms/GlideRequest;

    move-result-object v0

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/mms/GlideRequest;->circleCrop()Lorg/thoughtcrime/securesms/mms/GlideRequest;

    move-result-object v0

    iget-object v1, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->avatar:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/mms/GlideRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 348
    iput-boolean v0, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->imageLoaded:Z

    .line 349
    iget-object v0, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->avatar:Landroid/widget/ImageView;

    new-instance v1, Lorg/thoughtcrime/securesms/contacts/avatars/ResourceContactPhoto;

    const v2, 0x7f0800ef

    invoke-direct {v1, v2}, Lorg/thoughtcrime/securesms/contacts/avatars/ResourceContactPhoto;-><init>(I)V

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0600a0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, p0, v2}, Lorg/thoughtcrime/securesms/contacts/avatars/ResourceContactPhoto;->asDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 351
    :goto_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->avatar:Landroid/widget/ImageView;

    new-instance v1, Lorg/thoughtcrime/securesms/InstantOnboardingActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/thoughtcrime/securesms/InstantOnboardingActivity$$ExternalSyntheticLambda0;-><init>(Lorg/thoughtcrime/securesms/InstantOnboardingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 355
    iget-object v0, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->name:Landroid/widget/EditText;

    const-string v1, "displayname"

    invoke-static {p0, v1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initializeResources()V
    .locals 2

    const v0, 0x7f090074

    .line 280
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->avatar:Landroid/widget/ImageView;

    const v0, 0x7f090243

    .line 281
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->name:Landroid/widget/EditText;

    const v0, 0x7f0902a3

    .line 282
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->privacyPolicyBtn:Landroid/widget/TextView;

    const v0, 0x7f09033c

    .line 283
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->signUpBtn:Landroid/widget/Button;

    .line 285
    iget-object v0, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->privacyPolicyBtn:Landroid/widget/TextView;

    new-instance v1, Lorg/thoughtcrime/securesms/InstantOnboardingActivity$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lorg/thoughtcrime/securesms/InstantOnboardingActivity$$ExternalSyntheticLambda9;-><init>(Lorg/thoughtcrime/securesms/InstantOnboardingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    iget-object v0, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->signUpBtn:Landroid/widget/Button;

    new-instance v1, Lorg/thoughtcrime/securesms/InstantOnboardingActivity$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lorg/thoughtcrime/securesms/InstantOnboardingActivity$$ExternalSyntheticLambda10;-><init>(Lorg/thoughtcrime/securesms/InstantOnboardingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09027e

    .line 293
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 294
    new-instance v1, Lorg/thoughtcrime/securesms/InstantOnboardingActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/thoughtcrime/securesms/InstantOnboardingActivity$$ExternalSyntheticLambda1;-><init>(Lorg/thoughtcrime/securesms/InstantOnboardingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$onCreate$0()V
    .locals 0

    return-void
.end method

.method public static maybeShowConfigurationError(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 403
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 404
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 405
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x104000a

    const/4 v0, 0x0

    .line 406
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 407
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    .line 408
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog;->show()V

    const p1, 0x102000b

    .line 411
    :try_start_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const/4 p1, 0x3

    invoke-static {p0, p1}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 413
    sget-object p1, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->TAG:Ljava/lang/String;

    const-string v0, "Linkify failed"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private onFileSelected(Landroid/net/Uri;)V
    .locals 0

    if-nez p1, :cond_0

    .line 273
    iget-object p1, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->attachmentManager:Lorg/thoughtcrime/securesms/mms/AttachmentManager;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->getImageCaptureUri()Landroid/net/Uri;

    move-result-object p1

    .line 276
    :cond_0
    invoke-static {p0, p1}, Lorg/thoughtcrime/securesms/profiles/AvatarHelper;->cropAvatar(Landroid/app/Activity;Landroid/net/Uri;)V

    return-void
.end method

.method private progressError(Ljava/lang/String;)V
    .locals 1

    .line 388
    iget-object v0, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->progressDialog:Lorg/thoughtcrime/securesms/util/views/ProgressDialog;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;->dismiss()V

    .line 389
    invoke-static {p0, p1}, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->maybeShowConfigurationError(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method private progressSuccess()V
    .locals 3

    .line 393
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getEventCenter(Landroid/content/Context;)Lorg/thoughtcrime/securesms/connect/DcEventCenter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->endCaptureNextError()V

    .line 394
    iget-object v0, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->progressDialog:Lorg/thoughtcrime/securesms/util/views/ProgressDialog;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;->dismiss()V

    .line 396
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lorg/thoughtcrime/securesms/ConversationListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "from_welcome"

    const/4 v2, 0x1

    .line 397
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 398
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->startActivity(Landroid/content/Intent;)V

    .line 399
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->finishAffinity()V

    return-void
.end method

.method private progressUpdate(I)V
    .locals 4

    .line 383
    div-int/lit8 p1, p1, 0xa

    .line 384
    iget-object v0, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->progressDialog:Lorg/thoughtcrime/securesms/util/views/ProgressDialog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->getResources()Landroid/content/res/Resources;

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

    return-void
.end method

.method private registerForEvents()V
    .locals 2

    .line 359
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object v0

    iput-object v0, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    .line 360
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getEventCenter(Landroid/content/Context;)Lorg/thoughtcrime/securesms/connect/DcEventCenter;

    move-result-object v0

    const/16 v1, 0x7f9

    .line 361
    invoke-virtual {v0, v1, p0}, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->addObserver(ILorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)V

    return-void
.end method

.method private setAvatarView(Landroid/net/Uri;)V
    .locals 4

    .line 244
    new-instance v0, Lorg/thoughtcrime/securesms/profiles/ProfileMediaConstraints;

    invoke-direct {v0}, Lorg/thoughtcrime/securesms/profiles/ProfileMediaConstraints;-><init>()V

    .line 245
    invoke-static {p0}, Lorg/thoughtcrime/securesms/mms/GlideApp;->with(Landroidx/fragment/app/FragmentActivity;)Lorg/thoughtcrime/securesms/mms/GlideRequests;

    move-result-object v1

    .line 246
    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/mms/GlideRequests;->asBitmap()Lorg/thoughtcrime/securesms/mms/GlideRequest;

    move-result-object v1

    .line 247
    invoke-virtual {v1, p1}, Lorg/thoughtcrime/securesms/mms/GlideRequest;->load(Landroid/net/Uri;)Lorg/thoughtcrime/securesms/mms/GlideRequest;

    move-result-object v1

    const/4 v2, 0x1

    .line 248
    invoke-virtual {v1, v2}, Lorg/thoughtcrime/securesms/mms/GlideRequest;->skipMemoryCache(Z)Lorg/thoughtcrime/securesms/mms/GlideRequest;

    move-result-object v1

    sget-object v3, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 249
    invoke-virtual {v1, v3}, Lorg/thoughtcrime/securesms/mms/GlideRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lorg/thoughtcrime/securesms/mms/GlideRequest;

    move-result-object v1

    .line 250
    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/mms/GlideRequest;->centerCrop()Lorg/thoughtcrime/securesms/mms/GlideRequest;

    move-result-object v1

    .line 251
    invoke-virtual {v0, p0}, Lorg/thoughtcrime/securesms/profiles/ProfileMediaConstraints;->getImageMaxWidth(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v0, p0}, Lorg/thoughtcrime/securesms/profiles/ProfileMediaConstraints;->getImageMaxHeight(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {v1, v3, v0}, Lorg/thoughtcrime/securesms/mms/GlideRequest;->override(II)Lorg/thoughtcrime/securesms/mms/GlideRequest;

    move-result-object v0

    new-instance v1, Lorg/thoughtcrime/securesms/InstantOnboardingActivity$2;

    invoke-direct {v1, p0}, Lorg/thoughtcrime/securesms/InstantOnboardingActivity$2;-><init>(Lorg/thoughtcrime/securesms/InstantOnboardingActivity;)V

    .line 252
    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/mms/GlideRequest;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    .line 263
    invoke-static {p0}, Lorg/thoughtcrime/securesms/mms/GlideApp;->with(Landroidx/fragment/app/FragmentActivity;)Lorg/thoughtcrime/securesms/mms/GlideRequests;

    move-result-object v0

    .line 264
    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/mms/GlideRequests;->load(Landroid/net/Uri;)Lorg/thoughtcrime/securesms/mms/GlideRequest;

    move-result-object p1

    .line 265
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/mms/GlideRequest;->circleCrop()Lorg/thoughtcrime/securesms/mms/GlideRequest;

    move-result-object p1

    .line 266
    invoke-virtual {p1, v2}, Lorg/thoughtcrime/securesms/mms/GlideRequest;->skipMemoryCache(Z)Lorg/thoughtcrime/securesms/mms/GlideRequest;

    move-result-object p1

    sget-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 267
    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/mms/GlideRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lorg/thoughtcrime/securesms/mms/GlideRequest;

    move-result-object p1

    iget-object v0, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->avatar:Landroid/widget/ImageView;

    .line 268
    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/mms/GlideRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method private setProviderFromQr(Ljava/lang/String;)V
    .locals 4

    .line 177
    iget-object v0, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {v0, p1}, Lcom/b44t/messenger/DcContext;->checkQr(Ljava/lang/String;)Lcom/b44t/messenger/DcLot;

    move-result-object v0

    .line 178
    invoke-virtual {v0}, Lcom/b44t/messenger/DcLot;->getState()I

    move-result v1

    const/16 v2, 0x208

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    .line 179
    invoke-virtual {v0}, Lcom/b44t/messenger/DcLot;->getState()I

    move-result v2

    const/16 v3, 0xfa

    if-ne v2, v3, :cond_1

    goto :goto_1

    .line 185
    :cond_1
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f120380

    .line 186
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f1202d8

    const/4 v1, 0x0

    .line 187
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 188
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    goto :goto_2

    .line 180
    :cond_2
    :goto_1
    iput-boolean v1, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->isDcLogin:Z

    .line 181
    invoke-virtual {v0}, Lcom/b44t/messenger/DcLot;->getText1()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->providerHost:Ljava/lang/String;

    .line 182
    iput-object p1, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->providerQrData:Ljava/lang/String;

    .line 183
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->updateProvider()V

    :goto_2
    return-void
.end method

.method private showOtherOptionsDialog()V
    .locals 4

    const v0, 0x7f0c0102

    const/4 v1, 0x0

    .line 298
    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 299
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 300
    invoke-virtual {v2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f1201b4

    .line 301
    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f120097

    .line 302
    invoke-virtual {v2, v3, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 303
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    const v2, 0x7f0903cb

    .line 305
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lorg/thoughtcrime/securesms/InstantOnboardingActivity$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0, v1}, Lorg/thoughtcrime/securesms/InstantOnboardingActivity$$ExternalSyntheticLambda5;-><init>(Lorg/thoughtcrime/securesms/InstantOnboardingActivity;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0901bc

    .line 309
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lorg/thoughtcrime/securesms/InstantOnboardingActivity$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0, v1}, Lorg/thoughtcrime/securesms/InstantOnboardingActivity$$ExternalSyntheticLambda6;-><init>(Lorg/thoughtcrime/securesms/InstantOnboardingActivity;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0902ed

    .line 313
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lorg/thoughtcrime/securesms/InstantOnboardingActivity$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, v1}, Lorg/thoughtcrime/securesms/InstantOnboardingActivity$$ExternalSyntheticLambda7;-><init>(Lorg/thoughtcrime/securesms/InstantOnboardingActivity;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method private startQrAccountCreation(Ljava/lang/String;)V
    .locals 4

    .line 461
    iget-object v0, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->progressDialog:Lorg/thoughtcrime/securesms/util/views/ProgressDialog;

    if-eqz v0, :cond_0

    .line 462
    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    .line 463
    iput-object v0, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->progressDialog:Lorg/thoughtcrime/securesms/util/views/ProgressDialog;

    .line 466
    :cond_0
    new-instance v0, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->progressDialog:Lorg/thoughtcrime/securesms/util/views/ProgressDialog;

    .line 467
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1202dd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 468
    iget-object v0, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->progressDialog:Lorg/thoughtcrime/securesms/util/views/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 469
    iget-object v0, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->progressDialog:Lorg/thoughtcrime/securesms/util/views/ProgressDialog;

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;->setCancelable(Z)V

    .line 470
    iget-object v0, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->progressDialog:Lorg/thoughtcrime/securesms/util/views/ProgressDialog;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/thoughtcrime/securesms/InstantOnboardingActivity$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lorg/thoughtcrime/securesms/InstantOnboardingActivity$$ExternalSyntheticLambda3;-><init>(Lorg/thoughtcrime/securesms/InstantOnboardingActivity;)V

    const/4 v3, -0x2

    invoke-virtual {v0, v3, v1, v2}, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 473
    iget-object v0, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->progressDialog:Lorg/thoughtcrime/securesms/util/views/ProgressDialog;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;->show()V

    .line 475
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getEventCenter(Landroid/content/Context;)Lorg/thoughtcrime/securesms/connect/DcEventCenter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->captureNextError()V

    .line 477
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/thoughtcrime/securesms/InstantOnboardingActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lorg/thoughtcrime/securesms/InstantOnboardingActivity$$ExternalSyntheticLambda4;-><init>(Lorg/thoughtcrime/securesms/InstantOnboardingActivity;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 486
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private startRegistrationActivity()V
    .locals 2

    .line 322
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/thoughtcrime/securesms/RegistrationActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 323
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private updateProvider()V
    .locals 5

    .line 327
    iget-boolean v0, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->isDcLogin:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->signUpBtn:Landroid/widget/Button;

    const v3, 0x7f1201f8

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 329
    iget-object v0, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->privacyPolicyBtn:Landroid/widget/TextView;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060096

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 330
    iget-object v0, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->privacyPolicyBtn:Landroid/widget/TextView;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->providerHost:Ljava/lang/String;

    aput-object v3, v2, v1

    const v1, 0x7f120382

    invoke-virtual {p0, v1, v2}, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 332
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->signUpBtn:Landroid/widget/Button;

    const v3, 0x7f1201b1

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 333
    iget-object v0, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->privacyPolicyBtn:Landroid/widget/TextView;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060056

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v0, "nine.testrun.org"

    .line 334
    iget-object v3, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->providerHost:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 335
    iget-object v0, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->privacyPolicyBtn:Landroid/widget/TextView;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->providerHost:Ljava/lang/String;

    aput-object v3, v2, v1

    const v1, 0x7f1201ac

    invoke-virtual {p0, v1, v2}, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 337
    :cond_1
    iget-object v0, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->privacyPolicyBtn:Landroid/widget/TextView;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->providerHost:Ljava/lang/String;

    aput-object v3, v2, v1

    const v1, 0x7f1201ad

    invoke-virtual {p0, v1, v2}, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public handleEvent(Lcom/b44t/messenger/DcEvent;)V
    .locals 5

    .line 366
    invoke-virtual {p1}, Lcom/b44t/messenger/DcEvent;->getId()I

    move-result v0

    const/16 v1, 0x7f9

    if-ne v0, v1, :cond_2

    .line 369
    invoke-virtual {p1}, Lcom/b44t/messenger/DcEvent;->getData1Int()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 371
    invoke-virtual {p1}, Lcom/b44t/messenger/DcEvent;->getData2Str()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->progressError(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x3e8

    cmp-long p1, v0, v2

    if-gez p1, :cond_1

    long-to-int p1, v0

    .line 373
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->progressUpdate(I)V

    goto :goto_0

    :cond_1
    cmp-long p1, v0, v2

    if-nez p1, :cond_2

    .line 375
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getAccounts(Landroid/content/Context;)Lcom/b44t/messenger/DcAccounts;

    move-result-object p1

    invoke-virtual {p1}, Lcom/b44t/messenger/DcAccounts;->startIo()V

    .line 376
    iget-object p1, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {p1}, Lcom/b44t/messenger/DcContext;->assumeSingleDevice()V

    .line 377
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->progressSuccess()V

    :cond_2
    :goto_0
    return-void
.end method

.method synthetic lambda$initializeProfile$7$org-thoughtcrime-securesms-InstantOnboardingActivity(Landroid/view/View;)V
    .locals 3

    .line 352
    new-instance p1, Lorg/thoughtcrime/securesms/components/AvatarSelector;

    invoke-static {p0}, Landroidx/loader/app/LoaderManager;->getInstance(Landroidx/lifecycle/LifecycleOwner;)Landroidx/loader/app/LoaderManager;

    move-result-object v0

    new-instance v1, Lorg/thoughtcrime/securesms/InstantOnboardingActivity$AvatarSelectedListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/thoughtcrime/securesms/InstantOnboardingActivity$AvatarSelectedListener;-><init>(Lorg/thoughtcrime/securesms/InstantOnboardingActivity;Lorg/thoughtcrime/securesms/InstantOnboardingActivity$1;)V

    iget-boolean v2, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->imageLoaded:Z

    invoke-direct {p1, p0, v0, v1, v2}, Lorg/thoughtcrime/securesms/components/AvatarSelector;-><init>(Landroid/content/Context;Landroidx/loader/app/LoaderManager;Lorg/thoughtcrime/securesms/components/AvatarSelector$AttachmentClickedListener;Z)V

    iget-object v0, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->avatar:Landroid/widget/ImageView;

    invoke-virtual {p1, p0, v0}, Lorg/thoughtcrime/securesms/components/AvatarSelector;->show(Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method

.method synthetic lambda$initializeResources$1$org-thoughtcrime-securesms-InstantOnboardingActivity(Landroid/view/View;)V
    .locals 1

    .line 286
    iget-boolean p1, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->isDcLogin:Z

    if-nez p1, :cond_0

    .line 287
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "https://"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->providerHost:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/privacy.html"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/thoughtcrime/securesms/WebViewActivity;->openUrlInBrowser(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$initializeResources$2$org-thoughtcrime-securesms-InstantOnboardingActivity(Landroid/view/View;)V
    .locals 0

    .line 291
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->createProfile()V

    return-void
.end method

.method synthetic lambda$initializeResources$3$org-thoughtcrime-securesms-InstantOnboardingActivity(Landroid/view/View;)V
    .locals 0

    .line 294
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->showOtherOptionsDialog()V

    return-void
.end method

.method synthetic lambda$showOtherOptionsDialog$4$org-thoughtcrime-securesms-InstantOnboardingActivity(Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    .line 0
    const-string p2, "https://delta.chat/chatmail"

    .line 306
    invoke-static {p0, p2}, Lorg/thoughtcrime/securesms/WebViewActivity;->openUrlInBrowser(Landroid/content/Context;Ljava/lang/String;)V

    .line 307
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    return-void
.end method

.method synthetic lambda$showOtherOptionsDialog$5$org-thoughtcrime-securesms-InstantOnboardingActivity(Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    .line 310
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->startRegistrationActivity()V

    .line 311
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    return-void
.end method

.method synthetic lambda$showOtherOptionsDialog$6$org-thoughtcrime-securesms-InstantOnboardingActivity(Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V
    .locals 1

    .line 314
    new-instance p2, Lcom/google/zxing/integration/android/IntentIntegrator;

    invoke-direct {p2, p0}, Lcom/google/zxing/integration/android/IntentIntegrator;-><init>(Landroid/app/Activity;)V

    const-class v0, Lorg/thoughtcrime/securesms/qr/RegistrationQrActivity;

    invoke-virtual {p2, v0}, Lcom/google/zxing/integration/android/IntentIntegrator;->setCaptureActivity(Ljava/lang/Class;)Lcom/google/zxing/integration/android/IntentIntegrator;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/zxing/integration/android/IntentIntegrator;->initiateScan()V

    .line 315
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    return-void
.end method

.method synthetic lambda$startQrAccountCreation$10$org-thoughtcrime-securesms-InstantOnboardingActivity(Ljava/lang/String;)V
    .locals 1

    .line 478
    iget-object v0, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {v0, p1}, Lcom/b44t/messenger/DcContext;->setConfigFromQr(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 479
    new-instance p1, Lorg/thoughtcrime/securesms/InstantOnboardingActivity$$ExternalSyntheticLambda8;

    invoke-direct {p1, p0}, Lorg/thoughtcrime/securesms/InstantOnboardingActivity$$ExternalSyntheticLambda8;-><init>(Lorg/thoughtcrime/securesms/InstantOnboardingActivity;)V

    invoke-static {p1}, Lorg/thoughtcrime/securesms/util/Util;->runOnMain(Ljava/lang/Runnable;)V

    return-void

    .line 484
    :cond_0
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getAccounts(Landroid/content/Context;)Lcom/b44t/messenger/DcAccounts;

    move-result-object p1

    invoke-virtual {p1}, Lcom/b44t/messenger/DcAccounts;->stopIo()V

    .line 485
    iget-object p1, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {p1}, Lcom/b44t/messenger/DcContext;->configure()V

    return-void
.end method

.method synthetic lambda$startQrAccountCreation$8$org-thoughtcrime-securesms-InstantOnboardingActivity(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 471
    iget-object p1, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {p1}, Lcom/b44t/messenger/DcContext;->stopOngoingProcess()V

    return-void
.end method

.method synthetic lambda$startQrAccountCreation$9$org-thoughtcrime-securesms-InstantOnboardingActivity()V
    .locals 1

    .line 480
    iget-object v0, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {v0}, Lcom/b44t/messenger/DcContext;->getLastError()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->progressError(Ljava/lang/String;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 147
    invoke-super {p0, p1, p2, p3}, Lorg/thoughtcrime/securesms/BaseActionBarActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/16 v0, 0x1a35

    if-eq p1, v0, :cond_3

    const/16 v0, 0x7ac0

    if-eq p1, v0, :cond_2

    const v0, 0xc0de

    if-eq p1, v0, :cond_1

    goto :goto_1

    .line 168
    :cond_1
    invoke-static {p1, p2, p3}, Lcom/google/zxing/integration/android/IntentIntegrator;->parseActivityResult(IILandroid/content/Intent;)Lcom/google/zxing/integration/android/IntentResult;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 169
    invoke-virtual {p1}, Lcom/google/zxing/integration/android/IntentResult;->getFormatName()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 170
    invoke-virtual {p1}, Lcom/google/zxing/integration/android/IntentResult;->getContents()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->setProviderFromQr(Ljava/lang/String;)V

    goto :goto_1

    .line 160
    :cond_2
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->setAvatarView(Landroid/net/Uri;)V

    goto :goto_1

    .line 164
    :cond_3
    invoke-static {p3}, Lcom/soundcloud/android/crop/Crop;->getOutput(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->setAvatarView(Landroid/net/Uri;)V

    goto :goto_1

    :cond_4
    if-eqz p3, :cond_5

    .line 155
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    .line 156
    :goto_0
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->onFileSelected(Landroid/net/Uri;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 91
    invoke-super {p0, p1}, Lorg/thoughtcrime/securesms/BaseActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c007a

    .line 93
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->setContentView(I)V

    .line 95
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p1

    check-cast v0, Landroidx/appcompat/app/ActionBar;

    const v0, 0x7f1202db

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 96
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 98
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "from_welcome"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 99
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b44t/messenger/DcContext;->isConfigured()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 102
    invoke-static {}, Lorg/thoughtcrime/securesms/connect/AccountManager;->getInstance()Lorg/thoughtcrime/securesms/connect/AccountManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/thoughtcrime/securesms/connect/AccountManager;->beginAccountCreation(Landroid/content/Context;)I

    .line 104
    :cond_0
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v1

    new-instance v3, Lorg/thoughtcrime/securesms/InstantOnboardingActivity$1;

    xor-int/2addr p1, v0

    invoke-direct {v3, p0, p1}, Lorg/thoughtcrime/securesms/InstantOnboardingActivity$1;-><init>(Lorg/thoughtcrime/securesms/InstantOnboardingActivity;Z)V

    invoke-virtual {v1, p0, v3}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/OnBackPressedCallback;)V

    .line 116
    iput-boolean v2, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->isDcLogin:Z

    const-string p1, "nine.testrun.org"

    .line 117
    iput-object p1, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->providerHost:Ljava/lang/String;

    .line 118
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "dcaccount:https://"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->providerHost:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/new"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->providerQrData:Ljava/lang/String;

    .line 119
    new-instance p1, Lorg/thoughtcrime/securesms/mms/AttachmentManager;

    new-instance v0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lorg/thoughtcrime/securesms/InstantOnboardingActivity$$ExternalSyntheticLambda2;-><init>()V

    invoke-direct {p1, p0, v0}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;-><init>(Landroid/app/Activity;Lorg/thoughtcrime/securesms/mms/AttachmentManager$AttachmentListener;)V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->attachmentManager:Lorg/thoughtcrime/securesms/mms/AttachmentManager;

    .line 120
    iput-boolean v2, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->avatarChanged:Z

    .line 121
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->registerForEvents()V

    .line 122
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->initializeResources()V

    .line 123
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->initializeProfile()V

    .line 124
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->handleIntent()V

    .line 125
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->updateProvider()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 228
    invoke-super {p0}, Lorg/thoughtcrime/securesms/BaseActionBarActivity;->onDestroy()V

    .line 229
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getEventCenter(Landroid/content/Context;)Lorg/thoughtcrime/securesms/connect/DcEventCenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->removeObservers(Lorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 130
    invoke-super {p0, p1}, Lorg/thoughtcrime/securesms/BaseActionBarActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 131
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->setIntent(Landroid/content/Intent;)V

    .line 132
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->handleIntent()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 137
    invoke-super {p0, p1}, Lorg/thoughtcrime/securesms/BaseActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 138
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_0

    .line 139
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/activity/OnBackPressedDispatcher;->onBackPressed()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected onPause()V
    .locals 3

    .line 210
    invoke-super {p0}, Lorg/thoughtcrime/securesms/BaseActionBarActivity;->onPause()V

    .line 212
    iget-object v0, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 213
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    const-string v1, "displayname"

    invoke-static {p0, v1, v0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->set(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iget-boolean v0, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->avatarChanged:Z

    if-eqz v0, :cond_1

    .line 217
    :try_start_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->avatarBmp:Landroid/graphics/Bitmap;

    invoke-static {p0, v0}, Lorg/thoughtcrime/securesms/profiles/AvatarHelper;->setSelfAvatar(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    .line 218
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextInt()I

    move-result v0

    invoke-static {p0, v0}, Lorg/thoughtcrime/securesms/util/Prefs;->setProfileAvatarId(Landroid/content/Context;I)V

    const/4 v0, 0x0

    .line 219
    iput-boolean v0, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->avatarChanged:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 221
    sget-object v1, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->TAG:Ljava/lang/String;

    const-string v2, "Failed to save avatar"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 194
    invoke-super {p0, p1, p2, p3}, Lorg/thoughtcrime/securesms/BaseActionBarActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 195
    invoke-static {p0, p1, p2, p3}, Lorg/thoughtcrime/securesms/permissions/Permissions;->onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 200
    invoke-super {p0}, Lorg/thoughtcrime/securesms/BaseActionBarActivity;->onStart()V

    .line 201
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "qr_account_extra"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 204
    invoke-direct {p0, v0}, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->setProviderFromQr(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public synthetic runOnMain()Z
    .locals 1

    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate$-CC;->$default$runOnMain(Lorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)Z

    move-result v0

    return v0
.end method
