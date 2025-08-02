.class Lcom/github/penfeizhou/animation/executor/FrameDecoderExecutor$Inner;
.super Ljava/lang/Object;
.source "FrameDecoderExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/penfeizhou/animation/executor/FrameDecoderExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Inner"
.end annotation


# static fields
.field static final sInstance:Lcom/github/penfeizhou/animation/executor/FrameDecoderExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Lcom/github/penfeizhou/animation/executor/FrameDecoderExecutor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/github/penfeizhou/animation/executor/FrameDecoderExecutor;-><init>(Lcom/github/penfeizhou/animation/executor/FrameDecoderExecutor$1;)V

    sput-object v0, Lcom/github/penfeizhou/animation/executor/FrameDecoderExecutor$Inner;->sInstance:Lcom/github/penfeizhou/animation/executor/FrameDecoderExecutor;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
