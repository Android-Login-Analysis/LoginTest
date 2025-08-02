.class public final Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;
.super Landroid/widget/LinearLayout;
.source "ImageEditorHud.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$EventListener;,
        Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;
    }
.end annotation


# static fields
.field private static final NULL_EVENT_LISTENER:Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$EventListener;


# instance fields
.field private final allViews:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private blurButton:Landroid/view/View;

.field private colorPalette:Landroidx/recyclerview/widget/RecyclerView;

.field private colorPaletteAdapter:Lorg/thoughtcrime/securesms/scribbles/widget/ColorPaletteAdapter;

.field private colorPicker:Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;

.field private confirmButton:Landroid/view/View;

.field private cropButton:Landroid/view/View;

.field private cropFlipButton:Landroid/view/View;

.field private cropRotateButton:Landroid/view/View;

.field private currentMode:Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;

.field private deleteButton:Landroid/view/View;

.field private drawButton:Landroid/view/View;

.field private eventListener:Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$EventListener;

.field private highlightButton:Landroid/view/View;

.field private final highlightOnColorChangeListener:Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker$OnColorChangeListener;

.field private saveButton:Landroid/view/View;

.field private scribbleBlurHelpText:Landroid/view/View;

.field private final standardOnColorChangeListener:Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker$OnColorChangeListener;

.field private stickerButton:Landroid/view/View;

.field private textButton:Landroid/view/View;

.field private undoAvailable:Z

.field private undoButton:Landroid/view/View;

.field private final visibilityModeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;",
            "Ljava/util/Set<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 265
    new-instance v0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$1;

    invoke-direct {v0}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$1;-><init>()V

    sput-object v0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->NULL_EVENT_LISTENER:Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$EventListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 47
    sget-object p1, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->NULL_EVENT_LISTENER:Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$EventListener;

    iput-object p1, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->eventListener:Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$EventListener;

    .line 52
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->visibilityModeMap:Ljava/util/Map;

    .line 53
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->allViews:Ljava/util/Set;

    .line 230
    new-instance p1, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$$ExternalSyntheticLambda0;-><init>(Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;)V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->standardOnColorChangeListener:Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker$OnColorChangeListener;

    .line 232
    new-instance p1, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$$ExternalSyntheticLambda6;

    invoke-direct {p1, p0}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$$ExternalSyntheticLambda6;-><init>(Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;)V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->highlightOnColorChangeListener:Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker$OnColorChangeListener;

    .line 60
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    sget-object p1, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->NULL_EVENT_LISTENER:Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$EventListener;

    iput-object p1, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->eventListener:Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$EventListener;

    .line 52
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->visibilityModeMap:Ljava/util/Map;

    .line 53
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->allViews:Ljava/util/Set;

    .line 230
    new-instance p1, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$$ExternalSyntheticLambda0;-><init>(Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;)V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->standardOnColorChangeListener:Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker$OnColorChangeListener;

    .line 232
    new-instance p1, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$$ExternalSyntheticLambda6;

    invoke-direct {p1, p0}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$$ExternalSyntheticLambda6;-><init>(Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;)V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->highlightOnColorChangeListener:Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker$OnColorChangeListener;

    .line 65
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    sget-object p1, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->NULL_EVENT_LISTENER:Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$EventListener;

    iput-object p1, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->eventListener:Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$EventListener;

    .line 52
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->visibilityModeMap:Ljava/util/Map;

    .line 53
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->allViews:Ljava/util/Set;

    .line 230
    new-instance p1, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$$ExternalSyntheticLambda0;-><init>(Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;)V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->standardOnColorChangeListener:Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker$OnColorChangeListener;

    .line 232
    new-instance p1, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$$ExternalSyntheticLambda6;

    invoke-direct {p1, p0}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$$ExternalSyntheticLambda6;-><init>(Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;)V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->highlightOnColorChangeListener:Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker$OnColorChangeListener;

    .line 70
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->initialize()V

    return-void
.end method

.method private buttonIsVisible(Ljava/util/Set;Landroid/view/View;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")Z"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 206
    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->undoButton:Landroid/view/View;

    if-ne p2, p1, :cond_0

    iget-boolean p1, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->undoAvailable:Z

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private initialize()V
    .locals 2

    .line 74
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0078

    invoke-static {v0, v1, p0}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const/4 v0, 0x1

    .line 75
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->setOrientation(I)V

    const v0, 0x7f0902f5

    .line 77
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->cropButton:Landroid/view/View;

    const v0, 0x7f0902f6

    .line 78
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->cropFlipButton:Landroid/view/View;

    const v0, 0x7f0902f7

    .line 79
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->cropRotateButton:Landroid/view/View;

    const v0, 0x7f0902f1

    .line 80
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->colorPalette:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f0902f9

    .line 81
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->drawButton:Landroid/view/View;

    const v0, 0x7f0902fa

    .line 82
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->highlightButton:Landroid/view/View;

    const v0, 0x7f0902ef

    .line 83
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->blurButton:Landroid/view/View;

    const v0, 0x7f0902ff

    .line 84
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->textButton:Landroid/view/View;

    const v0, 0x7f0902fe

    .line 85
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->stickerButton:Landroid/view/View;

    const v0, 0x7f090301

    .line 86
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->undoButton:Landroid/view/View;

    const v0, 0x7f0902fc

    .line 87
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->saveButton:Landroid/view/View;

    const v0, 0x7f0902f8

    .line 88
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->deleteButton:Landroid/view/View;

    const v0, 0x7f0902f3

    .line 89
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->confirmButton:Landroid/view/View;

    const v0, 0x7f0902f2

    .line 90
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->colorPicker:Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;

    const v0, 0x7f0902f0

    .line 91
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->scribbleBlurHelpText:Landroid/view/View;

    .line 93
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->initializeViews()V

    .line 94
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->initializeVisibilityMap()V

    .line 95
    sget-object v0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;->NONE:Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;

    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->setMode(Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;)V

    return-void
.end method

.method private initializeViews()V
    .locals 3

    .line 127
    iget-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->undoButton:Landroid/view/View;

    new-instance v1, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$$ExternalSyntheticLambda7;-><init>(Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->deleteButton:Landroid/view/View;

    new-instance v1, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$$ExternalSyntheticLambda11;-><init>(Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->cropButton:Landroid/view/View;

    new-instance v1, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$$ExternalSyntheticLambda12;-><init>(Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->cropFlipButton:Landroid/view/View;

    new-instance v1, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$$ExternalSyntheticLambda13;-><init>(Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->cropRotateButton:Landroid/view/View;

    new-instance v1, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$$ExternalSyntheticLambda14;-><init>(Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->confirmButton:Landroid/view/View;

    new-instance v1, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$$ExternalSyntheticLambda1;-><init>(Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    new-instance v0, Lorg/thoughtcrime/securesms/scribbles/widget/ColorPaletteAdapter;

    invoke-direct {v0}, Lorg/thoughtcrime/securesms/scribbles/widget/ColorPaletteAdapter;-><init>()V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->colorPaletteAdapter:Lorg/thoughtcrime/securesms/scribbles/widget/ColorPaletteAdapter;

    .line 141
    iget-object v1, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->colorPicker:Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$$ExternalSyntheticLambda2;-><init>(Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;)V

    invoke-virtual {v0, v2}, Lorg/thoughtcrime/securesms/scribbles/widget/ColorPaletteAdapter;->setEventListener(Lorg/thoughtcrime/securesms/scribbles/widget/ColorPaletteAdapter$EventListener;)V

    .line 143
    iget-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->colorPalette:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 144
    iget-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->colorPalette:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->colorPaletteAdapter:Lorg/thoughtcrime/securesms/scribbles/widget/ColorPaletteAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 146
    iget-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->drawButton:Landroid/view/View;

    new-instance v1, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$$ExternalSyntheticLambda3;-><init>(Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->blurButton:Landroid/view/View;

    new-instance v1, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$$ExternalSyntheticLambda4;-><init>(Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iget-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->highlightButton:Landroid/view/View;

    new-instance v1, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$$ExternalSyntheticLambda5;-><init>(Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iget-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->textButton:Landroid/view/View;

    new-instance v1, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$$ExternalSyntheticLambda8;-><init>(Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->saveButton:Landroid/view/View;

    new-instance v1, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$$ExternalSyntheticLambda9;-><init>(Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->stickerButton:Landroid/view/View;

    new-instance v1, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$$ExternalSyntheticLambda10;-><init>(Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initializeVisibilityMap()V
    .locals 11

    .line 99
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x7

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-lt v0, v1, :cond_0

    .line 100
    sget-object v0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;->NONE:Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;

    const/16 v1, 0x8

    new-array v1, v1, [Landroid/view/View;

    iget-object v10, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->drawButton:Landroid/view/View;

    aput-object v10, v1, v9

    iget-object v10, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->highlightButton:Landroid/view/View;

    aput-object v10, v1, v8

    iget-object v10, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->blurButton:Landroid/view/View;

    aput-object v10, v1, v7

    iget-object v10, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->textButton:Landroid/view/View;

    aput-object v10, v1, v6

    iget-object v10, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->stickerButton:Landroid/view/View;

    aput-object v10, v1, v5

    iget-object v10, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->cropButton:Landroid/view/View;

    aput-object v10, v1, v3

    iget-object v3, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->undoButton:Landroid/view/View;

    aput-object v3, v1, v2

    iget-object v2, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->saveButton:Landroid/view/View;

    aput-object v2, v1, v4

    invoke-direct {p0, v0, v1}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->setVisibleViewsWhenInMode(Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;[Landroid/view/View;)V

    goto :goto_0

    .line 102
    :cond_0
    sget-object v0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;->NONE:Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;

    new-array v1, v4, [Landroid/view/View;

    iget-object v4, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->drawButton:Landroid/view/View;

    aput-object v4, v1, v9

    iget-object v4, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->highlightButton:Landroid/view/View;

    aput-object v4, v1, v8

    iget-object v4, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->textButton:Landroid/view/View;

    aput-object v4, v1, v7

    iget-object v4, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->stickerButton:Landroid/view/View;

    aput-object v4, v1, v6

    iget-object v4, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->cropButton:Landroid/view/View;

    aput-object v4, v1, v5

    iget-object v4, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->undoButton:Landroid/view/View;

    aput-object v4, v1, v3

    iget-object v3, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->saveButton:Landroid/view/View;

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->setVisibleViewsWhenInMode(Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;[Landroid/view/View;)V

    .line 105
    :goto_0
    sget-object v0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;->DRAW:Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;

    new-array v1, v5, [Landroid/view/View;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->confirmButton:Landroid/view/View;

    aput-object v2, v1, v9

    iget-object v2, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->undoButton:Landroid/view/View;

    aput-object v2, v1, v8

    iget-object v2, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->colorPicker:Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;

    aput-object v2, v1, v7

    iget-object v2, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->colorPalette:Landroidx/recyclerview/widget/RecyclerView;

    aput-object v2, v1, v6

    invoke-direct {p0, v0, v1}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->setVisibleViewsWhenInMode(Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;[Landroid/view/View;)V

    .line 107
    sget-object v0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;->HIGHLIGHT:Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;

    new-array v1, v5, [Landroid/view/View;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->confirmButton:Landroid/view/View;

    aput-object v2, v1, v9

    iget-object v2, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->undoButton:Landroid/view/View;

    aput-object v2, v1, v8

    iget-object v2, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->colorPicker:Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;

    aput-object v2, v1, v7

    iget-object v2, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->colorPalette:Landroidx/recyclerview/widget/RecyclerView;

    aput-object v2, v1, v6

    invoke-direct {p0, v0, v1}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->setVisibleViewsWhenInMode(Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;[Landroid/view/View;)V

    .line 109
    sget-object v0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;->BLUR:Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;

    new-array v1, v6, [Landroid/view/View;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->confirmButton:Landroid/view/View;

    aput-object v2, v1, v9

    iget-object v2, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->undoButton:Landroid/view/View;

    aput-object v2, v1, v8

    iget-object v2, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->scribbleBlurHelpText:Landroid/view/View;

    aput-object v2, v1, v7

    invoke-direct {p0, v0, v1}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->setVisibleViewsWhenInMode(Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;[Landroid/view/View;)V

    .line 111
    sget-object v0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;->TEXT:Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;

    new-array v1, v5, [Landroid/view/View;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->confirmButton:Landroid/view/View;

    aput-object v2, v1, v9

    iget-object v2, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->deleteButton:Landroid/view/View;

    aput-object v2, v1, v8

    iget-object v2, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->colorPicker:Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;

    aput-object v2, v1, v7

    iget-object v2, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->colorPalette:Landroidx/recyclerview/widget/RecyclerView;

    aput-object v2, v1, v6

    invoke-direct {p0, v0, v1}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->setVisibleViewsWhenInMode(Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;[Landroid/view/View;)V

    .line 113
    sget-object v0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;->MOVE_DELETE:Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;

    new-array v1, v7, [Landroid/view/View;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->confirmButton:Landroid/view/View;

    aput-object v2, v1, v9

    iget-object v2, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->deleteButton:Landroid/view/View;

    aput-object v2, v1, v8

    invoke-direct {p0, v0, v1}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->setVisibleViewsWhenInMode(Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;[Landroid/view/View;)V

    .line 115
    sget-object v0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;->CROP:Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;

    new-array v1, v5, [Landroid/view/View;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->confirmButton:Landroid/view/View;

    aput-object v2, v1, v9

    iget-object v2, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->cropFlipButton:Landroid/view/View;

    aput-object v2, v1, v8

    iget-object v2, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->cropRotateButton:Landroid/view/View;

    aput-object v2, v1, v7

    iget-object v2, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->undoButton:Landroid/view/View;

    aput-object v2, v1, v6

    invoke-direct {p0, v0, v1}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->setVisibleViewsWhenInMode(Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;[Landroid/view/View;)V

    .line 117
    iget-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->visibilityModeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 118
    iget-object v2, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->allViews:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_1
    return-void
.end method

.method private presentModeBlur()V
    .locals 2

    .line 211
    iget-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->colorPicker:Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->standardOnColorChangeListener:Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker$OnColorChangeListener;

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->setOnColorChangeListener(Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker$OnColorChangeListener;)V

    .line 212
    iget-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->colorPicker:Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->setActiveColor(I)V

    return-void
.end method

.method private presentModeDraw()V
    .locals 2

    .line 216
    iget-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->colorPicker:Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->standardOnColorChangeListener:Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker$OnColorChangeListener;

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->setOnColorChangeListener(Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker$OnColorChangeListener;)V

    .line 217
    iget-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->colorPicker:Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->setActiveColor(I)V

    return-void
.end method

.method private presentModeHighlight()V
    .locals 2

    .line 221
    iget-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->colorPicker:Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->highlightOnColorChangeListener:Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker$OnColorChangeListener;

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->setOnColorChangeListener(Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker$OnColorChangeListener;)V

    .line 222
    iget-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->colorPicker:Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;

    const/16 v1, -0x100

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->setActiveColor(I)V

    return-void
.end method

.method private presentModeText()V
    .locals 2

    .line 226
    iget-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->colorPicker:Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->standardOnColorChangeListener:Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker$OnColorChangeListener;

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->setOnColorChangeListener(Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker$OnColorChangeListener;)V

    .line 227
    iget-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->colorPicker:Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->setActiveColor(I)V

    return-void
.end method

.method private static replaceAlphaWith128(I)I
    .locals 1

    const v0, 0xffffff

    and-int/2addr p0, v0

    const/high16 v0, -0x80000000

    or-int/2addr p0, v0

    return p0
.end method

.method private setMode(Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;Z)V
    .locals 4

    .line 181
    iput-object p1, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->currentMode:Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;

    .line 182
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->updateButtonVisibility(Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;)V

    .line 184
    sget-object v0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$2;->$SwitchMap$org$thoughtcrime$securesms$scribbles$ImageEditorHud$Mode:[I

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 188
    :cond_0
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->presentModeBlur()V

    goto :goto_0

    .line 187
    :cond_1
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->presentModeText()V

    goto :goto_0

    .line 186
    :cond_2
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->presentModeHighlight()V

    goto :goto_0

    .line 185
    :cond_3
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->presentModeDraw()V

    :goto_0
    if-eqz p2, :cond_4

    .line 192
    iget-object p2, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->eventListener:Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$EventListener;

    invoke-interface {p2, p1}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$EventListener;->onModeStarted(Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;)V

    .line 194
    :cond_4
    iget-object p2, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->eventListener:Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$EventListener;

    sget-object v0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;->NONE:Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;

    const/4 v2, 0x0

    if-eq p1, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_1
    sget-object v3, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;->TEXT:Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;

    if-eq p1, v3, :cond_6

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    invoke-interface {p2, v0, v1}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$EventListener;->onRequestFullScreen(ZZ)V

    return-void
.end method

.method private varargs setVisibleViewsWhenInMode(Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;[Landroid/view/View;)V
    .locals 2

    .line 123
    iget-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->visibilityModeMap:Ljava/util/Map;

    new-instance v1, Ljava/util/HashSet;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private updateButtonVisibility(Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;)V
    .locals 3

    .line 198
    iget-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->visibilityModeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    .line 199
    iget-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->allViews:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 200
    invoke-direct {p0, p1, v1}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->buttonIsVisible(Ljava/util/Set;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public enterMode(Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;)V
    .locals 1

    const/4 v0, 0x0

    .line 173
    invoke-direct {p0, p1, v0}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->setMode(Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;Z)V

    return-void
.end method

.method public getActiveColor()I
    .locals 1

    .line 161
    iget-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->colorPicker:Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->getActiveColor()I

    move-result v0

    return v0
.end method

.method synthetic lambda$initializeViews$0$org-thoughtcrime-securesms-scribbles-ImageEditorHud(Landroid/view/View;)V
    .locals 0

    .line 127
    iget-object p1, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->eventListener:Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$EventListener;

    invoke-interface {p1}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$EventListener;->onUndo()V

    return-void
.end method

.method synthetic lambda$initializeViews$1$org-thoughtcrime-securesms-scribbles-ImageEditorHud(Landroid/view/View;)V
    .locals 0

    .line 130
    iget-object p1, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->eventListener:Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$EventListener;

    invoke-interface {p1}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$EventListener;->onDelete()V

    .line 131
    sget-object p1, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;->NONE:Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->setMode(Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;)V

    return-void
.end method

.method synthetic lambda$initializeViews$10$org-thoughtcrime-securesms-scribbles-ImageEditorHud(Landroid/view/View;)V
    .locals 0

    .line 150
    iget-object p1, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->eventListener:Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$EventListener;

    invoke-interface {p1}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$EventListener;->onSave()V

    return-void
.end method

.method synthetic lambda$initializeViews$11$org-thoughtcrime-securesms-scribbles-ImageEditorHud(Landroid/view/View;)V
    .locals 0

    .line 151
    sget-object p1, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;->MOVE_DELETE:Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->setMode(Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;)V

    return-void
.end method

.method synthetic lambda$initializeViews$2$org-thoughtcrime-securesms-scribbles-ImageEditorHud(Landroid/view/View;)V
    .locals 0

    .line 134
    sget-object p1, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;->CROP:Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->setMode(Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;)V

    return-void
.end method

.method synthetic lambda$initializeViews$3$org-thoughtcrime-securesms-scribbles-ImageEditorHud(Landroid/view/View;)V
    .locals 0

    .line 135
    iget-object p1, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->eventListener:Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$EventListener;

    invoke-interface {p1}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$EventListener;->onFlipHorizontal()V

    return-void
.end method

.method synthetic lambda$initializeViews$4$org-thoughtcrime-securesms-scribbles-ImageEditorHud(Landroid/view/View;)V
    .locals 0

    .line 136
    iget-object p1, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->eventListener:Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$EventListener;

    invoke-interface {p1}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$EventListener;->onRotate90AntiClockwise()V

    return-void
.end method

.method synthetic lambda$initializeViews$5$org-thoughtcrime-securesms-scribbles-ImageEditorHud(Landroid/view/View;)V
    .locals 0

    .line 138
    sget-object p1, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;->NONE:Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->setMode(Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;)V

    return-void
.end method

.method synthetic lambda$initializeViews$6$org-thoughtcrime-securesms-scribbles-ImageEditorHud(Landroid/view/View;)V
    .locals 0

    .line 146
    sget-object p1, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;->DRAW:Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->setMode(Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;)V

    return-void
.end method

.method synthetic lambda$initializeViews$7$org-thoughtcrime-securesms-scribbles-ImageEditorHud(Landroid/view/View;)V
    .locals 0

    .line 147
    sget-object p1, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;->BLUR:Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->setMode(Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;)V

    return-void
.end method

.method synthetic lambda$initializeViews$8$org-thoughtcrime-securesms-scribbles-ImageEditorHud(Landroid/view/View;)V
    .locals 0

    .line 148
    sget-object p1, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;->HIGHLIGHT:Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->setMode(Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;)V

    return-void
.end method

.method synthetic lambda$initializeViews$9$org-thoughtcrime-securesms-scribbles-ImageEditorHud(Landroid/view/View;)V
    .locals 0

    .line 149
    sget-object p1, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;->TEXT:Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->setMode(Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;)V

    return-void
.end method

.method synthetic lambda$new$12$org-thoughtcrime-securesms-scribbles-ImageEditorHud(I)V
    .locals 1

    .line 230
    iget-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->eventListener:Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$EventListener;

    invoke-interface {v0, p1}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$EventListener;->onColorChange(I)V

    return-void
.end method

.method synthetic lambda$new$13$org-thoughtcrime-securesms-scribbles-ImageEditorHud(I)V
    .locals 1

    .line 232
    iget-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->eventListener:Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$EventListener;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->replaceAlphaWith128(I)I

    move-result p1

    invoke-interface {v0, p1}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$EventListener;->onColorChange(I)V

    return-void
.end method

.method public setActiveColor(I)V
    .locals 1

    .line 165
    iget-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->colorPicker:Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->setActiveColor(I)V

    return-void
.end method

.method public setColorPalette(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->colorPaletteAdapter:Lorg/thoughtcrime/securesms/scribbles/widget/ColorPaletteAdapter;

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/scribbles/widget/ColorPaletteAdapter;->setColors(Ljava/util/Collection;)V

    :cond_0
    return-void
.end method

.method public setEventListener(Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$EventListener;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 169
    :cond_0
    sget-object p1, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->NULL_EVENT_LISTENER:Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$EventListener;

    :goto_0
    iput-object p1, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->eventListener:Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$EventListener;

    return-void
.end method

.method public setMode(Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;)V
    .locals 1

    const/4 v0, 0x1

    .line 177
    invoke-direct {p0, p1, v0}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->setMode(Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;Z)V

    return-void
.end method

.method public setUndoAvailability(Z)V
    .locals 2

    .line 239
    iput-boolean p1, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->undoAvailable:Z

    .line 241
    iget-object p1, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->undoButton:Landroid/view/View;

    iget-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->visibilityModeMap:Ljava/util/Map;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->currentMode:Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->undoButton:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->buttonIsVisible(Ljava/util/Set;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
