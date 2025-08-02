.class final Lorg/thoughtcrime/securesms/ConversationSwipeAnimationHelper$ClampingLinearInterpolator;
.super Ljava/lang/Object;
.source "ConversationSwipeAnimationHelper.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/ConversationSwipeAnimationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ClampingLinearInterpolator"
.end annotation


# instance fields
.field private final max:F

.field private final min:F

.field private final slope:F

.field private final yIntercept:F


# direct methods
.method constructor <init>(FF)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 127
    invoke-direct {p0, p1, p2, v0}, Lorg/thoughtcrime/securesms/ConversationSwipeAnimationHelper$ClampingLinearInterpolator;-><init>(FFF)V

    return-void
.end method

.method constructor <init>(FFF)V
    .locals 1

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sub-float v0, p2, p1

    mul-float v0, v0, p3

    .line 131
    iput v0, p0, Lorg/thoughtcrime/securesms/ConversationSwipeAnimationHelper$ClampingLinearInterpolator;->slope:F

    .line 132
    iput p1, p0, Lorg/thoughtcrime/securesms/ConversationSwipeAnimationHelper$ClampingLinearInterpolator;->yIntercept:F

    .line 133
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p3

    iput p3, p0, Lorg/thoughtcrime/securesms/ConversationSwipeAnimationHelper$ClampingLinearInterpolator;->max:F

    .line 134
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lorg/thoughtcrime/securesms/ConversationSwipeAnimationHelper$ClampingLinearInterpolator;->min:F

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2

    .line 139
    iget v0, p0, Lorg/thoughtcrime/securesms/ConversationSwipeAnimationHelper$ClampingLinearInterpolator;->slope:F

    mul-float v0, v0, p1

    iget p1, p0, Lorg/thoughtcrime/securesms/ConversationSwipeAnimationHelper$ClampingLinearInterpolator;->yIntercept:F

    add-float/2addr v0, p1

    iget p1, p0, Lorg/thoughtcrime/securesms/ConversationSwipeAnimationHelper$ClampingLinearInterpolator;->min:F

    iget v1, p0, Lorg/thoughtcrime/securesms/ConversationSwipeAnimationHelper$ClampingLinearInterpolator;->max:F

    invoke-static {v0, p1, v1}, Lorg/thoughtcrime/securesms/util/Util;->clamp(FFF)F

    move-result p1

    return p1
.end method
