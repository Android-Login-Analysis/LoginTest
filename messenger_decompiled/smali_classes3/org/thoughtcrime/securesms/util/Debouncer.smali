.class public Lorg/thoughtcrime/securesms/util/Debouncer;
.super Ljava/lang/Object;
.source "Debouncer.java"


# instance fields
.field private final handler:Landroid/os/Handler;

.field private final threshold:J


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/util/Debouncer;->handler:Landroid/os/Handler;

    .line 25
    iput-wide p1, p0, Lorg/thoughtcrime/securesms/util/Debouncer;->threshold:J

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 34
    iget-object v0, p0, Lorg/thoughtcrime/securesms/util/Debouncer;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public publish(Ljava/lang/Runnable;)V
    .locals 3

    .line 29
    iget-object v0, p0, Lorg/thoughtcrime/securesms/util/Debouncer;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 30
    iget-object v0, p0, Lorg/thoughtcrime/securesms/util/Debouncer;->handler:Landroid/os/Handler;

    iget-wide v1, p0, Lorg/thoughtcrime/securesms/util/Debouncer;->threshold:J

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
