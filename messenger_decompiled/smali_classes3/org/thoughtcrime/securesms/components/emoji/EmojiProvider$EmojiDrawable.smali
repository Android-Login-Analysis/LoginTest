.class Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider$EmojiDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "EmojiProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EmojiDrawable"
.end annotation


# instance fields
.field private bmp:Landroid/graphics/Bitmap;

.field private final info:Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiDrawInfo;

.field private final intrinsicHeight:F

.field private final intrinsicWidth:F

.field final synthetic this$0:Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider;


# direct methods
.method constructor <init>(Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider;Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiDrawInfo;F)V
    .locals 0

    .line 166
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider$EmojiDrawable;->this$0:Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 167
    iput-object p2, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider$EmojiDrawable;->info:Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiDrawInfo;

    const/high16 p1, 0x42800000    # 64.0f

    mul-float p3, p3, p1

    .line 168
    iput p3, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider$EmojiDrawable;->intrinsicWidth:F

    .line 169
    iput p3, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider$EmojiDrawable;->intrinsicHeight:F

    return-void
.end method

.method static synthetic access$000(Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider$EmojiDrawable;F)Landroid/graphics/Bitmap;
    .locals 0

    .line 150
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider$EmojiDrawable;->getEmojiBitmap(F)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private getEmojiBitmap(F)Landroid/graphics/Bitmap;
    .locals 9

    .line 173
    iget v0, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider$EmojiDrawable;->intrinsicWidth:F

    mul-float v0, v0, p1

    float-to-int v0, v0

    iget v1, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider$EmojiDrawable;->intrinsicHeight:F

    mul-float v1, v1, p1

    float-to-int v1, v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 175
    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider$EmojiDrawable;->info:Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiDrawInfo;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiDrawInfo;->getIndex()I

    move-result v1

    div-int/lit8 v1, v1, 0x10

    .line 176
    iget-object v2, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider$EmojiDrawable;->info:Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiDrawInfo;

    invoke-virtual {v2}, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiDrawInfo;->getIndex()I

    move-result v2

    rem-int/lit8 v2, v2, 0x10

    .line 178
    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider$EmojiDrawable;->intrinsicWidth:F

    float-to-int v5, v4

    float-to-int v4, v4

    const/4 v6, 0x0

    invoke-direct {v3, v6, v6, v5, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 179
    new-instance v4, Landroid/graphics/Rect;

    int-to-float v5, v2

    iget v6, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider$EmojiDrawable;->intrinsicWidth:F

    mul-float v5, v5, v6

    float-to-int v5, v5

    int-to-float v6, v1

    iget v7, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider$EmojiDrawable;->intrinsicHeight:F

    mul-float v7, v7, v6

    iget-object v8, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider$EmojiDrawable;->this$0:Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider;

    .line 180
    invoke-static {v8}, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider;->access$200(Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider;)F

    move-result v8

    mul-float v8, v8, v6

    add-float/2addr v7, v8

    float-to-int v7, v7

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    iget v8, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider$EmojiDrawable;->intrinsicWidth:F

    mul-float v2, v2, v8

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v2, v8

    float-to-int v2, v2

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    iget v8, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider$EmojiDrawable;->intrinsicHeight:F

    mul-float v1, v1, v8

    iget-object v8, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider$EmojiDrawable;->this$0:Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider;

    .line 182
    invoke-static {v8}, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider;->access$200(Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider;)F

    move-result v8

    mul-float v6, v6, v8

    add-float/2addr v1, v6

    float-to-int v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-direct {v4, v5, v7, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 184
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 185
    invoke-virtual {v1, p1, p1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 186
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider$EmojiDrawable;->bmp:Landroid/graphics/Bitmap;

    invoke-static {}, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider;->access$300()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v1, p1, v4, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 194
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider$EmojiDrawable;->bmp:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider$EmojiDrawable;->info:Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiDrawInfo;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiDrawInfo;->getIndex()I

    move-result v0

    div-int/lit8 v0, v0, 0x10

    .line 199
    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider$EmojiDrawable;->info:Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiDrawInfo;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiDrawInfo;->getIndex()I

    move-result v1

    rem-int/lit8 v1, v1, 0x10

    .line 201
    iget-object v2, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider$EmojiDrawable;->bmp:Landroid/graphics/Bitmap;

    new-instance v3, Landroid/graphics/Rect;

    int-to-float v4, v1

    iget v5, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider$EmojiDrawable;->intrinsicWidth:F

    mul-float v4, v4, v5

    float-to-int v4, v4

    int-to-float v5, v0

    iget v6, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider$EmojiDrawable;->intrinsicHeight:F

    mul-float v6, v6, v5

    iget-object v7, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider$EmojiDrawable;->this$0:Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider;

    .line 203
    invoke-static {v7}, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider;->access$200(Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider;)F

    move-result v7

    mul-float v7, v7, v5

    add-float/2addr v6, v7

    float-to-int v6, v6

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    iget v7, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider$EmojiDrawable;->intrinsicWidth:F

    mul-float v1, v1, v7

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v1, v7

    float-to-int v1, v1

    add-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    iget v7, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider$EmojiDrawable;->intrinsicHeight:F

    mul-float v0, v0, v7

    iget-object v7, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider$EmojiDrawable;->this$0:Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider;

    .line 205
    invoke-static {v7}, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider;->access$200(Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider;)F

    move-result v7

    mul-float v5, v5, v7

    add-float/2addr v0, v5

    float-to-int v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {v3, v4, v6, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 206
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider$EmojiDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 207
    invoke-static {}, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider;->access$300()Landroid/graphics/Paint;

    move-result-object v1

    .line 201
    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 163
    iget v0, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider$EmojiDrawable;->intrinsicHeight:F

    float-to-int v0, v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 158
    iget v0, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider$EmojiDrawable;->intrinsicWidth:F

    float-to-int v0, v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    .line 211
    invoke-virtual {p0, p1, v0}, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider$EmojiDrawable;->setBitmap(Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;Z)V
    .locals 0

    if-nez p2, :cond_0

    .line 216
    invoke-static {}, Lorg/thoughtcrime/securesms/util/Util;->assertMainThread()V

    .line 218
    :cond_0
    iget-object p2, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider$EmojiDrawable;->bmp:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 219
    :cond_1
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider$EmojiDrawable;->bmp:Landroid/graphics/Bitmap;

    .line 220
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider$EmojiDrawable;->invalidateSelf()V

    :cond_2
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
