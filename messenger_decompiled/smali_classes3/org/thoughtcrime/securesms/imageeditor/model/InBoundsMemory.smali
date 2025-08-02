.class final Lorg/thoughtcrime/securesms/imageeditor/model/InBoundsMemory;
.super Ljava/lang/Object;
.source "InBoundsMemory.java"


# instance fields
.field private final lastGoodMainImage:Landroid/graphics/Matrix;

.field private final lastGoodUserCrop:Landroid/graphics/Matrix;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/InBoundsMemory;->lastGoodUserCrop:Landroid/graphics/Matrix;

    .line 10
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/InBoundsMemory;->lastGoodMainImage:Landroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method getLastKnownGoodMainImageMatrix()Landroid/graphics/Matrix;
    .locals 2

    .line 32
    new-instance v0, Landroid/graphics/Matrix;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/InBoundsMemory;->lastGoodMainImage:Landroid/graphics/Matrix;

    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    return-object v0
.end method

.method push(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)V
    .locals 2

    if-nez p1, :cond_0

    .line 14
    iget-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/InBoundsMemory;->lastGoodMainImage:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/InBoundsMemory;->lastGoodMainImage:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->getLocalMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 17
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/InBoundsMemory;->lastGoodMainImage:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->getEditorMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 20
    :goto_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/InBoundsMemory;->lastGoodUserCrop:Landroid/graphics/Matrix;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->getLocalMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 21
    iget-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/InBoundsMemory;->lastGoodUserCrop:Landroid/graphics/Matrix;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->getEditorMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    return-void
.end method

.method restore(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;Ljava/lang/Runnable;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 26
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/InBoundsMemory;->lastGoodMainImage:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0, p3}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->animateLocalTo(Landroid/graphics/Matrix;Ljava/lang/Runnable;)V

    .line 28
    :cond_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/InBoundsMemory;->lastGoodUserCrop:Landroid/graphics/Matrix;

    invoke-virtual {p2, p1, p3}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->animateLocalTo(Landroid/graphics/Matrix;Ljava/lang/Runnable;)V

    return-void
.end method
