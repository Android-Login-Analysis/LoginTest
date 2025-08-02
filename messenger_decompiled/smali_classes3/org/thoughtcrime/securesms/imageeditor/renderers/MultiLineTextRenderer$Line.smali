.class Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;
.super Ljava/lang/Object;
.source "MultiLineTextRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Line"
.end annotation


# instance fields
.field private final accentMatrix:Landroid/graphics/Matrix;

.field private ascentInBounds:F

.field private final decentMatrix:Landroid/graphics/Matrix;

.field private descentInBounds:F

.field private heightInBounds:F

.field private final inverseProjectionMatrix:Landroid/graphics/Matrix;

.field private final projectionMatrix:Landroid/graphics/Matrix;

.field private scale:F

.field private selEnd:I

.field private selStart:I

.field private final selectionBounds:Landroid/graphics/RectF;

.field private text:Ljava/lang/String;

.field private final textBounds:Landroid/graphics/RectF;

.field final synthetic this$0:Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;


# direct methods
.method constructor <init>(Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;Ljava/lang/String;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;->this$0:Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;->accentMatrix:Landroid/graphics/Matrix;

    .line 137
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;->decentMatrix:Landroid/graphics/Matrix;

    .line 138
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;->projectionMatrix:Landroid/graphics/Matrix;

    .line 139
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;->inverseProjectionMatrix:Landroid/graphics/Matrix;

    .line 140
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;->selectionBounds:Landroid/graphics/RectF;

    .line 141
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;->textBounds:Landroid/graphics/RectF;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 148
    iput p1, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;->scale:F

    .line 152
    iput-object p2, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;->text:Ljava/lang/String;

    .line 153
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;->recalculate()V

    return-void
.end method

.method static synthetic access$000(Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;)F
    .locals 0

    .line 135
    iget p0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;->scale:F

    return p0
.end method

.method static synthetic access$100(Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;)Z
    .locals 0

    .line 135
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;->containsSelectionEnd()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;)Ljava/lang/String;
    .locals 0

    .line 135
    iget-object p0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;->text:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;)F
    .locals 0

    .line 135
    iget p0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;->heightInBounds:F

    return p0
.end method

.method static synthetic access$800(Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;)F
    .locals 0

    .line 135
    iget p0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;->ascentInBounds:F

    return p0
.end method

.method static synthetic access$900(Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;)F
    .locals 0

    .line 135
    iget p0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;->descentInBounds:F

    return p0
.end method

.method private containsSelectionEnd()Z
    .locals 2

    .line 228
    iget v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;->selEnd:I

    if-ltz v0, :cond_0

    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;->text:Ljava/lang/String;

    .line 229
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getTextBoundsWithoutTrim(Ljava/lang/String;IILandroid/graphics/Rect;)V
    .locals 6

    .line 233
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 234
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 236
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-static {v4, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v5, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 238
    iget-object p2, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;->this$0:Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;

    invoke-static {p2}, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;->access$400(Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;)Landroid/graphics/Paint;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    invoke-virtual {p2, p1, v4, p3, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 239
    iget-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;->this$0:Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;->access$400(Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;)Landroid/graphics/Paint;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, v3, v4, p2, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 240
    invoke-virtual {p4, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 241
    iget p1, p4, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result p2

    mul-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    iput p1, p4, Landroid/graphics/Rect;->right:I

    .line 243
    iget p1, p4, Landroid/graphics/Rect;->left:I

    .line 244
    iget p2, p4, Landroid/graphics/Rect;->left:I

    sub-int/2addr p2, p1

    iput p2, p4, Landroid/graphics/Rect;->left:I

    .line 245
    iget p2, p4, Landroid/graphics/Rect;->right:I

    sub-int/2addr p2, p1

    iput p2, p4, Landroid/graphics/Rect;->right:I

    return-void
.end method

.method private recalculate()V
    .locals 9

    .line 157
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 158
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 160
    iget-object v2, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {p0, v2, v4, v3, v1}, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;->getTextBoundsWithoutTrim(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 161
    iget-object v2, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;->textBounds:Landroid/graphics/RectF;

    invoke-virtual {v2, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 163
    iget-object v2, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;->textBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 164
    iget-object v2, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;->this$0:Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;

    invoke-static {v2}, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;->access$300(Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;)F

    move-result v2

    const/high16 v3, 0x43160000    # 150.0f

    mul-float v2, v2, v3

    .line 166
    iget v3, v0, Landroid/graphics/RectF;->right:F

    div-float/2addr v3, v2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    div-float/2addr v5, v3

    iput v5, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;->scale:F

    .line 168
    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 170
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;->showSelectionOrCursor()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 171
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 172
    iget-object v5, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;->text:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    iget v6, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;->selStart:I

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 173
    iget-object v6, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;->text:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    iget v7, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;->selEnd:I

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 174
    iget-object v7, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;->text:Ljava/lang/String;

    invoke-virtual {v7, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 176
    invoke-direct {p0, v7, v4, v5, v2}, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;->getTextBoundsWithoutTrim(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 178
    iget v7, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;->selStart:I

    iget v8, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;->selEnd:I

    if-eq v7, v8, :cond_0

    .line 180
    iget-object v7, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;->text:Ljava/lang/String;

    invoke-direct {p0, v7, v5, v6, v1}, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;->getTextBoundsWithoutTrim(Ljava/lang/String;IILandroid/graphics/Rect;)V

    goto :goto_0

    .line 183
    :cond_0
    iget-object v5, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;->this$0:Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;

    invoke-static {v5}, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;->access$400(Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;)Landroid/graphics/Paint;

    move-result-object v5

    const-string v6, "|"

    invoke-virtual {v5, v6, v4, v3, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 184
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 186
    iget v6, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v5

    iput v6, v1, Landroid/graphics/Rect;->left:I

    .line 187
    iget v6, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v5

    iput v6, v1, Landroid/graphics/Rect;->right:I

    .line 190
    :goto_0
    iget v5, v1, Landroid/graphics/Rect;->left:I

    iget v6, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->left:I

    .line 191
    iget v5, v1, Landroid/graphics/Rect;->right:I

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v2

    iput v5, v1, Landroid/graphics/Rect;->right:I

    .line 192
    iget-object v2, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;->selectionBounds:Landroid/graphics/RectF;

    invoke-virtual {v2, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 195
    :cond_1
    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;->projectionMatrix:Landroid/graphics/Matrix;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    sget-object v0, Lorg/thoughtcrime/securesms/imageeditor/Bounds;->FULL_BOUNDS:Landroid/graphics/RectF;

    sget-object v5, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v1, v2, v0, v5}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 196
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;->projectionMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, v0}, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;->removeTranslate(Landroid/graphics/Matrix;)V

    const/4 v0, 0x4

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput v1, v0, v4

    .line 198
    iget-object v2, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;->this$0:Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;

    invoke-static {v2}, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;->access$400(Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    aput v2, v0, v3

    const/4 v2, 0x2

    aput v1, v0, v2

    iget-object v2, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;->this$0:Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;

    invoke-static {v2}, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;->access$400(Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v2

    const/4 v4, 0x3

    aput v2, v0, v4

    .line 199
    iget-object v2, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;->projectionMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget v2, v0, v3

    .line 200
    iput v2, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;->ascentInBounds:F

    aget v0, v0, v4

    .line 201
    iput v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;->descentInBounds:F

    sub-float/2addr v0, v2

    .line 202
    iput v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;->heightInBounds:F

    .line 204
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;->projectionMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;->textBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 205
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;->projectionMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;->inverseProjectionMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 207
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;->accentMatrix:Landroid/graphics/Matrix;

    iget v2, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;->ascentInBounds:F

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 208
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;->decentMatrix:Landroid/graphics/Matrix;

    iget v2, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;->descentInBounds:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 210
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;->this$0:Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;->invalidate()V

    return-void
.end method

.method private removeTranslate(Landroid/graphics/Matrix;)V
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 216
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v1, 0x5

    aput v2, v0, v1

    .line 219
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->setValues([F)V

    return-void
.end method

.method private showSelectionOrCursor()Z
    .locals 2

    .line 223
    iget v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;->selStart:I

    if-gez v0, :cond_0

    iget v1, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;->selEnd:I

    if-ltz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;->text:Ljava/lang/String;

    .line 224
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_2

    iget v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;->selEnd:I

    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public contains(FF)Z
    .locals 4

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 251
    iget-object v2, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;->inverseProjectionMatrix:Landroid/graphics/Matrix;

    new-array v0, v0, [F

    const/4 v3, 0x0

    aput p1, v0, v3

    const/4 p1, 0x1

    aput p2, v0, p1

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    .line 253
    iget-object p2, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;->textBounds:Landroid/graphics/RectF;

    aget v0, v1, v3

    aget p1, v1, p1

    invoke-virtual {p2, v0, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    return p1
.end method

.method public render(Lorg/thoughtcrime/securesms/imageeditor/RendererContext;)V
    .locals 5

    .line 265
    iget-object v0, p1, Lorg/thoughtcrime/securesms/imageeditor/RendererContext;->canvasMatrix:Lorg/thoughtcrime/securesms/imageeditor/CanvasMatrix;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;->accentMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/imageeditor/CanvasMatrix;->concat(Landroid/graphics/Matrix;)V

    .line 267
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/imageeditor/RendererContext;->save()V

    .line 269
    iget-object v0, p1, Lorg/thoughtcrime/securesms/imageeditor/RendererContext;->canvasMatrix:Lorg/thoughtcrime/securesms/imageeditor/CanvasMatrix;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;->projectionMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/imageeditor/CanvasMatrix;->concat(Landroid/graphics/Matrix;)V

    .line 271
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;->this$0:Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;->access$500(Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;->showSelectionOrCursor()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 272
    iget v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;->selStart:I

    iget v1, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;->selEnd:I

    if-ne v0, v1, :cond_0

    .line 273
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;->this$0:Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;->access$700(Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;)Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;->this$0:Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;

    invoke-static {v1}, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;->access$600(Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;)F

    move-result v1

    const/high16 v2, 0x43000000    # 128.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0

    .line 275
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;->this$0:Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;->access$700(Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;)Landroid/graphics/Paint;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 277
    :goto_0
    iget-object v0, p1, Lorg/thoughtcrime/securesms/imageeditor/RendererContext;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;->selectionBounds:Landroid/graphics/RectF;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;->this$0:Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;

    invoke-static {v2}, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;->access$700(Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 280
    :cond_1
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;->this$0:Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;->access$400(Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    .line 281
    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;->this$0:Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;

    invoke-static {v1}, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;->access$400(Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/imageeditor/RendererContext;->getAlpha(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 283
    iget-object v1, p1, Lorg/thoughtcrime/securesms/imageeditor/RendererContext;->canvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;->text:Ljava/lang/String;

    iget-object v3, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;->this$0:Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;

    invoke-static {v3}, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;->access$400(Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;)Landroid/graphics/Paint;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 285
    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;->this$0:Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;

    invoke-static {v1}, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;->access$400(Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 287
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/imageeditor/RendererContext;->restore()V

    .line 290
    iget-object p1, p1, Lorg/thoughtcrime/securesms/imageeditor/RendererContext;->canvasMatrix:Lorg/thoughtcrime/securesms/imageeditor/CanvasMatrix;

    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;->decentMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/imageeditor/CanvasMatrix;->concat(Landroid/graphics/Matrix;)V

    return-void
.end method

.method setSelection(II)V
    .locals 1

    .line 294
    iget v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;->selStart:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;->selEnd:I

    if-eq p2, v0, :cond_1

    .line 295
    :cond_0
    iput p1, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;->selStart:I

    .line 296
    iput p2, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;->selEnd:I

    .line 297
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;->recalculate()V

    :cond_1
    return-void
.end method

.method setText(Ljava/lang/String;)V
    .locals 1

    .line 257
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;->text:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 258
    iput-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;->text:Ljava/lang/String;

    .line 259
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$Line;->recalculate()V

    :cond_0
    return-void
.end method
