.class Lorg/thoughtcrime/securesms/util/ListenableFutureTask$2;
.super Ljava/lang/Object;
.source "ListenableFutureTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/thoughtcrime/securesms/util/ListenableFutureTask;->callback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/util/ListenableFutureTask;


# direct methods
.method constructor <init>(Lorg/thoughtcrime/securesms/util/ListenableFutureTask;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lorg/thoughtcrime/securesms/util/ListenableFutureTask$2;->this$0:Lorg/thoughtcrime/securesms/util/ListenableFutureTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 90
    iget-object v0, p0, Lorg/thoughtcrime/securesms/util/ListenableFutureTask$2;->this$0:Lorg/thoughtcrime/securesms/util/ListenableFutureTask;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/util/ListenableFutureTask;->access$000(Lorg/thoughtcrime/securesms/util/ListenableFutureTask;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/thoughtcrime/securesms/util/FutureTaskListener;

    .line 91
    iget-object v2, p0, Lorg/thoughtcrime/securesms/util/ListenableFutureTask$2;->this$0:Lorg/thoughtcrime/securesms/util/ListenableFutureTask;

    invoke-static {v2, v1}, Lorg/thoughtcrime/securesms/util/ListenableFutureTask;->access$100(Lorg/thoughtcrime/securesms/util/ListenableFutureTask;Lorg/thoughtcrime/securesms/util/FutureTaskListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method
