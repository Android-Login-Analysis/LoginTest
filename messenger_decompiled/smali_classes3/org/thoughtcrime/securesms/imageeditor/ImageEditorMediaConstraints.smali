.class public Lorg/thoughtcrime/securesms/imageeditor/ImageEditorMediaConstraints;
.super Lorg/thoughtcrime/securesms/mms/MediaConstraints;
.source "ImageEditorMediaConstraints.java"


# static fields
.field private static final KB:I = 0x400

.field private static final MAX_IMAGE_DIMEN:I = 0x600

.field private static final MAX_IMAGE_DIMEN_LOWMEM:I = 0x300

.field private static final MB:I = 0x100000


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/mms/MediaConstraints;-><init>()V

    return-void
.end method


# virtual methods
.method public getImageMaxHeight(Landroid/content/Context;)I
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorMediaConstraints;->getImageMaxWidth(Landroid/content/Context;)I

    move-result p1

    return p1
.end method

.method public getImageMaxSize(Landroid/content/Context;)I
    .locals 0

    const/high16 p1, 0x400000

    return p1
.end method

.method public getImageMaxWidth(Landroid/content/Context;)I
    .locals 0

    .line 17
    invoke-static {p1}, Lorg/thoughtcrime/securesms/util/Util;->isLowMemory(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x300

    goto :goto_0

    :cond_0
    const/16 p1, 0x600

    :goto_0
    return p1
.end method
