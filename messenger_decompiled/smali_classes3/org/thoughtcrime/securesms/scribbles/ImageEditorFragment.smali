.class public final Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;
.super Landroidx/fragment/app/Fragment;
.source "ImageEditorFragment.java"

# interfaces
.implements Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$EventListener;
.implements Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker$OnColorChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment$Data;
    }
.end annotation


# static fields
.field private static final KEY_IMAGE_URI:Ljava/lang/String; = "image_uri"

.field public static final SELECT_STICKER_REQUEST_CODE:I = 0x7b

.field private static final TAG:Ljava/lang/String; = "ImageEditorFragment"


# instance fields
.field private cropAvatar:Z

.field private currentSelection:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

.field private imageEditorHud:Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;

.field private imageEditorView:Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;

.field private imageMaxHeight:I

.field private imageMaxWidth:I

.field private imageUri:Landroid/net/Uri;

.field private restoredModel:Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;

.field private final selectionListener:Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$TapListener;


# direct methods
.method public static synthetic $r8$lambda$Hm3xF3WgegPksjRd5sA8VMlfdqQ(Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;)V
    .locals 0

    invoke-direct {p0}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;->refreshUniqueColors()V

    return-void
.end method

.method public static synthetic $r8$lambda$otc69OHuh-hePxjUOZtUEk05Pbk(Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;->onUndoRedoAvailabilityChanged(ZZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 333
    new-instance v0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment$1;

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment$1;-><init>(Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;)V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;->selectionListener:Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$TapListener;

    return-void
.end method

.method static synthetic access$000(Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;)Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;
    .locals 0

    .line 40
    iget-object p0, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;->currentSelection:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    return-object p0
.end method

.method static synthetic access$002(Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;
    .locals 0

    .line 40
    iput-object p1, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;->currentSelection:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    return-object p1
.end method

.method static synthetic access$100(Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;)Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;
    .locals 0

    .line 40
    iget-object p0, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;->imageEditorHud:Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;

    return-object p0
.end method

.method static synthetic access$200(Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;)Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;
    .locals 0

    .line 40
    iget-object p0, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;->imageEditorView:Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;

    return-object p0
.end method

.method static synthetic access$300(Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;Z)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;->startTextEntityEditing(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;Z)V

    return-void
.end method

.method private changeEntityColor(I)V
    .locals 2

    .line 171
    iget-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;->currentSelection:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->getRenderer()Lorg/thoughtcrime/securesms/imageeditor/Renderer;

    move-result-object v0

    .line 173
    instance-of v1, v0, Lorg/thoughtcrime/securesms/imageeditor/ColorableRenderer;

    if-eqz v1, :cond_0

    .line 174
    check-cast v0, Lorg/thoughtcrime/securesms/imageeditor/ColorableRenderer;

    invoke-interface {v0, p1}, Lorg/thoughtcrime/securesms/imageeditor/ColorableRenderer;->setColor(I)V

    .line 175
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;->refreshUniqueColors()V

    :cond_0
    return-void
.end method

.method public static newInstance(Landroid/net/Uri;Z)Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;
    .locals 2

    .line 88
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "image_uri"

    .line 89
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 91
    new-instance v1, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;

    invoke-direct {v1}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;-><init>()V

    .line 92
    iput-boolean p1, v1, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;->cropAvatar:Z

    .line 93
    invoke-virtual {v1, v0}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;->setArguments(Landroid/os/Bundle;)V

    .line 94
    invoke-virtual {v1, p0}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;->setUri(Landroid/net/Uri;)V

    return-object v1
.end method

.method private onUndoRedoAvailabilityChanged(ZZ)V
    .locals 0

    .line 330
    iget-object p2, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;->imageEditorHud:Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;

    invoke-virtual {p2, p1}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->setUndoAvailability(Z)V

    return-void
.end method

.method private refreshUniqueColors()V
    .locals 2

    .line 326
    iget-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;->imageEditorHud:Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;->imageEditorView:Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->getModel()Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;

    move-result-object v1

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->getUniqueColorsIgnoringAlpha()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->setColorPalette(Ljava/util/Set;)V

    return-void
.end method

.method private startTextEntityEditing(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;Z)V
    .locals 2

    .line 181
    iget-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;->imageEditorView:Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/thoughtcrime/securesms/util/Prefs;->isIncognitoKeyboardEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, p1, v1, p2}, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->startTextEditing(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;ZZ)V

    return-void
.end method


# virtual methods
.method protected addText()V
    .locals 3

    .line 186
    iget-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;->imageEditorHud:Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->getActiveColor()I

    move-result v0

    .line 187
    new-instance v1, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;

    const-string v2, ""

    invoke-direct {v1, v2, v0}, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;-><init>(Ljava/lang/String;I)V

    .line 188
    new-instance v0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    invoke-direct {v0, v1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;-><init>(Lorg/thoughtcrime/securesms/imageeditor/Renderer;)V

    .line 190
    iget-object v1, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;->imageEditorView:Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->getModel()Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0, v2}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->addElementCentered(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;F)V

    .line 191
    iget-object v1, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;->imageEditorView:Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->invalidate()V

    .line 193
    iput-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;->currentSelection:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    const/4 v1, 0x1

    .line 195
    invoke-direct {p0, v0, v1}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;->startTextEntityEditing(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;Z)V

    return-void
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 167
    iget-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;->imageUri:Landroid/net/Uri;

    return-object v0
.end method

.method synthetic lambda$onSave$0$org-thoughtcrime-securesms-scribbles-ImageEditorFragment()V
    .locals 6

    .line 255
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 259
    :cond_0
    iget-object v1, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;->imageEditorView:Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->getModel()Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->render(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 260
    invoke-static {}, Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider;->getInstance()Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider;

    move-result-object v2

    .line 261
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 262
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x50

    invoke-virtual {v1, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 264
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 269
    iget-boolean v3, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;->cropAvatar:Z

    if-eqz v3, :cond_1

    .line 270
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "cropped"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 272
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 273
    invoke-virtual {v3, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 274
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 275
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 276
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 278
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    return-void

    :cond_1
    const-string v3, "image/jpeg"

    const/4 v4, 0x0

    .line 282
    invoke-virtual {v2, v0, v1, v3, v4}, Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider;->create(Landroid/content/Context;[BLjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 285
    :goto_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 286
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 287
    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 288
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 200
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/16 p2, 0x7b

    if-ne p1, p2, :cond_0

    if-eqz p3, :cond_0

    const-string p1, "extra_sticker_file"

    .line 202
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 204
    new-instance p2, Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "file:///android_asset/"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iget p3, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;->imageMaxWidth:I

    iget v0, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;->imageMaxHeight:I

    const/4 v1, 0x0

    invoke-direct {p2, p1, v1, p3, v0}, Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer;-><init>(Landroid/net/Uri;ZII)V

    .line 205
    new-instance p1, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    invoke-direct {p1, p2}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;-><init>(Lorg/thoughtcrime/securesms/imageeditor/Renderer;)V

    .line 206
    iget-object p2, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;->imageEditorView:Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->getModel()Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;

    move-result-object p2

    const p3, 0x3e4ccccd    # 0.2f

    invoke-virtual {p2, p1, p3}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->addElementCentered(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;F)V

    .line 207
    iput-object p1, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;->currentSelection:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    goto :goto_0

    .line 209
    :cond_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;->imageEditorHud:Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;

    sget-object p2, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;->NONE:Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;

    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->enterMode(Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;)V

    :goto_0
    return-void
.end method

.method public onColorChange(I)V
    .locals 1

    .line 294
    iget-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;->imageEditorView:Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->setDrawingBrushColor(I)V

    .line 295
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;->changeEntityColor(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 100
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 102
    iget-object p1, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;->imageUri:Landroid/net/Uri;

    if-nez p1, :cond_0

    .line 103
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "image_uri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    iput-object p1, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;->imageUri:Landroid/net/Uri;

    .line 106
    :cond_0
    new-instance p1, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorMediaConstraints;

    invoke-direct {p1}, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorMediaConstraints;-><init>()V

    .line 108
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/mms/MediaConstraints;->getImageMaxWidth(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;->imageMaxWidth:I

    .line 109
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/mms/MediaConstraints;->getImageMaxHeight(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;->imageMaxHeight:I

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c0077

    const/4 v0, 0x0

    .line 115
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDelete()V
    .locals 2

    .line 306
    iget-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;->imageEditorView:Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;->currentSelection:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->deleteElement(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)V

    .line 307
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;->refreshUniqueColors()V

    return-void
.end method

.method public onFlipHorizontal()V
    .locals 1

    .line 312
    iget-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;->imageEditorView:Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->getModel()Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->flipHorizontal()V

    return-void
.end method

.method public onModeStarted(Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;)V
    .locals 3

    .line 215
    iget-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;->imageEditorView:Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;

    sget-object v1, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$Mode;->MoveAndResize:Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$Mode;

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->setMode(Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$Mode;)V

    .line 216
    iget-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;->imageEditorView:Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->doneTextEditing()V

    .line 218
    sget-object v0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment$2;->$SwitchMap$org$thoughtcrime$securesms$scribbles$ImageEditorHud$Mode:[I

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 246
    :pswitch_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;->imageEditorView:Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->getModel()Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;

    move-result-object p1

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->doneCrop()V

    const/4 p1, 0x0

    .line 247
    iput-object p1, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;->currentSelection:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    goto :goto_0

    .line 241
    :pswitch_1
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lorg/thoughtcrime/securesms/scribbles/StickerSelectActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v0, 0x7b

    .line 242
    invoke-virtual {p0, p1, v0}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 237
    :pswitch_2
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;->addText()V

    goto :goto_0

    .line 232
    :pswitch_3
    iget-object p1, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;->imageEditorView:Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    const/4 v1, 0x1

    const v2, 0x3d99999a    # 0.075f

    invoke-virtual {p1, v2, v0, v1}, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->startDrawing(FLandroid/graphics/Paint$Cap;Z)V

    goto :goto_0

    .line 228
    :pswitch_4
    iget-object p1, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;->imageEditorView:Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;

    const v1, 0x3cf5c28f    # 0.03f

    sget-object v2, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v1, v2, v0}, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->startDrawing(FLandroid/graphics/Paint$Cap;Z)V

    goto :goto_0

    .line 224
    :pswitch_5
    iget-object p1, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;->imageEditorView:Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;

    const v1, 0x3c23d70a    # 0.01f

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v1, v2, v0}, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->startDrawing(FLandroid/graphics/Paint$Cap;Z)V

    goto :goto_0

    .line 220
    :pswitch_6
    iget-object p1, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;->imageEditorView:Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->getModel()Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;

    move-result-object p1

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->startCrop()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onRequestFullScreen(ZZ)V
    .locals 0

    return-void
.end method

.method public onRotate90AntiClockwise()V
    .locals 1

    .line 317
    iget-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;->imageEditorView:Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->getModel()Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->rotate90anticlockwise()V

    return-void
.end method

.method public onSave()V
    .locals 1

    .line 254
    new-instance v0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment$$ExternalSyntheticLambda2;-><init>(Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;)V

    invoke-static {v0}, Lorg/thoughtcrime/securesms/util/Util;->runOnBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 157
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 158
    new-instance v0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment$Data;

    invoke-direct {v0, p1}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment$Data;-><init>(Landroid/os/Bundle;)V

    iget-object p1, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;->imageEditorView:Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->getModel()Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment$Data;->writeModel(Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;)V

    return-void
.end method

.method public onUndo()V
    .locals 1

    .line 300
    iget-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;->imageEditorView:Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->getModel()Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->undo()V

    .line 301
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;->refreshUniqueColors()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    .line 120
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v0, 0x7f0902fb

    .line 122
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;->imageEditorHud:Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;

    const v0, 0x7f090185

    .line 123
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;

    iput-object p1, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;->imageEditorView:Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;

    .line 125
    iget-object p1, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;->imageEditorHud:Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;

    invoke-virtual {p1, p0}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->setEventListener(Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$EventListener;)V

    .line 127
    iget-object p1, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;->imageEditorView:Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;

    iget-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;->selectionListener:Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$TapListener;

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->setTapListener(Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$TapListener;)V

    .line 128
    iget-object p1, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;->imageEditorView:Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;

    new-instance v0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment$$ExternalSyntheticLambda0;-><init>(Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;)V

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->setDrawingChangedListener(Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$DrawingChangedListener;)V

    .line 129
    iget-object p1, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;->imageEditorView:Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;

    new-instance v0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment$$ExternalSyntheticLambda1;-><init>(Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;)V

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->setUndoRedoStackListener(Lorg/thoughtcrime/securesms/imageeditor/UndoRedoStackListener;)V

    .line 133
    iget-object p1, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;->restoredModel:Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 135
    iput-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;->restoredModel:Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 137
    new-instance p1, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment$Data;

    invoke-direct {p1, p2}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment$Data;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment$Data;->readModel()Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    if-nez p1, :cond_3

    .line 141
    iget-boolean p1, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;->cropAvatar:Z

    if-eqz p1, :cond_2

    invoke-static {}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->createForCircleEditing()Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;

    move-result-object p1

    goto :goto_1

    :cond_2
    new-instance p1, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;

    invoke-direct {p1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;-><init>()V

    .line 142
    :goto_1
    new-instance p2, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    new-instance v0, Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;->imageUri:Landroid/net/Uri;

    iget v2, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;->imageMaxWidth:I

    iget v3, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;->imageMaxHeight:I

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2, v3}, Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer;-><init>(Landroid/net/Uri;ZII)V

    invoke-direct {p2, v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;-><init>(Lorg/thoughtcrime/securesms/imageeditor/Renderer;)V

    .line 143
    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->getFlags()Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;->setSelectable(Z)Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;

    move-result-object v0

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;->persist()V

    .line 144
    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->addElement(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)V

    .line 147
    :cond_3
    iget-object p2, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;->imageEditorView:Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;

    invoke-virtual {p2, p1}, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->setModel(Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;)V

    .line 149
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;->refreshUniqueColors()V

    .line 150
    iget-boolean p1, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;->cropAvatar:Z

    if-eqz p1, :cond_4

    .line 151
    iget-object p1, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;->imageEditorHud:Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;

    sget-object p2, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;->CROP:Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;

    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->setMode(Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;)V

    :cond_4
    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;->imageUri:Landroid/net/Uri;

    return-void
.end method
