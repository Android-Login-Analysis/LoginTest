.class Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$1;
.super Ljava/lang/Object;
.source "FrameSeqDecoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;


# direct methods
.method constructor <init>(Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$1;->this$0:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 55
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$1;->this$0:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;

    invoke-static {v0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->access$000(Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$1;->this$0:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;

    invoke-static {v0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->access$100(Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 60
    iget-object v2, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$1;->this$0:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;

    invoke-static {v2}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->access$200(Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;)J

    move-result-wide v2

    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    .line 62
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$1;->this$0:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;

    invoke-static {v0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->access$300(Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v6, 0x0

    sub-long/2addr v2, v4

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 63
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$1;->this$0:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;

    invoke-static {v0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->access$400(Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$RenderListener;

    .line 64
    iget-object v2, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$1;->this$0:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;

    iget-object v2, v2, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->frameBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {v1, v2}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$RenderListener;->onRender(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$1;->this$0:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;

    invoke-virtual {v0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->stop()V

    :cond_2
    return-void
.end method
