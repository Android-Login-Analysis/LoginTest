.class Lorg/thoughtcrime/securesms/geolocation/LocationBackgroundService$ServiceLocationListener;
.super Ljava/lang/Object;
.source "LocationBackgroundService.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/geolocation/LocationBackgroundService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceLocationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/geolocation/LocationBackgroundService;


# direct methods
.method private constructor <init>(Lorg/thoughtcrime/securesms/geolocation/LocationBackgroundService;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lorg/thoughtcrime/securesms/geolocation/LocationBackgroundService$ServiceLocationListener;->this$0:Lorg/thoughtcrime/securesms/geolocation/LocationBackgroundService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/thoughtcrime/securesms/geolocation/LocationBackgroundService;Lorg/thoughtcrime/securesms/geolocation/LocationBackgroundService$1;)V
    .locals 0

    .line 111
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/geolocation/LocationBackgroundService$ServiceLocationListener;-><init>(Lorg/thoughtcrime/securesms/geolocation/LocationBackgroundService;)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 3

    .line 115
    invoke-static {}, Lorg/thoughtcrime/securesms/geolocation/LocationBackgroundService;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onLocationChanged: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    .line 119
    :cond_0
    invoke-static {}, Lorg/thoughtcrime/securesms/geolocation/DcLocation;->getInstance()Lorg/thoughtcrime/securesms/geolocation/DcLocation;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/geolocation/DcLocation;->updateLocation(Landroid/location/Location;)V

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 3

    .line 124
    invoke-static {}, Lorg/thoughtcrime/securesms/geolocation/LocationBackgroundService;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onProviderDisabled: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 3

    .line 129
    invoke-static {}, Lorg/thoughtcrime/securesms/geolocation/LocationBackgroundService;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onProviderEnabled: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 2

    .line 134
    invoke-static {}, Lorg/thoughtcrime/securesms/geolocation/LocationBackgroundService;->access$100()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onStatusChanged: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " status: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
