.class Lorg/thoughtcrime/securesms/video/recode/VideoRecoder$VideoEditedInfo;
.super Ljava/lang/Object;
.source "VideoRecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/video/recode/VideoRecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VideoEditedInfo"
.end annotation


# instance fields
.field endTime:J

.field estimatedBytes:I

.field originalAudioBytes:J

.field originalDurationMs:F

.field originalHeight:I

.field originalPath:Ljava/lang/String;

.field originalRotationValue:I

.field originalVideoBitrate:I

.field originalWidth:I

.field resultHeight:I

.field resultVideoBitrate:I

.field resultWidth:I

.field rotationValue:I

.field startTime:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 645
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/thoughtcrime/securesms/video/recode/VideoRecoder$1;)V
    .locals 0

    .line 645
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder$VideoEditedInfo;-><init>()V

    return-void
.end method
