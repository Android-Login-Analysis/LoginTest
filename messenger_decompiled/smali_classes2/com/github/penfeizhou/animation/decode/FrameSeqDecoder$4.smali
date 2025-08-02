.class Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$4;
.super Ljava/lang/Object;
.source "FrameSeqDecoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->stopIfNeeded()V
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

    .line 207
    iput-object p1, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$4;->this$0:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$4;->this$0:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;

    invoke-static {v0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->access$400(Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$4;->this$0:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;

    invoke-virtual {v0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->stop()V

    :cond_0
    return-void
.end method
