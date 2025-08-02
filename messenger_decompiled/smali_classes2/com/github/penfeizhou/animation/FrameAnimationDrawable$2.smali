.class Lcom/github/penfeizhou/animation/FrameAnimationDrawable$2;
.super Ljava/lang/Object;
.source "FrameAnimationDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/penfeizhou/animation/FrameAnimationDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/penfeizhou/animation/FrameAnimationDrawable;


# direct methods
.method constructor <init>(Lcom/github/penfeizhou/animation/FrameAnimationDrawable;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/github/penfeizhou/animation/FrameAnimationDrawable$2;->this$0:Lcom/github/penfeizhou/animation/FrameAnimationDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/github/penfeizhou/animation/FrameAnimationDrawable$2;->this$0:Lcom/github/penfeizhou/animation/FrameAnimationDrawable;

    invoke-virtual {v0}, Lcom/github/penfeizhou/animation/FrameAnimationDrawable;->invalidateSelf()V

    return-void
.end method
