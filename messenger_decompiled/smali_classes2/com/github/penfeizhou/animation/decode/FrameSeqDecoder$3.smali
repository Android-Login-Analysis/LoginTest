.class Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$3;
.super Ljava/lang/Object;
.source "FrameSeqDecoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->removeRenderListener(Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$RenderListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;

.field final synthetic val$renderListener:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$RenderListener;


# direct methods
.method constructor <init>(Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$RenderListener;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$3;->this$0:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;

    iput-object p2, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$3;->val$renderListener:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$RenderListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$3;->this$0:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;

    invoke-static {v0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->access$400(Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$3;->val$renderListener:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$RenderListener;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
