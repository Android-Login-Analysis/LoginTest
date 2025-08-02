.class public Lorg/thoughtcrime/securesms/scribbles/ScribbleActivity;
.super Lorg/thoughtcrime/securesms/PassphraseRequiredActionBarActivity;
.source "ScribbleActivity.java"


# static fields
.field public static final CROP_AVATAR:Ljava/lang/String; = "crop_avatar"

.field public static final SCRIBBLE_REQUEST_CODE:I = 0x7ac0


# instance fields
.field imageEditorFragment:Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/PassphraseRequiredActionBarActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected allowInLockedMode()Z
    .locals 3

    .line 15
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/scribbles/ScribbleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "crop_avatar"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;Z)V
    .locals 1

    const p1, 0x7f0c00f7

    .line 26
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/scribbles/ScribbleActivity;->setContentView(I)V

    .line 27
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/scribbles/ScribbleActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string p2, "crop_avatar"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 28
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/scribbles/ScribbleActivity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    invoke-static {p2, p1}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;->newInstance(Landroid/net/Uri;Z)Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;

    move-result-object p1

    const p2, 0x7f0902f4

    invoke-virtual {p0, p2, p1}, Lorg/thoughtcrime/securesms/scribbles/ScribbleActivity;->initFragment(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;

    iput-object p1, p0, Lorg/thoughtcrime/securesms/scribbles/ScribbleActivity;->imageEditorFragment:Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;

    return-void
.end method

.method protected onPreCreate()V
    .locals 1

    .line 20
    new-instance v0, Lorg/thoughtcrime/securesms/util/DynamicNoActionBarTheme;

    invoke-direct {v0}, Lorg/thoughtcrime/securesms/util/DynamicNoActionBarTheme;-><init>()V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/ScribbleActivity;->dynamicTheme:Lorg/thoughtcrime/securesms/util/DynamicTheme;

    .line 21
    invoke-super {p0}, Lorg/thoughtcrime/securesms/PassphraseRequiredActionBarActivity;->onPreCreate()V

    return-void
.end method
