.class public Lorg/thoughtcrime/securesms/CreateProfileActivity;
.super Lorg/thoughtcrime/securesms/BaseActionBarActivity;
.source "CreateProfileActivity.java"

# interfaces
.implements Lorg/thoughtcrime/securesms/components/emoji/EmojiKeyboardProvider$EmojiEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/CreateProfileActivity$AvatarSelectedListener;
    }
.end annotation


# static fields
.field public static final FROM_WELCOME:Ljava/lang/String; = "from_welcome"

.field private static final REQUEST_CODE_AVATAR:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CreateProfileActivity"


# instance fields
.field private attachmentManager:Lorg/thoughtcrime/securesms/mms/AttachmentManager;

.field private avatar:Landroid/widget/ImageView;

.field private avatarBmp:Landroid/graphics/Bitmap;

.field private avatarChanged:Z

.field private container:Lorg/thoughtcrime/securesms/components/InputAwareLayout;

.field private emojiDrawer:Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;

.field private fromWelcome:Z

.field private imageLoaded:Z

.field private name:Landroid/widget/EditText;

.field private statusView:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/BaseActionBarActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/thoughtcrime/securesms/CreateProfileActivity;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lorg/thoughtcrime/securesms/CreateProfileActivity;->avatarChanged:Z

    return p0
.end method

.method static synthetic access$002(Lorg/thoughtcrime/securesms/CreateProfileActivity;Z)Z
    .locals 0

    .line 54
    iput-boolean p1, p0, Lorg/thoughtcrime/securesms/CreateProfileActivity;->avatarChanged:Z

    return p1
.end method

.method static synthetic access$102(Lorg/thoughtcrime/securesms/CreateProfileActivity;Z)Z
    .locals 0

    .line 54
    iput-boolean p1, p0, Lorg/thoughtcrime/securesms/CreateProfileActivity;->imageLoaded:Z

    return p1
.end method

.method static synthetic access$200(Lorg/thoughtcrime/securesms/CreateProfileActivity;)Landroid/graphics/Bitmap;
    .locals 0

    .line 54
    iget-object p0, p0, Lorg/thoughtcrime/securesms/CreateProfileActivity;->avatarBmp:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$202(Lorg/thoughtcrime/securesms/CreateProfileActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 54
    iput-object p1, p0, Lorg/thoughtcrime/securesms/CreateProfileActivity;->avatarBmp:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$300(Lorg/thoughtcrime/securesms/CreateProfileActivity;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/CreateProfileActivity;->setStatusText()V

    return-void
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 54
    sget-object v0, Lorg/thoughtcrime/securesms/CreateProfileActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lorg/thoughtcrime/securesms/CreateProfileActivity;)Lorg/thoughtcrime/securesms/mms/AttachmentManager;
    .locals 0

    .line 54
    iget-object p0, p0, Lorg/thoughtcrime/securesms/CreateProfileActivity;->attachmentManager:Lorg/thoughtcrime/securesms/mms/AttachmentManager;

    return-object p0
.end method

.method static synthetic access$600(Lorg/thoughtcrime/securesms/CreateProfileActivity;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lorg/thoughtcrime/securesms/CreateProfileActivity;->fromWelcome:Z

    return p0
.end method

.method static synthetic access$700(Lorg/thoughtcrime/securesms/CreateProfileActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 54
    iget-object p0, p0, Lorg/thoughtcrime/securesms/CreateProfileActivity;->avatar:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$800(Lorg/thoughtcrime/securesms/CreateProfileActivity;Landroid/net/Uri;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/CreateProfileActivity;->onFileSelected(Landroid/net/Uri;)V

    return-void
.end method

.method private initializeEmojiInput()V
    .locals 2

    .line 267
    iget-object v0, p0, Lorg/thoughtcrime/securesms/CreateProfileActivity;->emojiDrawer:Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;

    invoke-direct {p0, v0}, Lorg/thoughtcrime/securesms/CreateProfileActivity;->initializeMediaKeyboardProviders(Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;)V

    .line 268
    iget-object v0, p0, Lorg/thoughtcrime/securesms/CreateProfileActivity;->name:Landroid/widget/EditText;

    new-instance v1, Lorg/thoughtcrime/securesms/CreateProfileActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/thoughtcrime/securesms/CreateProfileActivity$$ExternalSyntheticLambda1;-><init>(Lorg/thoughtcrime/securesms/CreateProfileActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initializeMediaKeyboardProviders(Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;)V
    .locals 3

    .line 260
    invoke-static {p0}, Lorg/thoughtcrime/securesms/util/Prefs;->isSystemEmojiPreferred(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider;

    .line 262
    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/EmojiKeyboardProvider;

    invoke-direct {v1, p0, p0}, Lorg/thoughtcrime/securesms/components/emoji/EmojiKeyboardProvider;-><init>(Landroid/content/Context;Lorg/thoughtcrime/securesms/components/emoji/EmojiKeyboardProvider$EmojiEventListener;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1, v2, v0}, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->setProviders(I[Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider;)V

    :cond_0
    return-void
.end method

.method private initializeProfileAvatar()V
    .locals 6

    .line 227
    invoke-static {p0}, Lorg/thoughtcrime/securesms/profiles/AvatarHelper;->getSelfAvatarFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 228
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    const/4 v1, 0x1

    .line 229
    iput-boolean v1, p0, Lorg/thoughtcrime/securesms/CreateProfileActivity;->imageLoaded:Z

    .line 230
    invoke-static {p0}, Lorg/thoughtcrime/securesms/mms/GlideApp;->with(Landroidx/fragment/app/FragmentActivity;)Lorg/thoughtcrime/securesms/mms/GlideRequests;

    move-result-object v1

    .line 231
    invoke-virtual {v1, v0}, Lorg/thoughtcrime/securesms/mms/GlideRequests;->load(Ljava/io/File;)Lorg/thoughtcrime/securesms/mms/GlideRequest;

    move-result-object v0

    .line 232
    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/mms/GlideRequest;->circleCrop()Lorg/thoughtcrime/securesms/mms/GlideRequest;

    move-result-object v0

    iget-object v1, p0, Lorg/thoughtcrime/securesms/CreateProfileActivity;->avatar:Landroid/widget/ImageView;

    .line 233
    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/mms/GlideRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 235
    iput-boolean v0, p0, Lorg/thoughtcrime/securesms/CreateProfileActivity;->imageLoaded:Z

    .line 236
    iget-object v0, p0, Lorg/thoughtcrime/securesms/CreateProfileActivity;->avatar:Landroid/widget/ImageView;

    new-instance v1, Lorg/thoughtcrime/securesms/contacts/avatars/ResourceContactPhoto;

    const v2, 0x7f0800ef

    invoke-direct {v1, v2}, Lorg/thoughtcrime/securesms/contacts/avatars/ResourceContactPhoto;-><init>(I)V

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/CreateProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0600a0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, p0, v2}, Lorg/thoughtcrime/securesms/contacts/avatars/ResourceContactPhoto;->asDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 238
    :goto_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/CreateProfileActivity;->avatar:Landroid/widget/ImageView;

    new-instance v1, Lorg/thoughtcrime/securesms/CreateProfileActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/thoughtcrime/securesms/CreateProfileActivity$$ExternalSyntheticLambda0;-><init>(Lorg/thoughtcrime/securesms/CreateProfileActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initializeProfileName()V
    .locals 3

    const-string v0, "displayname"

    .line 219
    invoke-static {p0, v0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 220
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 221
    iget-object v1, p0, Lorg/thoughtcrime/securesms/CreateProfileActivity;->name:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 222
    iget-object v1, p0, Lorg/thoughtcrime/securesms/CreateProfileActivity;->name:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/widget/EditText;->setSelection(II)V

    :cond_0
    return-void
.end method

.method private initializeResources()V
    .locals 3

    const v0, 0x7f0901bd

    .line 201
    invoke-static {p0, v0}, Lorg/thoughtcrime/securesms/util/ViewUtil;->findById(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090074

    .line 202
    invoke-static {p0, v1}, Lorg/thoughtcrime/securesms/util/ViewUtil;->findById(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lorg/thoughtcrime/securesms/CreateProfileActivity;->avatar:Landroid/widget/ImageView;

    const v1, 0x7f090243

    .line 203
    invoke-static {p0, v1}, Lorg/thoughtcrime/securesms/util/ViewUtil;->findById(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lorg/thoughtcrime/securesms/CreateProfileActivity;->name:Landroid/widget/EditText;

    const v1, 0x7f090111

    .line 204
    invoke-static {p0, v1}, Lorg/thoughtcrime/securesms/util/ViewUtil;->findById(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;

    iput-object v1, p0, Lorg/thoughtcrime/securesms/CreateProfileActivity;->emojiDrawer:Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;

    const v1, 0x7f0900b9

    .line 205
    invoke-static {p0, v1}, Lorg/thoughtcrime/securesms/util/ViewUtil;->findById(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/thoughtcrime/securesms/components/InputAwareLayout;

    iput-object v1, p0, Lorg/thoughtcrime/securesms/CreateProfileActivity;->container:Lorg/thoughtcrime/securesms/components/InputAwareLayout;

    const v1, 0x7f090375

    .line 206
    invoke-static {p0, v1}, Lorg/thoughtcrime/securesms/util/ViewUtil;->findById(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lorg/thoughtcrime/securesms/CreateProfileActivity;->statusView:Landroid/widget/EditText;

    .line 208
    iget-boolean v1, p0, Lorg/thoughtcrime/securesms/CreateProfileActivity;->fromWelcome:Z

    const/16 v2, 0x8

    if-eqz v1, :cond_0

    const-string v1, "addr"

    .line 209
    invoke-static {p0, v1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    const v1, 0x7f1203cb

    .line 210
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f090376

    .line 211
    invoke-static {p0, v0}, Lorg/thoughtcrime/securesms/util/ViewUtil;->findById(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f090197

    .line 212
    invoke-static {p0, v0}, Lorg/thoughtcrime/securesms/util/ViewUtil;->findById(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 214
    :cond_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private initializeStatusText()V
    .locals 2

    const-string v0, "selfstatus"

    .line 272
    invoke-static {p0, v0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 273
    iget-object v1, p0, Lorg/thoughtcrime/securesms/CreateProfileActivity;->statusView:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic lambda$onCreate$0()V
    .locals 0

    return-void
.end method

.method private onFileSelected(Landroid/net/Uri;)V
    .locals 0

    if-nez p1, :cond_0

    .line 194
    iget-object p1, p0, Lorg/thoughtcrime/securesms/CreateProfileActivity;->attachmentManager:Lorg/thoughtcrime/securesms/mms/AttachmentManager;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->getImageCaptureUri()Landroid/net/Uri;

    move-result-object p1

    .line 197
    :cond_0
    invoke-static {p0, p1}, Lorg/thoughtcrime/securesms/profiles/AvatarHelper;->cropAvatar(Landroid/app/Activity;Landroid/net/Uri;)V

    return-void
.end method

.method private setAvatarView(Landroid/net/Uri;)V
    .locals 4

    .line 168
    new-instance v0, Lorg/thoughtcrime/securesms/profiles/ProfileMediaConstraints;

    invoke-direct {v0}, Lorg/thoughtcrime/securesms/profiles/ProfileMediaConstraints;-><init>()V

    .line 169
    invoke-static {p0}, Lorg/thoughtcrime/securesms/mms/GlideApp;->with(Landroidx/fragment/app/FragmentActivity;)Lorg/thoughtcrime/securesms/mms/GlideRequests;

    move-result-object v1

    .line 170
    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/mms/GlideRequests;->asBitmap()Lorg/thoughtcrime/securesms/mms/GlideRequest;

    move-result-object v1

    .line 171
    invoke-virtual {v1, p1}, Lorg/thoughtcrime/securesms/mms/GlideRequest;->load(Landroid/net/Uri;)Lorg/thoughtcrime/securesms/mms/GlideRequest;

    move-result-object v1

    const/4 v2, 0x1

    .line 172
    invoke-virtual {v1, v2}, Lorg/thoughtcrime/securesms/mms/GlideRequest;->skipMemoryCache(Z)Lorg/thoughtcrime/securesms/mms/GlideRequest;

    move-result-object v1

    sget-object v3, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 173
    invoke-virtual {v1, v3}, Lorg/thoughtcrime/securesms/mms/GlideRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lorg/thoughtcrime/securesms/mms/GlideRequest;

    move-result-object v1

    .line 174
    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/mms/GlideRequest;->centerCrop()Lorg/thoughtcrime/securesms/mms/GlideRequest;

    move-result-object v1

    .line 175
    invoke-virtual {v0, p0}, Lorg/thoughtcrime/securesms/profiles/ProfileMediaConstraints;->getImageMaxWidth(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v0, p0}, Lorg/thoughtcrime/securesms/profiles/ProfileMediaConstraints;->getImageMaxHeight(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {v1, v3, v0}, Lorg/thoughtcrime/securesms/mms/GlideRequest;->override(II)Lorg/thoughtcrime/securesms/mms/GlideRequest;

    move-result-object v0

    new-instance v1, Lorg/thoughtcrime/securesms/CreateProfileActivity$1;

    invoke-direct {v1, p0}, Lorg/thoughtcrime/securesms/CreateProfileActivity$1;-><init>(Lorg/thoughtcrime/securesms/CreateProfileActivity;)V

    .line 176
    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/mms/GlideRequest;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    .line 184
    invoke-static {p0}, Lorg/thoughtcrime/securesms/mms/GlideApp;->with(Landroidx/fragment/app/FragmentActivity;)Lorg/thoughtcrime/securesms/mms/GlideRequests;

    move-result-object v0

    .line 185
    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/mms/GlideRequests;->load(Landroid/net/Uri;)Lorg/thoughtcrime/securesms/mms/GlideRequest;

    move-result-object p1

    .line 186
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/mms/GlideRequest;->circleCrop()Lorg/thoughtcrime/securesms/mms/GlideRequest;

    move-result-object p1

    .line 187
    invoke-virtual {p1, v2}, Lorg/thoughtcrime/securesms/mms/GlideRequest;->skipMemoryCache(Z)Lorg/thoughtcrime/securesms/mms/GlideRequest;

    move-result-object p1

    sget-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 188
    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/mms/GlideRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lorg/thoughtcrime/securesms/mms/GlideRequest;

    move-result-object p1

    iget-object v0, p0, Lorg/thoughtcrime/securesms/CreateProfileActivity;->avatar:Landroid/widget/ImageView;

    .line 189
    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/mms/GlideRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method private setStatusText()V
    .locals 2

    .line 323
    iget-object v0, p0, Lorg/thoughtcrime/securesms/CreateProfileActivity;->statusView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "selfstatus"

    .line 324
    invoke-static {p0, v1, v0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->set(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateProfile()V
    .locals 3

    .line 277
    iget-object v0, p0, Lorg/thoughtcrime/securesms/CreateProfileActivity;->name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f120305

    const/4 v1, 0x1

    .line 278
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 281
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/CreateProfileActivity;->name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 283
    new-instance v1, Lorg/thoughtcrime/securesms/CreateProfileActivity$2;

    invoke-direct {v1, p0, v0}, Lorg/thoughtcrime/securesms/CreateProfileActivity$2;-><init>(Lorg/thoughtcrime/securesms/CreateProfileActivity;Ljava/lang/String;)V

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 319
    invoke-virtual {v1, v0, v2}, Lorg/thoughtcrime/securesms/CreateProfileActivity$2;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method synthetic lambda$initializeEmojiInput$2$org-thoughtcrime-securesms-CreateProfileActivity(Landroid/view/View;)V
    .locals 1

    .line 268
    iget-object p1, p0, Lorg/thoughtcrime/securesms/CreateProfileActivity;->container:Lorg/thoughtcrime/securesms/components/InputAwareLayout;

    iget-object v0, p0, Lorg/thoughtcrime/securesms/CreateProfileActivity;->name:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/components/InputAwareLayout;->showSoftkey(Landroid/widget/EditText;)V

    return-void
.end method

.method synthetic lambda$initializeProfileAvatar$1$org-thoughtcrime-securesms-CreateProfileActivity(Landroid/view/View;)V
    .locals 3

    .line 239
    new-instance p1, Lorg/thoughtcrime/securesms/components/AvatarSelector;

    invoke-static {p0}, Landroidx/loader/app/LoaderManager;->getInstance(Landroidx/lifecycle/LifecycleOwner;)Landroidx/loader/app/LoaderManager;

    move-result-object v0

    new-instance v1, Lorg/thoughtcrime/securesms/CreateProfileActivity$AvatarSelectedListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/thoughtcrime/securesms/CreateProfileActivity$AvatarSelectedListener;-><init>(Lorg/thoughtcrime/securesms/CreateProfileActivity;Lorg/thoughtcrime/securesms/CreateProfileActivity$1;)V

    iget-boolean v2, p0, Lorg/thoughtcrime/securesms/CreateProfileActivity;->imageLoaded:Z

    invoke-direct {p1, p0, v0, v1, v2}, Lorg/thoughtcrime/securesms/components/AvatarSelector;-><init>(Landroid/content/Context;Landroidx/loader/app/LoaderManager;Lorg/thoughtcrime/securesms/components/AvatarSelector$AttachmentClickedListener;Z)V

    iget-object v0, p0, Lorg/thoughtcrime/securesms/CreateProfileActivity;->avatar:Landroid/widget/ImageView;

    .line 240
    invoke-virtual {p1, p0, v0}, Lorg/thoughtcrime/securesms/components/AvatarSelector;->show(Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 145
    invoke-super {p0, p1, p2, p3}, Lorg/thoughtcrime/securesms/BaseActionBarActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x1

    if-eq p1, p2, :cond_3

    const/16 p2, 0x1a35

    if-eq p1, p2, :cond_2

    const/16 p2, 0x7ac0

    if-eq p1, p2, :cond_1

    goto :goto_1

    .line 158
    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/CreateProfileActivity;->setAvatarView(Landroid/net/Uri;)V

    goto :goto_1

    .line 162
    :cond_2
    invoke-static {p3}, Lcom/soundcloud/android/crop/Crop;->getOutput(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/CreateProfileActivity;->setAvatarView(Landroid/net/Uri;)V

    goto :goto_1

    :cond_3
    if-eqz p3, :cond_4

    .line 153
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    .line 154
    :goto_0
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/CreateProfileActivity;->onFileSelected(Landroid/net/Uri;)V

    :goto_1
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 120
    iget-object v0, p0, Lorg/thoughtcrime/securesms/CreateProfileActivity;->container:Lorg/thoughtcrime/securesms/components/InputAwareLayout;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/InputAwareLayout;->isInputOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lorg/thoughtcrime/securesms/CreateProfileActivity;->container:Lorg/thoughtcrime/securesms/components/InputAwareLayout;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/CreateProfileActivity;->name:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/components/InputAwareLayout;->hideCurrentInput(Landroid/widget/EditText;)V

    goto :goto_0

    .line 122
    :cond_0
    iget-boolean v0, p0, Lorg/thoughtcrime/securesms/CreateProfileActivity;->fromWelcome:Z

    if-eqz v0, :cond_1

    .line 123
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/CreateProfileActivity;->updateProfile()V

    goto :goto_0

    .line 125
    :cond_1
    invoke-super {p0}, Lorg/thoughtcrime/securesms/BaseActionBarActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 131
    invoke-super {p0, p1}, Lorg/thoughtcrime/securesms/BaseActionBarActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 133
    iget-object p1, p0, Lorg/thoughtcrime/securesms/CreateProfileActivity;->container:Lorg/thoughtcrime/securesms/components/InputAwareLayout;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/components/InputAwareLayout;->getCurrentInput()Lorg/thoughtcrime/securesms/components/InputAwareLayout$InputView;

    move-result-object p1

    iget-object v0, p0, Lorg/thoughtcrime/securesms/CreateProfileActivity;->emojiDrawer:Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;

    if-ne p1, v0, :cond_0

    .line 134
    iget-object p1, p0, Lorg/thoughtcrime/securesms/CreateProfileActivity;->container:Lorg/thoughtcrime/securesms/components/InputAwareLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/components/InputAwareLayout;->hideAttachedInput(Z)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 78
    invoke-super {p0, p1}, Lorg/thoughtcrime/securesms/BaseActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/CreateProfileActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "from_welcome"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/thoughtcrime/securesms/CreateProfileActivity;->fromWelcome:Z

    const p1, 0x7f0c00df

    .line 81
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/CreateProfileActivity;->setContentView(I)V

    .line 83
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/CreateProfileActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const v0, 0x7f120347

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 84
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/CreateProfileActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    iget-boolean v0, p0, Lorg/thoughtcrime/securesms/CreateProfileActivity;->fromWelcome:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 85
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/CreateProfileActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const v0, 0x7f0800fc

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setHomeAsUpIndicator(I)V

    .line 87
    new-instance p1, Lorg/thoughtcrime/securesms/mms/AttachmentManager;

    new-instance v0, Lorg/thoughtcrime/securesms/CreateProfileActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lorg/thoughtcrime/securesms/CreateProfileActivity$$ExternalSyntheticLambda2;-><init>()V

    invoke-direct {p1, p0, v0}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;-><init>(Landroid/app/Activity;Lorg/thoughtcrime/securesms/mms/AttachmentManager$AttachmentListener;)V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/CreateProfileActivity;->attachmentManager:Lorg/thoughtcrime/securesms/mms/AttachmentManager;

    .line 88
    iput-boolean v1, p0, Lorg/thoughtcrime/securesms/CreateProfileActivity;->avatarChanged:Z

    .line 89
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/CreateProfileActivity;->initializeResources()V

    .line 90
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/CreateProfileActivity;->initializeEmojiInput()V

    .line 91
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/CreateProfileActivity;->initializeProfileName()V

    .line 92
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/CreateProfileActivity;->initializeProfileAvatar()V

    .line 93
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/CreateProfileActivity;->initializeStatusText()V

    return-void
.end method

.method public onEmojiSelected(Ljava/lang/String;)V
    .locals 4

    .line 247
    iget-object v0, p0, Lorg/thoughtcrime/securesms/CreateProfileActivity;->name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    .line 248
    iget-object v1, p0, Lorg/thoughtcrime/securesms/CreateProfileActivity;->name:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    .line 250
    iget-object v2, p0, Lorg/thoughtcrime/securesms/CreateProfileActivity;->name:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-interface {v2, v3, v1, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 251
    iget-object v1, p0, Lorg/thoughtcrime/securesms/CreateProfileActivity;->name:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v0, p1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;)V
    .locals 1

    .line 256
    iget-object v0, p0, Lorg/thoughtcrime/securesms/CreateProfileActivity;->name:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 105
    invoke-super {p0, p1}, Lorg/thoughtcrime/securesms/BaseActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 106
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-eq p1, v0, :cond_1

    const v0, 0x7f0901fe

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 111
    :cond_0
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/CreateProfileActivity;->updateProfile()V

    :goto_0
    const/4 p1, 0x0

    return p1

    .line 108
    :cond_1
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/CreateProfileActivity;->onBackPressed()V

    const/4 p1, 0x1

    return p1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 98
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/CreateProfileActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0012

    .line 99
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 140
    invoke-static {p0, p1, p2, p3}, Lorg/thoughtcrime/securesms/permissions/Permissions;->onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V

    return-void
.end method
