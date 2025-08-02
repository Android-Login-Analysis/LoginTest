.class Lorg/thoughtcrime/securesms/audio/AudioCodec$1;
.super Ljava/lang/Object;
.source "AudioCodec.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/thoughtcrime/securesms/audio/AudioCodec;->start(Ljava/io/OutputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/audio/AudioCodec;

.field final synthetic val$outputStream:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Lorg/thoughtcrime/securesms/audio/AudioCodec;Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 58
    iput-object p1, p0, Lorg/thoughtcrime/securesms/audio/AudioCodec$1;->this$0:Lorg/thoughtcrime/securesms/audio/AudioCodec;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/audio/AudioCodec$1;->val$outputStream:Ljava/io/OutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 61
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 62
    iget-object v1, p0, Lorg/thoughtcrime/securesms/audio/AudioCodec$1;->this$0:Lorg/thoughtcrime/securesms/audio/AudioCodec;

    invoke-static {v1}, Lorg/thoughtcrime/securesms/audio/AudioCodec;->access$000(Lorg/thoughtcrime/securesms/audio/AudioCodec;)I

    move-result v1

    new-array v1, v1, [B

    .line 63
    iget-object v2, p0, Lorg/thoughtcrime/securesms/audio/AudioCodec$1;->this$0:Lorg/thoughtcrime/securesms/audio/AudioCodec;

    invoke-static {v2}, Lorg/thoughtcrime/securesms/audio/AudioCodec;->access$100(Lorg/thoughtcrime/securesms/audio/AudioCodec;)Landroid/media/MediaCodec;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 64
    iget-object v2, p0, Lorg/thoughtcrime/securesms/audio/AudioCodec$1;->this$0:Lorg/thoughtcrime/securesms/audio/AudioCodec;

    invoke-static {v2}, Lorg/thoughtcrime/securesms/audio/AudioCodec;->access$100(Lorg/thoughtcrime/securesms/audio/AudioCodec;)Landroid/media/MediaCodec;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 68
    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/thoughtcrime/securesms/audio/AudioCodec$1;->this$0:Lorg/thoughtcrime/securesms/audio/AudioCodec;

    invoke-static {v2}, Lorg/thoughtcrime/securesms/audio/AudioCodec;->access$200(Lorg/thoughtcrime/securesms/audio/AudioCodec;)Z

    move-result v10

    .line 70
    iget-object v2, p0, Lorg/thoughtcrime/securesms/audio/AudioCodec$1;->this$0:Lorg/thoughtcrime/securesms/audio/AudioCodec;

    invoke-static {v2}, Lorg/thoughtcrime/securesms/audio/AudioCodec;->access$300(Lorg/thoughtcrime/securesms/audio/AudioCodec;)Landroid/media/AudioRecord;

    move-result-object v3

    iget-object v4, p0, Lorg/thoughtcrime/securesms/audio/AudioCodec$1;->this$0:Lorg/thoughtcrime/securesms/audio/AudioCodec;

    invoke-static {v4}, Lorg/thoughtcrime/securesms/audio/AudioCodec;->access$100(Lorg/thoughtcrime/securesms/audio/AudioCodec;)Landroid/media/MediaCodec;

    move-result-object v5

    move-object v4, v1

    move-object v6, v8

    move v7, v10

    invoke-static/range {v2 .. v7}, Lorg/thoughtcrime/securesms/audio/AudioCodec;->access$400(Lorg/thoughtcrime/securesms/audio/AudioCodec;Landroid/media/AudioRecord;[BLandroid/media/MediaCodec;[Ljava/nio/ByteBuffer;Z)V

    .line 71
    iget-object v2, p0, Lorg/thoughtcrime/securesms/audio/AudioCodec$1;->this$0:Lorg/thoughtcrime/securesms/audio/AudioCodec;

    invoke-static {v2}, Lorg/thoughtcrime/securesms/audio/AudioCodec;->access$100(Lorg/thoughtcrime/securesms/audio/AudioCodec;)Landroid/media/MediaCodec;

    move-result-object v3

    iget-object v4, p0, Lorg/thoughtcrime/securesms/audio/AudioCodec$1;->val$outputStream:Ljava/io/OutputStream;

    invoke-static {v2, v3, v9, v0, v4}, Lorg/thoughtcrime/securesms/audio/AudioCodec;->access$500(Lorg/thoughtcrime/securesms/audio/AudioCodec;Landroid/media/MediaCodec;[Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v10, :cond_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 76
    :try_start_1
    invoke-static {}, Lorg/thoughtcrime/securesms/audio/AudioCodec;->access$600()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    :goto_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/audio/AudioCodec$1;->this$0:Lorg/thoughtcrime/securesms/audio/AudioCodec;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/audio/AudioCodec;->access$100(Lorg/thoughtcrime/securesms/audio/AudioCodec;)Landroid/media/MediaCodec;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 79
    iget-object v0, p0, Lorg/thoughtcrime/securesms/audio/AudioCodec$1;->this$0:Lorg/thoughtcrime/securesms/audio/AudioCodec;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/audio/AudioCodec;->access$300(Lorg/thoughtcrime/securesms/audio/AudioCodec;)Landroid/media/AudioRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 81
    iget-object v0, p0, Lorg/thoughtcrime/securesms/audio/AudioCodec$1;->this$0:Lorg/thoughtcrime/securesms/audio/AudioCodec;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/audio/AudioCodec;->access$100(Lorg/thoughtcrime/securesms/audio/AudioCodec;)Landroid/media/MediaCodec;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 82
    iget-object v0, p0, Lorg/thoughtcrime/securesms/audio/AudioCodec$1;->this$0:Lorg/thoughtcrime/securesms/audio/AudioCodec;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/audio/AudioCodec;->access$300(Lorg/thoughtcrime/securesms/audio/AudioCodec;)Landroid/media/AudioRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 84
    iget-object v0, p0, Lorg/thoughtcrime/securesms/audio/AudioCodec$1;->val$outputStream:Ljava/io/OutputStream;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/util/Util;->close(Ljava/io/OutputStream;)V

    .line 85
    iget-object v0, p0, Lorg/thoughtcrime/securesms/audio/AudioCodec$1;->this$0:Lorg/thoughtcrime/securesms/audio/AudioCodec;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/audio/AudioCodec;->access$700(Lorg/thoughtcrime/securesms/audio/AudioCodec;)V

    return-void

    .line 78
    :goto_1
    iget-object v1, p0, Lorg/thoughtcrime/securesms/audio/AudioCodec$1;->this$0:Lorg/thoughtcrime/securesms/audio/AudioCodec;

    invoke-static {v1}, Lorg/thoughtcrime/securesms/audio/AudioCodec;->access$100(Lorg/thoughtcrime/securesms/audio/AudioCodec;)Landroid/media/MediaCodec;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V

    .line 79
    iget-object v1, p0, Lorg/thoughtcrime/securesms/audio/AudioCodec$1;->this$0:Lorg/thoughtcrime/securesms/audio/AudioCodec;

    invoke-static {v1}, Lorg/thoughtcrime/securesms/audio/AudioCodec;->access$300(Lorg/thoughtcrime/securesms/audio/AudioCodec;)Landroid/media/AudioRecord;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioRecord;->stop()V

    .line 81
    iget-object v1, p0, Lorg/thoughtcrime/securesms/audio/AudioCodec$1;->this$0:Lorg/thoughtcrime/securesms/audio/AudioCodec;

    invoke-static {v1}, Lorg/thoughtcrime/securesms/audio/AudioCodec;->access$100(Lorg/thoughtcrime/securesms/audio/AudioCodec;)Landroid/media/MediaCodec;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    .line 82
    iget-object v1, p0, Lorg/thoughtcrime/securesms/audio/AudioCodec$1;->this$0:Lorg/thoughtcrime/securesms/audio/AudioCodec;

    invoke-static {v1}, Lorg/thoughtcrime/securesms/audio/AudioCodec;->access$300(Lorg/thoughtcrime/securesms/audio/AudioCodec;)Landroid/media/AudioRecord;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioRecord;->release()V

    .line 84
    iget-object v1, p0, Lorg/thoughtcrime/securesms/audio/AudioCodec$1;->val$outputStream:Ljava/io/OutputStream;

    invoke-static {v1}, Lorg/thoughtcrime/securesms/util/Util;->close(Ljava/io/OutputStream;)V

    .line 85
    iget-object v1, p0, Lorg/thoughtcrime/securesms/audio/AudioCodec$1;->this$0:Lorg/thoughtcrime/securesms/audio/AudioCodec;

    invoke-static {v1}, Lorg/thoughtcrime/securesms/audio/AudioCodec;->access$700(Lorg/thoughtcrime/securesms/audio/AudioCodec;)V

    .line 86
    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method
