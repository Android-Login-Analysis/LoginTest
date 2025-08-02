.class public Lorg/thoughtcrime/securesms/geolocation/LocationBackgroundService;
.super Landroid/app/Service;
.source "LocationBackgroundService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/geolocation/LocationBackgroundService$LocationBackgroundServiceBinder;,
        Lorg/thoughtcrime/securesms/geolocation/LocationBackgroundService$ServiceLocationListener;
    }
.end annotation


# static fields
.field private static final INITIAL_TIMEOUT:I = 0x1d4c0

.field private static final LOCATION_DISTANCE:F = 25.0f

.field private static final LOCATION_INTERVAL:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "LocationBackgroundService"


# instance fields
.field locationListener:Lorg/thoughtcrime/securesms/geolocation/LocationBackgroundService$ServiceLocationListener;

.field private locationManager:Landroid/location/LocationManager;

.field private final mBinder:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lorg/thoughtcrime/securesms/geolocation/LocationBackgroundService;->locationManager:Landroid/location/LocationManager;

    .line 24
    new-instance v0, Lorg/thoughtcrime/securesms/geolocation/LocationBackgroundService$LocationBackgroundServiceBinder;

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/geolocation/LocationBackgroundService$LocationBackgroundServiceBinder;-><init>(Lorg/thoughtcrime/securesms/geolocation/LocationBackgroundService;)V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/geolocation/LocationBackgroundService;->mBinder:Landroid/os/IBinder;

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 15
    sget-object v0, Lorg/thoughtcrime/securesms/geolocation/LocationBackgroundService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private initialLocationUpdate()V
    .locals 6

    .line 90
    :try_start_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/geolocation/LocationBackgroundService;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x1d4c0

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    .line 92
    iget-object v1, p0, Lorg/thoughtcrime/securesms/geolocation/LocationBackgroundService;->locationListener:Lorg/thoughtcrime/securesms/geolocation/LocationBackgroundService$ServiceLocationListener;

    invoke-virtual {v1, v0}, Lorg/thoughtcrime/securesms/geolocation/LocationBackgroundService$ServiceLocationListener;->onLocationChanged(Landroid/location/Location;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 96
    :goto_0
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    :cond_0
    :goto_1
    return-void
.end method

.method private requestLocationUpdate(Ljava/lang/String;)V
    .locals 6

    .line 80
    :try_start_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/geolocation/LocationBackgroundService;->locationManager:Landroid/location/LocationManager;

    const-wide/16 v2, 0x3e8

    const/high16 v4, 0x41c80000    # 25.0f

    iget-object v5, p0, Lorg/thoughtcrime/securesms/geolocation/LocationBackgroundService;->locationListener:Lorg/thoughtcrime/securesms/geolocation/LocationBackgroundService$ServiceLocationListener;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 84
    :goto_0
    sget-object v1, Lorg/thoughtcrime/securesms/geolocation/LocationBackgroundService;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "Unable to request %s provider based location updates."

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method


# virtual methods
.method public bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .locals 0

    .line 28
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    return p1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 33
    iget-object p1, p0, Lorg/thoughtcrime/securesms/geolocation/LocationBackgroundService;->mBinder:Landroid/os/IBinder;

    return-object p1
.end method

.method public onCreate()V
    .locals 7

    .line 38
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/geolocation/LocationBackgroundService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/geolocation/LocationBackgroundService;->locationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 40
    sget-object v0, Lorg/thoughtcrime/securesms/geolocation/LocationBackgroundService;->TAG:Ljava/lang/String;

    const-string v1, "Unable to initialize location service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 44
    :cond_0
    new-instance v0, Lorg/thoughtcrime/securesms/geolocation/LocationBackgroundService$ServiceLocationListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/thoughtcrime/securesms/geolocation/LocationBackgroundService$ServiceLocationListener;-><init>(Lorg/thoughtcrime/securesms/geolocation/LocationBackgroundService;Lorg/thoughtcrime/securesms/geolocation/LocationBackgroundService$1;)V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/geolocation/LocationBackgroundService;->locationListener:Lorg/thoughtcrime/securesms/geolocation/LocationBackgroundService$ServiceLocationListener;

    .line 45
    iget-object v0, p0, Lorg/thoughtcrime/securesms/geolocation/LocationBackgroundService;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x927c0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    .line 49
    invoke-static {}, Lorg/thoughtcrime/securesms/geolocation/DcLocation;->getInstance()Lorg/thoughtcrime/securesms/geolocation/DcLocation;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/thoughtcrime/securesms/geolocation/DcLocation;->updateLocation(Landroid/location/Location;)V

    .line 53
    :cond_1
    invoke-direct {p0, v1}, Lorg/thoughtcrime/securesms/geolocation/LocationBackgroundService;->requestLocationUpdate(Ljava/lang/String;)V

    .line 54
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/geolocation/LocationBackgroundService;->initialLocationUpdate()V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 65
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 67
    iget-object v0, p0, Lorg/thoughtcrime/securesms/geolocation/LocationBackgroundService;->locationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    return-void

    .line 72
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/thoughtcrime/securesms/geolocation/LocationBackgroundService;->locationListener:Lorg/thoughtcrime/securesms/geolocation/LocationBackgroundService$ServiceLocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 74
    sget-object v1, Lorg/thoughtcrime/securesms/geolocation/LocationBackgroundService;->TAG:Ljava/lang/String;

    const-string v2, "fail to remove location listeners, ignore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 59
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    const/4 p1, 0x1

    return p1
.end method
