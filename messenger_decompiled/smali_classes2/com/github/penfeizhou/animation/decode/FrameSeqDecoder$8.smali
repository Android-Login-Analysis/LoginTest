.class Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$8;
.super Ljava/lang/Object;
.source "FrameSeqDecoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->reset()V
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

    .line 412
    iput-object p1, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$8;->this$0:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 415
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$8;->this$0:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->access$1102(Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;I)I

    .line 416
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$8;->this$0:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;

    const/4 v2, -0x1

    iput v2, v0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->frameIndex:I

    .line 417
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$8;->this$0:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;

    invoke-static {v0, v1}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->access$1202(Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;Z)Z

    return-void
.end method
