.class public Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity;
.super Lorg/thoughtcrime/securesms/PassphraseRequiredActionBarActivity;
.source "ChatBackgroundActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity$DefaultClickListener;,
        Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity$GalleryClickListener;
    }
.end annotation


# instance fields
.field private accountId:I

.field defaultButton:Landroid/widget/Button;

.field galleryButton:Landroid/widget/Button;

.field imageUpdate:Ljava/lang/Boolean;

.field imageUri:Landroid/net/Uri;

.field preview:Landroid/widget/ImageView;

.field tempDestinationPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/PassphraseRequiredActionBarActivity;-><init>()V

    const/4 v0, 0x0

    .line 45
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity;->imageUpdate:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic access$200(Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity;)I
    .locals 0

    .line 37
    iget p0, p0, Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity;->accountId:I

    return p0
.end method

.method static synthetic access$300(Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity;->scaleAndSaveImage(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity;->setLayoutBackgroundImage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity;->setDefaultLayoutBackgroundImage()V

    return-void
.end method

.method private scaleAndSaveImage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    const-string v0, ""

    .line 121
    :try_start_0
    invoke-static {p1}, Lorg/thoughtcrime/securesms/util/ServiceUtil;->getWindowManager(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 122
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 123
    invoke-virtual {v1, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 125
    iget v1, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 126
    invoke-static {p1}, Lorg/thoughtcrime/securesms/mms/GlideApp;->with(Landroid/content/Context;)Lorg/thoughtcrime/securesms/mms/GlideRequests;

    move-result-object v2

    .line 127
    invoke-virtual {v2}, Lorg/thoughtcrime/securesms/mms/GlideRequests;->asBitmap()Lorg/thoughtcrime/securesms/mms/GlideRequest;

    move-result-object v2

    iget-object v3, p0, Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity;->imageUri:Landroid/net/Uri;

    .line 128
    invoke-virtual {v2, v3}, Lorg/thoughtcrime/securesms/mms/GlideRequest;->load(Landroid/net/Uri;)Lorg/thoughtcrime/securesms/mms/GlideRequest;

    move-result-object v2

    .line 129
    invoke-virtual {v2}, Lorg/thoughtcrime/securesms/mms/GlideRequest;->fitCenter()Lorg/thoughtcrime/securesms/mms/GlideRequest;

    move-result-object v2

    const/4 v3, 0x1

    .line 130
    invoke-virtual {v2, v3}, Lorg/thoughtcrime/securesms/mms/GlideRequest;->skipMemoryCache(Z)Lorg/thoughtcrime/securesms/mms/GlideRequest;

    move-result-object v2

    sget-object v3, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 131
    invoke-virtual {v2, v3}, Lorg/thoughtcrime/securesms/mms/GlideRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lorg/thoughtcrime/securesms/mms/GlideRequest;

    move-result-object v2

    .line 132
    invoke-virtual {v2, v1, v1}, Lorg/thoughtcrime/securesms/mms/GlideRequest;->submit(II)Lcom/bumptech/glide/request/FutureTarget;

    move-result-object v1

    .line 133
    invoke-interface {v1}, Lcom/bumptech/glide/request/FutureTarget;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 134
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 135
    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x55

    invoke-virtual {v1, p2, v3, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 145
    invoke-virtual {p2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 146
    iget p2, p0, Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity;->accountId:I

    invoke-static {p1, p2, v0}, Lorg/thoughtcrime/securesms/util/Prefs;->setBackgroundImagePath(Landroid/content/Context;ILjava/lang/String;)V

    .line 147
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity;->showBackgroundSaveError()V

    goto :goto_0

    :catch_1
    move-exception p2

    .line 141
    invoke-virtual {p2}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    .line 142
    iget p2, p0, Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity;->accountId:I

    invoke-static {p1, p2, v0}, Lorg/thoughtcrime/securesms/util/Prefs;->setBackgroundImagePath(Landroid/content/Context;ILjava/lang/String;)V

    .line 143
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity;->showBackgroundSaveError()V

    goto :goto_0

    :catch_2
    move-exception p2

    .line 137
    invoke-virtual {p2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 138
    iget p2, p0, Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity;->accountId:I

    invoke-static {p1, p2, v0}, Lorg/thoughtcrime/securesms/util/Prefs;->setBackgroundImagePath(Landroid/content/Context;ILjava/lang/String;)V

    .line 139
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity;->showBackgroundSaveError()V

    :goto_0
    return-void
.end method

.method private setDefaultLayoutBackgroundImage()V
    .locals 2

    .line 157
    invoke-static {p0}, Lorg/thoughtcrime/securesms/util/DynamicTheme;->isDarkTheme(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08007e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 159
    iget-object v1, p0, Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity;->preview:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 162
    :cond_0
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08007d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 163
    iget-object v1, p0, Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity;->preview:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method private setLayoutBackgroundImage(Ljava/lang/String;)V
    .locals 1

    .line 152
    invoke-static {p1}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 153
    iget-object v0, p0, Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity;->preview:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private showBackgroundSaveError()V
    .locals 2

    const v0, 0x7f120135

    const/4 v1, 0x1

    .line 192
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 169
    invoke-super {p0, p1, p2, p3}, Lorg/thoughtcrime/securesms/PassphraseRequiredActionBarActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 170
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz p3, :cond_1

    if-eqz v0, :cond_1

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    const/16 p2, 0xb

    if-ne p1, p2, :cond_1

    .line 172
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity;->imageUri:Landroid/net/Uri;

    if-eqz p1, :cond_0

    .line 174
    new-instance p1, Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity$2;

    invoke-direct {p1, p0, v0}, Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity$2;-><init>(Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity;Landroid/content/Context;)V

    .line 185
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_0
    const/4 p1, 0x1

    .line 187
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity;->imageUpdate:Ljava/lang/Boolean;

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;Z)V
    .locals 1

    const p1, 0x7f0c0022

    .line 51
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity;->setContentView(I)V

    const p1, 0x7f090326

    .line 53
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity;->defaultButton:Landroid/widget/Button;

    const p1, 0x7f09015d

    .line 54
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity;->galleryButton:Landroid/widget/Button;

    const p1, 0x7f0902a1

    .line 55
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity;->preview:Landroid/widget/ImageView;

    .line 56
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/b44t/messenger/DcContext;->getAccountId()I

    move-result p1

    iput p1, p0, Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity;->accountId:I

    .line 58
    iget-object p1, p0, Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity;->defaultButton:Landroid/widget/Button;

    new-instance p2, Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity$DefaultClickListener;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity$DefaultClickListener;-><init>(Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity;Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity$1;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object p1, p0, Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity;->galleryButton:Landroid/widget/Button;

    new-instance p2, Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity$GalleryClickListener;

    invoke-direct {p2, p0, v0}, Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity$GalleryClickListener;-><init>(Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity;Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity$1;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget p1, p0, Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity;->accountId:I

    invoke-static {p0, p1}, Lorg/thoughtcrime/securesms/util/Prefs;->getBackgroundImagePath(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    .line 62
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 63
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity;->setDefaultLayoutBackgroundImage()V

    goto :goto_0

    .line 65
    :cond_0
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity;->setLayoutBackgroundImage(Ljava/lang/String;)V

    .line 68
    :goto_0
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_1

    const p2, 0x7f12030a

    .line 70
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    const/4 p2, 0x1

    .line 71
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const p2, 0x7f0800fc

    .line 72
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/ActionBar;->setHomeAsUpIndicator(I)V

    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 88
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f09005d

    const/4 v2, 0x1

    if-ne v0, v1, :cond_2

    .line 92
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 93
    iget-object v0, p0, Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity;->imageUpdate:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity;->imageUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 95
    new-instance v0, Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity$1;

    invoke-direct {v0, p0, p1}, Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity$1;-><init>(Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity;Landroid/content/Context;)V

    .line 103
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 105
    :cond_0
    iget v0, p0, Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity;->accountId:I

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lorg/thoughtcrime/securesms/util/Prefs;->setBackgroundImagePath(Landroid/content/Context;ILjava/lang/String;)V

    .line 108
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity;->finish()V

    return v2

    :cond_2
    const v1, 0x102002c

    if-ne v0, v1, :cond_3

    .line 112
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity;->finish()V

    return v2

    .line 116
    :cond_3
    invoke-super {p0, p1}, Lorg/thoughtcrime/securesms/PassphraseRequiredActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 79
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 80
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    const v1, 0x7f0e0003

    .line 81
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 82
    invoke-super {p0, p1}, Lorg/thoughtcrime/securesms/PassphraseRequiredActionBarActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    const/4 p1, 0x1

    return p1
.end method
