.class public Lorg/thoughtcrime/securesms/video/recode/VideoRecoder;
.super Ljava/lang/Object;
.source "VideoRecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/video/recode/VideoRecoder$VideoEditedInfo;
    }
.end annotation


# static fields
.field private static final MIME_TYPE:Ljava/lang/String; = "video/avc"

.field private static final PROCESSOR_TYPE_INTEL:I = 0x2

.field private static final PROCESSOR_TYPE_MTK:I = 0x3

.field private static final PROCESSOR_TYPE_OTHER:I = 0x0

.field private static final PROCESSOR_TYPE_QCOM:I = 0x1

.field private static final PROCESSOR_TYPE_SEC:I = 0x4

.field private static final PROCESSOR_TYPE_TI:I = 0x5

.field private static final TAG:Ljava/lang/String; = "VideoRecoder"


# instance fields
.field private final cancelCurrentVideoConversion:Z

.field private videoConvertFirstWrite:Z

.field private final videoConvertSync:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder;->videoConvertFirstWrite:Z

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder;->cancelCurrentVideoConversion:Z

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder;->videoConvertSync:Ljava/lang/Object;

    return-void
.end method

.method private static alert(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 777
    sget-object v0, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    new-instance v0, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder$$ExternalSyntheticLambda2;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/thoughtcrime/securesms/util/Util;->runOnMain(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static calculateEstimatedSize(FIFJ)I
    .locals 1

    .line 770
    div-int/lit8 p1, p1, 0x8

    int-to-float p1, p1

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr p2, v0

    mul-float p1, p1, p2

    float-to-long p1, p1

    add-long/2addr p3, p1

    long-to-float p1, p3

    mul-float p1, p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static canRecode()Z
    .locals 6

    const-string v0, "video/avc"

    .line 672
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    const/4 v3, 0x1

    if-ge v1, v2, :cond_3

    const/4 v1, 0x0

    .line 674
    :try_start_0
    invoke-static {v0}, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder;->selectCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v2

    if-nez v2, :cond_0

    .line 676
    sget-object v0, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder;->TAG:Ljava/lang/String;

    const-string v2, "Cannot recode: cannot select codec"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 679
    :cond_0
    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "OMX.google.h264.encoder"

    .line 680
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "OMX.ST.VFM.H264Enc"

    .line 681
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "OMX.Exynos.avc.enc"

    .line 682
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "OMX.MARVELL.VIDEO.HW.CODA7542ENCODER"

    .line 683
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "OMX.MARVELL.VIDEO.H264ENCODER"

    .line 684
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "OMX.k3.video.encoder.avc"

    .line 685
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "OMX.TI.DUCATI1.VIDEO.H264E"

    .line 686
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 690
    :cond_1
    invoke-static {v2, v0}, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder;->selectColorFormat(Landroid/media/MediaCodecInfo;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    .line 691
    sget-object v0, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder;->TAG:Ljava/lang/String;

    const-string v2, "Cannot recode: cannot select color format"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 687
    :cond_2
    :goto_0
    sget-object v0, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder;->TAG:Ljava/lang/String;

    const-string v2, "Cannot recode: no supported codec found"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 697
    sget-object v2, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder;->TAG:Ljava/lang/String;

    const-string v3, "Cannot recode: Determinating recoding capabilities failed unexpectedly"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    const/4 v3, 0x0

    :cond_3
    return v3
.end method

.method private checkConversionCanceled()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder;->videoConvertSync:Ljava/lang/Object;

    monitor-enter v0

    .line 54
    :try_start_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private convertVideo(Lorg/thoughtcrime/securesms/video/recode/VideoRecoder$VideoEditedInfo;Ljava/lang/String;)Z
    .locals 44

    move-object/from16 v11, p0

    move-object/from16 v0, p1

    const-string v12, "Flushing video failed unexpectedly"

    .line 205
    iget-wide v13, v0, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder$VideoEditedInfo;->startTime:J

    .line 206
    iget-wide v9, v0, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder$VideoEditedInfo;->endTime:J

    .line 207
    iget v1, v0, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder$VideoEditedInfo;->resultWidth:I

    .line 208
    iget v2, v0, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder$VideoEditedInfo;->resultHeight:I

    .line 209
    iget v3, v0, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder$VideoEditedInfo;->rotationValue:I

    .line 210
    iget v4, v0, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder$VideoEditedInfo;->originalWidth:I

    .line 211
    iget v5, v0, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder$VideoEditedInfo;->originalHeight:I

    .line 212
    iget v6, v0, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder$VideoEditedInfo;->originalVideoBitrate:I

    .line 213
    iget v7, v0, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder$VideoEditedInfo;->resultVideoBitrate:I

    .line 215
    new-instance v15, Ljava/io/File;

    move-object/from16 v8, p2

    invoke-direct {v15, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 217
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    move-object/from16 v16, v12

    const/16 v12, 0x12

    if-ge v8, v12, :cond_0

    if-le v2, v1, :cond_0

    if-eq v1, v4, :cond_0

    if-eq v2, v5, :cond_0

    const/16 v3, 0x5a

    goto :goto_0

    .line 223
    :cond_0
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x14

    if-le v8, v12, :cond_3

    const/16 v8, 0x5a

    if-ne v3, v8, :cond_1

    const/4 v3, 0x0

    :goto_0
    const/16 v12, 0x10e

    :goto_1
    move/from16 v43, v2

    move v2, v1

    move/from16 v1, v43

    goto :goto_2

    :cond_1
    const/16 v12, 0xb4

    if-ne v3, v12, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    const/16 v12, 0x10e

    if-ne v3, v12, :cond_3

    const/4 v3, 0x0

    const/16 v12, 0x5a

    goto :goto_1

    :cond_3
    const/4 v12, 0x0

    .line 242
    :goto_2
    new-instance v8, Ljava/io/File;

    iget-object v0, v0, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder$VideoEditedInfo;->originalPath:Ljava/lang/String;

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 243
    invoke-virtual {v8}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_4

    .line 245
    sget-object v0, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder;->TAG:Ljava/lang/String;

    const-string v1, "Could not read video file to be recoded"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    const/4 v1, 0x0

    return v1

    :cond_4
    move-wide/from16 v18, v9

    const/4 v9, 0x1

    .line 249
    iput-boolean v9, v11, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder;->videoConvertFirstWrite:Z

    .line 253
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    if-eqz v1, :cond_51

    if-eqz v2, :cond_51

    .line 260
    :try_start_0
    new-instance v10, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v10}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 261
    new-instance v0, Lorg/thoughtcrime/securesms/video/recode/Mp4Movie;

    invoke-direct {v0}, Lorg/thoughtcrime/securesms/video/recode/Mp4Movie;-><init>()V

    .line 262
    invoke-virtual {v0, v15}, Lorg/thoughtcrime/securesms/video/recode/Mp4Movie;->setCacheFile(Ljava/io/File;)V

    .line 263
    invoke-virtual {v0, v3}, Lorg/thoughtcrime/securesms/video/recode/Mp4Movie;->setRotation(I)V

    .line 264
    invoke-virtual {v0, v1, v2}, Lorg/thoughtcrime/securesms/video/recode/Mp4Movie;->setSize(II)V

    .line 265
    new-instance v3, Lorg/thoughtcrime/securesms/video/recode/MP4Builder;

    invoke-direct {v3}, Lorg/thoughtcrime/securesms/video/recode/MP4Builder;-><init>()V

    invoke-virtual {v3, v0}, Lorg/thoughtcrime/securesms/video/recode/MP4Builder;->createMovie(Lorg/thoughtcrime/securesms/video/recode/Mp4Movie;)Lorg/thoughtcrime/securesms/video/recode/MP4Builder;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_22
    .catchall {:try_start_0 .. :try_end_0} :catchall_13

    .line 266
    :try_start_1
    new-instance v11, Landroid/media/MediaExtractor;

    invoke-direct {v11}, Landroid/media/MediaExtractor;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_21
    .catchall {:try_start_1 .. :try_end_1} :catchall_12

    .line 267
    :try_start_2
    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 269
    invoke-direct/range {p0 .. p0}, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder;->checkConversionCanceled()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_20
    .catchall {:try_start_2 .. :try_end_2} :catchall_11

    const-wide/16 v20, -0x1

    if-lt v7, v6, :cond_7

    if-ne v1, v4, :cond_7

    if-ne v2, v5, :cond_7

    if-eqz v12, :cond_5

    move-object/from16 v9, p0

    move-object/from16 v22, v10

    move-object v8, v11

    const/4 v11, 0x1

    move-object v10, v3

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    move-object/from16 v1, p0

    move-object v2, v11

    move-object v12, v3

    move-object v4, v10

    move-wide v5, v13

    move-wide/from16 v7, v18

    move-object/from16 p2, v11

    const/4 v11, 0x1

    move-object v9, v15

    move-object/from16 v22, v10

    move v10, v0

    .line 612
    :try_start_3
    invoke-direct/range {v1 .. v10}, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder;->readAndWriteTrack(Landroid/media/MediaExtractor;Lorg/thoughtcrime/securesms/video/recode/MP4Builder;Landroid/media/MediaCodec$BufferInfo;JJLjava/io/File;Z)J

    move-result-wide v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    cmp-long v2, v0, v20

    move-object/from16 v11, p2

    if-eqz v2, :cond_6

    move-wide v5, v0

    move-object v8, v12

    goto :goto_4

    :cond_6
    move-object v8, v12

    move-wide v5, v13

    :goto_4
    move-object/from16 v23, v15

    move-object/from16 v12, v16

    move-object/from16 v10, v22

    const/4 v0, 0x0

    goto/16 :goto_43

    :catchall_0
    move-exception v0

    move-object/from16 v10, p2

    move-object v1, v0

    move-object v8, v12

    move-object/from16 v12, v16

    goto/16 :goto_4d

    :catch_0
    move-exception v0

    move-object/from16 v10, p2

    move-object v8, v12

    move-object/from16 v12, v16

    goto/16 :goto_4b

    :cond_7
    move-object/from16 v22, v10

    move-object/from16 p2, v11

    const/4 v11, 0x1

    move-object v10, v3

    move-object/from16 v9, p0

    move-object/from16 v8, p2

    :goto_5
    const/4 v3, 0x0

    .line 273
    :try_start_4
    invoke-direct {v9, v8, v3}, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder;->selectTrack(Landroid/media/MediaExtractor;Z)I

    move-result v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1f
    .catchall {:try_start_4 .. :try_end_4} :catchall_10

    if-ltz v4, :cond_4b

    .line 290
    :try_start_5
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 291
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1b
    .catchall {:try_start_5 .. :try_end_5} :catchall_c

    const-string v5, "lge"

    const/16 v17, 0x2

    const-string v6, "video/avc"

    const/16 v24, 0x4

    const/16 v11, 0x12

    if-ge v3, v11, :cond_e

    .line 292
    :try_start_6
    invoke-static {v6}, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder;->selectCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v3

    .line 293
    invoke-static {v3, v6}, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder;->selectColorFormat(Landroid/media/MediaCodecInfo;Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_d

    .line 297
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v9, "OMX.qcom."

    .line 298
    invoke-virtual {v3, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 300
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x10

    if-ne v3, v9, :cond_8

    .line 301
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "nokia"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    :cond_8
    const/4 v3, 0x1

    goto :goto_6

    :cond_9
    const-string v9, "OMX.Intel."

    .line 305
    invoke-virtual {v3, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/4 v3, 0x2

    goto :goto_6

    :cond_a
    const-string v9, "OMX.MTK.VIDEO.ENCODER.AVC"

    .line 307
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    const/4 v3, 0x3

    goto :goto_6

    :cond_b
    const-string v9, "OMX.SEC.AVC.Encoder"

    .line 309
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    const/4 v3, 0x4

    goto :goto_6

    :cond_c
    const-string v9, "OMX.TI.DUCATI1.VIDEO.H264E"

    .line 312
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    const/4 v3, 0x5

    goto :goto_6

    .line 295
    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "no supported color format"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object/from16 v12, v16

    move-object/from16 v43, v10

    move-object v10, v8

    move-object/from16 v8, v43

    goto/16 :goto_4d

    :catch_1
    move-exception v0

    move/from16 v40, v4

    move-object/from16 v23, v15

    move-object/from16 v12, v16

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v38, 0x0

    const/16 v41, 0x0

    move-object/from16 v43, v22

    move-object/from16 v22, v8

    move-object v8, v10

    move-object/from16 v10, v43

    goto/16 :goto_3e

    :cond_e
    const v11, 0x7f000789

    :cond_f
    const/4 v3, 0x0

    :goto_6
    mul-int v9, v1, v2

    const/16 v25, 0x3

    mul-int/lit8 v9, v9, 0x3

    .line 323
    :try_start_7
    div-int/lit8 v9, v9, 0x2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1b
    .catchall {:try_start_7 .. :try_end_7} :catchall_c

    if-nez v3, :cond_10

    .line 325
    :try_start_8
    rem-int/lit8 v0, v2, 0x10

    if-eqz v0, :cond_13

    .line 326
    rem-int/lit8 v0, v2, 0x10

    const/16 v3, 0x10

    rsub-int/lit8 v0, v0, 0x10

    add-int/2addr v0, v2

    sub-int/2addr v0, v2

    mul-int v0, v0, v1

    const/4 v3, 0x5

    mul-int/lit8 v0, v0, 0x5

    .line 328
    div-int/lit8 v0, v0, 0x4

    goto :goto_7

    :cond_10
    const/4 v9, 0x1

    if-ne v3, v9, :cond_11

    .line 331
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_11
    const/4 v5, 0x5

    if-ne v3, v5, :cond_12

    goto :goto_7

    :cond_12
    const/4 v5, 0x3

    if-ne v3, v5, :cond_13

    const-string v3, "baidu"

    .line 343
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 344
    rem-int/lit8 v0, v2, 0x10

    const/16 v3, 0x10

    rsub-int/lit8 v0, v0, 0x10

    add-int/2addr v0, v2

    sub-int/2addr v0, v2

    mul-int v0, v0, v1

    const/4 v3, 0x5

    mul-int/lit8 v0, v0, 0x5

    .line 346
    div-int/lit8 v0, v0, 0x4
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 350
    :cond_13
    :goto_7
    :try_start_9
    invoke-virtual {v8, v4}, Landroid/media/MediaExtractor;->selectTrack(I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1b
    .catchall {:try_start_9 .. :try_end_9} :catchall_c

    move-object/from16 v23, v10

    const-wide/16 v9, 0x0

    cmp-long v0, v13, v9

    if-lez v0, :cond_14

    const/4 v3, 0x0

    .line 352
    :try_start_a
    invoke-virtual {v8, v13, v14, v3}, Landroid/media/MediaExtractor;->seekTo(JI)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_d

    :catchall_2
    move-exception v0

    move-object v1, v0

    move-object v10, v8

    move-object/from16 v12, v16

    :goto_8
    move-object/from16 v8, v23

    goto/16 :goto_4d

    :catch_2
    move-exception v0

    move/from16 v40, v4

    move-object/from16 v12, v16

    move-object/from16 v10, v22

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_9
    const/16 v38, 0x0

    :goto_a
    const/16 v41, 0x0

    :goto_b
    move-object/from16 v22, v8

    :goto_c
    move-object/from16 v8, v23

    move-object/from16 v23, v15

    goto/16 :goto_3e

    :cond_14
    const/4 v3, 0x0

    .line 354
    :try_start_b
    invoke-virtual {v8, v9, v10, v3}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 356
    :goto_d
    invoke-virtual {v8, v4}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v0

    .line 358
    invoke-static {v6, v1, v2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v3

    const-string v5, "color-format"

    .line 359
    invoke-virtual {v3, v5, v11}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v5, "bitrate"

    if-eqz v7, :cond_15

    goto :goto_e

    :cond_15
    const v7, 0xe1000

    .line 360
    :goto_e
    invoke-virtual {v3, v5, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v5, "frame-rate"

    const/16 v7, 0x19

    .line 361
    invoke-virtual {v3, v5, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v5, "i-frame-interval"

    const/16 v7, 0xa

    .line 362
    invoke-virtual {v3, v5, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 363
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1a
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    const/16 v7, 0x12

    if-ge v5, v7, :cond_16

    :try_start_c
    const-string v5, "stride"

    add-int/lit8 v7, v1, 0x20

    .line 364
    invoke-virtual {v3, v5, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v5, "slice-height"

    .line 365
    invoke-virtual {v3, v5, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 368
    :cond_16
    :try_start_d
    invoke-static {v6}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v5
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1a
    .catchall {:try_start_d .. :try_end_d} :catchall_b

    const/4 v7, 0x0

    const/4 v11, 0x1

    .line 369
    :try_start_e
    invoke-virtual {v5, v3, v7, v7, v11}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 370
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_19
    .catchall {:try_start_e .. :try_end_e} :catchall_b

    const/16 v7, 0x12

    if-lt v3, v7, :cond_17

    .line 371
    :try_start_f
    new-instance v7, Lorg/thoughtcrime/securesms/video/recode/InputSurface;

    invoke-static {v5}, Lkotlinx/coroutines/time/TimeKt$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaCodec;)Landroid/view/Surface;

    move-result-object v3

    invoke-direct {v7, v3}, Lorg/thoughtcrime/securesms/video/recode/InputSurface;-><init>(Landroid/view/Surface;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 372
    :try_start_10
    invoke-virtual {v7}, Lorg/thoughtcrime/securesms/video/recode/InputSurface;->makeCurrent()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_3
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    goto :goto_f

    :catch_3
    move-exception v0

    move/from16 v40, v4

    move-object/from16 v38, v7

    move-object/from16 v12, v16

    move-object/from16 v10, v22

    const/4 v3, 0x0

    goto :goto_a

    :catch_4
    move-exception v0

    move/from16 v40, v4

    move-object/from16 v12, v16

    move-object/from16 v10, v22

    const/4 v3, 0x0

    goto :goto_9

    :cond_17
    const/4 v7, 0x0

    .line 374
    :goto_f
    :try_start_11
    invoke-virtual {v5}, Landroid/media/MediaCodec;->start()V

    const-string v3, "mime"

    .line 376
    invoke-virtual {v0, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v3
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_18
    .catchall {:try_start_11 .. :try_end_11} :catchall_b

    .line 377
    :try_start_12
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_17
    .catchall {:try_start_12 .. :try_end_12} :catchall_b

    const/16 v9, 0x12

    if-lt v11, v9, :cond_18

    .line 378
    :try_start_13
    new-instance v9, Lorg/thoughtcrime/securesms/video/recode/OutputSurface;

    invoke-direct {v9}, Lorg/thoughtcrime/securesms/video/recode/OutputSurface;-><init>()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_5
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    goto :goto_10

    :catch_5
    move-exception v0

    move/from16 v40, v4

    move-object/from16 v38, v7

    move-object/from16 v12, v16

    move-object/from16 v10, v22

    goto/16 :goto_a

    .line 380
    :cond_18
    :try_start_14
    new-instance v9, Lorg/thoughtcrime/securesms/video/recode/OutputSurface;

    invoke-direct {v9, v1, v2, v12}, Lorg/thoughtcrime/securesms/video/recode/OutputSurface;-><init>(III)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_17
    .catchall {:try_start_14 .. :try_end_14} :catchall_b

    .line 382
    :goto_10
    :try_start_15
    invoke-virtual {v9}, Lorg/thoughtcrime/securesms/video/recode/OutputSurface;->getSurface()Landroid/view/Surface;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v3, v0, v10, v11, v12}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 383
    invoke-virtual {v3}, Landroid/media/MediaCodec;->start()V

    .line 389
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_16
    .catchall {:try_start_15 .. :try_end_15} :catchall_b

    const/16 v10, 0x15

    if-ge v0, v10, :cond_1a

    .line 390
    :try_start_16
    invoke-virtual {v3}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 391
    invoke-virtual {v5}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 392
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x12

    if-ge v11, v10, :cond_19

    .line 393
    invoke-virtual {v5}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    :cond_19
    move-object v10, v0

    goto :goto_11

    :cond_1a
    const/4 v10, 0x0

    const/4 v12, 0x0

    .line 397
    :goto_11
    :try_start_17
    invoke-direct/range {p0 .. p0}, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder;->checkConversionCanceled()V

    move-wide/from16 v35, v20

    const/4 v0, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v37, -0x5

    :goto_12
    if-nez v0, :cond_45

    .line 400
    invoke-direct/range {p0 .. p0}, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder;->checkConversionCanceled()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_16
    .catchall {:try_start_17 .. :try_end_17} :catchall_b

    move-object/from16 v38, v12

    if-nez v33, :cond_1f

    .line 403
    :try_start_18
    invoke-virtual {v8}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result v12

    if-ne v12, v4, :cond_1d

    move/from16 v40, v0

    const-wide/16 v11, 0x9c4

    .line 405
    invoke-virtual {v3, v11, v12}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v0

    if-ltz v0, :cond_1e

    .line 408
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x15

    if-ge v11, v12, :cond_1b

    .line 409
    aget-object v11, v10, v0

    goto :goto_13

    .line 411
    :cond_1b
    invoke-static {v3, v0}, Lcom/bumptech/glide/util/LogTime$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/media/MediaCodec;I)Ljava/nio/ByteBuffer;

    move-result-object v11

    :goto_13
    const/4 v12, 0x0

    .line 413
    invoke-virtual {v8, v11, v12}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v29

    if-gez v29, :cond_1c

    const/16 v28, 0x0

    const/16 v29, 0x0

    const-wide/16 v30, 0x0

    const/16 v32, 0x4

    move-object/from16 v26, v3

    move/from16 v27, v0

    .line 415
    invoke-virtual/range {v26 .. v32}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    const/16 v33, 0x1

    goto :goto_14

    :cond_1c
    const/16 v28, 0x0

    .line 418
    invoke-virtual {v8}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v30

    const/16 v32, 0x0

    move-object/from16 v26, v3

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v32}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 419
    invoke-virtual {v8}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_14

    :cond_1d
    move/from16 v40, v0

    move v0, v12

    const/4 v11, -0x1

    if-ne v0, v11, :cond_1e

    const/4 v0, 0x1

    goto :goto_15

    :cond_1e
    :goto_14
    const/4 v0, 0x0

    :goto_15
    if-eqz v0, :cond_20

    const-wide/16 v11, 0x9c4

    .line 426
    invoke-virtual {v3, v11, v12}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v27

    if-ltz v27, :cond_20

    const/16 v28, 0x0

    const/16 v29, 0x0

    const-wide/16 v30, 0x0

    const/16 v32, 0x4

    move-object/from16 v26, v3

    .line 428
    invoke-virtual/range {v26 .. v32}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_16
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    const/16 v33, 0x1

    goto :goto_16

    :cond_1f
    move/from16 v40, v0

    :cond_20
    :goto_16
    xor-int/lit8 v0, v34, 0x1

    move v11, v0

    move/from16 v0, v37

    move-object/from16 v12, v38

    move/from16 v27, v40

    const/16 v26, 0x1

    :goto_17
    if-nez v11, :cond_22

    if-eqz v26, :cond_21

    goto :goto_18

    :cond_21
    move/from16 v37, v0

    move/from16 v0, v27

    goto/16 :goto_12

    .line 437
    :cond_22
    :goto_18
    :try_start_19
    invoke-direct/range {p0 .. p0}, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder;->checkConversionCanceled()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_16
    .catchall {:try_start_19 .. :try_end_19} :catchall_b

    move-object/from16 v38, v7

    move-object/from16 v37, v10

    move/from16 v28, v11

    move-object/from16 v10, v22

    move-object/from16 v22, v8

    const-wide/16 v7, 0x9c4

    .line 438
    :try_start_1a
    invoke-virtual {v5, v10, v7, v8}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v11
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_15
    .catchall {:try_start_1a .. :try_end_1a} :catchall_a

    const/4 v7, -0x3

    const/4 v8, -0x1

    if-ne v11, v8, :cond_23

    move/from16 v40, v4

    move-object/from16 v41, v9

    move-object/from16 v8, v23

    move/from16 v9, v27

    const/4 v7, 0x0

    :goto_19
    move v4, v0

    move-object/from16 v23, v15

    const/4 v15, -0x1

    goto/16 :goto_25

    :cond_23
    if-ne v11, v7, :cond_25

    .line 442
    :try_start_1b
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-ge v8, v7, :cond_24

    .line 443
    invoke-virtual {v5}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v12
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_15
    .catchall {:try_start_1b .. :try_end_1b} :catchall_3

    :cond_24
    move/from16 v40, v4

    move-object/from16 v41, v9

    move-object/from16 v8, v23

    move/from16 v7, v26

    move/from16 v9, v27

    goto :goto_19

    :catchall_3
    move-exception v0

    move-object v1, v0

    move-object/from16 v12, v16

    move-object/from16 v10, v22

    goto/16 :goto_8

    :cond_25
    const/4 v7, -0x2

    if-ne v11, v7, :cond_27

    .line 446
    :try_start_1c
    invoke-virtual {v5}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v7
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_6
    .catchall {:try_start_1c .. :try_end_1c} :catchall_5

    const/4 v8, -0x5

    if-ne v0, v8, :cond_26

    move-object/from16 v8, v23

    move-object/from16 v23, v15

    const/4 v15, 0x0

    .line 448
    :try_start_1d
    invoke-virtual {v8, v7, v15}, Lorg/thoughtcrime/securesms/video/recode/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v0
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_13
    .catchall {:try_start_1d .. :try_end_1d} :catchall_4

    goto :goto_1a

    :catchall_4
    move-exception v0

    goto :goto_1c

    :cond_26
    move-object/from16 v8, v23

    move-object/from16 v23, v15

    :goto_1a
    move/from16 v40, v4

    move-object/from16 v41, v9

    move/from16 v7, v26

    move/from16 v9, v27

    :goto_1b
    const/4 v15, -0x1

    move v4, v0

    goto/16 :goto_25

    :catchall_5
    move-exception v0

    move-object/from16 v8, v23

    :goto_1c
    move-object v1, v0

    move-object/from16 v12, v16

    goto/16 :goto_3a

    :catch_6
    move-exception v0

    move-object/from16 v8, v23

    move-object/from16 v23, v15

    :goto_1d
    move/from16 v40, v4

    move-object/from16 v41, v9

    :goto_1e
    move-object/from16 v12, v16

    goto/16 :goto_3e

    :cond_27
    move-object/from16 v8, v23

    move-object/from16 v23, v15

    if-ltz v11, :cond_44

    .line 454
    :try_start_1e
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_13
    .catchall {:try_start_1e .. :try_end_1e} :catchall_8

    const/16 v15, 0x15

    if-ge v7, v15, :cond_28

    .line 455
    :try_start_1f
    aget-object v7, v12, v11
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_13
    .catchall {:try_start_1f .. :try_end_1f} :catchall_4

    goto :goto_1f

    .line 457
    :cond_28
    :try_start_20
    invoke-static {v5, v11}, Lcom/bumptech/glide/util/LogTime$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaCodec;I)Ljava/nio/ByteBuffer;

    move-result-object v7
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_13
    .catchall {:try_start_20 .. :try_end_20} :catchall_8

    :goto_1f
    if-eqz v7, :cond_43

    .line 462
    :try_start_21
    iget v15, v10, Landroid/media/MediaCodec$BufferInfo;->size:I
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_12
    .catchall {:try_start_21 .. :try_end_21} :catchall_7

    move-object/from16 v27, v12

    const/4 v12, 0x1

    if-le v15, v12, :cond_2d

    .line 463
    :try_start_22
    iget v12, v10, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v12, v12, 0x2

    if-nez v12, :cond_29

    const/4 v12, 0x0

    .line 464
    invoke-virtual {v8, v0, v7, v10, v12}, Lorg/thoughtcrime/securesms/video/recode/MP4Builder;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)Z

    goto/16 :goto_22

    :cond_29
    const/4 v12, -0x5

    if-ne v0, v12, :cond_2d

    .line 468
    iget v0, v10, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v0, v0, [B

    .line 469
    iget v15, v10, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v12, v10, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v15, v12

    invoke-virtual {v7, v15}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 470
    iget v12, v10, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v7, v12}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 471
    invoke-virtual {v7, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 474
    iget v7, v10, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/4 v12, 0x1

    sub-int/2addr v7, v12

    :goto_20
    if-ltz v7, :cond_2b

    const/4 v15, 0x3

    if-le v7, v15, :cond_2b

    .line 476
    aget-byte v15, v0, v7

    if-ne v15, v12, :cond_2a

    add-int/lit8 v12, v7, -0x1

    aget-byte v12, v0, v12

    if-nez v12, :cond_2a

    add-int/lit8 v12, v7, -0x2

    aget-byte v12, v0, v12

    if-nez v12, :cond_2a

    add-int/lit8 v12, v7, -0x3

    aget-byte v15, v0, v12

    if-nez v15, :cond_2a

    .line 477
    invoke-static {v12}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 478
    iget v15, v10, Landroid/media/MediaCodec$BufferInfo;->size:I

    sub-int/2addr v15, v12

    invoke-static {v15}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v15
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_13
    .catchall {:try_start_22 .. :try_end_22} :catchall_4

    move/from16 v40, v4

    move-object/from16 v41, v9

    const/4 v4, 0x0

    .line 479
    :try_start_23
    invoke-virtual {v7, v0, v4, v12}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 480
    iget v9, v10, Landroid/media/MediaCodec$BufferInfo;->size:I

    sub-int/2addr v9, v12

    invoke-virtual {v15, v0, v12, v9}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_21

    :cond_2a
    move/from16 v40, v4

    move-object/from16 v41, v9

    add-int/lit8 v7, v7, -0x1

    move/from16 v4, v40

    move-object/from16 v9, v41

    const/4 v12, 0x1

    goto :goto_20

    :cond_2b
    move/from16 v40, v4

    move-object/from16 v41, v9

    const/4 v7, 0x0

    const/4 v15, 0x0

    .line 488
    :goto_21
    invoke-static {v6, v1, v2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    if-eqz v7, :cond_2c

    if-eqz v15, :cond_2c

    const-string v4, "csd-0"

    .line 490
    invoke-virtual {v0, v4, v7}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    const-string v4, "csd-1"

    .line 491
    invoke-virtual {v0, v4, v15}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    :cond_2c
    const/4 v4, 0x0

    .line 493
    invoke-virtual {v8, v0, v4}, Lorg/thoughtcrime/securesms/video/recode/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v0
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_7
    .catchall {:try_start_23 .. :try_end_23} :catchall_4

    goto :goto_23

    :cond_2d
    :goto_22
    move/from16 v40, v4

    move-object/from16 v41, v9

    .line 496
    :goto_23
    :try_start_24
    iget v4, v10, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_2e

    const/4 v4, 0x1

    goto :goto_24

    :cond_2e
    const/4 v4, 0x0

    :goto_24
    const/4 v7, 0x0

    .line 497
    invoke-virtual {v5, v11, v7}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    move v9, v4

    move/from16 v7, v26

    move-object/from16 v12, v27

    goto/16 :goto_1b

    :goto_25
    if-eq v11, v15, :cond_2f

    move v0, v4

    move/from16 v26, v7

    move/from16 v27, v9

    move-object/from16 v15, v23

    move/from16 v11, v28

    move-object/from16 v7, v38

    move/from16 v4, v40

    move-object/from16 v9, v41

    :goto_26
    move-object/from16 v23, v8

    move-object/from16 v8, v22

    move-object/from16 v22, v10

    move-object/from16 v10, v37

    goto/16 :goto_17

    :cond_2f
    if-nez v34, :cond_42

    move/from16 v39, v1

    move/from16 v42, v2

    const-wide/16 v1, 0x9c4

    .line 504
    invoke-virtual {v3, v10, v1, v2}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_11
    .catchall {:try_start_24 .. :try_end_24} :catchall_7

    if-ne v0, v15, :cond_31

    move-object/from16 v11, v16

    :cond_30
    :goto_27
    const/16 v28, 0x0

    goto/16 :goto_36

    :cond_31
    const/4 v1, -0x3

    if-ne v0, v1, :cond_32

    goto/16 :goto_35

    :cond_32
    const/4 v1, -0x2

    if-ne v0, v1, :cond_33

    .line 510
    :try_start_25
    invoke-virtual {v3}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_7
    .catchall {:try_start_25 .. :try_end_25} :catchall_4

    goto/16 :goto_35

    :catch_7
    move-exception v0

    goto/16 :goto_1e

    :cond_33
    if-ltz v0, :cond_41

    .line 516
    :try_start_26
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_11
    .catchall {:try_start_26 .. :try_end_26} :catchall_7

    const/16 v2, 0x12

    if-lt v1, v2, :cond_35

    .line 517
    :try_start_27
    iget v1, v10, Landroid/media/MediaCodec$BufferInfo;->size:I
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_7
    .catchall {:try_start_27 .. :try_end_27} :catchall_4

    if-eqz v1, :cond_34

    const/4 v1, 0x1

    goto :goto_28

    :cond_34
    const/4 v1, 0x0

    :goto_28
    const-wide/16 v26, 0x0

    goto :goto_2a

    .line 519
    :cond_35
    :try_start_28
    iget v1, v10, Landroid/media/MediaCodec$BufferInfo;->size:I
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_11
    .catchall {:try_start_28 .. :try_end_28} :catchall_7

    if-nez v1, :cond_37

    :try_start_29
    iget-wide v1, v10, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v26, 0x0

    cmp-long v11, v1, v26

    if-eqz v11, :cond_36

    goto :goto_29

    :cond_36
    const/4 v1, 0x0

    goto :goto_2a

    :cond_37
    const-wide/16 v26, 0x0

    :goto_29
    const/4 v1, 0x1

    :goto_2a
    cmp-long v2, v18, v26

    if-lez v2, :cond_38

    move v11, v1

    .line 521
    iget-wide v1, v10, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v26, v1, v18

    if-ltz v26, :cond_39

    .line 525
    iget v1, v10, Landroid/media/MediaCodec$BufferInfo;->flags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v10, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const-wide/16 v1, 0x0

    const/4 v11, 0x0

    const/16 v33, 0x1

    const/16 v34, 0x1

    goto :goto_2b

    :cond_38
    move v11, v1

    :cond_39
    const-wide/16 v1, 0x0

    :goto_2b
    cmp-long v26, v13, v1

    if-lez v26, :cond_3b

    cmp-long v26, v35, v20

    if-nez v26, :cond_3b

    .line 528
    iget-wide v1, v10, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v26, v1, v13

    if-gez v26, :cond_3a

    const/4 v11, 0x0

    goto :goto_2c

    .line 532
    :cond_3a
    iget-wide v1, v10, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_7
    .catchall {:try_start_29 .. :try_end_29} :catchall_4

    move-wide/from16 v35, v1

    .line 535
    :cond_3b
    :goto_2c
    :try_start_2a
    invoke-virtual {v3, v0, v11}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_11
    .catchall {:try_start_2a .. :try_end_2a} :catchall_7

    if-eqz v11, :cond_3e

    .line 539
    :try_start_2b
    invoke-virtual/range {v41 .. v41}, Lorg/thoughtcrime/securesms/video/recode/OutputSurface;->awaitNewImage()V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_8
    .catchall {:try_start_2b .. :try_end_2b} :catchall_4

    const/4 v0, 0x0

    goto :goto_2d

    :catch_8
    move-exception v0

    move-object v1, v0

    .line 542
    :try_start_2c
    sget-object v0, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder;->TAG:Ljava/lang/String;

    const-string v2, "error while waiting for recording output surface"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x1

    :goto_2d
    if-nez v0, :cond_3e

    .line 545
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_e
    .catchall {:try_start_2c .. :try_end_2c} :catchall_7

    const/16 v1, 0x12

    if-lt v0, v1, :cond_3c

    move-object/from16 v1, v41

    const/4 v2, 0x0

    .line 546
    :try_start_2d
    invoke-virtual {v1, v2}, Lorg/thoughtcrime/securesms/video/recode/OutputSurface;->drawImage(Z)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_b
    .catchall {:try_start_2d .. :try_end_2d} :catchall_4

    .line 547
    :try_start_2e
    iget-wide v0, v10, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2e} :catch_a
    .catchall {:try_start_2e .. :try_end_2e} :catchall_4

    const-wide/16 v26, 0x3e8

    mul-long v0, v0, v26

    move-object/from16 v2, v38

    :try_start_2f
    invoke-virtual {v2, v0, v1}, Lorg/thoughtcrime/securesms/video/recode/InputSurface;->setPresentationTime(J)V

    .line 548
    invoke-virtual {v2}, Lorg/thoughtcrime/securesms/video/recode/InputSurface;->swapBuffers()Z
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_2f} :catch_9
    .catchall {:try_start_2f .. :try_end_2f} :catchall_4

    move-object/from16 v11, v16

    goto :goto_30

    :catch_9
    move-exception v0

    move-object/from16 v38, v2

    goto/16 :goto_1e

    :catch_a
    move-exception v0

    goto :goto_2e

    :catch_b
    move-exception v0

    move-object/from16 v41, v1

    :goto_2e
    move-object/from16 v2, v38

    goto/16 :goto_1e

    :cond_3c
    move-object/from16 v2, v38

    .line 550
    :try_start_30
    sget-object v0, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder;->TAG:Ljava/lang/String;

    const-string v1, "Cannot proceed with the current SDK version"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_30} :catch_d
    .catchall {:try_start_30 .. :try_end_30} :catchall_7

    .line 625
    invoke-virtual/range {v22 .. v22}, Landroid/media/MediaExtractor;->release()V

    if-eqz v8, :cond_3d

    const/4 v1, 0x0

    .line 629
    :try_start_31
    invoke-virtual {v8, v1}, Lorg/thoughtcrime/securesms/video/recode/MP4Builder;->finishMovie(Z)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_31} :catch_c

    goto :goto_2f

    :catch_c
    move-exception v0

    move-object v2, v0

    .line 631
    sget-object v0, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder;->TAG:Ljava/lang/String;

    move-object/from16 v11, v16

    invoke-static {v0, v11, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2f

    :cond_3d
    const/4 v1, 0x0

    :goto_2f
    return v1

    :catch_d
    move-exception v0

    move-object/from16 v11, v16

    goto :goto_31

    :catch_e
    move-exception v0

    move-object/from16 v11, v16

    move-object/from16 v2, v38

    goto/16 :goto_34

    :cond_3e
    move-object/from16 v11, v16

    move-object/from16 v2, v38

    .line 568
    :goto_30
    :try_start_32
    iget v0, v10, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_40

    .line 571
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_3f

    .line 572
    invoke-static {v5}, Lkotlinx/coroutines/time/TimeKt$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaCodec;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_32} :catch_f
    .catchall {:try_start_32 .. :try_end_32} :catchall_6

    move-object/from16 v38, v2

    goto/16 :goto_27

    :cond_3f
    move-object/from16 v38, v2

    const-wide/16 v1, 0x9c4

    .line 574
    :try_start_33
    invoke-virtual {v5, v1, v2}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v27

    if-ltz v27, :cond_30

    const/16 v28, 0x0

    const/16 v29, 0x1

    .line 576
    iget-wide v1, v10, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const/16 v32, 0x4

    move-object/from16 v26, v5

    move-wide/from16 v30, v1

    invoke-virtual/range {v26 .. v32}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto/16 :goto_27

    :cond_40
    move-object/from16 v38, v2

    goto :goto_36

    :catch_f
    move-exception v0

    :goto_31
    move-object/from16 v38, v2

    goto :goto_34

    :cond_41
    move-object/from16 v11, v16

    .line 513
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unexpected result from decoder.dequeueOutputBuffer: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_33} :catch_10
    .catchall {:try_start_33 .. :try_end_33} :catchall_6

    :catchall_6
    move-exception v0

    goto :goto_32

    :catch_10
    move-exception v0

    goto :goto_34

    :catchall_7
    move-exception v0

    move-object/from16 v11, v16

    :goto_32
    move-object v1, v0

    move-object v12, v11

    goto/16 :goto_3a

    :catch_11
    move-exception v0

    :goto_33
    move-object/from16 v11, v16

    :goto_34
    move-object v12, v11

    goto/16 :goto_3e

    :cond_42
    move/from16 v39, v1

    move/from16 v42, v2

    :goto_35
    move-object/from16 v11, v16

    :goto_36
    move v0, v4

    move/from16 v26, v7

    move/from16 v27, v9

    move-object/from16 v16, v11

    move-object/from16 v15, v23

    move/from16 v11, v28

    move-object/from16 v7, v38

    move/from16 v1, v39

    move/from16 v4, v40

    move-object/from16 v9, v41

    move/from16 v2, v42

    goto/16 :goto_26

    :catch_12
    move-exception v0

    move/from16 v40, v4

    move-object/from16 v41, v9

    goto :goto_33

    :cond_43
    move/from16 v40, v4

    move-object/from16 v41, v9

    move-object/from16 v12, v16

    .line 460
    :try_start_34
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encoderOutputBuffer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " was null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_8
    move-exception v0

    goto/16 :goto_38

    :catch_13
    move-exception v0

    goto/16 :goto_1d

    :cond_44
    move/from16 v40, v4

    move-object/from16 v41, v9

    move-object/from16 v12, v16

    .line 451
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected result from encoder.dequeueOutputBuffer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_34} :catch_14
    .catchall {:try_start_34 .. :try_end_34} :catchall_9

    :catchall_9
    move-exception v0

    goto/16 :goto_39

    :catch_14
    move-exception v0

    goto/16 :goto_3e

    :catchall_a
    move-exception v0

    goto/16 :goto_37

    :catch_15
    move-exception v0

    move/from16 v40, v4

    move-object/from16 v41, v9

    move-object/from16 v12, v16

    goto/16 :goto_c

    :cond_45
    move/from16 v40, v4

    move-object/from16 v38, v7

    move-object/from16 v41, v9

    move-object/from16 v12, v16

    move-object/from16 v10, v22

    move-object/from16 v22, v8

    move-object/from16 v8, v23

    move-object/from16 v23, v15

    cmp-long v0, v35, v20

    if-eqz v0, :cond_46

    move-wide/from16 v13, v35

    :cond_46
    move-object/from16 v11, v22

    move-object/from16 v7, v38

    move/from16 v1, v40

    move-object/from16 v9, v41

    const/4 v0, 0x0

    goto/16 :goto_3f

    :catch_16
    move-exception v0

    move/from16 v40, v4

    move-object/from16 v38, v7

    move-object/from16 v41, v9

    move-object/from16 v12, v16

    move-object/from16 v10, v22

    goto/16 :goto_b

    :catch_17
    move-exception v0

    move/from16 v40, v4

    move-object/from16 v38, v7

    move-object/from16 v12, v16

    move-object/from16 v10, v22

    move-object/from16 v22, v8

    move-object/from16 v8, v23

    move-object/from16 v23, v15

    goto/16 :goto_3d

    :catch_18
    move-exception v0

    move/from16 v40, v4

    move-object/from16 v38, v7

    move-object/from16 v12, v16

    move-object/from16 v10, v22

    move-object/from16 v22, v8

    move-object/from16 v8, v23

    move-object/from16 v23, v15

    const/4 v3, 0x0

    goto :goto_3d

    :catch_19
    move-exception v0

    move/from16 v40, v4

    move-object/from16 v12, v16

    move-object/from16 v10, v22

    move-object/from16 v22, v8

    move-object/from16 v8, v23

    move-object/from16 v23, v15

    const/4 v3, 0x0

    goto :goto_3c

    :catchall_b
    move-exception v0

    move-object/from16 v22, v8

    :goto_37
    move-object/from16 v12, v16

    move-object/from16 v8, v23

    goto :goto_39

    :catch_1a
    move-exception v0

    move/from16 v40, v4

    move-object/from16 v12, v16

    move-object/from16 v10, v22

    move-object/from16 v22, v8

    move-object/from16 v8, v23

    move-object/from16 v23, v15

    goto :goto_3b

    :catchall_c
    move-exception v0

    move-object/from16 v22, v8

    move-object v8, v10

    :goto_38
    move-object/from16 v12, v16

    :goto_39
    move-object v1, v0

    :goto_3a
    move-object/from16 v10, v22

    goto/16 :goto_4d

    :catch_1b
    move-exception v0

    move/from16 v40, v4

    move-object/from16 v23, v15

    move-object/from16 v12, v16

    move-object/from16 v43, v22

    move-object/from16 v22, v8

    move-object v8, v10

    move-object/from16 v10, v43

    :goto_3b
    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_3c
    const/16 v38, 0x0

    :goto_3d
    const/16 v41, 0x0

    .line 588
    :goto_3e
    :try_start_35
    sget-object v1, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder;->TAG:Ljava/lang/String;

    const-string v2, "Recoding video failed unexpectedly"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_35} :catch_1d
    .catchall {:try_start_35 .. :try_end_35} :catchall_e

    move-object/from16 v11, v22

    move-object/from16 v7, v38

    move/from16 v1, v40

    move-object/from16 v9, v41

    const/4 v0, 0x1

    .line 592
    :goto_3f
    :try_start_36
    invoke-virtual {v11, v1}, Landroid/media/MediaExtractor;->unselectTrack(I)V

    if-eqz v9, :cond_47

    .line 595
    invoke-virtual {v9}, Lorg/thoughtcrime/securesms/video/recode/OutputSurface;->release()V

    :cond_47
    if-eqz v7, :cond_48

    .line 598
    invoke-virtual {v7}, Lorg/thoughtcrime/securesms/video/recode/InputSurface;->release()V

    :cond_48
    if-eqz v3, :cond_49

    .line 601
    invoke-virtual {v3}, Landroid/media/MediaCodec;->stop()V

    .line 602
    invoke-virtual {v3}, Landroid/media/MediaCodec;->release()V

    :cond_49
    if-eqz v5, :cond_4a

    .line 605
    invoke-virtual {v5}, Landroid/media/MediaCodec;->stop()V

    .line 606
    invoke-virtual {v5}, Landroid/media/MediaCodec;->release()V

    .line 609
    :cond_4a
    invoke-direct/range {p0 .. p0}, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder;->checkConversionCanceled()V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_36} :catch_1c
    .catchall {:try_start_36 .. :try_end_36} :catchall_d

    goto :goto_42

    :catchall_d
    move-exception v0

    goto :goto_40

    :catch_1c
    move-exception v0

    goto :goto_41

    :catchall_e
    move-exception v0

    move-object/from16 v11, v22

    :goto_40
    move-object v1, v0

    move-object v10, v11

    goto/16 :goto_4d

    :catch_1d
    move-exception v0

    move-object/from16 v11, v22

    :goto_41
    move-object v10, v11

    goto/16 :goto_4b

    :cond_4b
    move-object v11, v8

    move-object v8, v10

    move-object/from16 v23, v15

    move-object/from16 v12, v16

    move-object/from16 v10, v22

    const/4 v0, 0x0

    :goto_42
    move-wide v5, v13

    :goto_43
    if-nez v0, :cond_4c

    const/4 v0, 0x1

    move-object/from16 v1, p0

    move-object v2, v11

    move-object v3, v8

    move-object v4, v10

    move-object v10, v8

    move-wide/from16 v7, v18

    move-object/from16 v9, v23

    move-object v13, v10

    move v10, v0

    .line 618
    :try_start_37
    invoke-direct/range {v1 .. v10}, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder;->readAndWriteTrack(Landroid/media/MediaExtractor;Lorg/thoughtcrime/securesms/video/recode/MP4Builder;Landroid/media/MediaCodec$BufferInfo;JJLjava/io/File;Z)J
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_37} :catch_1e
    .catchall {:try_start_37 .. :try_end_37} :catchall_f

    goto :goto_44

    :catchall_f
    move-exception v0

    goto :goto_46

    :catch_1e
    move-exception v0

    goto :goto_48

    :cond_4c
    move-object v13, v8

    .line 625
    :goto_44
    invoke-virtual {v11}, Landroid/media/MediaExtractor;->release()V

    if-eqz v13, :cond_4e

    const/4 v1, 0x0

    .line 629
    :try_start_38
    invoke-virtual {v13, v1}, Lorg/thoughtcrime/securesms/video/recode/MP4Builder;->finishMovie(Z)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_38} :catch_23

    goto/16 :goto_4c

    :catchall_10
    move-exception v0

    move-object v11, v8

    move-object v13, v10

    goto :goto_45

    :catch_1f
    move-exception v0

    move-object v11, v8

    move-object v13, v10

    goto :goto_47

    :catchall_11
    move-exception v0

    move-object v13, v3

    :goto_45
    move-object/from16 v12, v16

    :goto_46
    move-object v1, v0

    move-object v10, v11

    move-object v8, v13

    goto :goto_4d

    :catch_20
    move-exception v0

    move-object v13, v3

    :goto_47
    move-object/from16 v12, v16

    :goto_48
    move-object v10, v11

    move-object v8, v13

    goto :goto_4b

    :catchall_12
    move-exception v0

    move-object v13, v3

    move-object/from16 v12, v16

    move-object v1, v0

    move-object v8, v13

    goto :goto_49

    :catch_21
    move-exception v0

    move-object v13, v3

    move-object/from16 v12, v16

    move-object v8, v13

    goto :goto_4a

    :catchall_13
    move-exception v0

    move-object/from16 v12, v16

    move-object v1, v0

    const/4 v8, 0x0

    :goto_49
    const/4 v10, 0x0

    goto :goto_4d

    :catch_22
    move-exception v0

    move-object/from16 v12, v16

    const/4 v8, 0x0

    :goto_4a
    const/4 v10, 0x0

    .line 621
    :goto_4b
    :try_start_39
    sget-object v1, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder;->TAG:Ljava/lang/String;

    const-string v2, "Recoding video failed unexpectedly/2"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_14

    if-eqz v10, :cond_4d

    .line 625
    invoke-virtual {v10}, Landroid/media/MediaExtractor;->release()V

    :cond_4d
    if-eqz v8, :cond_4e

    const/4 v1, 0x0

    .line 629
    :try_start_3a
    invoke-virtual {v8, v1}, Lorg/thoughtcrime/securesms/video/recode/MP4Builder;->finishMovie(Z)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3a} :catch_23

    goto :goto_4c

    :catch_23
    move-exception v0

    move-object v1, v0

    .line 631
    sget-object v0, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder;->TAG:Ljava/lang/String;

    invoke-static {v0, v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4e
    :goto_4c
    const/4 v1, 0x1

    return v1

    :catchall_14
    move-exception v0

    move-object v1, v0

    :goto_4d
    if-eqz v10, :cond_4f

    .line 625
    invoke-virtual {v10}, Landroid/media/MediaExtractor;->release()V

    :cond_4f
    if-eqz v8, :cond_50

    const/4 v2, 0x0

    .line 629
    :try_start_3b
    invoke-virtual {v8, v2}, Lorg/thoughtcrime/securesms/video/recode/MP4Builder;->finishMovie(Z)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3b} :catch_24

    goto :goto_4e

    :catch_24
    move-exception v0

    move-object v2, v0

    .line 631
    sget-object v0, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder;->TAG:Ljava/lang/String;

    invoke-static {v0, v12, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 635
    :cond_50
    :goto_4e
    throw v1

    .line 638
    :cond_51
    sget-object v0, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder;->TAG:Ljava/lang/String;

    const-string v1, "Video width or height are 0, refusing recode."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method private static getVideoEditInfoFromFile(Ljava/lang/String;)Lorg/thoughtcrime/securesms/video/recode/VideoRecoder$VideoEditedInfo;
    .locals 14

    .line 706
    new-instance v0, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder$VideoEditedInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder$VideoEditedInfo;-><init>(Lorg/thoughtcrime/securesms/video/recode/VideoRecoder$1;)V

    .line 707
    iput-object p0, v0, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder$VideoEditedInfo;->originalPath:Ljava/lang/String;

    .line 710
    :try_start_0
    new-instance v2, Lcom/coremedia/iso/IsoFile;

    invoke-direct {v2, p0}, Lcom/coremedia/iso/IsoFile;-><init>(Ljava/lang/String;)V

    const-string p0, "/moov/trak/"

    .line 711
    invoke-static {v2, p0}, Lcom/googlecode/mp4parser/util/Path;->getPaths(Lcom/coremedia/iso/boxes/Container;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 720
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move-object v2, v1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coremedia/iso/boxes/Box;

    .line 721
    check-cast v3, Lcom/coremedia/iso/boxes/TrackBox;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const-wide/16 v4, 0x0

    .line 725
    :try_start_1
    invoke-virtual {v3}, Lcom/coremedia/iso/boxes/TrackBox;->getMediaBox()Lcom/coremedia/iso/boxes/MediaBox;

    move-result-object v6

    .line 726
    invoke-virtual {v6}, Lcom/coremedia/iso/boxes/MediaBox;->getMediaHeaderBox()Lcom/coremedia/iso/boxes/MediaHeaderBox;

    move-result-object v7

    .line 727
    invoke-virtual {v6}, Lcom/coremedia/iso/boxes/MediaBox;->getMediaInformationBox()Lcom/coremedia/iso/boxes/MediaInformationBox;

    move-result-object v6

    invoke-virtual {v6}, Lcom/coremedia/iso/boxes/MediaInformationBox;->getSampleTableBox()Lcom/coremedia/iso/boxes/SampleTableBox;

    move-result-object v6

    invoke-virtual {v6}, Lcom/coremedia/iso/boxes/SampleTableBox;->getSampleSizeBox()Lcom/coremedia/iso/boxes/SampleSizeBox;

    move-result-object v6

    .line 728
    invoke-virtual {v6}, Lcom/coremedia/iso/boxes/SampleSizeBox;->getSampleSizes()[J

    move-result-object v6

    array-length v8, v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v9, 0x0

    move-wide v10, v4

    :goto_1
    if-ge v9, v8, :cond_0

    :try_start_2
    aget-wide v12, v6, v9

    add-long/2addr v10, v12

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 731
    :cond_0
    invoke-virtual {v7}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->getDuration()J

    move-result-wide v8

    long-to-float v6, v8

    invoke-virtual {v7}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->getTimescale()J

    move-result-wide v4

    long-to-float v4, v4

    div-float/2addr v6, v4

    const-wide/16 v4, 0x8

    mul-long v4, v4, v10

    long-to-float v4, v4

    div-float/2addr v4, v6

    float-to-int v4, v4

    int-to-long v4, v4

    const/high16 v7, 0x447a0000    # 1000.0f

    mul-float v6, v6, v7

    .line 733
    iput v6, v0, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder$VideoEditedInfo;->originalDurationMs:F
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v6

    move-object v8, v6

    move-wide v6, v4

    move-wide v4, v10

    goto :goto_2

    :catch_1
    move-exception v6

    move-object v8, v6

    move-wide v6, v4

    .line 735
    :goto_2
    :try_start_3
    sget-object v9, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder;->TAG:Ljava/lang/String;

    const-string v10, "Get video info: Calculating sample sizes failed unexpectedly"

    invoke-static {v9, v10, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-wide v10, v4

    move-wide v4, v6

    .line 737
    :goto_3
    invoke-virtual {v3}, Lcom/coremedia/iso/boxes/TrackBox;->getTrackHeaderBox()Lcom/coremedia/iso/boxes/TrackHeaderBox;

    move-result-object v3

    .line 738
    invoke-virtual {v3}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getWidth()D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double v12, v6, v8

    if-eqz v12, :cond_1

    invoke-virtual {v3}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getHeight()D

    move-result-wide v6

    cmpl-double v12, v6, v8

    if-eqz v12, :cond_1

    const-wide/32 v6, 0x186a0

    .line 740
    div-long/2addr v4, v6

    mul-long v4, v4, v6

    long-to-int v2, v4

    iput v2, v0, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder$VideoEditedInfo;->originalVideoBitrate:I

    move-object v2, v3

    goto :goto_0

    .line 742
    :cond_1
    iget-wide v3, v0, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder$VideoEditedInfo;->originalAudioBytes:J

    add-long/2addr v3, v10

    iput-wide v3, v0, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder$VideoEditedInfo;->originalAudioBytes:J

    goto/16 :goto_0

    :cond_2
    if-nez v2, :cond_3

    .line 746
    sget-object p0, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder;->TAG:Ljava/lang/String;

    const-string v0, "Get video info: No trackHeaderBox"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 750
    :cond_3
    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getMatrix()Lcom/googlecode/mp4parser/util/Matrix;

    move-result-object p0

    .line 751
    sget-object v3, Lcom/googlecode/mp4parser/util/Matrix;->ROTATE_90:Lcom/googlecode/mp4parser/util/Matrix;

    invoke-virtual {p0, v3}, Lcom/googlecode/mp4parser/util/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 p0, 0x5a

    .line 752
    iput p0, v0, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder$VideoEditedInfo;->originalRotationValue:I

    goto :goto_4

    .line 753
    :cond_4
    sget-object v3, Lcom/googlecode/mp4parser/util/Matrix;->ROTATE_180:Lcom/googlecode/mp4parser/util/Matrix;

    invoke-virtual {p0, v3}, Lcom/googlecode/mp4parser/util/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 p0, 0xb4

    .line 754
    iput p0, v0, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder$VideoEditedInfo;->originalRotationValue:I

    goto :goto_4

    .line 755
    :cond_5
    sget-object v3, Lcom/googlecode/mp4parser/util/Matrix;->ROTATE_270:Lcom/googlecode/mp4parser/util/Matrix;

    invoke-virtual {p0, v3}, Lcom/googlecode/mp4parser/util/Matrix;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    const/16 p0, 0x10e

    .line 756
    iput p0, v0, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder$VideoEditedInfo;->originalRotationValue:I

    .line 758
    :cond_6
    :goto_4
    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getWidth()D

    move-result-wide v3

    double-to-int p0, v3

    iput p0, v0, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder$VideoEditedInfo;->originalWidth:I

    .line 759
    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getHeight()D

    move-result-wide v2

    double-to-int p0, v2

    iput p0, v0, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder$VideoEditedInfo;->originalHeight:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    return-object v0

    :catch_2
    move-exception p0

    .line 762
    sget-object v0, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder;->TAG:Ljava/lang/String;

    const-string v2, "Get video info: Reading message info failed unexpectedly"

    invoke-static {v0, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method private static isRecognizedFormat(I)Z
    .locals 1

    const/16 v0, 0x27

    if-eq p0, v0, :cond_0

    const v0, 0x7f000100

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :cond_0
    :pswitch_0
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic lambda$alert$0(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 778
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x0

    .line 779
    invoke-virtual {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 780
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x104000a

    const/4 v0, 0x0

    .line 781
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 782
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method public static prepareVideo(Landroid/content/Context;ILcom/b44t/messenger/DcMsg;)Z
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "Preparing video: "

    const/4 v3, 0x1

    .line 792
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/b44t/messenger/DcMsg;->getFile()Ljava/lang/String;

    move-result-object v4

    .line 793
    sget-object v5, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    invoke-static {v4}, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder;->getVideoEditInfoFromFile(Ljava/lang/String;)Lorg/thoughtcrime/securesms/video/recode/VideoRecoder$VideoEditedInfo;

    move-result-object v2

    const/4 v6, 0x0

    if-nez v2, :cond_0

    const-string v1, "Recoding failed for %s: cannot get info"

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v4, v2, v6

    .line 798
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder;->alert(Landroid/content/Context;Ljava/lang/String;)V

    return v6

    .line 801
    :cond_0
    iget v7, v2, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder$VideoEditedInfo;->originalRotationValue:I

    iput v7, v2, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder$VideoEditedInfo;->rotationValue:I

    const-wide/16 v7, 0x0

    .line 802
    iput-wide v7, v2, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder$VideoEditedInfo;->startTime:J

    const-wide/16 v9, -0x1

    .line 803
    iput-wide v9, v2, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder$VideoEditedInfo;->endTime:J

    .line 807
    iget v9, v2, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder$VideoEditedInfo;->originalRotationValue:I

    const/16 v10, 0x10e

    const/16 v11, 0x5a

    if-eq v9, v11, :cond_2

    iget v9, v2, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder$VideoEditedInfo;->originalRotationValue:I

    if-ne v9, v10, :cond_1

    goto :goto_0

    .line 810
    :cond_1
    iget v9, v2, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder$VideoEditedInfo;->originalWidth:I

    iget v12, v2, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder$VideoEditedInfo;->originalHeight:I

    invoke-virtual {v1, v9, v12}, Lcom/b44t/messenger/DcMsg;->setDimension(II)V

    goto :goto_1

    .line 808
    :cond_2
    :goto_0
    iget v9, v2, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder$VideoEditedInfo;->originalHeight:I

    iget v12, v2, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder$VideoEditedInfo;->originalWidth:I

    invoke-virtual {v1, v9, v12}, Lcom/b44t/messenger/DcMsg;->setDimension(II)V

    .line 812
    :goto_1
    iget v9, v2, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder$VideoEditedInfo;->originalDurationMs:F

    float-to-int v9, v9

    invoke-virtual {v1, v9}, Lcom/b44t/messenger/DcMsg;->setDuration(I)V

    .line 814
    invoke-static {}, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder;->canRecode()Z

    move-result v9

    if-nez v9, :cond_3

    const-string v1, "Recoding failed for %s: this system cannot recode videos"

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v4, v2, v6

    .line 815
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder;->alert(Landroid/content/Context;Ljava/lang/String;)V

    return v6

    :cond_3
    const-string v9, "sys.msgsize_max_recommended"

    .line 821
    invoke-static {v0, v9}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    int-to-long v12, v9

    .line 822
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v14

    const/4 v9, 0x2

    cmp-long v16, v14, v7

    if-lez v16, :cond_4

    cmp-long v7, v14, v12

    if-gtz v7, :cond_4

    .line 823
    iget v7, v2, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder$VideoEditedInfo;->originalVideoBitrate:I

    const v8, 0x2dc6c0

    if-gt v7, v8, :cond_4

    const-string v0, "recoding for %s is not needed, %d bytes and %d kbps are ok"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v6

    .line 824
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v3

    iget v2, v2, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder$VideoEditedInfo;->originalVideoBitrate:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v9

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 829
    :cond_4
    iget v7, v2, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder$VideoEditedInfo;->originalDurationMs:F

    float-to-long v7, v7

    .line 830
    iget-wide v14, v2, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder$VideoEditedInfo;->originalAudioBytes:J

    sub-long v14, v12, v14

    sub-long/2addr v14, v7

    const-wide/16 v16, 0x3e8

    move-object/from16 v18, v4

    .line 831
    div-long v3, v7, v16

    const-wide/16 v9, 0x1

    invoke-static {v9, v10, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    div-long/2addr v14, v3

    const-wide/16 v3, 0x8

    mul-long v14, v14, v3

    long-to-int v3, v14

    iput v3, v2, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder$VideoEditedInfo;->resultVideoBitrate:I

    .line 833
    iget v3, v2, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder$VideoEditedInfo;->resultVideoBitrate:I

    const v4, 0x30d40

    if-ge v3, v4, :cond_5

    .line 834
    iput v4, v2, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder$VideoEditedInfo;->resultVideoBitrate:I

    goto :goto_2

    .line 835
    :cond_5
    iget v3, v2, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder$VideoEditedInfo;->resultVideoBitrate:I

    const v4, 0x7a120

    if-le v3, v4, :cond_8

    .line 836
    invoke-static/range {p0 .. p0}, Lorg/thoughtcrime/securesms/util/Prefs;->isHardCompressionEnabled(Landroid/content/Context;)Z

    move-result v3

    const-wide/16 v9, 0x7530

    cmp-long v14, v7, v9

    if-gez v14, :cond_6

    if-nez v3, :cond_6

    const v3, 0x16e360

    .line 838
    iput v3, v2, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder$VideoEditedInfo;->resultVideoBitrate:I

    goto :goto_2

    :cond_6
    const-wide/32 v9, 0xea60

    cmp-long v14, v7, v9

    if-gez v14, :cond_7

    if-nez v3, :cond_7

    const v3, 0xf4240

    .line 840
    iput v3, v2, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder$VideoEditedInfo;->resultVideoBitrate:I

    goto :goto_2

    .line 842
    :cond_7
    iput v4, v2, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder$VideoEditedInfo;->resultVideoBitrate:I

    .line 847
    :cond_8
    :goto_2
    iget v3, v2, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder$VideoEditedInfo;->resultVideoBitrate:I

    const v4, 0x61a80

    if-le v3, v4, :cond_9

    const/16 v3, 0x280

    goto :goto_3

    :cond_9
    const/16 v3, 0x1e0

    .line 848
    :goto_3
    iget v4, v2, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder$VideoEditedInfo;->originalWidth:I

    iput v4, v2, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder$VideoEditedInfo;->resultWidth:I

    .line 849
    iget v4, v2, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder$VideoEditedInfo;->originalHeight:I

    iput v4, v2, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder$VideoEditedInfo;->resultHeight:I

    .line 850
    iget v4, v2, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder$VideoEditedInfo;->resultWidth:I

    if-gt v4, v3, :cond_a

    iget v4, v2, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder$VideoEditedInfo;->resultHeight:I

    if-le v4, v3, :cond_c

    .line 851
    :cond_a
    iget v4, v2, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder$VideoEditedInfo;->resultWidth:I

    iget v9, v2, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder$VideoEditedInfo;->resultHeight:I

    int-to-float v3, v3

    if-le v4, v9, :cond_b

    iget v4, v2, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder$VideoEditedInfo;->resultWidth:I

    :goto_4
    int-to-float v4, v4

    div-float/2addr v3, v4

    goto :goto_5

    :cond_b
    iget v4, v2, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder$VideoEditedInfo;->resultHeight:I

    goto :goto_4

    .line 852
    :goto_5
    iget v4, v2, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder$VideoEditedInfo;->resultWidth:I

    int-to-float v4, v4

    mul-float v4, v4, v3

    float-to-int v4, v4

    iput v4, v2, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder$VideoEditedInfo;->resultWidth:I

    .line 853
    iget v4, v2, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder$VideoEditedInfo;->resultHeight:I

    int-to-float v4, v4

    mul-float v4, v4, v3

    float-to-int v3, v4

    iput v3, v2, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder$VideoEditedInfo;->resultHeight:I

    .line 857
    :cond_c
    iget v3, v2, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder$VideoEditedInfo;->originalRotationValue:I

    if-eq v3, v11, :cond_e

    iget v3, v2, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder$VideoEditedInfo;->originalRotationValue:I

    const/16 v4, 0x10e

    if-ne v3, v4, :cond_d

    goto :goto_6

    .line 860
    :cond_d
    iget v3, v2, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder$VideoEditedInfo;->resultWidth:I

    iget v4, v2, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder$VideoEditedInfo;->resultHeight:I

    invoke-virtual {v1, v3, v4}, Lcom/b44t/messenger/DcMsg;->setDimension(II)V

    goto :goto_7

    .line 858
    :cond_e
    :goto_6
    iget v3, v2, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder$VideoEditedInfo;->resultHeight:I

    iget v4, v2, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder$VideoEditedInfo;->resultWidth:I

    invoke-virtual {v1, v3, v4}, Lcom/b44t/messenger/DcMsg;->setDimension(II)V

    :goto_7
    long-to-int v3, v7

    .line 862
    invoke-virtual {v1, v3}, Lcom/b44t/messenger/DcMsg;->setDuration(I)V

    .line 863
    invoke-static/range {p0 .. p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object v3

    move/from16 v4, p1

    invoke-virtual {v3, v4, v1}, Lcom/b44t/messenger/DcContext;->prepareMsg(ILcom/b44t/messenger/DcMsg;)I

    long-to-float v1, v7

    .line 866
    iget v3, v2, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder$VideoEditedInfo;->originalDurationMs:F

    div-float/2addr v1, v3

    iget v3, v2, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder$VideoEditedInfo;->resultVideoBitrate:I

    iget v4, v2, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder$VideoEditedInfo;->originalDurationMs:F

    iget-wide v7, v2, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder$VideoEditedInfo;->originalAudioBytes:J

    invoke-static {v1, v3, v4, v7, v8}, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder;->calculateEstimatedSize(FIFJ)I

    move-result v1

    iput v1, v2, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder$VideoEditedInfo;->estimatedBytes:I

    .line 869
    iget v1, v2, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder$VideoEditedInfo;->estimatedBytes:I

    int-to-long v3, v1

    const-wide/16 v7, 0x4

    div-long v7, v12, v7

    add-long/2addr v12, v7

    cmp-long v1, v3, v12

    if-lez v1, :cond_f

    const-string v1, "Video cannot be compressed to a reasonable size. Try a shorter video or a lower quality."

    .line 870
    invoke-static {v0, v1}, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder;->alert(Landroid/content/Context;Ljava/lang/String;)V

    return v6

    .line 875
    :cond_f
    invoke-static/range {p0 .. p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object v1

    move-object/from16 v3, v18

    invoke-static {v1, v3}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getBlobdirFile(Lcom/b44t/messenger/DcContext;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 876
    new-instance v4, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder;

    invoke-direct {v4}, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder;-><init>()V

    .line 877
    invoke-direct {v4, v2, v1}, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder;->convertVideo(Lorg/thoughtcrime/securesms/video/recode/VideoRecoder$VideoEditedInfo;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string v2, "Recoding failed for %s: cannot convert to temporary file %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v6

    const/4 v3, 0x1

    aput-object v1, v4, v3

    .line 878
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder;->alert(Landroid/content/Context;Ljava/lang/String;)V

    return v6

    .line 882
    :cond_10
    invoke-static {v1, v3}, Lorg/thoughtcrime/securesms/util/Util;->moveFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_11

    const-string v2, "Recoding failed for %s: cannot move temporary file %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v6

    const/4 v3, 0x1

    aput-object v1, v4, v3

    .line 883
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder;->alert(Landroid/content/Context;Ljava/lang/String;)V

    return v6

    :cond_11
    const-string v0, "recoding for %s done"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    aput-object v3, v2, v6

    .line 887
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :catch_0
    move-exception v0

    .line 890
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_8
    const/4 v1, 0x1

    return v1
.end method

.method private readAndWriteTrack(Landroid/media/MediaExtractor;Lorg/thoughtcrime/securesms/video/recode/MP4Builder;Landroid/media/MediaCodec$BufferInfo;JJLjava/io/File;Z)J
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-wide/from16 v3, p4

    move-object/from16 v5, p0

    move/from16 v6, p9

    .line 134
    invoke-direct {v5, v0, v6}, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder;->selectTrack(Landroid/media/MediaExtractor;Z)I

    move-result v7

    if-ltz v7, :cond_c

    .line 136
    invoke-virtual {v0, v7}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 137
    invoke-virtual {v0, v7}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v10

    .line 138
    invoke-virtual {v1, v10, v6}, Lorg/thoughtcrime/securesms/video/recode/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v11

    const-string v12, "max-input-size"

    .line 139
    invoke-virtual {v10, v12}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v10

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    cmp-long v15, v3, v12

    if-lez v15, :cond_0

    .line 142
    invoke-virtual {v0, v3, v4, v14}, Landroid/media/MediaExtractor;->seekTo(JI)V

    goto :goto_0

    .line 144
    :cond_0
    invoke-virtual {v0, v12, v13, v14}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 146
    :goto_0
    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 149
    invoke-direct/range {p0 .. p0}, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder;->checkConversionCanceled()V

    const-wide/16 v15, -0x64

    const/16 v17, 0x0

    const-wide/16 v18, -0x1

    :goto_1
    if-nez v17, :cond_b

    .line 153
    invoke-direct/range {p0 .. p0}, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder;->checkConversionCanceled()V

    .line 156
    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result v8

    if-ne v8, v7, :cond_7

    .line 158
    invoke-virtual {v0, v10, v14}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v8

    iput v8, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 159
    iget v8, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-ltz v8, :cond_1

    move-object/from16 p8, v10

    .line 160
    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v9

    iput-wide v9, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const/4 v8, 0x0

    goto :goto_2

    :cond_1
    move-object/from16 p8, v10

    .line 162
    iput v14, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/4 v8, 0x1

    .line 166
    :goto_2
    iget v9, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v9, :cond_6

    if-nez v8, :cond_6

    cmp-long v9, v3, v12

    if-lez v9, :cond_2

    const-wide/16 v9, -0x1

    cmp-long v20, v18, v9

    if-nez v20, :cond_2

    .line 168
    iget-wide v9, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-wide/from16 v18, v9

    :cond_2
    cmp-long v9, p6, v12

    if-ltz v9, :cond_4

    .line 170
    iget-wide v9, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v20, v9, p6

    if-gez v20, :cond_3

    goto :goto_3

    :cond_3
    move-object/from16 v9, p8

    const/4 v8, 0x1

    goto :goto_5

    .line 171
    :cond_4
    :goto_3
    iget-wide v9, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v20, v9, v15

    if-lez v20, :cond_5

    .line 172
    iput v14, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 173
    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v9

    iput v9, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    move-object/from16 v9, p8

    .line 174
    invoke-virtual {v1, v11, v9, v2, v6}, Lorg/thoughtcrime/securesms/video/recode/MP4Builder;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)Z

    goto :goto_4

    :cond_5
    move-object/from16 v9, p8

    .line 178
    :goto_4
    iget-wide v12, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-wide v15, v12

    goto :goto_5

    :cond_6
    move-object/from16 v9, p8

    :goto_5
    if-nez v8, :cond_9

    .line 184
    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_6

    :cond_7
    move-object v9, v10

    const/4 v10, -0x1

    if-ne v8, v10, :cond_8

    const/4 v8, 0x1

    goto :goto_6

    .line 189
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaExtractor;->advance()Z

    const/4 v8, 0x0

    :cond_9
    :goto_6
    if-eqz v8, :cond_a

    const/16 v17, 0x1

    :cond_a
    move-object v10, v9

    const-wide/16 v12, 0x0

    goto :goto_1

    .line 196
    :cond_b
    invoke-virtual {v0, v7}, Landroid/media/MediaExtractor;->unselectTrack(I)V

    return-wide v18

    :cond_c
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private static selectCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;
    .locals 9

    .line 81
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_5

    .line 84
    invoke-static {v3}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v4

    .line 85
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_2

    .line 88
    :cond_0
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v5

    .line 89
    array-length v6, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_4

    aget-object v8, v5, v7

    .line 90
    invoke-virtual {v8, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 92
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v8, "OMX.SEC.avc.enc"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v4

    .line 94
    :cond_1
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v8, "OMX.SEC.AVC.Encoder"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v4

    :cond_2
    move-object v1, v4

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return-object v1
.end method

.method private static selectColorFormat(Landroid/media/MediaCodecInfo;Ljava/lang/String;)I
    .locals 4

    .line 118
    invoke-virtual {p0, p1}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 120
    :goto_0
    iget-object v2, p1, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 121
    iget-object v2, p1, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    aget v2, v2, v0

    .line 122
    invoke-static {v2}, Lorg/thoughtcrime/securesms/video/recode/VideoRecoder;->isRecognizedFormat(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 124
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "OMX.SEC.AVC.Encoder"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x13

    if-eq v2, v1, :cond_0

    goto :goto_1

    :cond_0
    move v1, v2

    goto :goto_2

    :cond_1
    :goto_1
    return v2

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method private selectTrack(Landroid/media/MediaExtractor;Z)I
    .locals 4

    .line 62
    invoke-virtual {p1}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 64
    invoke-virtual {p1, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v2

    const-string v3, "mime"

    .line 65
    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz p2, :cond_0

    const-string v3, "audio/"

    .line 67
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_0
    const-string v3, "video/"

    .line 71
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x5

    return p1
.end method
