.class public Lorg/thoughtcrime/securesms/util/spans/CenterAlignedRelativeSizeSpan;
.super Landroid/text/style/MetricAffectingSpan;
.source "CenterAlignedRelativeSizeSpan.java"


# instance fields
.field private final relativeSize:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 12
    iput p1, p0, Lorg/thoughtcrime/securesms/util/spans/CenterAlignedRelativeSizeSpan;->relativeSize:F

    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 3

    .line 22
    invoke-virtual {p1}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    iget v1, p0, Lorg/thoughtcrime/securesms/util/spans/CenterAlignedRelativeSizeSpan;->relativeSize:F

    mul-float v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 23
    iget v0, p1, Landroid/text/TextPaint;->baselineShift:I

    invoke-virtual {p1}, Landroid/text/TextPaint;->ascent()F

    move-result v1

    iget v2, p0, Lorg/thoughtcrime/securesms/util/spans/CenterAlignedRelativeSizeSpan;->relativeSize:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    iput v0, p1, Landroid/text/TextPaint;->baselineShift:I

    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/util/spans/CenterAlignedRelativeSizeSpan;->updateDrawState(Landroid/text/TextPaint;)V

    return-void
.end method
