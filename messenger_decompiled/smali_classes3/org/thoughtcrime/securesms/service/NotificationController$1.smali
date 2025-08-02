.class Lorg/thoughtcrime/securesms/service/NotificationController$1;
.super Ljava/lang/Object;
.source "NotificationController.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/thoughtcrime/securesms/service/NotificationController;-><init>(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/service/NotificationController;


# direct methods
.method constructor <init>(Lorg/thoughtcrime/securesms/service/NotificationController;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lorg/thoughtcrime/securesms/service/NotificationController$1;->this$0:Lorg/thoughtcrime/securesms/service/NotificationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 39
    check-cast p2, Lorg/thoughtcrime/securesms/service/GenericForegroundService$LocalBinder;

    .line 40
    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/service/GenericForegroundService$LocalBinder;->getService()Lorg/thoughtcrime/securesms/service/GenericForegroundService;

    move-result-object p1

    .line 42
    iget-object p2, p0, Lorg/thoughtcrime/securesms/service/NotificationController$1;->this$0:Lorg/thoughtcrime/securesms/service/NotificationController;

    invoke-static {p2}, Lorg/thoughtcrime/securesms/service/NotificationController;->access$000(Lorg/thoughtcrime/securesms/service/NotificationController;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 44
    iget-object p1, p0, Lorg/thoughtcrime/securesms/service/NotificationController$1;->this$0:Lorg/thoughtcrime/securesms/service/NotificationController;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/service/NotificationController;->access$100(Lorg/thoughtcrime/securesms/service/NotificationController;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 49
    iget-object p1, p0, Lorg/thoughtcrime/securesms/service/NotificationController$1;->this$0:Lorg/thoughtcrime/securesms/service/NotificationController;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/service/NotificationController;->access$000(Lorg/thoughtcrime/securesms/service/NotificationController;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method
