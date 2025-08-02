.class Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$7;
.super Ljava/lang/Object;
.source "FrameSeqDecoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->stop()V
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

    .line 381
    iput-object p1, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$7;->this$0:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 384
    iget-object v0, p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$7;->this$0:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;

    invoke-static {v0}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;->access$1000(Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;)V

    return-void
.end method
