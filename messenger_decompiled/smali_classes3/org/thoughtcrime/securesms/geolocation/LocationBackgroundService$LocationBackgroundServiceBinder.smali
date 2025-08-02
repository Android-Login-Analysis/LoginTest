.class Lorg/thoughtcrime/securesms/geolocation/LocationBackgroundService$LocationBackgroundServiceBinder;
.super Landroid/os/Binder;
.source "LocationBackgroundService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/geolocation/LocationBackgroundService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LocationBackgroundServiceBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/geolocation/LocationBackgroundService;


# direct methods
.method constructor <init>(Lorg/thoughtcrime/securesms/geolocation/LocationBackgroundService;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lorg/thoughtcrime/securesms/geolocation/LocationBackgroundService$LocationBackgroundServiceBinder;->this$0:Lorg/thoughtcrime/securesms/geolocation/LocationBackgroundService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method getService()Lorg/thoughtcrime/securesms/geolocation/LocationBackgroundService$LocationBackgroundServiceBinder;
    .locals 0

    return-object p0
.end method

.method stop()V
    .locals 1

    .line 106
    invoke-static {}, Lorg/thoughtcrime/securesms/geolocation/DcLocation;->getInstance()Lorg/thoughtcrime/securesms/geolocation/DcLocation;

    move-result-object v0

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/geolocation/DcLocation;->reset()V

    .line 107
    iget-object v0, p0, Lorg/thoughtcrime/securesms/geolocation/LocationBackgroundService$LocationBackgroundServiceBinder;->this$0:Lorg/thoughtcrime/securesms/geolocation/LocationBackgroundService;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/geolocation/LocationBackgroundService;->stopSelf()V

    return-void
.end method
