.class public final Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;
.super Ljava/lang/Object;
.source "EditorElement.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement$FindElementPredicate;,
        Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement$PerElementFunction;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;",
            ">;"
        }
    .end annotation
.end field

.field private static final Z_ORDER_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private alphaAnimation:Lorg/thoughtcrime/securesms/imageeditor/model/AlphaAnimation;

.field private animationMatrix:Lorg/thoughtcrime/securesms/imageeditor/model/AnimationMatrix;

.field private final children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;",
            ">;"
        }
    .end annotation
.end field

.field private final deletedChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;",
            ">;"
        }
    .end annotation
.end field

.field private final editorMatrix:Landroid/graphics/Matrix;

.field private final flags:Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;

.field private final id:Ljava/util/UUID;

.field private final localMatrix:Landroid/graphics/Matrix;

.field private final renderer:Lorg/thoughtcrime/securesms/imageeditor/Renderer;

.field private final temp:Landroid/graphics/Matrix;

.field private final tempMatrix:Landroid/graphics/Matrix;

.field private final zOrder:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->Z_ORDER_COMPARATOR:Ljava/util/Comparator;

    .line 328
    new-instance v0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement$1;

    invoke-direct {v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement$1;-><init>()V

    sput-object v0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->localMatrix:Landroid/graphics/Matrix;

    .line 43
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->editorMatrix:Landroid/graphics/Matrix;

    .line 49
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->temp:Landroid/graphics/Matrix;

    .line 51
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->tempMatrix:Landroid/graphics/Matrix;

    .line 53
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->children:Ljava/util/List;

    .line 54
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->deletedChildren:Ljava/util/List;

    .line 56
    sget-object v2, Lorg/thoughtcrime/securesms/imageeditor/model/AnimationMatrix;->NULL:Lorg/thoughtcrime/securesms/imageeditor/model/AnimationMatrix;

    iput-object v2, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->animationMatrix:Lorg/thoughtcrime/securesms/imageeditor/model/AnimationMatrix;

    .line 59
    sget-object v2, Lorg/thoughtcrime/securesms/imageeditor/model/AlphaAnimation;->NULL_1:Lorg/thoughtcrime/securesms/imageeditor/model/AlphaAnimation;

    iput-object v2, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->alphaAnimation:Lorg/thoughtcrime/securesms/imageeditor/model/AlphaAnimation;

    .line 74
    invoke-static {p1}, Lorg/thoughtcrime/securesms/imageeditor/model/ParcelUtils;->readUUID(Landroid/os/Parcel;)Ljava/util/UUID;

    move-result-object v2

    iput-object v2, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->id:Ljava/util/UUID;

    .line 75
    new-instance v2, Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-direct {v2, v3}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;-><init>(I)V

    iput-object v2, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->flags:Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;

    .line 76
    invoke-static {v0, p1}, Lorg/thoughtcrime/securesms/imageeditor/model/ParcelUtils;->readMatrix(Landroid/graphics/Matrix;Landroid/os/Parcel;)V

    .line 77
    const-class v0, Lorg/thoughtcrime/securesms/imageeditor/Renderer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/imageeditor/Renderer;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->renderer:Lorg/thoughtcrime/securesms/imageeditor/Renderer;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->zOrder:I

    .line 79
    sget-object v0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement$1;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lorg/thoughtcrime/securesms/imageeditor/Renderer;)V
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;-><init>(Lorg/thoughtcrime/securesms/imageeditor/Renderer;I)V

    return-void
.end method

.method public constructor <init>(Lorg/thoughtcrime/securesms/imageeditor/Renderer;I)V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->localMatrix:Landroid/graphics/Matrix;

    .line 43
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->editorMatrix:Landroid/graphics/Matrix;

    .line 49
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->temp:Landroid/graphics/Matrix;

    .line 51
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->tempMatrix:Landroid/graphics/Matrix;

    .line 53
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->children:Ljava/util/List;

    .line 54
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->deletedChildren:Ljava/util/List;

    .line 56
    sget-object v0, Lorg/thoughtcrime/securesms/imageeditor/model/AnimationMatrix;->NULL:Lorg/thoughtcrime/securesms/imageeditor/model/AnimationMatrix;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->animationMatrix:Lorg/thoughtcrime/securesms/imageeditor/model/AnimationMatrix;

    .line 59
    sget-object v0, Lorg/thoughtcrime/securesms/imageeditor/model/AlphaAnimation;->NULL_1:Lorg/thoughtcrime/securesms/imageeditor/model/AlphaAnimation;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->alphaAnimation:Lorg/thoughtcrime/securesms/imageeditor/model/AlphaAnimation;

    .line 67
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->id:Ljava/util/UUID;

    .line 68
    new-instance v0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;

    invoke-direct {v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;-><init>()V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->flags:Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;

    .line 69
    iput-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->renderer:Lorg/thoughtcrime/securesms/imageeditor/Renderer;

    .line 70
    iput p2, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->zOrder:I

    return-void
.end method

.method private animateFadeOut(Ljava/lang/Runnable;)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 231
    invoke-static {v0, v1, p1}, Lorg/thoughtcrime/securesms/imageeditor/model/AlphaAnimation;->animate(FFLjava/lang/Runnable;)Lorg/thoughtcrime/securesms/imageeditor/model/AlphaAnimation;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->alphaAnimation:Lorg/thoughtcrime/securesms/imageeditor/model/AlphaAnimation;

    return-void
.end method

.method private static drawChildren(Ljava/util/List;Lorg/thoughtcrime/securesms/imageeditor/RendererContext;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;",
            ">;",
            "Lorg/thoughtcrime/securesms/imageeditor/RendererContext;",
            ")V"
        }
    .end annotation

    .line 136
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    .line 137
    iget v1, v0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->zOrder:I

    if-ltz v1, :cond_0

    .line 138
    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->draw(Lorg/thoughtcrime/securesms/imageeditor/RendererContext;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private drawSelf(Lorg/thoughtcrime/securesms/imageeditor/RendererContext;)V
    .locals 1

    .line 131
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->renderer:Lorg/thoughtcrime/securesms/imageeditor/Renderer;

    if-nez v0, :cond_0

    return-void

    .line 132
    :cond_0
    invoke-interface {v0, p1}, Lorg/thoughtcrime/securesms/imageeditor/Renderer;->render(Lorg/thoughtcrime/securesms/imageeditor/RendererContext;)V

    return-void
.end method

.method static synthetic lambda$findElement$1(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;Landroid/graphics/Matrix;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$findElementAt$2([F[FLorg/thoughtcrime/securesms/imageeditor/model/EditorElement;Landroid/graphics/Matrix;)Z
    .locals 2

    .line 165
    iget-object v0, p2, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->renderer:Lorg/thoughtcrime/securesms/imageeditor/Renderer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 167
    :cond_0
    invoke-virtual {p3, p0, p1}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    .line 168
    iget-object p1, p2, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->flags:Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;->isSelectable()Z

    move-result p1

    if-eqz p1, :cond_1

    aget p1, p0, v1

    const/4 p2, 0x1

    aget p0, p0, p2

    invoke-interface {v0, p1, p0}, Lorg/thoughtcrime/securesms/imageeditor/Renderer;->hitTest(FF)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method static synthetic lambda$static$0(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)I
    .locals 0

    .line 38
    iget p0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->zOrder:I

    iget p1, p1, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->zOrder:I

    invoke-static {p0, p1}, Lkotlin/UInt$$ExternalSyntheticBackport0;->m(II)I

    move-result p0

    return p0
.end method

.method private setMatrixWithAnimation(Landroid/graphics/Matrix;Landroid/graphics/Matrix;Ljava/lang/Runnable;)V
    .locals 2

    .line 311
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0, p1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 312
    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->animationMatrix:Lorg/thoughtcrime/securesms/imageeditor/model/AnimationMatrix;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/imageeditor/model/AnimationMatrix;->stop()V

    .line 313
    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->animationMatrix:Lorg/thoughtcrime/securesms/imageeditor/model/AnimationMatrix;

    invoke-virtual {v1, v0}, Lorg/thoughtcrime/securesms/imageeditor/model/AnimationMatrix;->preConcatValueTo(Landroid/graphics/Matrix;)V

    .line 314
    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 315
    invoke-static {v0, p1, p3}, Lorg/thoughtcrime/securesms/imageeditor/model/AnimationMatrix;->animate(Landroid/graphics/Matrix;Landroid/graphics/Matrix;Ljava/lang/Runnable;)Lorg/thoughtcrime/securesms/imageeditor/model/AnimationMatrix;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->animationMatrix:Lorg/thoughtcrime/securesms/imageeditor/model/AnimationMatrix;

    return-void
.end method


# virtual methods
.method addDeletedChildFadingOut(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;Ljava/lang/Runnable;)V
    .locals 1

    .line 226
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->deletedChildren:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    invoke-direct {p1, p2}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->animateFadeOut(Ljava/lang/Runnable;)V

    return-void
.end method

.method public addElement(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)V
    .locals 1

    .line 144
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    iget-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->children:Ljava/util/List;

    sget-object v0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->Z_ORDER_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method animateEditorTo(Landroid/graphics/Matrix;Ljava/lang/Runnable;)V
    .locals 1

    .line 298
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->editorMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, v0, p1, p2}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->setMatrixWithAnimation(Landroid/graphics/Matrix;Landroid/graphics/Matrix;Ljava/lang/Runnable;)V

    return-void
.end method

.method animateFadeIn(Ljava/lang/Runnable;)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 235
    invoke-static {v0, v1, p1}, Lorg/thoughtcrime/securesms/imageeditor/model/AlphaAnimation;->animate(FFLjava/lang/Runnable;)Lorg/thoughtcrime/securesms/imageeditor/model/AlphaAnimation;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->alphaAnimation:Lorg/thoughtcrime/securesms/imageeditor/model/AlphaAnimation;

    return-void
.end method

.method animateFrom(Landroid/graphics/Matrix;Ljava/lang/Runnable;)V
    .locals 1

    .line 291
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0, p1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 292
    iget-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->animationMatrix:Lorg/thoughtcrime/securesms/imageeditor/model/AnimationMatrix;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/imageeditor/model/AnimationMatrix;->stop()V

    .line 293
    iget-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->animationMatrix:Lorg/thoughtcrime/securesms/imageeditor/model/AnimationMatrix;

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/imageeditor/model/AnimationMatrix;->preConcatValueTo(Landroid/graphics/Matrix;)V

    .line 294
    iget-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->localMatrix:Landroid/graphics/Matrix;

    invoke-static {v0, p1, p2}, Lorg/thoughtcrime/securesms/imageeditor/model/AnimationMatrix;->animate(Landroid/graphics/Matrix;Landroid/graphics/Matrix;Ljava/lang/Runnable;)Lorg/thoughtcrime/securesms/imageeditor/model/AnimationMatrix;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->animationMatrix:Lorg/thoughtcrime/securesms/imageeditor/model/AnimationMatrix;

    return-void
.end method

.method animateLocalTo(Landroid/graphics/Matrix;Ljava/lang/Runnable;)V
    .locals 1

    .line 302
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->localMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, v0, p1, p2}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->setMatrixWithAnimation(Landroid/graphics/Matrix;Landroid/graphics/Matrix;Ljava/lang/Runnable;)V

    return-void
.end method

.method buildMap(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/util/UUID;",
            "Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;",
            ">;)V"
        }
    .end annotation

    .line 284
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->id:Ljava/util/UUID;

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    .line 286
    invoke-virtual {v1, p1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->buildMap(Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public commitEditorMatrix()V
    .locals 2

    .line 271
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->flags:Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;->isEditable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->localMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->editorMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 273
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->editorMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 275
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->rollbackEditorMatrix(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method deleteChild(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;Ljava/lang/Runnable;)V
    .locals 2

    .line 216
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 217
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 218
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 219
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 220
    invoke-virtual {p0, p1, p2}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->addDeletedChildFadingOut(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public draw(Lorg/thoughtcrime/securesms/imageeditor/RendererContext;)V
    .locals 2

    .line 101
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->flags:Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->flags:Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;->isChildrenVisible()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 103
    :cond_0
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/imageeditor/RendererContext;->save()V

    .line 105
    iget-object v0, p1, Lorg/thoughtcrime/securesms/imageeditor/RendererContext;->canvasMatrix:Lorg/thoughtcrime/securesms/imageeditor/CanvasMatrix;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->localMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/imageeditor/CanvasMatrix;->concat(Landroid/graphics/Matrix;)V

    .line 107
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/imageeditor/RendererContext;->isEditing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p1, Lorg/thoughtcrime/securesms/imageeditor/RendererContext;->canvasMatrix:Lorg/thoughtcrime/securesms/imageeditor/CanvasMatrix;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->editorMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/imageeditor/CanvasMatrix;->concat(Landroid/graphics/Matrix;)V

    .line 109
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->animationMatrix:Lorg/thoughtcrime/securesms/imageeditor/model/AnimationMatrix;

    iget-object v1, p1, Lorg/thoughtcrime/securesms/imageeditor/RendererContext;->canvasMatrix:Lorg/thoughtcrime/securesms/imageeditor/CanvasMatrix;

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/imageeditor/model/AnimationMatrix;->preConcatValueTo(Lorg/thoughtcrime/securesms/imageeditor/CanvasMatrix;)V

    .line 112
    :cond_1
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->flags:Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 113
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->alphaAnimation:Lorg/thoughtcrime/securesms/imageeditor/model/AlphaAnimation;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/imageeditor/model/AlphaAnimation;->getValue()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    .line 115
    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/imageeditor/RendererContext;->setFade(F)V

    .line 116
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->children:Ljava/util/List;

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/imageeditor/RendererContext;->setChildren(Ljava/util/List;)V

    .line 117
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->drawSelf(Lorg/thoughtcrime/securesms/imageeditor/RendererContext;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 118
    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/imageeditor/RendererContext;->setFade(F)V

    .line 122
    :cond_2
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->flags:Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;->isChildrenVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 123
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->children:Ljava/util/List;

    invoke-static {v0, p1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->drawChildren(Ljava/util/List;Lorg/thoughtcrime/securesms/imageeditor/RendererContext;)V

    .line 124
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->deletedChildren:Ljava/util/List;

    invoke-static {v0, p1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->drawChildren(Ljava/util/List;Lorg/thoughtcrime/securesms/imageeditor/RendererContext;)V

    .line 127
    :cond_3
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/imageeditor/RendererContext;->restore()V

    return-void
.end method

.method public findElement(Landroid/graphics/Matrix;Landroid/graphics/Matrix;Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement$FindElementPredicate;)Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;
    .locals 2

    .line 173
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->temp:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 175
    iget-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->temp:Landroid/graphics/Matrix;

    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->localMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 176
    iget-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->temp:Landroid/graphics/Matrix;

    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->editorMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 178
    iget-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->temp:Landroid/graphics/Matrix;

    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->tempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 180
    iget-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->children:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_1

    .line 181
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->temp:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, p2, p3}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->findElement(Landroid/graphics/Matrix;Landroid/graphics/Matrix;Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement$FindElementPredicate;)Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 187
    :cond_1
    iget-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->tempMatrix:Landroid/graphics/Matrix;

    invoke-interface {p3, p0, p1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement$FindElementPredicate;->test(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;Landroid/graphics/Matrix;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 188
    iget-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->tempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    return-object p0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method findElement(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;
    .locals 1

    .line 157
    new-instance v0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement$$ExternalSyntheticLambda0;-><init>(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)V

    invoke-virtual {p0, p2, p3, v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->findElement(Landroid/graphics/Matrix;Landroid/graphics/Matrix;Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement$FindElementPredicate;)Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    move-result-object p1

    return-object p1
.end method

.method findElementAt(FFLandroid/graphics/Matrix;Landroid/graphics/Matrix;)Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;
    .locals 3

    const/4 v0, 0x2

    new-array v1, v0, [F

    new-array v0, v0, [F

    const/4 v2, 0x0

    aput p1, v0, v2

    const/4 p1, 0x1

    aput p2, v0, p1

    .line 164
    new-instance p1, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement$$ExternalSyntheticLambda2;

    invoke-direct {p1, v1, v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement$$ExternalSyntheticLambda2;-><init>([F[F)V

    invoke-virtual {p0, p3, p4, p1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->findElement(Landroid/graphics/Matrix;Landroid/graphics/Matrix;Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement$FindElementPredicate;)Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    move-result-object p1

    return-object p1
.end method

.method forAllInTree(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement$PerElementFunction;)V
    .locals 2

    .line 209
    invoke-interface {p1, p0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement$PerElementFunction;->apply(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)V

    .line 210
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    .line 211
    invoke-virtual {v1, p1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->forAllInTree(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement$PerElementFunction;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method getChild(I)Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;
    .locals 1

    .line 205
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    return-object p1
.end method

.method getChildCount()I
    .locals 1

    .line 201
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getEditorMatrix()Landroid/graphics/Matrix;
    .locals 1

    .line 153
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->editorMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getFlags()Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;
    .locals 1

    .line 197
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->flags:Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;

    return-object v0
.end method

.method getId()Ljava/util/UUID;
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->id:Ljava/util/UUID;

    return-object v0
.end method

.method public getLocalMatrix()Landroid/graphics/Matrix;
    .locals 1

    .line 149
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->localMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method getLocalMatrixAnimating()Landroid/graphics/Matrix;
    .locals 2

    .line 319
    new-instance v0, Landroid/graphics/Matrix;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->localMatrix:Landroid/graphics/Matrix;

    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 320
    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->animationMatrix:Lorg/thoughtcrime/securesms/imageeditor/model/AnimationMatrix;

    invoke-virtual {v1, v0}, Lorg/thoughtcrime/securesms/imageeditor/model/AnimationMatrix;->preConcatValueTo(Landroid/graphics/Matrix;)V

    return-object v0
.end method

.method public getRenderer()Lorg/thoughtcrime/securesms/imageeditor/Renderer;
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->renderer:Lorg/thoughtcrime/securesms/imageeditor/Renderer;

    return-object v0
.end method

.method public getZOrder()I
    .locals 1

    .line 259
    iget v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->zOrder:I

    return v0
.end method

.method parentOf(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;
    .locals 2

    .line 239
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 242
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    .line 243
    invoke-virtual {v1, p1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->parentOf(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method rollbackEditorMatrix(Ljava/lang/Runnable;)V
    .locals 1

    .line 280
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p0, v0, p1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->animateEditorTo(Landroid/graphics/Matrix;Ljava/lang/Runnable;)V

    return-void
.end method

.method public singleScalePulse(Ljava/lang/Runnable;)V
    .locals 2

    .line 252
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    const v1, 0x3f99999a    # 1.2f

    .line 253
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 255
    invoke-static {v0, p1}, Lorg/thoughtcrime/securesms/imageeditor/model/AnimationMatrix;->singlePulse(Landroid/graphics/Matrix;Ljava/lang/Runnable;)Lorg/thoughtcrime/securesms/imageeditor/model/AnimationMatrix;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->animationMatrix:Lorg/thoughtcrime/securesms/imageeditor/model/AnimationMatrix;

    return-void
.end method

.method stopAnimation()V
    .locals 1

    .line 325
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->animationMatrix:Lorg/thoughtcrime/securesms/imageeditor/model/AnimationMatrix;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/imageeditor/model/AnimationMatrix;->stop()V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 347
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->id:Ljava/util/UUID;

    invoke-static {p1, v0}, Lorg/thoughtcrime/securesms/imageeditor/model/ParcelUtils;->writeUUID(Landroid/os/Parcel;Ljava/util/UUID;)V

    .line 348
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->flags:Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;->asInt()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 349
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->localMatrix:Landroid/graphics/Matrix;

    invoke-static {p1, v0}, Lorg/thoughtcrime/securesms/imageeditor/model/ParcelUtils;->writeMatrix(Landroid/os/Parcel;Landroid/graphics/Matrix;)V

    .line 350
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->renderer:Lorg/thoughtcrime/securesms/imageeditor/Renderer;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 351
    iget p2, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->zOrder:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 352
    iget-object p2, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->children:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
