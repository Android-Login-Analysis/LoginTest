.class public final Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;
.super Ljava/lang/Object;
.source "EditorModel.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lorg/thoughtcrime/securesms/imageeditor/RendererContext$Ready;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;",
            ">;"
        }
    .end annotation
.end field

.field private static final MINIMUM_CROP_PIXEL_COUNT:I = 0x64

.field private static final MINIMUM_OUTPUT_WIDTH:I = 0x400

.field private static final MINIMUM_RATIO:Landroid/graphics/Point;

.field private static final NULL_RUNNABLE:Ljava/lang/Runnable;

.field public static final Z_DRAWING:I = 0x0

.field public static final Z_MASK:I = -0x1

.field public static final Z_STICKERS:I = 0x0

.field public static final Z_TEXT:I = 0x1


# instance fields
.field private final circleEditing:Z

.field private final cropUndoRedoStacks:Lorg/thoughtcrime/securesms/imageeditor/model/UndoRedoStacks;

.field private editorElementHierarchy:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;

.field private final inBoundsMemory:Lorg/thoughtcrime/securesms/imageeditor/model/InBoundsMemory;

.field private invalidate:Ljava/lang/Runnable;

.field private final size:Landroid/graphics/Point;

.field private undoRedoStackListener:Lorg/thoughtcrime/securesms/imageeditor/UndoRedoStackListener;

.field private final undoRedoStacks:Lorg/thoughtcrime/securesms/imageeditor/model/UndoRedoStacks;

.field private final visibleViewPort:Landroid/graphics/RectF;


# direct methods
.method public static synthetic $r8$lambda$5o7u7OfHWReLR05oiVRCX6Qxqkc(Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;)Z
    .locals 0

    invoke-direct {p0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->cropIsWithinMainImageBounds()Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 43
    new-instance v0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel$$ExternalSyntheticLambda5;-><init>()V

    sput-object v0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->NULL_RUNNABLE:Ljava/lang/Runnable;

    .line 49
    new-instance v0, Landroid/graphics/Point;

    const/16 v1, 0xf

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    sput-object v0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->MINIMUM_RATIO:Landroid/graphics/Point;

    .line 521
    new-instance v0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel$1;

    invoke-direct {v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel$1;-><init>()V

    sput-object v0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    .line 67
    invoke-static {}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->create()Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;-><init>(ZLorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    sget-object v0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->NULL_RUNNABLE:Ljava/lang/Runnable;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->invalidate:Ljava/lang/Runnable;

    .line 58
    new-instance v0, Lorg/thoughtcrime/securesms/imageeditor/model/InBoundsMemory;

    invoke-direct {v0}, Lorg/thoughtcrime/securesms/imageeditor/model/InBoundsMemory;-><init>()V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->inBoundsMemory:Lorg/thoughtcrime/securesms/imageeditor/model/InBoundsMemory;

    .line 62
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->visibleViewPort:Landroid/graphics/RectF;

    .line 71
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->circleEditing:Z

    .line 73
    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->size:Landroid/graphics/Point;

    .line 75
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    invoke-static {v1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->create(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;

    move-result-object v1

    iput-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->editorElementHierarchy:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;

    .line 76
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lorg/thoughtcrime/securesms/imageeditor/model/UndoRedoStacks;

    iput-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->undoRedoStacks:Lorg/thoughtcrime/securesms/imageeditor/model/UndoRedoStacks;

    .line 77
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lorg/thoughtcrime/securesms/imageeditor/model/UndoRedoStacks;

    iput-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->cropUndoRedoStacks:Lorg/thoughtcrime/securesms/imageeditor/model/UndoRedoStacks;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel$1;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(ZLorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;)V
    .locals 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    sget-object v0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->NULL_RUNNABLE:Ljava/lang/Runnable;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->invalidate:Ljava/lang/Runnable;

    .line 58
    new-instance v0, Lorg/thoughtcrime/securesms/imageeditor/model/InBoundsMemory;

    invoke-direct {v0}, Lorg/thoughtcrime/securesms/imageeditor/model/InBoundsMemory;-><init>()V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->inBoundsMemory:Lorg/thoughtcrime/securesms/imageeditor/model/InBoundsMemory;

    .line 62
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->visibleViewPort:Landroid/graphics/RectF;

    .line 81
    iput-boolean p1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->circleEditing:Z

    .line 82
    new-instance p1, Landroid/graphics/Point;

    const/16 v0, 0x400

    invoke-direct {p1, v0, v0}, Landroid/graphics/Point;-><init>(II)V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->size:Landroid/graphics/Point;

    .line 83
    iput-object p2, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->editorElementHierarchy:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;

    .line 84
    new-instance p1, Lorg/thoughtcrime/securesms/imageeditor/model/UndoRedoStacks;

    const/16 p2, 0x32

    invoke-direct {p1, p2}, Lorg/thoughtcrime/securesms/imageeditor/model/UndoRedoStacks;-><init>(I)V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->undoRedoStacks:Lorg/thoughtcrime/securesms/imageeditor/model/UndoRedoStacks;

    .line 85
    new-instance p1, Lorg/thoughtcrime/securesms/imageeditor/model/UndoRedoStacks;

    invoke-direct {p1, p2}, Lorg/thoughtcrime/securesms/imageeditor/model/UndoRedoStacks;-><init>(I)V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->cropUndoRedoStacks:Lorg/thoughtcrime/securesms/imageeditor/model/UndoRedoStacks;

    return-void
.end method

.method private static compareRatios(Landroid/graphics/Point;Landroid/graphics/Point;)I
    .locals 3

    .line 471
    iget v0, p0, Landroid/graphics/Point;->x:I

    iget v1, p0, Landroid/graphics/Point;->y:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 472
    iget v1, p0, Landroid/graphics/Point;->x:I

    iget p0, p0, Landroid/graphics/Point;->y:I

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 474
    iget v1, p1, Landroid/graphics/Point;->x:I

    iget v2, p1, Landroid/graphics/Point;->y:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 475
    iget v2, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    mul-int v0, v0, p1

    mul-int v1, v1, p0

    .line 477
    invoke-static {v0, v1}, Lkotlin/UInt$$ExternalSyntheticBackport0;->m(II)I

    move-result p0

    return p0
.end method

.method public static create()Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;
    .locals 3

    .line 89
    new-instance v0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;

    const/4 v1, 0x0

    invoke-static {}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->create()Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;-><init>(ZLorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;)V

    return-object v0
.end method

.method public static createForCircleEditing()Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;
    .locals 3

    .line 93
    new-instance v0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;

    invoke-static {}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->createForCircleEditing()Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;-><init>(ZLorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;)V

    .line 94
    invoke-virtual {v0, v2}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->setCropAspectLock(Z)V

    return-object v0
.end method

.method private cropIsWithinMainImageBounds()Z
    .locals 1

    .line 484
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->editorElementHierarchy:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->imageMatrixRelativeToCrop()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-static {v0}, Lorg/thoughtcrime/securesms/imageeditor/Bounds;->boundsRemainInBounds(Landroid/graphics/Matrix;)Z

    move-result v0

    return v0
.end method

.method private currentCropIsAcceptable()Z
    .locals 5

    .line 449
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->getOutputSize()Landroid/graphics/Point;

    move-result-object v0

    .line 450
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    mul-int v1, v1, v2

    .line 451
    iget-object v2, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->size:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->size:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    mul-int v2, v2, v3

    const/16 v3, 0x64

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 453
    sget-object v3, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->MINIMUM_RATIO:Landroid/graphics/Point;

    .line 455
    iget-object v4, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->size:Landroid/graphics/Point;

    invoke-static {v4, v3}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->compareRatios(Landroid/graphics/Point;Landroid/graphics/Point;)I

    move-result v4

    if-gez v4, :cond_0

    .line 457
    iget-object v3, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->size:Landroid/graphics/Point;

    .line 460
    :cond_0
    invoke-static {v0, v3}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->compareRatios(Landroid/graphics/Point;Landroid/graphics/Point;)I

    move-result v0

    if-ltz v0, :cond_1

    if-lt v1, v2, :cond_1

    .line 462
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->cropIsWithinMainImageBounds()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private ensureFitsBounds(Z)V
    .locals 3

    .line 306
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->editorElementHierarchy:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->getMainImage()Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 309
    :cond_0
    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->editorElementHierarchy:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->getCropEditorElement()Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    move-result-object v1

    .line 311
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->currentCropIsAcceptable()Z

    move-result v2

    if-nez v2, :cond_4

    if-eqz p1, :cond_1

    const p1, 0x3f666666    # 0.9f

    .line 313
    invoke-direct {p0, v1, p1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->tryToScaleToFit(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;F)Z

    move-result p1

    if-nez p1, :cond_2

    const/high16 p1, 0x40000000    # 2.0f

    .line 314
    invoke-direct {p0, v0, p1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->tryToScaleToFit(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;F)Z

    goto :goto_0

    .line 317
    :cond_1
    iget-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->inBoundsMemory:Lorg/thoughtcrime/securesms/imageeditor/model/InBoundsMemory;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/imageeditor/model/InBoundsMemory;->getLastKnownGoodMainImageMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->tryToFixTranslationOutOfBounds(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;Landroid/graphics/Matrix;)Z

    .line 320
    :cond_2
    :goto_0
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->currentCropIsAcceptable()Z

    move-result p1

    if-nez p1, :cond_3

    .line 321
    iget-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->inBoundsMemory:Lorg/thoughtcrime/securesms/imageeditor/model/InBoundsMemory;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->invalidate:Ljava/lang/Runnable;

    invoke-virtual {p1, v0, v1, v2}, Lorg/thoughtcrime/securesms/imageeditor/model/InBoundsMemory;->restore(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;Ljava/lang/Runnable;)V

    goto :goto_1

    .line 323
    :cond_3
    iget-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->inBoundsMemory:Lorg/thoughtcrime/securesms/imageeditor/model/InBoundsMemory;

    invoke-virtual {p1, v0, v1}, Lorg/thoughtcrime/securesms/imageeditor/model/InBoundsMemory;->push(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)V

    .line 327
    :cond_4
    :goto_1
    iget-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->editorElementHierarchy:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;

    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->visibleViewPort:Landroid/graphics/RectF;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->invalidate:Ljava/lang/Runnable;

    invoke-virtual {p1, v0, v1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->dragDropRelease(Landroid/graphics/RectF;Ljava/lang/Runnable;)V

    return-void
.end method

.method private findElement(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z
    .locals 1

    .line 165
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->editorElementHierarchy:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->getRoot()Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->findElement(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    move-result-object p2

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private findElementMatrix(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .locals 0

    .line 151
    invoke-virtual {p0, p1, p2}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->findElementInverseMatrix(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 153
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    .line 154
    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    return-object p2

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private flipRotate(III)V
    .locals 6

    .line 753
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->pushUndoPoint()V

    .line 754
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->editorElementHierarchy:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;

    iget-object v4, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->visibleViewPort:Landroid/graphics/RectF;

    iget-object v5, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->invalidate:Ljava/lang/Runnable;

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->flipRotate(IIILandroid/graphics/RectF;Ljava/lang/Runnable;)V

    .line 755
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->isCropping()Z

    move-result p1

    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->getActiveUndoRedoStacks(Z)Lorg/thoughtcrime/securesms/imageeditor/model/UndoRedoStacks;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->updateUndoRedoAvailableState(Lorg/thoughtcrime/securesms/imageeditor/model/UndoRedoStacks;)V

    return-void
.end method

.method private getActiveUndoRedoStacks(Z)Lorg/thoughtcrime/securesms/imageeditor/model/UndoRedoStacks;
    .locals 0

    if-eqz p1, :cond_0

    .line 302
    iget-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->cropUndoRedoStacks:Lorg/thoughtcrime/securesms/imageeditor/model/UndoRedoStacks;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->undoRedoStacks:Lorg/thoughtcrime/securesms/imageeditor/model/UndoRedoStacks;

    :goto_0
    return-object p1
.end method

.method private static getElementMap(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;",
            ")",
            "Ljava/util/Map<",
            "Ljava/util/UUID;",
            "Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;",
            ">;"
        }
    .end annotation

    .line 256
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 257
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->buildMap(Ljava/util/Map;)V

    return-object v0
.end method

.method private getOutputSize()Landroid/graphics/Point;
    .locals 4

    .line 598
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->editorElementHierarchy:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->size:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->getOutputSize(Landroid/graphics/Point;)Landroid/graphics/PointF;

    move-result-object v0

    const/high16 v1, 0x44800000    # 1024.0f

    .line 600
    iget v2, v0, Landroid/graphics/PointF;->x:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    int-to-float v2, v1

    .line 601
    iget v3, v0, Landroid/graphics/PointF;->y:F

    mul-float v2, v2, v3

    iget v0, v0, Landroid/graphics/PointF;->x:F

    div-float/2addr v2, v0

    float-to-int v0, v2

    .line 603
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v1, v0}, Landroid/graphics/Point;-><init>(II)V

    return-object v2
.end method

.method private isRendererOfMainImage(Lorg/thoughtcrime/securesms/imageeditor/Renderer;)Z
    .locals 1

    .line 653
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->editorElementHierarchy:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->getMainImage()Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 654
    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->getRenderer()Lorg/thoughtcrime/securesms/imageeditor/Renderer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method static synthetic lambda$draw$1(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)V
    .locals 0

    .line 121
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->getFlags()Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;

    move-result-object p0

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;->mark()V

    return-void
.end method

.method static synthetic lambda$draw$2(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)V
    .locals 1

    .line 132
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->getFlags()Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;

    move-result-object v0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;->setVisible(Z)Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;

    return-void
.end method

.method static synthetic lambda$draw$3(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)V
    .locals 0

    .line 137
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->getFlags()Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;

    move-result-object p0

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;->restore()V

    return-void
.end method

.method static synthetic lambda$getUniqueColorsIgnoringAlpha$6(Ljava/util/Set;Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)V
    .locals 1

    .line 512
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->getRenderer()Lorg/thoughtcrime/securesms/imageeditor/Renderer;

    move-result-object p1

    .line 513
    instance-of v0, p1, Lorg/thoughtcrime/securesms/imageeditor/ColorableRenderer;

    if-eqz v0, :cond_0

    .line 514
    check-cast p1, Lorg/thoughtcrime/securesms/imageeditor/ColorableRenderer;

    invoke-interface {p1}, Lorg/thoughtcrime/securesms/imageeditor/ColorableRenderer;->getColor()I

    move-result p1

    const/high16 v0, -0x1000000

    or-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method static synthetic lambda$static$0()V
    .locals 0

    return-void
.end method

.method static synthetic lambda$tryToScaleToFit$4(Landroid/graphics/Matrix;F)V
    .locals 0

    .line 344
    invoke-virtual {p0, p1, p1}, Landroid/graphics/Matrix;->preScale(FF)Z

    return-void
.end method

.method static synthetic lambda$tryToTranslateToFit$5(FFLandroid/graphics/Matrix;F)V
    .locals 0

    mul-float p0, p0, p3

    mul-float p3, p3, p1

    .line 362
    invoke-virtual {p2, p0, p3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method private static restoreStateWithAnimations(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;Ljava/lang/Runnable;Z)V
    .locals 6

    .line 214
    invoke-static {p0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->getElementMap(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)Ljava/util/Map;

    move-result-object v0

    .line 215
    invoke-static {p1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->getElementMap(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)Ljava/util/Map;

    move-result-object p1

    .line 217
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    .line 218
    invoke-virtual {v2}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->stopAnimation()V

    .line 219
    invoke-virtual {v2}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->getId()Ljava/util/UUID;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    if-eqz v3, :cond_1

    .line 221
    invoke-virtual {v2}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->getLocalMatrixAnimating()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->animateFrom(Landroid/graphics/Matrix;Ljava/lang/Runnable;)V

    if-eqz p3, :cond_0

    .line 224
    invoke-virtual {v3}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->getEditorMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v2}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->getEditorMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 225
    invoke-virtual {v3}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->getFlags()Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;

    move-result-object v3

    invoke-virtual {v2}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->getFlags()Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;->set(Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;)V

    goto :goto_0

    .line 229
    :cond_1
    invoke-virtual {p0, v2}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->parentOf(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 231
    invoke-virtual {v3}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->getId()Ljava/util/UUID;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    if-eqz v3, :cond_0

    .line 233
    invoke-virtual {v3, v2, p2}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->addDeletedChildFadingOut(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 239
    :cond_2
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    .line 240
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->getId()Ljava/util/UUID;

    move-result-object p3

    invoke-interface {v0, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 242
    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->animateFadeIn(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method private tryToFixTranslationOutOfBounds(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;Landroid/graphics/Matrix;)Z
    .locals 8

    .line 373
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->getLocalMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 374
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1, v0}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    const/16 v2, 0x9

    new-array v3, v2, [F

    new-array v2, v2, [F

    .line 379
    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->getValues([F)V

    .line 380
    invoke-virtual {p2, v2}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 p2, 0x2

    aget v4, v3, p2

    aget p2, v2, p2

    sub-float/2addr v4, p2

    const/4 p2, 0x5

    aget v3, v3, p2

    aget p2, v2, p2

    sub-float/2addr v3, p2

    .line 385
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result p2

    const/4 v2, 0x0

    const v5, 0x3a83126f    # 0.001f

    cmpg-float p2, p2, v5

    if-gez p2, :cond_0

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpg-float p2, p2, v5

    if-gez p2, :cond_0

    return v2

    .line 396
    :cond_0
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/4 v6, 0x0

    cmpg-float p2, p2, v5

    if-gez p2, :cond_1

    neg-float p2, v4

    neg-float v3, v3

    move v6, p2

    move v4, v3

    const/4 p2, 0x0

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    neg-float p2, v3

    neg-float v3, v4

    const/4 v4, 0x0

    .line 414
    :goto_0
    invoke-direct {p0, p1, v6, p2}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->tryToTranslateToFit(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;FF)Landroid/graphics/Matrix;

    move-result-object v5

    const/4 v7, 0x1

    if-eqz v5, :cond_2

    .line 416
    iget-object p2, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->invalidate:Ljava/lang/Runnable;

    invoke-virtual {p1, v5, p2}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->animateLocalTo(Landroid/graphics/Matrix;Ljava/lang/Runnable;)V

    return v7

    .line 420
    :cond_2
    invoke-direct {p0, p1, v3, v4}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->tryToTranslateToFit(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;FF)Landroid/graphics/Matrix;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 422
    iget-object p2, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->invalidate:Ljava/lang/Runnable;

    invoke-virtual {p1, v5, p2}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->animateLocalTo(Landroid/graphics/Matrix;Ljava/lang/Runnable;)V

    return v7

    .line 427
    :cond_3
    invoke-virtual {v0, v6, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 429
    invoke-direct {p0, p1, v3, v4}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->tryToTranslateToFit(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;FF)Landroid/graphics/Matrix;

    move-result-object p2

    .line 430
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    if-eqz p2, :cond_4

    .line 433
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->invalidate:Ljava/lang/Runnable;

    invoke-virtual {p1, p2, v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->animateLocalTo(Landroid/graphics/Matrix;Ljava/lang/Runnable;)V

    return v7

    :cond_4
    return v2
.end method

.method private tryToScaleToFit(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;F)Z
    .locals 6

    const/high16 v1, 0x3f800000    # 1.0f

    .line 340
    new-instance v3, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel$$ExternalSyntheticLambda0;-><init>(Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;)V

    new-instance v4, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel$$ExternalSyntheticLambda7;

    invoke-direct {v4}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel$$ExternalSyntheticLambda7;-><init>()V

    iget-object v5, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->invalidate:Ljava/lang/Runnable;

    move-object v0, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Lorg/thoughtcrime/securesms/imageeditor/model/Bisect;->bisectToTest(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;FFLorg/thoughtcrime/securesms/imageeditor/model/Bisect$Predicate;Lorg/thoughtcrime/securesms/imageeditor/model/Bisect$ModifyElement;Ljava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method private tryToTranslateToFit(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;FF)Landroid/graphics/Matrix;
    .locals 2

    .line 358
    new-instance v0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel$$ExternalSyntheticLambda0;-><init>(Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;)V

    new-instance v1, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel$$ExternalSyntheticLambda1;

    invoke-direct {v1, p2, p3}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel$$ExternalSyntheticLambda1;-><init>(FF)V

    const/4 p2, 0x0

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-static {p1, p2, p3, v0, v1}, Lorg/thoughtcrime/securesms/imageeditor/model/Bisect;->bisectToTest(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;FFLorg/thoughtcrime/securesms/imageeditor/model/Bisect$Predicate;Lorg/thoughtcrime/securesms/imageeditor/model/Bisect$ModifyElement;)Landroid/graphics/Matrix;

    move-result-object p1

    return-object p1
.end method

.method private undoRedo(Lorg/thoughtcrime/securesms/imageeditor/model/ElementStack;Lorg/thoughtcrime/securesms/imageeditor/model/ElementStack;Z)V
    .locals 1

    .line 196
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->editorElementHierarchy:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->getRoot()Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    move-result-object v0

    .line 197
    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/imageeditor/model/ElementStack;->pop(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 200
    invoke-static {p1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->create(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->editorElementHierarchy:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;

    .line 201
    invoke-virtual {p2, v0}, Lorg/thoughtcrime/securesms/imageeditor/model/ElementStack;->tryPush(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)Z

    .line 203
    iget-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->editorElementHierarchy:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->getRoot()Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    move-result-object p1

    iget-object p2, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->invalidate:Ljava/lang/Runnable;

    invoke-static {v0, p1, p2, p3}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->restoreStateWithAnimations(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;Ljava/lang/Runnable;Z)V

    .line 204
    iget-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->invalidate:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 207
    iget-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->editorElementHierarchy:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;

    iget-object p2, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->visibleViewPort:Landroid/graphics/RectF;

    iget-object p3, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->invalidate:Ljava/lang/Runnable;

    invoke-virtual {p1, p2, p3}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->updateViewToCrop(Landroid/graphics/RectF;Ljava/lang/Runnable;)V

    .line 209
    iget-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->inBoundsMemory:Lorg/thoughtcrime/securesms/imageeditor/model/InBoundsMemory;

    iget-object p2, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->editorElementHierarchy:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->getMainImage()Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    move-result-object p2

    iget-object p3, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->editorElementHierarchy:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;

    invoke-virtual {p3}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->getCropEditorElement()Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/thoughtcrime/securesms/imageeditor/model/InBoundsMemory;->push(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)V

    :cond_0
    return-void
.end method

.method private updateUndoRedoAvailableState(Lorg/thoughtcrime/securesms/imageeditor/model/UndoRedoStacks;)V
    .locals 3

    .line 248
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->undoRedoStackListener:Lorg/thoughtcrime/securesms/imageeditor/UndoRedoStackListener;

    if-nez v0, :cond_0

    return-void

    .line 250
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->editorElementHierarchy:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->getRoot()Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    move-result-object v0

    .line 252
    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->undoRedoStackListener:Lorg/thoughtcrime/securesms/imageeditor/UndoRedoStackListener;

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/imageeditor/model/UndoRedoStacks;->canUndo(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)Z

    move-result v2

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/imageeditor/model/UndoRedoStacks;->canRedo(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)Z

    move-result p1

    invoke-interface {v1, v2, p1}, Lorg/thoughtcrime/securesms/imageeditor/UndoRedoStackListener;->onAvailabilityChanged(ZZ)V

    return-void
.end method


# virtual methods
.method public addElement(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)V
    .locals 0

    .line 679
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->pushUndoPoint()V

    .line 680
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->addElementWithoutPushUndo(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)V

    return-void
.end method

.method public addElementCentered(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;F)V
    .locals 2

    .line 665
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->getLocalMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 667
    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->editorElementHierarchy:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->getMainImageFullMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 669
    invoke-virtual {v0, p2, p2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 670
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->addElement(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)V

    return-void
.end method

.method public addElementWithoutPushUndo(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)V
    .locals 2

    .line 684
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->editorElementHierarchy:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->getMainImage()Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    .line 685
    :cond_0
    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->editorElementHierarchy:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->getImageRoot()Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    move-result-object v1

    .line 687
    :goto_0
    invoke-virtual {v1, p1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->addElement(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)V

    if-eq v1, v0, :cond_1

    .line 690
    iget-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->undoRedoStacks:Lorg/thoughtcrime/securesms/imageeditor/model/UndoRedoStacks;

    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->editorElementHierarchy:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->getRoot()Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/imageeditor/model/UndoRedoStacks;->clear(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)V

    .line 693
    :cond_1
    iget-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->undoRedoStacks:Lorg/thoughtcrime/securesms/imageeditor/model/UndoRedoStacks;

    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->updateUndoRedoAvailableState(Lorg/thoughtcrime/securesms/imageeditor/model/UndoRedoStacks;)V

    return-void
.end method

.method public delete(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)V
    .locals 2

    .line 767
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->editorElementHierarchy:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->getImageRoot()Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    move-result-object v0

    new-instance v1, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel$$ExternalSyntheticLambda6;-><init>(Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)V

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->forAllInTree(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement$PerElementFunction;)V

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public doneCrop()V
    .locals 3

    .line 270
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->editorElementHierarchy:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->visibleViewPort:Landroid/graphics/RectF;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->invalidate:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->doneCrop(Landroid/graphics/RectF;Ljava/lang/Runnable;)V

    .line 271
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->undoRedoStacks:Lorg/thoughtcrime/securesms/imageeditor/model/UndoRedoStacks;

    invoke-direct {p0, v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->updateUndoRedoAvailableState(Lorg/thoughtcrime/securesms/imageeditor/model/UndoRedoStacks;)V

    return-void
.end method

.method public dragDropRelease()V
    .locals 3

    .line 441
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->editorElementHierarchy:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->visibleViewPort:Landroid/graphics/RectF;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->invalidate:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->dragDropRelease(Landroid/graphics/RectF;Ljava/lang/Runnable;)V

    return-void
.end method

.method public draw(Lorg/thoughtcrime/securesms/imageeditor/RendererContext;Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)V
    .locals 3

    .line 119
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->editorElementHierarchy:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->getRoot()Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 121
    new-instance v1, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->forAllInTree(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement$PerElementFunction;)V

    .line 123
    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->getFlags()Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;->setVisible(Z)Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;

    .line 127
    :cond_0
    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->draw(Lorg/thoughtcrime/securesms/imageeditor/RendererContext;)V

    if-eqz p2, :cond_1

    .line 132
    :try_start_0
    new-instance v1, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel$$ExternalSyntheticLambda3;

    invoke-direct {v1, p2}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel$$ExternalSyntheticLambda3;-><init>(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)V

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->forAllInTree(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement$PerElementFunction;)V

    .line 135
    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->draw(Lorg/thoughtcrime/securesms/imageeditor/RendererContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    new-instance p1, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel$$ExternalSyntheticLambda4;

    invoke-direct {p1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->forAllInTree(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement$PerElementFunction;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    new-instance p2, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel$$ExternalSyntheticLambda4;

    invoke-direct {p2}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {v0, p2}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->forAllInTree(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement$PerElementFunction;)V

    .line 138
    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public findById(Ljava/util/UUID;)Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;
    .locals 1

    .line 771
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->getRoot()Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    move-result-object v0

    invoke-static {v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->getElementMap(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    return-object p1
.end method

.method findCropRelativeTo(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)Landroid/graphics/RectF;
    .locals 1

    .line 705
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->editorElementHierarchy:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->getCropEditorElement()Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->findRelativeBounds(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)Landroid/graphics/RectF;

    move-result-object p1

    return-object p1
.end method

.method public findCropRelativeToRoot()Landroid/graphics/RectF;
    .locals 1

    .line 701
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->editorElementHierarchy:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->getRoot()Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->findCropRelativeTo(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public findElementAtPoint(Landroid/graphics/PointF;Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;
    .locals 2

    .line 161
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->editorElementHierarchy:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->getRoot()Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    move-result-object v0

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->findElementAt(FFLandroid/graphics/Matrix;Landroid/graphics/Matrix;)Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    move-result-object p1

    return-object p1
.end method

.method public findElementInverseMatrix(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .locals 1

    .line 143
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 144
    invoke-direct {p0, p1, p2, v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->findElement(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method findRelativeBounds(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)Landroid/graphics/RectF;
    .locals 1

    .line 709
    invoke-virtual {p0, p1, p2}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->findRelativeMatrix(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)Landroid/graphics/Matrix;

    move-result-object p1

    .line 711
    new-instance p2, Landroid/graphics/RectF;

    sget-object v0, Lorg/thoughtcrime/securesms/imageeditor/Bounds;->FULL_BOUNDS:Landroid/graphics/RectF;

    invoke-direct {p2, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    if-eqz p1, :cond_0

    .line 713
    sget-object v0, Lorg/thoughtcrime/securesms/imageeditor/Bounds;->FULL_BOUNDS:Landroid/graphics/RectF;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    :cond_0
    return-object p2
.end method

.method findRelativeMatrix(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)Landroid/graphics/Matrix;
    .locals 1

    .line 726
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p0, p2, v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->findElementInverseMatrix(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object p2

    .line 727
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->findElementMatrix(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object p1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 730
    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    return-object p2

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public flipHorizontal()V
    .locals 3

    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 745
    invoke-direct {p0, v2, v0, v1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->flipRotate(III)V

    return-void
.end method

.method public flipVertical()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 749
    invoke-direct {p0, v2, v0, v1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->flipRotate(III)V

    return-void
.end method

.method public getInverseCropPosition()Landroid/graphics/Matrix;
    .locals 3

    .line 810
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 811
    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->editorElementHierarchy:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->getMainImage()Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    move-result-object v1

    iget-object v2, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->editorElementHierarchy:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;

    invoke-virtual {v2}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->getCropEditorElement()Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->findRelativeMatrix(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 812
    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->editorElementHierarchy:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->getFlipRotate()Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->getLocalMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 814
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 815
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    return-object v1
.end method

.method public getMainImage()Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;
    .locals 1

    .line 763
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->editorElementHierarchy:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->getMainImage()Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    move-result-object v0

    return-object v0
.end method

.method public getOutputSizeMaxWidth(I)Landroid/graphics/Point;
    .locals 4

    .line 608
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->editorElementHierarchy:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->size:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->getOutputSize(Landroid/graphics/Point;)Landroid/graphics/PointF;

    move-result-object v0

    const/high16 v1, 0x44800000    # 1024.0f

    .line 610
    iget v2, v0, Landroid/graphics/PointF;->x:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v2, v1

    .line 611
    iget v3, v0, Landroid/graphics/PointF;->y:F

    mul-float v2, v2, v3

    iget v3, v0, Landroid/graphics/PointF;->x:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    if-le v2, p1, :cond_0

    int-to-float v1, p1

    .line 615
    iget v2, v0, Landroid/graphics/PointF;->x:F

    mul-float v1, v1, v2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    div-float/2addr v1, v0

    float-to-int v1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    .line 618
    :goto_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, p1}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public getRoot()Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;
    .locals 1

    .line 759
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->editorElementHierarchy:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->getRoot()Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    move-result-object v0

    return-object v0
.end method

.method public getUniqueColorsIgnoringAlpha()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 509
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 511
    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->editorElementHierarchy:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->getRoot()Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    move-result-object v1

    new-instance v2, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel$$ExternalSyntheticLambda8;

    invoke-direct {v2, v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel$$ExternalSyntheticLambda8;-><init>(Ljava/util/Set;)V

    invoke-virtual {v1, v2}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->forAllInTree(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement$PerElementFunction;)V

    return-object v0
.end method

.method public indicateSelected(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)V
    .locals 1

    .line 799
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->invalidate:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->singleScalePulse(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isChanged()Z
    .locals 2

    .line 697
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->undoRedoStacks:Lorg/thoughtcrime/securesms/imageeditor/model/UndoRedoStacks;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->editorElementHierarchy:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->getRoot()Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/imageeditor/model/UndoRedoStacks;->isChanged(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)Z

    move-result v0

    return v0
.end method

.method public isCropAspectLocked()Z
    .locals 1

    .line 285
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->editorElementHierarchy:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->getCropEditorElement()Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->getFlags()Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;

    move-result-object v0

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;->isAspectLocked()Z

    move-result v0

    return v0
.end method

.method public isCropping()Z
    .locals 1

    .line 803
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->editorElementHierarchy:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->getCropEditorElement()Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->getFlags()Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;

    move-result-object v0

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;->isVisible()Z

    move-result v0

    return v0
.end method

.method synthetic lambda$delete$7$org-thoughtcrime-securesms-imageeditor-model-EditorModel(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)V
    .locals 1

    .line 767
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->invalidate:Ljava/lang/Runnable;

    invoke-virtual {p2, p1, v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->deleteChild(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;Ljava/lang/Runnable;)V

    return-void
.end method

.method public moving(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)V
    .locals 2

    .line 491
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->isCropping()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 493
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->editorElementHierarchy:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->getMainImage()Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    move-result-object v0

    .line 494
    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->editorElementHierarchy:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->getCropEditorElement()Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    move-result-object v1

    if-eq p1, v0, :cond_1

    if-ne p1, v1, :cond_2

    .line 497
    :cond_1
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->currentCropIsAcceptable()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 498
    iget-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->inBoundsMemory:Lorg/thoughtcrime/securesms/imageeditor/model/InBoundsMemory;

    invoke-virtual {p1, v0, v1}, Lorg/thoughtcrime/securesms/imageeditor/model/InBoundsMemory;->push(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)V

    :cond_2
    return-void
.end method

.method public onReady(Lorg/thoughtcrime/securesms/imageeditor/Renderer;Landroid/graphics/Matrix;Landroid/graphics/Point;)V
    .locals 4

    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    .line 623
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->isRendererOfMainImage(Lorg/thoughtcrime/securesms/imageeditor/Renderer;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 624
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->isChanged()Z

    move-result p1

    .line 625
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->editorElementHierarchy:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->getImageCrop()Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->getLocalMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 626
    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->size:Landroid/graphics/Point;

    iget v2, p3, Landroid/graphics/Point;->x:I

    iget v3, p3, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Point;->set(II)V

    .line 627
    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 628
    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 630
    iget-boolean p2, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->circleEditing:Z

    if-eqz p2, :cond_1

    .line 631
    iget-object p2, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->editorElementHierarchy:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->getCropEditorElement()Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    move-result-object p2

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->getLocalMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    .line 632
    iget v0, p3, Landroid/graphics/Point;->x:I

    iget v1, p3, Landroid/graphics/Point;->y:I

    const/high16 v2, 0x3f800000    # 1.0f

    if-le v0, v1, :cond_0

    .line 633
    iget v0, p3, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iget p3, p3, Landroid/graphics/Point;->x:I

    int-to-float p3, p3

    div-float/2addr v0, p3

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    goto :goto_0

    .line 635
    :cond_0
    iget v0, p3, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget p3, p3, Landroid/graphics/Point;->y:I

    int-to-float p3, p3

    div-float/2addr v0, p3

    invoke-virtual {p2, v2, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 639
    :cond_1
    :goto_0
    iget-object p2, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->editorElementHierarchy:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;

    iget-object p3, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->visibleViewPort:Landroid/graphics/RectF;

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->doneCrop(Landroid/graphics/RectF;Ljava/lang/Runnable;)V

    if-nez p1, :cond_2

    .line 642
    iget-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->undoRedoStacks:Lorg/thoughtcrime/securesms/imageeditor/model/UndoRedoStacks;

    iget-object p2, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->editorElementHierarchy:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->getRoot()Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/imageeditor/model/UndoRedoStacks;->clear(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)V

    .line 645
    :cond_2
    iget-boolean p1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->circleEditing:Z

    if-eqz p1, :cond_3

    .line 646
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->startCrop()V

    :cond_3
    return-void
.end method

.method public postEdit(Z)V
    .locals 1

    .line 289
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->isCropping()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->ensureFitsBounds(Z)V

    .line 294
    :cond_0
    invoke-direct {p0, v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->getActiveUndoRedoStacks(Z)Lorg/thoughtcrime/securesms/imageeditor/model/UndoRedoStacks;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->updateUndoRedoAvailableState(Lorg/thoughtcrime/securesms/imageeditor/model/UndoRedoStacks;)V

    return-void
.end method

.method public pushUndoPoint()V
    .locals 2

    .line 169
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->isCropping()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->currentCropIsAcceptable()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 174
    :cond_0
    invoke-direct {p0, v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->getActiveUndoRedoStacks(Z)Lorg/thoughtcrime/securesms/imageeditor/model/UndoRedoStacks;

    move-result-object v0

    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->editorElementHierarchy:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->getRoot()Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/imageeditor/model/UndoRedoStacks;->pushState(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)V

    return-void
.end method

.method public redo()V
    .locals 4

    .line 187
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->isCropping()Z

    move-result v0

    .line 188
    invoke-direct {p0, v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->getActiveUndoRedoStacks(Z)Lorg/thoughtcrime/securesms/imageeditor/model/UndoRedoStacks;

    move-result-object v1

    .line 190
    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/imageeditor/model/UndoRedoStacks;->getRedoStack()Lorg/thoughtcrime/securesms/imageeditor/model/ElementStack;

    move-result-object v2

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/imageeditor/model/UndoRedoStacks;->getUndoStack()Lorg/thoughtcrime/securesms/imageeditor/model/ElementStack;

    move-result-object v3

    invoke-direct {p0, v2, v3, v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->undoRedo(Lorg/thoughtcrime/securesms/imageeditor/model/ElementStack;Lorg/thoughtcrime/securesms/imageeditor/model/ElementStack;Z)V

    .line 192
    invoke-direct {p0, v1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->updateUndoRedoAvailableState(Lorg/thoughtcrime/securesms/imageeditor/model/UndoRedoStacks;)V

    return-void
.end method

.method public render(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    .line 553
    invoke-virtual {p0, p1, v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->render(Landroid/content/Context;Landroid/graphics/Point;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public render(Landroid/content/Context;Landroid/graphics/Point;)Landroid/graphics/Bitmap;
    .locals 6

    .line 561
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->editorElementHierarchy:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->getFlipRotate()Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    move-result-object v0

    .line 562
    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->editorElementHierarchy:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->getCropRect()Landroid/graphics/RectF;

    move-result-object v1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 563
    :cond_0
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->getOutputSize()Landroid/graphics/Point;

    move-result-object p2

    .line 565
    :goto_0
    iget v2, p2, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, p2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 567
    :try_start_0
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 568
    new-instance v3, Lorg/thoughtcrime/securesms/imageeditor/RendererContext;

    sget-object v4, Lorg/thoughtcrime/securesms/imageeditor/RendererContext$Ready;->NULL:Lorg/thoughtcrime/securesms/imageeditor/RendererContext$Ready;

    sget-object v5, Lorg/thoughtcrime/securesms/imageeditor/RendererContext$Invalidate;->NULL:Lorg/thoughtcrime/securesms/imageeditor/RendererContext$Invalidate;

    invoke-direct {v3, p1, v2, v4, v5}, Lorg/thoughtcrime/securesms/imageeditor/RendererContext;-><init>(Landroid/content/Context;Landroid/graphics/Canvas;Lorg/thoughtcrime/securesms/imageeditor/RendererContext$Ready;Lorg/thoughtcrime/securesms/imageeditor/RendererContext$Invalidate;)V

    .line 570
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    .line 571
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iput v2, p1, Landroid/graphics/RectF;->right:F

    .line 572
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iput v2, p1, Landroid/graphics/RectF;->bottom:F

    .line 574
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 575
    sget-object v4, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v2, v1, p1, v4}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    const/4 p1, 0x0

    .line 577
    invoke-virtual {v3, p1}, Lorg/thoughtcrime/securesms/imageeditor/RendererContext;->setIsEditing(Z)V

    const/4 v1, 0x1

    .line 578
    invoke-virtual {v3, v1}, Lorg/thoughtcrime/securesms/imageeditor/RendererContext;->setBlockingLoad(Z)V

    .line 580
    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->editorElementHierarchy:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->getOverlay()Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    move-result-object v1

    .line 581
    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->getFlags()Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;

    move-result-object v4

    invoke-virtual {v4, p1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;->setVisible(Z)Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;

    move-result-object v4

    invoke-virtual {v4, p1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;->setChildrenVisible(Z)Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 584
    :try_start_1
    iget-object p1, v3, Lorg/thoughtcrime/securesms/imageeditor/RendererContext;->canvasMatrix:Lorg/thoughtcrime/securesms/imageeditor/CanvasMatrix;

    invoke-virtual {p1, v2}, Lorg/thoughtcrime/securesms/imageeditor/CanvasMatrix;->initial(Landroid/graphics/Matrix;)V

    .line 585
    invoke-virtual {v0, v3}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->draw(Lorg/thoughtcrime/securesms/imageeditor/RendererContext;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 587
    :try_start_2
    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->getFlags()Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;

    move-result-object p1

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;->reset()V

    return-object p2

    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->getFlags()Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;

    move-result-object v0

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;->reset()V

    .line 588
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 590
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 591
    throw p1
.end method

.method public rotate90anticlockwise()V
    .locals 2

    const/16 v0, -0x5a

    const/4 v1, 0x1

    .line 741
    invoke-direct {p0, v0, v1, v1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->flipRotate(III)V

    return-void
.end method

.method public rotate90clockwise()V
    .locals 2

    const/16 v0, 0x5a

    const/4 v1, 0x1

    .line 737
    invoke-direct {p0, v0, v1, v1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->flipRotate(III)V

    return-void
.end method

.method public setCropAspectLock(Z)V
    .locals 2

    .line 275
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->editorElementHierarchy:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->getCropEditorElement()Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->getFlags()Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;

    move-result-object v0

    .line 276
    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;->setAspectLocked(Z)Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;

    move-result-object v1

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;->getCurrentState()I

    move-result v1

    .line 278
    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;->reset()V

    .line 279
    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;->setAspectLocked(Z)Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;

    move-result-object p1

    .line 280
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;->persist()V

    .line 281
    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;->restoreState(I)V

    return-void
.end method

.method public setInvalidate(Ljava/lang/Runnable;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    sget-object p1, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->NULL_RUNNABLE:Ljava/lang/Runnable;

    :goto_0
    iput-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->invalidate:Ljava/lang/Runnable;

    return-void
.end method

.method public setUndoRedoStackListener(Lorg/thoughtcrime/securesms/imageeditor/UndoRedoStackListener;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->undoRedoStackListener:Lorg/thoughtcrime/securesms/imageeditor/UndoRedoStackListener;

    .line 105
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->isCropping()Z

    move-result p1

    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->getActiveUndoRedoStacks(Z)Lorg/thoughtcrime/securesms/imageeditor/model/UndoRedoStacks;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->updateUndoRedoAvailableState(Lorg/thoughtcrime/securesms/imageeditor/model/UndoRedoStacks;)V

    return-void
.end method

.method public setVisibleViewPort(Landroid/graphics/RectF;)V
    .locals 2

    .line 504
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->visibleViewPort:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 505
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->editorElementHierarchy:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->invalidate:Ljava/lang/Runnable;

    invoke-virtual {v0, p1, v1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->updateViewToCrop(Landroid/graphics/RectF;Ljava/lang/Runnable;)V

    return-void
.end method

.method public startCrop()V
    .locals 3

    .line 262
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->pushUndoPoint()V

    .line 263
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->cropUndoRedoStacks:Lorg/thoughtcrime/securesms/imageeditor/model/UndoRedoStacks;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->editorElementHierarchy:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->getRoot()Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/imageeditor/model/UndoRedoStacks;->clear(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)V

    .line 264
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->editorElementHierarchy:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->invalidate:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->startCrop(Ljava/lang/Runnable;)V

    .line 265
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->inBoundsMemory:Lorg/thoughtcrime/securesms/imageeditor/model/InBoundsMemory;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->editorElementHierarchy:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->getMainImage()Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    move-result-object v1

    iget-object v2, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->editorElementHierarchy:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;

    invoke-virtual {v2}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->getCropEditorElement()Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/thoughtcrime/securesms/imageeditor/model/InBoundsMemory;->push(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)V

    .line 266
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->cropUndoRedoStacks:Lorg/thoughtcrime/securesms/imageeditor/model/UndoRedoStacks;

    invoke-direct {p0, v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->updateUndoRedoAvailableState(Lorg/thoughtcrime/securesms/imageeditor/model/UndoRedoStacks;)V

    return-void
.end method

.method public undo()V
    .locals 4

    .line 178
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->isCropping()Z

    move-result v0

    .line 179
    invoke-direct {p0, v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->getActiveUndoRedoStacks(Z)Lorg/thoughtcrime/securesms/imageeditor/model/UndoRedoStacks;

    move-result-object v1

    .line 181
    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/imageeditor/model/UndoRedoStacks;->getUndoStack()Lorg/thoughtcrime/securesms/imageeditor/model/ElementStack;

    move-result-object v2

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/imageeditor/model/UndoRedoStacks;->getRedoStack()Lorg/thoughtcrime/securesms/imageeditor/model/ElementStack;

    move-result-object v3

    invoke-direct {p0, v2, v3, v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->undoRedo(Lorg/thoughtcrime/securesms/imageeditor/model/ElementStack;Lorg/thoughtcrime/securesms/imageeditor/model/ElementStack;Z)V

    .line 183
    invoke-direct {p0, v1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->updateUndoRedoAvailableState(Lorg/thoughtcrime/securesms/imageeditor/model/UndoRedoStacks;)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 540
    iget-boolean v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->circleEditing:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 541
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->size:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 542
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->size:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 543
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->editorElementHierarchy:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->getRoot()Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 544
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->undoRedoStacks:Lorg/thoughtcrime/securesms/imageeditor/model/UndoRedoStacks;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 545
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->cropUndoRedoStacks:Lorg/thoughtcrime/securesms/imageeditor/model/UndoRedoStacks;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method

.method public zoomOut()V
    .locals 2

    .line 795
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->editorElementHierarchy:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->getRoot()Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    move-result-object v0

    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->invalidate:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->rollbackEditorMatrix(Ljava/lang/Runnable;)V

    return-void
.end method

.method public zoomToTextElement(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;)V
    .locals 2

    .line 782
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p0, p1, v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->findElementInverseMatrix(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 784
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->editorElementHierarchy:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->getRoot()Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    move-result-object v0

    .line 786
    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->getEditorMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 788
    invoke-virtual {p2, p1}, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;->applyRecommendedEditorMatrix(Landroid/graphics/Matrix;)V

    .line 790
    iget-object p2, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->invalidate:Ljava/lang/Runnable;

    invoke-virtual {v0, p1, p2}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->animateEditorTo(Landroid/graphics/Matrix;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
