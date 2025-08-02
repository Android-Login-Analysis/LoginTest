.class public interface abstract Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$RenderListener;
.super Ljava/lang/Object;
.source "FrameSeqDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RenderListener"
.end annotation


# virtual methods
.method public abstract onEnd()V
.end method

.method public abstract onRender(Ljava/nio/ByteBuffer;)V
.end method

.method public abstract onStart()V
.end method
