.class Lorg/thoughtcrime/securesms/geolocation/DcLocationManager$1;
.super Ljava/lang/Object;
.source "DcLocationManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/geolocation/DcLocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/geolocation/DcLocationManager;


# direct methods
.method constructor <init>(Lorg/thoughtcrime/securesms/geolocation/DcLocationManager;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lorg/thoughtcrime/securesms/geolocation/DcLocationManager$1;->this$0:Lorg/thoughtcrime/securesms/geolocation/DcLocationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 29
    invoke-static {}, Lorg/thoughtcrime/securesms/geolocation/DcLocationManager;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "background service connected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    iget-object p1, p0, Lorg/thoughtcrime/securesms/geolocation/DcLocationManager$1;->this$0:Lorg/thoughtcrime/securesms/geolocation/DcLocationManager;

    check-cast p2, Lorg/thoughtcrime/securesms/geolocation/LocationBackgroundService$LocationBackgroundServiceBinder;

    invoke-static {p1, p2}, Lorg/thoughtcrime/securesms/geolocation/DcLocationManager;->access$102(Lorg/thoughtcrime/securesms/geolocation/DcLocationManager;Lorg/thoughtcrime/securesms/geolocation/LocationBackgroundService$LocationBackgroundServiceBinder;)Lorg/thoughtcrime/securesms/geolocation/LocationBackgroundService$LocationBackgroundServiceBinder;

    .line 31
    :goto_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/geolocation/DcLocationManager$1;->this$0:Lorg/thoughtcrime/securesms/geolocation/DcLocationManager;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/geolocation/DcLocationManager;->access$200(Lorg/thoughtcrime/securesms/geolocation/DcLocationManager;)Ljava/util/LinkedList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 32
    iget-object p1, p0, Lorg/thoughtcrime/securesms/geolocation/DcLocationManager$1;->this$0:Lorg/thoughtcrime/securesms/geolocation/DcLocationManager;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/geolocation/DcLocationManager;->access$200(Lorg/thoughtcrime/securesms/geolocation/DcLocationManager;)Ljava/util/LinkedList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/geolocation/DcLocationManager;->shareLastLocation(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 38
    invoke-static {}, Lorg/thoughtcrime/securesms/geolocation/DcLocationManager;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "background service disconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget-object p1, p0, Lorg/thoughtcrime/securesms/geolocation/DcLocationManager$1;->this$0:Lorg/thoughtcrime/securesms/geolocation/DcLocationManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/thoughtcrime/securesms/geolocation/DcLocationManager;->access$102(Lorg/thoughtcrime/securesms/geolocation/DcLocationManager;Lorg/thoughtcrime/securesms/geolocation/LocationBackgroundService$LocationBackgroundServiceBinder;)Lorg/thoughtcrime/securesms/geolocation/LocationBackgroundService$LocationBackgroundServiceBinder;

    return-void
.end method
