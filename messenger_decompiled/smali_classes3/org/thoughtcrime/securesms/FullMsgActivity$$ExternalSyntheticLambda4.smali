.class public final synthetic Lorg/thoughtcrime/securesms/FullMsgActivity$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/ref/WeakReference;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/FullMsgActivity$$ExternalSyntheticLambda4;->f$0:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/thoughtcrime/securesms/FullMsgActivity$$ExternalSyntheticLambda4;->f$0:Ljava/lang/ref/WeakReference;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/FullMsgActivity;->lambda$loadHtmlAsync$1(Ljava/lang/ref/WeakReference;)V

    return-void
.end method
