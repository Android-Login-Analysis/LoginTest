.class Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$9;
.super Ljava/lang/Object;
.source "FrameSeqDecoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->setDesiredSize(II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;

.field final synthetic val$sample:I

.field final synthetic val$tempRunning:Z


# direct methods
.method constructor <init>(Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;IZ)V
    .locals 0

    .line 445
    iput-object p1, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$9;->this$0:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;

    iput p2, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$9;->val$sample:I

    iput-boolean p3, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$9;->val$tempRunning:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 448
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$9;->this$0:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;

    invoke-static {v0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->access$1000(Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;)V

    .line 450
    :try_start_0
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$9;->this$0:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;

    iget v1, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$9;->val$sample:I

    iput v1, v0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->sampleSize:I

    .line 451
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$9;->this$0:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;

    invoke-static {v0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->access$600(Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;)Lcom/github/penfeizhou/animation/loader/Loader;

    move-result-object v1

    invoke-interface {v1}, Lcom/github/penfeizhou/animation/loader/Loader;->obtain()Lcom/github/penfeizhou/animation/io/Reader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->getReader(Lcom/github/penfeizhou/animation/io/Reader;)Lcom/github/penfeizhou/animation/io/Reader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->read(Lcom/github/penfeizhou/animation/io/Reader;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->access$700(Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;Landroid/graphics/Rect;)V

    .line 452
    iget-boolean v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$9;->val$tempRunning:Z

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$9;->this$0:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;

    invoke-static {v0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->access$900(Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 456
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
