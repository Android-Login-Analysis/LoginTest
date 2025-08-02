.class final Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;
.super Ljava/lang/Object;
.source "EditorElementHierarchy.java"


# instance fields
.field private final blackout:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

.field private final cropEditorElement:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

.field private final flipRotate:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

.field private final imageCrop:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

.field private final imageRoot:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

.field private final overlay:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

.field private final root:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

.field private final thumbs:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

.field private final view:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;


# direct methods
.method private constructor <init>(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)V
    .locals 2

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->root:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    const/4 v0, 0x0

    .line 71
    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->getChild(I)Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->view:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    .line 72
    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->getChild(I)Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->flipRotate:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    .line 73
    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->getChild(I)Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    move-result-object v1

    iput-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->imageRoot:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    const/4 v1, 0x1

    .line 74
    invoke-virtual {p1, v1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->getChild(I)Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->overlay:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    .line 75
    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->getChild(I)Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->imageCrop:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    .line 76
    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->getChild(I)Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->cropEditorElement:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    .line 77
    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->getChild(I)Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    move-result-object v0

    iput-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->blackout:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    .line 78
    invoke-virtual {p1, v1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->getChild(I)Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->thumbs:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    return-void
.end method

.method static create()Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;
    .locals 2

    .line 48
    new-instance v0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;

    const/4 v1, 0x0

    invoke-static {v1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->createRoot(Z)Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;-><init>(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)V

    return-object v0
.end method

.method static create(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;
    .locals 1

    .line 56
    new-instance v0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;-><init>(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)V

    return-object v0
.end method

.method static createForCircleEditing()Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;
    .locals 2

    .line 52
    new-instance v0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;

    const/4 v1, 0x1

    invoke-static {v1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->createRoot(Z)Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;-><init>(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)V

    return-object v0
.end method

.method private static createRoot(Z)Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;
    .locals 6

    .line 82
    new-instance v0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;-><init>(Lorg/thoughtcrime/securesms/imageeditor/Renderer;)V

    .line 84
    new-instance v2, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    invoke-direct {v2, v1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;-><init>(Lorg/thoughtcrime/securesms/imageeditor/Renderer;)V

    .line 85
    invoke-virtual {v0, v2}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->addElement(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)V

    .line 87
    new-instance v3, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    invoke-direct {v3, v1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;-><init>(Lorg/thoughtcrime/securesms/imageeditor/Renderer;)V

    .line 88
    invoke-virtual {v2, v3}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->addElement(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)V

    .line 90
    new-instance v2, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    invoke-direct {v2, v1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;-><init>(Lorg/thoughtcrime/securesms/imageeditor/Renderer;)V

    .line 91
    invoke-virtual {v3, v2}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->addElement(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)V

    .line 93
    new-instance v2, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    invoke-direct {v2, v1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;-><init>(Lorg/thoughtcrime/securesms/imageeditor/Renderer;)V

    .line 94
    invoke-virtual {v3, v2}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->addElement(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)V

    .line 96
    new-instance v3, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    invoke-direct {v3, v1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;-><init>(Lorg/thoughtcrime/securesms/imageeditor/Renderer;)V

    .line 97
    invoke-virtual {v2, v3}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->addElement(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)V

    .line 99
    new-instance v1, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    new-instance v2, Lorg/thoughtcrime/securesms/imageeditor/renderers/CropAreaRenderer;

    xor-int/lit8 v4, p0, 0x1

    const v5, 0x7f060051

    invoke-direct {v2, v5, v4}, Lorg/thoughtcrime/securesms/imageeditor/renderers/CropAreaRenderer;-><init>(IZ)V

    invoke-direct {v1, v2}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;-><init>(Lorg/thoughtcrime/securesms/imageeditor/Renderer;)V

    .line 101
    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->getFlags()Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;

    move-result-object v2

    const/4 v4, 0x1

    .line 102
    invoke-virtual {v2, v4}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;->setRotateLocked(Z)Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;

    move-result-object v2

    .line 103
    invoke-virtual {v2, v4}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;->setAspectLocked(Z)Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;

    move-result-object v2

    const/4 v4, 0x0

    .line 104
    invoke-virtual {v2, v4}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;->setSelectable(Z)Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;

    move-result-object v2

    .line 105
    invoke-virtual {v2, v4}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;->setVisible(Z)Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;

    move-result-object v2

    .line 106
    invoke-virtual {v2}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;->persist()V

    .line 108
    invoke-virtual {v3, v1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->addElement(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)V

    .line 110
    new-instance v2, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    new-instance v3, Lorg/thoughtcrime/securesms/imageeditor/renderers/InverseFillRenderer;

    const/high16 v5, -0x1000000

    invoke-direct {v3, v5}, Lorg/thoughtcrime/securesms/imageeditor/renderers/InverseFillRenderer;-><init>(I)V

    invoke-direct {v2, v3}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;-><init>(Lorg/thoughtcrime/securesms/imageeditor/Renderer;)V

    .line 112
    invoke-virtual {v2}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->getFlags()Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;

    move-result-object v3

    .line 113
    invoke-virtual {v3, v4}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;->setSelectable(Z)Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;

    move-result-object v3

    .line 114
    invoke-virtual {v3, v4}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;->setEditable(Z)Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;

    move-result-object v3

    .line 115
    invoke-virtual {v3}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;->persist()V

    .line 117
    invoke-virtual {v1, v2}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->addElement(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)V

    xor-int/lit8 v2, p0, 0x1

    .line 119
    invoke-static {v1, v2}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->createThumbs(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;Z)Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->addElement(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)V

    if-eqz p0, :cond_0

    .line 122
    new-instance p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    new-instance v2, Lorg/thoughtcrime/securesms/imageeditor/renderers/OvalGuideRenderer;

    const v3, 0x7f060052

    invoke-direct {v2, v3}, Lorg/thoughtcrime/securesms/imageeditor/renderers/OvalGuideRenderer;-><init>(I)V

    invoke-direct {p0, v2}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;-><init>(Lorg/thoughtcrime/securesms/imageeditor/Renderer;)V

    .line 123
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->getFlags()Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;

    move-result-object v2

    invoke-virtual {v2, v4}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;->setSelectable(Z)Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;

    move-result-object v2

    .line 124
    invoke-virtual {v2}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;->persist()V

    .line 126
    invoke-virtual {v1, p0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->addElement(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)V

    :cond_0
    return-object v0
.end method

.method private static createThumbs(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;Z)Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;
    .locals 3

    .line 133
    new-instance v0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;-><init>(Lorg/thoughtcrime/securesms/imageeditor/Renderer;)V

    .line 135
    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->getFlags()Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;

    move-result-object v1

    const/4 v2, 0x0

    .line 136
    invoke-virtual {v1, v2}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;->setChildrenVisible(Z)Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;

    move-result-object v1

    .line 137
    invoke-virtual {v1, v2}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;->setSelectable(Z)Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;

    move-result-object v1

    .line 138
    invoke-virtual {v1, v2}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;->setVisible(Z)Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;

    move-result-object v1

    .line 139
    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;->persist()V

    if-eqz p1, :cond_0

    .line 142
    sget-object p1, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;->CENTER_LEFT:Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;

    invoke-static {p0, p1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->newThumb(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;)Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->addElement(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)V

    .line 143
    sget-object p1, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;->CENTER_RIGHT:Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;

    invoke-static {p0, p1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->newThumb(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;)Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->addElement(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)V

    .line 145
    sget-object p1, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;->TOP_CENTER:Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;

    invoke-static {p0, p1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->newThumb(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;)Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->addElement(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)V

    .line 146
    sget-object p1, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;->BOTTOM_CENTER:Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;

    invoke-static {p0, p1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->newThumb(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;)Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->addElement(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)V

    .line 149
    :cond_0
    sget-object p1, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;->TOP_LEFT:Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;

    invoke-static {p0, p1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->newThumb(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;)Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->addElement(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)V

    .line 150
    sget-object p1, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;->TOP_RIGHT:Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;

    invoke-static {p0, p1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->newThumb(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;)Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->addElement(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)V

    .line 151
    sget-object p1, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;->BOTTOM_LEFT:Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;

    invoke-static {p0, p1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->newThumb(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;)Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->addElement(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)V

    .line 152
    sget-object p1, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;->BOTTOM_RIGHT:Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;

    invoke-static {p0, p1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->newThumb(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;)Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->addElement(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)V

    return-object v0
.end method

.method private getCropFinalMatrix()Landroid/graphics/Matrix;
    .locals 2

    .line 247
    new-instance v0, Landroid/graphics/Matrix;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->flipRotate:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->getLocalMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 248
    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->imageCrop:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->getLocalMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 249
    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->cropEditorElement:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->getLocalMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    return-object v0
.end method

.method static synthetic lambda$doneCrop$2(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)V
    .locals 0

    .line 233
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->getFlags()Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;

    move-result-object p0

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;->reset()V

    return-void
.end method

.method static synthetic lambda$startCrop$0(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)V
    .locals 1

    .line 216
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->getFlags()Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;->setSelectable(Z)Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;

    return-void
.end method

.method static synthetic lambda$startCrop$1(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)V
    .locals 1

    .line 218
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->getFlags()Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;->setSelectable(Z)Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;

    return-void
.end method

.method private static newThumb(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;)Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;
    .locals 2

    .line 158
    new-instance v0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    new-instance v1, Lorg/thoughtcrime/securesms/imageeditor/model/CropThumbRenderer;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->getId()Ljava/util/UUID;

    move-result-object p0

    invoke-direct {v1, p1, p0}, Lorg/thoughtcrime/securesms/imageeditor/model/CropThumbRenderer;-><init>(Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;Ljava/util/UUID;)V

    invoke-direct {v0, v1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;-><init>(Lorg/thoughtcrime/securesms/imageeditor/Renderer;)V

    .line 160
    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->getFlags()Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;

    move-result-object p0

    const/4 v1, 0x0

    .line 161
    invoke-virtual {p0, v1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;->setSelectable(Z)Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;

    move-result-object p0

    .line 162
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;->persist()V

    .line 164
    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->getLocalMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;->getX()F

    move-result v1

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;->getY()F

    move-result p1

    invoke-virtual {p0, v1, p1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    return-object v0
.end method

.method static xScale(Landroid/graphics/Matrix;)F
    .locals 2

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 360
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 p0, 0x0

    aget p0, v0, p0

    mul-float p0, p0, p0

    const/4 v1, 0x3

    aget v0, v0, v1

    mul-float v0, v0, v0

    add-float/2addr p0, v0

    float-to-double v0, p0

    .line 361
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method


# virtual methods
.method doneCrop(Landroid/graphics/RectF;Ljava/lang/Runnable;)V
    .locals 0

    .line 229
    invoke-virtual {p0, p1, p2}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->updateViewToCrop(Landroid/graphics/RectF;Ljava/lang/Runnable;)V

    .line 231
    iget-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->root:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->rollbackEditorMatrix(Ljava/lang/Runnable;)V

    .line 233
    iget-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->root:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    new-instance p2, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy$$ExternalSyntheticLambda2;

    invoke-direct {p2}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->forAllInTree(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement$PerElementFunction;)V

    return-void
.end method

.method dragDropRelease(Landroid/graphics/RectF;Ljava/lang/Runnable;)V
    .locals 1

    .line 278
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->cropEditorElement:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->getFlags()Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;

    move-result-object v0

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    invoke-virtual {p0, p1, p2}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->updateViewToCrop(Landroid/graphics/RectF;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method flipRotate(IIILandroid/graphics/RectF;Ljava/lang/Runnable;)V
    .locals 2

    .line 290
    new-instance v0, Landroid/graphics/Matrix;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->flipRotate:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->getLocalMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    if-eqz p1, :cond_0

    int-to-float p1, p1

    .line 292
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    :cond_0
    int-to-float p1, p2

    int-to-float p2, p3

    .line 294
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 295
    iget-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->flipRotate:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    invoke-virtual {p1, v0, p5}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->animateLocalTo(Landroid/graphics/Matrix;Ljava/lang/Runnable;)V

    .line 296
    invoke-virtual {p0, p4, p5}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->updateViewToCrop(Landroid/graphics/RectF;Ljava/lang/Runnable;)V

    return-void
.end method

.method getCropEditorElement()Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;
    .locals 1

    .line 185
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->cropEditorElement:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    return-object v0
.end method

.method getCropRect()Landroid/graphics/RectF;
    .locals 3

    .line 284
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 285
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->getCropFinalMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    sget-object v2, Lorg/thoughtcrime/securesms/imageeditor/Bounds;->FULL_BOUNDS:Landroid/graphics/RectF;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    return-object v0
.end method

.method getFlipRotate()Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;
    .locals 1

    .line 197
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->flipRotate:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    return-object v0
.end method

.method getImageCrop()Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;
    .locals 1

    .line 189
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->imageCrop:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    return-object v0
.end method

.method getImageRoot()Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;
    .locals 1

    .line 174
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->imageRoot:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    return-object v0
.end method

.method getMainImage()Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;
    .locals 2

    .line 181
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->imageRoot:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->imageRoot:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->getChild(I)Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method getMainImageFullMatrix()Landroid/graphics/Matrix;
    .locals 2

    .line 303
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 305
    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->view:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->getLocalMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 306
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->getMainImageFullMatrixFromFlipRotate()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    return-object v0
.end method

.method getMainImageFullMatrixFromFlipRotate()Landroid/graphics/Matrix;
    .locals 2

    .line 315
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 317
    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->flipRotate:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->getLocalMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 318
    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->imageRoot:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->getLocalMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 320
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->getMainImage()Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 322
    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->getLocalMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    :cond_0
    return-object v0
.end method

.method getOutputSize(Landroid/graphics/Point;)Landroid/graphics/PointF;
    .locals 7

    .line 335
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 337
    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->flipRotate:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->getLocalMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 338
    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->cropEditorElement:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->getLocalMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 339
    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->cropEditorElement:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->getEditorMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 340
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->getMainImage()Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 342
    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->getLocalMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-static {v2}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->xScale(Landroid/graphics/Matrix;)F

    move-result v2

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->getEditorMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-static {v1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->xScale(Landroid/graphics/Matrix;)F

    move-result v1

    mul-float v2, v2, v1

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v2

    .line 343
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    :cond_0
    const/4 v1, 0x4

    new-array v2, v1, [F

    new-array v1, v1, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v1, v3

    const/4 v5, 0x1

    aput v4, v1, v5

    .line 347
    iget v4, p1, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    const/4 v6, 0x2

    aput v4, v1, v6

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    const/4 v4, 0x3

    aput p1, v1, v4

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    aget p1, v2, v3

    aget v0, v2, v6

    sub-float/2addr p1, v0

    .line 349
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    aget v0, v2, v5

    aget v1, v2, v4

    sub-float/2addr v0, v1

    .line 350
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 352
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, p1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v1
.end method

.method getOverlay()Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;
    .locals 1

    .line 193
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->overlay:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    return-object v0
.end method

.method getRoot()Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;
    .locals 1

    .line 170
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->root:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    return-object v0
.end method

.method imageMatrixRelativeToCrop()Landroid/graphics/Matrix;
    .locals 4

    .line 259
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->getMainImage()Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 262
    :cond_0
    new-instance v1, Landroid/graphics/Matrix;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->imageCrop:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    invoke-virtual {v2}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->getLocalMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 263
    iget-object v2, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->cropEditorElement:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    invoke-virtual {v2}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->getLocalMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 264
    iget-object v2, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->cropEditorElement:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    invoke-virtual {v2}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->getEditorMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 266
    new-instance v2, Landroid/graphics/Matrix;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->getLocalMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 267
    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->getEditorMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 268
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->imageCrop:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->getLocalMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 270
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 271
    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 272
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    return-object v0
.end method

.method startCrop(Ljava/lang/Runnable;)V
    .locals 3

    .line 201
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    const v1, 0x3f4ccccd    # 0.8f

    .line 204
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 205
    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->root:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    invoke-virtual {v1, v0, p1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->animateEditorTo(Landroid/graphics/Matrix;Ljava/lang/Runnable;)V

    .line 207
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->cropEditorElement:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->getFlags()Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;

    move-result-object v0

    const/4 v1, 0x1

    .line 208
    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;->setVisible(Z)Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;

    .line 210
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->blackout:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->getFlags()Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;

    move-result-object v0

    const/4 v2, 0x0

    .line 211
    invoke-virtual {v0, v2}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;->setVisible(Z)Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;

    .line 213
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->thumbs:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->getFlags()Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;

    move-result-object v0

    .line 214
    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;->setChildrenVisible(Z)Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;

    .line 216
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->thumbs:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    new-instance v2, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v2}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->forAllInTree(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement$PerElementFunction;)V

    .line 218
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->imageRoot:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    new-instance v2, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v2}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->forAllInTree(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement$PerElementFunction;)V

    .line 220
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->getMainImage()Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->getFlags()Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;->setSelectable(Z)Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;

    .line 225
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method updateViewToCrop(Landroid/graphics/RectF;Ljava/lang/Runnable;)V
    .locals 3

    .line 237
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 239
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->getCropFinalMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    sget-object v2, Lorg/thoughtcrime/securesms/imageeditor/Bounds;->FULL_BOUNDS:Landroid/graphics/RectF;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 241
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 242
    sget-object v2, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v1, v0, p1, v2}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 243
    iget-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElementHierarchy;->view:Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    invoke-virtual {p1, v1, p2}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->animateLocalTo(Landroid/graphics/Matrix;Ljava/lang/Runnable;)V

    return-void
.end method
