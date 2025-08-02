.class public Lorg/thoughtcrime/securesms/qr/QrActivity;
.super Lorg/thoughtcrime/securesms/BaseActionBarActivity;
.source "QrActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/qr/QrActivity$ProfilePagerAdapter;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final REQUEST_CODE_IMAGE:I = 0xb4a3

.field private static final TAB_SCAN:I = 0x1

.field private static final TAB_SHOW:I = 0x0

.field private static final TAG:Ljava/lang/String; = "QrActivity"


# instance fields
.field private qrShowFragment:Lorg/thoughtcrime/securesms/qr/QrShowFragment;

.field private tabLayout:Lcom/google/android/material/tabs/TabLayout;

.field private viewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/BaseActionBarActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/thoughtcrime/securesms/qr/QrActivity;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    .line 44
    iget-object p0, p0, Lorg/thoughtcrime/securesms/qr/QrActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method static synthetic access$100(Lorg/thoughtcrime/securesms/qr/QrActivity;ILorg/thoughtcrime/securesms/qr/QrActivity$ProfilePagerAdapter;Landroidx/viewpager/widget/ViewPager;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lorg/thoughtcrime/securesms/qr/QrActivity;->checkPermissions(ILorg/thoughtcrime/securesms/qr/QrActivity$ProfilePagerAdapter;Landroidx/viewpager/widget/ViewPager;)V

    return-void
.end method

.method static synthetic access$200(Lorg/thoughtcrime/securesms/qr/QrActivity;)Lorg/thoughtcrime/securesms/qr/QrShowFragment;
    .locals 0

    .line 44
    iget-object p0, p0, Lorg/thoughtcrime/securesms/qr/QrActivity;->qrShowFragment:Lorg/thoughtcrime/securesms/qr/QrShowFragment;

    return-object p0
.end method

.method static synthetic access$202(Lorg/thoughtcrime/securesms/qr/QrActivity;Lorg/thoughtcrime/securesms/qr/QrShowFragment;)Lorg/thoughtcrime/securesms/qr/QrShowFragment;
    .locals 0

    .line 44
    iput-object p1, p0, Lorg/thoughtcrime/securesms/qr/QrActivity;->qrShowFragment:Lorg/thoughtcrime/securesms/qr/QrShowFragment;

    return-object p1
.end method

.method private checkPermissions(ILorg/thoughtcrime/securesms/qr/QrActivity$ProfilePagerAdapter;Landroidx/viewpager/widget/ViewPager;)V
    .locals 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 102
    invoke-static {p0}, Lorg/thoughtcrime/securesms/permissions/Permissions;->with(Landroid/app/Activity;)Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.CAMERA"

    aput-object v2, v0, v1

    .line 103
    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->request([Ljava/lang/String;)Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object p1

    .line 104
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->ifNecessary()Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object p1

    const v0, 0x7f1202f4

    .line 105
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/qr/QrActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->withPermanentDenialDialog(Ljava/lang/String;)Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object p1

    new-instance v0, Lorg/thoughtcrime/securesms/qr/QrActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lorg/thoughtcrime/securesms/qr/QrActivity$$ExternalSyntheticLambda0;-><init>(Lorg/thoughtcrime/securesms/qr/QrActivity;Lorg/thoughtcrime/securesms/qr/QrActivity$ProfilePagerAdapter;)V

    .line 106
    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->onAllGranted(Ljava/lang/Runnable;)Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object p1

    new-instance p2, Lorg/thoughtcrime/securesms/qr/QrActivity$$ExternalSyntheticLambda1;

    invoke-direct {p2, p3}, Lorg/thoughtcrime/securesms/qr/QrActivity$$ExternalSyntheticLambda1;-><init>(Landroidx/viewpager/widget/ViewPager;)V

    .line 107
    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->onAnyDenied(Ljava/lang/Runnable;)Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object p1

    .line 108
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->execute()V

    :cond_0
    return-void
.end method

.method static synthetic lambda$checkPermissions$1(Landroidx/viewpager/widget/ViewPager;)V
    .locals 1

    const/4 v0, 0x0

    .line 107
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void
.end method


# virtual methods
.method synthetic lambda$checkPermissions$0$org-thoughtcrime-securesms-qr-QrActivity(Lorg/thoughtcrime/securesms/qr/QrActivity$ProfilePagerAdapter;)V
    .locals 1

    .line 0
    const/4 v0, 0x1

    .line 106
    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/qr/QrActivity$ProfilePagerAdapter;->getItem(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lorg/thoughtcrime/securesms/qr/QrScanFragment;

    invoke-virtual {p1, p0}, Lorg/thoughtcrime/securesms/qr/QrScanFragment;->handleQrScanWithPermissions(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 10

    const-string v0, "uri is not a bitmap: "

    .line 176
    invoke-super {p0, p1, p2, p3}, Lorg/thoughtcrime/securesms/BaseActionBarActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    return-void

    :cond_0
    const p2, 0xb4a3

    if-eq p1, p2, :cond_1

    goto/16 :goto_1

    :cond_1
    if-eqz p3, :cond_2

    .line 183
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_4

    .line 186
    :try_start_0
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/qr/QrActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p2

    .line 187
    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p2

    if-nez p2, :cond_3

    .line 189
    sget-object p2, Lorg/thoughtcrime/securesms/qr/QrActivity;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 192
    :cond_3
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    mul-int v1, p3, v0

    .line 193
    new-array v9, v1, [I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p2

    move-object v2, v9

    move v4, p3

    move v7, p3

    move v8, v0

    .line 194
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 195
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 197
    new-instance p2, Lcom/google/zxing/RGBLuminanceSource;

    invoke-direct {p2, p3, v0, v9}, Lcom/google/zxing/RGBLuminanceSource;-><init>(II[I)V

    .line 198
    new-instance p3, Lcom/google/zxing/BinaryBitmap;

    new-instance v0, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {v0, p2}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {p3, v0}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    .line 199
    new-instance p2, Lcom/google/zxing/MultiFormatReader;

    invoke-direct {p2}, Lcom/google/zxing/MultiFormatReader;-><init>()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 201
    :try_start_1
    invoke-virtual {p2, p3}, Lcom/google/zxing/MultiFormatReader;->decode(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    move-result-object p2

    .line 202
    new-instance p3, Lorg/thoughtcrime/securesms/qr/QrCodeHandler;

    invoke-direct {p3, p0}, Lorg/thoughtcrime/securesms/qr/QrCodeHandler;-><init>(Landroid/app/Activity;)V

    .line 203
    invoke-virtual {p2}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lorg/thoughtcrime/securesms/qr/QrCodeHandler;->handleQrData(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/google/zxing/NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-exception p2

    .line 205
    :try_start_2
    sget-object p3, Lorg/thoughtcrime/securesms/qr/QrActivity;->TAG:Ljava/lang/String;

    const-string v0, "decode exception"

    invoke-static {p3, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const p2, 0x7f120387

    .line 206
    invoke-virtual {p0, p2}, Lorg/thoughtcrime/securesms/qr/QrActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    invoke-static {p0, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p2

    .line 209
    sget-object p3, Lorg/thoughtcrime/securesms/qr/QrActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "can not open file: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 63
    invoke-super {p0, p1}, Lorg/thoughtcrime/securesms/BaseActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c001e

    .line 65
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/qr/QrActivity;->setContentView(I)V

    const p1, 0x7f09038b

    .line 66
    invoke-static {p0, p1}, Lorg/thoughtcrime/securesms/util/ViewUtil;->findById(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/tabs/TabLayout;

    iput-object p1, p0, Lorg/thoughtcrime/securesms/qr/QrActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    const p1, 0x7f090286

    .line 67
    invoke-static {p0, p1}, Lorg/thoughtcrime/securesms/util/ViewUtil;->findById(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    iput-object p1, p0, Lorg/thoughtcrime/securesms/qr/QrActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 68
    new-instance p1, Lorg/thoughtcrime/securesms/qr/QrActivity$ProfilePagerAdapter;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/qr/QrActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-direct {p1, p0, p0, v0}, Lorg/thoughtcrime/securesms/qr/QrActivity$ProfilePagerAdapter;-><init>(Lorg/thoughtcrime/securesms/qr/QrActivity;Lorg/thoughtcrime/securesms/qr/QrActivity;Landroidx/fragment/app/FragmentManager;)V

    .line 69
    iget-object v0, p0, Lorg/thoughtcrime/securesms/qr/QrActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    const v0, 0x7f0903b4

    .line 71
    invoke-static {p0, v0}, Lorg/thoughtcrime/securesms/util/ViewUtil;->findById(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/qr/QrActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 73
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/qr/QrActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const v1, 0x7f12024b

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 74
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/qr/QrActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 76
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "qrTab"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 77
    iget-object v1, p0, Lorg/thoughtcrime/securesms/qr/QrActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 79
    iget-object v1, p0, Lorg/thoughtcrime/securesms/qr/QrActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v2, Lorg/thoughtcrime/securesms/qr/QrActivity$1;

    invoke-direct {v2, p0, p1}, Lorg/thoughtcrime/securesms/qr/QrActivity$1;-><init>(Lorg/thoughtcrime/securesms/qr/QrActivity;Lorg/thoughtcrime/securesms/qr/QrActivity$ProfilePagerAdapter;)V

    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 95
    iget-object v1, p0, Lorg/thoughtcrime/securesms/qr/QrActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/qr/QrActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v2}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 97
    iget-object v1, p0, Lorg/thoughtcrime/securesms/qr/QrActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-direct {p0, v0, p1, v1}, Lorg/thoughtcrime/securesms/qr/QrActivity;->checkPermissions(ILorg/thoughtcrime/securesms/qr/QrActivity$ProfilePagerAdapter;Landroidx/viewpager/widget/ViewPager;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 132
    invoke-super {p0, p1}, Lorg/thoughtcrime/securesms/BaseActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 134
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 148
    :sswitch_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/qr/QrActivity;->qrShowFragment:Lorg/thoughtcrime/securesms/qr/QrShowFragment;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/qr/QrShowFragment;->withdrawQr()V

    goto :goto_0

    .line 142
    :sswitch_1
    iget-object p1, p0, Lorg/thoughtcrime/securesms/qr/QrActivity;->qrShowFragment:Lorg/thoughtcrime/securesms/qr/QrShowFragment;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/qr/QrShowFragment;->shareInviteURL()V

    goto :goto_0

    .line 154
    :sswitch_2
    new-instance p1, Lorg/thoughtcrime/securesms/qr/QrCodeHandler;

    invoke-direct {p1, p0}, Lorg/thoughtcrime/securesms/qr/QrCodeHandler;-><init>(Landroid/app/Activity;)V

    .line 155
    invoke-static {p0}, Lorg/thoughtcrime/securesms/util/Util;->getTextFromClipboard(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/qr/QrCodeHandler;->handleQrData(Ljava/lang/String;)V

    goto :goto_0

    .line 139
    :sswitch_3
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lorg/thoughtcrime/securesms/contacts/NewContactActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/qr/QrActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_4
    const p1, 0xb4a3

    .line 151
    invoke-static {p0, p1}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->selectImage(Landroid/app/Activity;I)V

    goto :goto_0

    .line 145
    :sswitch_5
    iget-object p1, p0, Lorg/thoughtcrime/securesms/qr/QrActivity;->qrShowFragment:Lorg/thoughtcrime/securesms/qr/QrShowFragment;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/qr/QrShowFragment;->copyQrData()V

    goto :goto_0

    .line 136
    :sswitch_6
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/qr/QrActivity;->finish()V

    const/4 p1, 0x1

    return p1

    :goto_0
    const/4 p1, 0x0

    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_6
        0x7f0900ca -> :sswitch_5
        0x7f0901b0 -> :sswitch_4
        0x7f09024e -> :sswitch_3
        0x7f090290 -> :sswitch_2
        0x7f090330 -> :sswitch_1
        0x7f0903ec -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 3

    .line 125
    invoke-super {p0}, Lorg/thoughtcrime/securesms/BaseActionBarActivity;->onPause()V

    .line 126
    iget-object v0, p0, Lorg/thoughtcrime/securesms/qr/QrActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    move-result v0

    .line 127
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "qrTab"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method protected onPreCreate()V
    .locals 1

    .line 57
    new-instance v0, Lorg/thoughtcrime/securesms/util/DynamicNoActionBarTheme;

    invoke-direct {v0}, Lorg/thoughtcrime/securesms/util/DynamicNoActionBarTheme;-><init>()V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/qr/QrActivity;->dynamicTheme:Lorg/thoughtcrime/securesms/util/DynamicTheme;

    .line 58
    invoke-super {p0}, Lorg/thoughtcrime/securesms/BaseActionBarActivity;->onPreCreate()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 114
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 115
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/qr/QrActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0015

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 116
    iget-object v0, p0, Lorg/thoughtcrime/securesms/qr/QrActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const v0, 0x7f0903ec

    .line 117
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f0900ca

    .line 118
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 120
    :cond_0
    invoke-super {p0, p1}, Lorg/thoughtcrime/securesms/BaseActionBarActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 164
    invoke-static {p0, p1, p2, p3}, Lorg/thoughtcrime/securesms/permissions/Permissions;->onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V

    .line 165
    array-length p1, p2

    if-lez p1, :cond_0

    const-string p1, "android.permission.CAMERA"

    const/4 v0, 0x0

    aget-object p2, p2, v0

    .line 166
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    aget p1, p3, v0

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    .line 168
    iget-object p1, p0, Lorg/thoughtcrime/securesms/qr/QrActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :cond_0
    return-void
.end method
