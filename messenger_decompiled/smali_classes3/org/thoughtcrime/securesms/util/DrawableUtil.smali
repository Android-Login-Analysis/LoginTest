.class public final Lorg/thoughtcrime/securesms/util/DrawableUtil;
.super Ljava/lang/Object;
.source "DrawableUtil.java"


# static fields
.field private static final SHORTCUT_INFO_BITMAP_SIZE:I

.field private static final SHORTCUT_INFO_PADDING:I

.field private static final SHORTCUT_INFO_WRAPPED_SIZE:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x6c

    .line 10
    invoke-static {v0}, Lorg/thoughtcrime/securesms/util/ViewUtil;->dpToPx(I)I

    move-result v0

    sput v0, Lorg/thoughtcrime/securesms/util/DrawableUtil;->SHORTCUT_INFO_BITMAP_SIZE:I

    const/16 v1, 0x48

    .line 11
    invoke-static {v1}, Lorg/thoughtcrime/securesms/util/ViewUtil;->dpToPx(I)I

    move-result v1

    sput v1, Lorg/thoughtcrime/securesms/util/DrawableUtil;->SHORTCUT_INFO_WRAPPED_SIZE:I

    sub-int/2addr v0, v1

    .line 12
    div-int/lit8 v0, v0, 0x2

    sput v0, Lorg/thoughtcrime/securesms/util/DrawableUtil;->SHORTCUT_INFO_PADDING:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static wrapBitmapForShortcutInfo(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5

    .line 15
    sget v0, Lorg/thoughtcrime/securesms/util/DrawableUtil;->SHORTCUT_INFO_BITMAP_SIZE:I

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 16
    sget v1, Lorg/thoughtcrime/securesms/util/DrawableUtil;->SHORTCUT_INFO_WRAPPED_SIZE:I

    const/4 v2, 0x1

    invoke-static {p0, v1, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 18
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 19
    sget v2, Lorg/thoughtcrime/securesms/util/DrawableUtil;->SHORTCUT_INFO_PADDING:I

    int-to-float v3, v2

    int-to-float v2, v2

    const/4 v4, 0x0

    invoke-virtual {v1, p0, v3, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v0
.end method
