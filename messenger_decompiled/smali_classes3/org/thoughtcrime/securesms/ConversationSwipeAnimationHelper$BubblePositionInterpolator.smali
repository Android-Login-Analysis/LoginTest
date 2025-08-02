.class final Lorg/thoughtcrime/securesms/ConversationSwipeAnimationHelper$BubblePositionInterpolator;
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
    name = "BubblePositionInterpolator"
.end annotation


# instance fields
.field private final end:F

.field private final middle:F

.field private final start:F


# direct methods
.method private constructor <init>(FFF)V
    .locals 0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput p1, p0, Lorg/thoughtcrime/securesms/ConversationSwipeAnimationHelper$BubblePositionInterpolator;->start:F

    .line 97
    iput p2, p0, Lorg/thoughtcrime/securesms/ConversationSwipeAnimationHelper$BubblePositionInterpolator;->middle:F

    .line 98
    iput p3, p0, Lorg/thoughtcrime/securesms/ConversationSwipeAnimationHelper$BubblePositionInterpolator;->end:F

    return-void
.end method

.method synthetic constructor <init>(FFFLorg/thoughtcrime/securesms/ConversationSwipeAnimationHelper$1;)V
    .locals 0

    .line 89
    invoke-direct {p0, p1, p2, p3}, Lorg/thoughtcrime/securesms/ConversationSwipeAnimationHelper$BubblePositionInterpolator;-><init>(FFF)V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 5

    .line 103
    iget v0, p0, Lorg/thoughtcrime/securesms/ConversationSwipeAnimationHelper$BubblePositionInterpolator;->start:F

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    return v0

    .line 105
    :cond_0
    iget v0, p0, Lorg/thoughtcrime/securesms/ConversationSwipeAnimationHelper$BubblePositionInterpolator;->middle:F

    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    return p1

    .line 108
    :cond_1
    iget v1, p0, Lorg/thoughtcrime/securesms/ConversationSwipeAnimationHelper$BubblePositionInterpolator;->end:F

    sub-float v2, v1, v0

    sub-float v3, p1, v0

    div-float/2addr v3, v2

    const/high16 v4, 0x40000000    # 2.0f

    mul-float p1, p1, v4

    div-float p1, v0, p1

    mul-float v2, v2, v3

    mul-float v2, v2, p1

    add-float/2addr v0, v2

    .line 114
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1
.end method
