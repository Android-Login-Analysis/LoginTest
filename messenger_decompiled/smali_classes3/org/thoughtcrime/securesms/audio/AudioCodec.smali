.class public Lorg/thoughtcrime/securesms/audio/AudioCodec;
.super Ljava/lang/Object;
.source "AudioCodec.java"


# static fields
.field private static final BIT_RATE_BALANCED:I = 0x7d00

.field private static final BIT_RATE_WORSE:I = 0x5dc0

.field private static final CHANNELS:I = 0x1

.field private static final SAMPLE_RATE:I = 0xac44

.field private static final SAMPLE_RATE_INDEX:I = 0x4

.field private static final TAG:Ljava/lang/String; = "AudioCodec"


# instance fields
.field private final audioRecord:Landroid/media/AudioRecord;

.field private final bufferSize:I

.field private finished:Z

.field private final mediaCodec:Landroid/media/MediaCodec;

.field private running:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lorg/thoughtcrime/securesms/audio/AudioCodec;->running:Z

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lorg/thoughtcrime/securesms/audio/AudioCodec;->finished:Z

    const/16 v0, 0x10

    const/4 v1, 0x2

    const v2, 0xac44

    .line 37
    invoke-static {v2, v0, v1}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lorg/thoughtcrime/securesms/audio/AudioCodec;->bufferSize:I

    .line 38
    invoke-direct {p0, v0}, Lorg/thoughtcrime/securesms/audio/AudioCodec;->createAudioRecord(I)Landroid/media/AudioRecord;

    move-result-object v1

    iput-object v1, p0, Lorg/thoughtcrime/securesms/audio/AudioCodec;->audioRecord:Landroid/media/AudioRecord;

    .line 39
    invoke-direct {p0, p1, v0}, Lorg/thoughtcrime/securesms/audio/AudioCodec;->createMediaCodec(Landroid/content/Context;I)Landroid/media/MediaCodec;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/audio/AudioCodec;->mediaCodec:Landroid/media/MediaCodec;

    .line 41
    invoke-virtual {p1}, Landroid/media/MediaCodec;->start()V

    .line 44
    :try_start_0
    invoke-virtual {v1}, Landroid/media/AudioRecord;->startRecording()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 46
    sget-object v0, Lorg/thoughtcrime/securesms/audio/AudioCodec;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 47
    iget-object v0, p0, Lorg/thoughtcrime/securesms/audio/AudioCodec;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 48
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method static synthetic access$000(Lorg/thoughtcrime/securesms/audio/AudioCodec;)I
    .locals 0

    .line 19
    iget p0, p0, Lorg/thoughtcrime/securesms/audio/AudioCodec;->bufferSize:I

    return p0
.end method

.method static synthetic access$100(Lorg/thoughtcrime/securesms/audio/AudioCodec;)Landroid/media/MediaCodec;
    .locals 0

    .line 19
    iget-object p0, p0, Lorg/thoughtcrime/securesms/audio/AudioCodec;->mediaCodec:Landroid/media/MediaCodec;

    return-object p0
.end method

.method static synthetic access$200(Lorg/thoughtcrime/securesms/audio/AudioCodec;)Z
    .locals 0

    .line 19
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/audio/AudioCodec;->isRunning()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lorg/thoughtcrime/securesms/audio/AudioCodec;)Landroid/media/AudioRecord;
    .locals 0

    .line 19
    iget-object p0, p0, Lorg/thoughtcrime/securesms/audio/AudioCodec;->audioRecord:Landroid/media/AudioRecord;

    return-object p0
.end method

.method static synthetic access$400(Lorg/thoughtcrime/securesms/audio/AudioCodec;Landroid/media/AudioRecord;[BLandroid/media/MediaCodec;[Ljava/nio/ByteBuffer;Z)V
    .locals 0

    .line 19
    invoke-direct/range {p0 .. p5}, Lorg/thoughtcrime/securesms/audio/AudioCodec;->handleCodecInput(Landroid/media/AudioRecord;[BLandroid/media/MediaCodec;[Ljava/nio/ByteBuffer;Z)V

    return-void
.end method

.method static synthetic access$500(Lorg/thoughtcrime/securesms/audio/AudioCodec;Landroid/media/MediaCodec;[Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/thoughtcrime/securesms/audio/AudioCodec;->handleCodecOutput(Landroid/media/MediaCodec;[Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Ljava/io/OutputStream;)V

    return-void
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .line 19
    sget-object v0, Lorg/thoughtcrime/securesms/audio/AudioCodec;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lorg/thoughtcrime/securesms/audio/AudioCodec;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/audio/AudioCodec;->setFinished()V

    return-void
.end method

.method private createAdtsHeader(I)[B
    .locals 6

    const/4 v0, 0x7

    add-int/2addr p1, v0

    new-array v1, v0, [B

    const/4 v2, -0x1

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    const/4 v2, 0x1

    const/16 v4, -0xf

    aput-byte v4, v1, v2

    const/4 v2, 0x2

    const/16 v4, 0x40

    aput-byte v4, v1, v2

    or-int/lit8 v5, v4, 0x10

    int-to-byte v5, v5

    aput-byte v5, v1, v2

    or-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    shr-int/lit8 v2, p1, 0xb

    const/4 v3, 0x3

    and-int/2addr v2, v3

    or-int/2addr v2, v4

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    shr-int/lit8 v2, p1, 0x3

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x4

    aput-byte v2, v1, v3

    and-int/2addr p1, v0

    const/4 v0, 0x5

    shl-int/2addr p1, v0

    or-int/lit8 p1, p1, 0x1f

    int-to-byte p1, p1

    aput-byte p1, v1, v0

    const/4 p1, 0x6

    const/4 v0, -0x4

    aput-byte v0, v1, p1

    return-object v1
.end method

.method private createAudioRecord(I)Landroid/media/AudioRecord;
    .locals 7

    .line 171
    new-instance v6, Landroid/media/AudioRecord;

    const/4 v1, 0x1

    const v2, 0xac44

    const/16 v3, 0x10

    const/4 v4, 0x2

    mul-int/lit8 v5, p1, 0xa

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    return-object v6
.end method

.method private createMediaCodec(Landroid/content/Context;I)Landroid/media/MediaCodec;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "audio/mp4a-latm"

    .line 177
    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    .line 178
    new-instance v2, Landroid/media/MediaFormat;

    invoke-direct {v2}, Landroid/media/MediaFormat;-><init>()V

    const-string v3, "mime"

    .line 180
    invoke-virtual {v2, v3, v0}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sample-rate"

    const v3, 0xac44

    .line 181
    invoke-virtual {v2, v0, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v0, "channel-count"

    const/4 v3, 0x1

    .line 182
    invoke-virtual {v2, v0, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v0, "max-input-size"

    .line 183
    invoke-virtual {v2, v0, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 184
    invoke-static {p1}, Lorg/thoughtcrime/securesms/util/Prefs;->isHardCompressionEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x5dc0

    goto :goto_0

    :cond_0
    const/16 p1, 0x7d00

    :goto_0
    const-string p2, "bitrate"

    invoke-virtual {v2, p2, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p1, "aac-profile"

    const/4 p2, 0x2

    .line 185
    invoke-virtual {v2, p1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 188
    :try_start_0
    invoke-virtual {v1, v2, p1, p1, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 190
    sget-object p2, Lorg/thoughtcrime/securesms/audio/AudioCodec;->TAG:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 191
    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    .line 192
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private handleCodecInput(Landroid/media/AudioRecord;[BLandroid/media/MediaCodec;[Ljava/nio/ByteBuffer;Z)V
    .locals 9

    .line 104
    array-length v0, p2

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v0}, Landroid/media/AudioRecord;->read([BII)I

    move-result v5

    const-wide/16 v2, 0x2710

    .line 105
    invoke-virtual {p3, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v3

    if-ltz v3, :cond_1

    .line 108
    aget-object p1, p4, v3

    .line 109
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 110
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    const-wide/16 v6, 0x0

    if-eqz p5, :cond_0

    const/4 v8, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    const/4 v8, 0x4

    :goto_0
    move-object v2, p3

    .line 111
    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    :cond_1
    return-void
.end method

.method private handleCodecOutput(Landroid/media/MediaCodec;[Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Ljava/io/OutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 121
    invoke-virtual {p1, p3, v0, v1}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v2

    :goto_0
    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    if-ltz v2, :cond_1

    .line 125
    aget-object v3, p2, v2

    .line 127
    iget v4, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 128
    iget v4, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v5, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 130
    iget v4, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v5, 0x2

    and-int/2addr v4, v5

    if-eq v4, v5, :cond_0

    .line 131
    iget v4, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget v5, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    sub-int/2addr v4, v5

    invoke-direct {p0, v4}, Lorg/thoughtcrime/securesms/audio/AudioCodec;->createAdtsHeader(I)[B

    move-result-object v4

    .line 134
    invoke-virtual {p4, v4}, Ljava/io/OutputStream;->write([B)V

    .line 136
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    new-array v4, v4, [B

    .line 137
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 138
    invoke-virtual {p4, v4}, Ljava/io/OutputStream;->write([B)V

    .line 141
    :cond_0
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    const/4 v3, 0x0

    .line 143
    invoke-virtual {p1, v2, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto :goto_1

    :cond_1
    const/4 v3, -0x3

    if-ne v2, v3, :cond_2

    .line 145
    invoke-virtual {p1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 148
    :cond_2
    :goto_1
    invoke-virtual {p1, p3, v0, v1}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v2

    goto :goto_0

    :cond_3
    return-void
.end method

.method private declared-synchronized isRunning()Z
    .locals 1

    monitor-enter p0

    .line 92
    :try_start_0
    iget-boolean v0, p0, Lorg/thoughtcrime/securesms/audio/AudioCodec;->running:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setFinished()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 96
    :try_start_0
    iput-boolean v0, p0, Lorg/thoughtcrime/securesms/audio/AudioCodec;->finished:Z

    .line 97
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public start(Ljava/io/OutputStream;)V
    .locals 2

    .line 58
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/thoughtcrime/securesms/audio/AudioCodec$1;

    invoke-direct {v1, p0, p1}, Lorg/thoughtcrime/securesms/audio/AudioCodec$1;-><init>(Lorg/thoughtcrime/securesms/audio/AudioCodec;Ljava/io/OutputStream;)V

    const-string p1, "AudioCodec"

    .line 88
    invoke-direct {v0, v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public declared-synchronized stop()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 53
    :try_start_0
    iput-boolean v0, p0, Lorg/thoughtcrime/securesms/audio/AudioCodec;->running:Z

    .line 54
    :goto_0
    iget-boolean v0, p0, Lorg/thoughtcrime/securesms/audio/AudioCodec;->finished:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lorg/thoughtcrime/securesms/util/Util;->wait(Ljava/lang/Object;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 55
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method
