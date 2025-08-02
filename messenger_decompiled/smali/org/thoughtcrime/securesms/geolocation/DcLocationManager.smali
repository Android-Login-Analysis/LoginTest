.class public Lorg/thoughtcrime/securesms/geolocation/DcLocationManager;
.super Ljava/lang/Object;
.source "DcLocationManager.java"

# interfaces
.implements Ljava/util/Observer;


# static fields
.field private static final TAG:Ljava/lang/String; = "DcLocationManager"


# instance fields
.field private final context:Landroid/content/Context;

.field private dcLocation:Lorg/thoughtcrime/securesms/geolocation/DcLocation;

.field private final pendingShareLastLocation:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private serviceBinder:Lorg/thoughtcrime/securesms/geolocation/LocationBackgroundService$LocationBackgroundServiceBinder;

.field private final serviceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {}, Lorg/thoughtcrime/securesms/geolocation/DcLocation;->getInstance()Lorg/thoughtcrime/securesms/geolocation/DcLocation;

    move-result-object v0

    iput-object v0, p0, Lorg/thoughtcrime/securesms/geolocation/DcLocationManager;->dcLocation:Lorg/thoughtcrime/securesms/geolocation/DcLocation;

    .line 25
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/geolocation/DcLocationManager;->pendingShareLastLocation:Ljava/util/LinkedList;

    .line 26
    new-instance v0, Lorg/thoughtcrime/securesms/geolocation/DcLocationManager$1;

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/geolocation/DcLocationManager$1;-><init>(Lorg/thoughtcrime/securesms/geolocation/DcLocationManager;)V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/geolocation/DcLocationManager;->serviceConnection:Landroid/content/ServiceConnection;

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/thoughtcrime/securesms/geolocation/DcLocationManager;->context:Landroid/content/Context;

    .line 45
    invoke-static {}, Lorg/thoughtcrime/securesms/geolocation/DcLocation;->getInstance()Lorg/thoughtcrime/securesms/geolocation/DcLocation;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/thoughtcrime/securesms/geolocation/DcLocation;->addObserver(Ljava/util/Observer;)V

    .line 46
    invoke-static {p1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/b44t/messenger/DcContext;->isSendingLocationsToChat(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 47
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/geolocation/DcLocationManager;->startLocationEngine()V

    :cond_0
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 19
    sget-object v0, Lorg/thoughtcrime/securesms/geolocation/DcLocationManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lorg/thoughtcrime/securesms/geolocation/DcLocationManager;Lorg/thoughtcrime/securesms/geolocation/LocationBackgroundService$LocationBackgroundServiceBinder;)Lorg/thoughtcrime/securesms/geolocation/LocationBackgroundService$LocationBackgroundServiceBinder;
    .locals 0

    .line 19
    iput-object p1, p0, Lorg/thoughtcrime/securesms/geolocation/DcLocationManager;->serviceBinder:Lorg/thoughtcrime/securesms/geolocation/LocationBackgroundService$LocationBackgroundServiceBinder;

    return-object p1
.end method

.method static synthetic access$200(Lorg/thoughtcrime/securesms/geolocation/DcLocationManager;)Ljava/util/LinkedList;
    .locals 0

    .line 19
    iget-object p0, p0, Lorg/thoughtcrime/securesms/geolocation/DcLocationManager;->pendingShareLastLocation:Ljava/util/LinkedList;

    return-object p0
.end method

.method private writeDcLocationUpdateMessage()V
    .locals 5

    .line 107
    sget-object v0, Lorg/thoughtcrime/securesms/geolocation/DcLocationManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Share location: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/thoughtcrime/securesms/geolocation/DcLocationManager;->dcLocation:Lorg/thoughtcrime/securesms/geolocation/DcLocation;

    invoke-virtual {v2}, Lorg/thoughtcrime/securesms/geolocation/DcLocation;->getLastLocation()Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/geolocation/DcLocationManager;->dcLocation:Lorg/thoughtcrime/securesms/geolocation/DcLocation;

    invoke-virtual {v2}, Lorg/thoughtcrime/securesms/geolocation/DcLocation;->getLastLocation()Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v0, p0, Lorg/thoughtcrime/securesms/geolocation/DcLocationManager;->dcLocation:Lorg/thoughtcrime/securesms/geolocation/DcLocation;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/geolocation/DcLocation;->getLastLocation()Landroid/location/Location;

    move-result-object v0

    .line 110
    iget-object v1, p0, Lorg/thoughtcrime/securesms/geolocation/DcLocationManager;->context:Landroid/content/Context;

    invoke-static {v1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object v1

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    double-to-float v3, v3

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/b44t/messenger/DcContext;->setLocation(FFF)Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/geolocation/DcLocationManager;->stopLocationEngine()V

    :cond_0
    return-void
.end method


# virtual methods
.method public shareLastLocation(I)V
    .locals 2

    .line 84
    iget-object v0, p0, Lorg/thoughtcrime/securesms/geolocation/DcLocationManager;->serviceBinder:Lorg/thoughtcrime/securesms/geolocation/LocationBackgroundService$LocationBackgroundServiceBinder;

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lorg/thoughtcrime/securesms/geolocation/DcLocationManager;->pendingShareLastLocation:Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    .line 86
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/geolocation/DcLocationManager;->startLocationEngine()V

    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/geolocation/DcLocationManager;->dcLocation:Lorg/thoughtcrime/securesms/geolocation/DcLocation;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/geolocation/DcLocation;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lorg/thoughtcrime/securesms/geolocation/DcLocationManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/b44t/messenger/DcContext;->sendLocationsToChat(II)V

    .line 92
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/geolocation/DcLocationManager;->writeDcLocationUpdateMessage()V

    :cond_1
    return-void
.end method

.method public shareLocation(II)V
    .locals 4

    .line 75
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/geolocation/DcLocationManager;->startLocationEngine()V

    .line 76
    sget-object v0, Lorg/thoughtcrime/securesms/geolocation/DcLocationManager;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Share location in chat %d for %d seconds"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v0, p0, Lorg/thoughtcrime/securesms/geolocation/DcLocationManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/b44t/messenger/DcContext;->sendLocationsToChat(II)V

    .line 78
    iget-object p1, p0, Lorg/thoughtcrime/securesms/geolocation/DcLocationManager;->dcLocation:Lorg/thoughtcrime/securesms/geolocation/DcLocation;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/geolocation/DcLocation;->isValid()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 79
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/geolocation/DcLocationManager;->writeDcLocationUpdateMessage()V

    :cond_0
    return-void
.end method

.method public startLocationEngine()V
    .locals 4

    .line 52
    iget-object v0, p0, Lorg/thoughtcrime/securesms/geolocation/DcLocationManager;->serviceBinder:Lorg/thoughtcrime/securesms/geolocation/LocationBackgroundService$LocationBackgroundServiceBinder;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/geolocation/DcLocationManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lorg/thoughtcrime/securesms/geolocation/LocationBackgroundService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 54
    iget-object v1, p0, Lorg/thoughtcrime/securesms/geolocation/DcLocationManager;->context:Landroid/content/Context;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/geolocation/DcLocationManager;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_0
    return-void
.end method

.method public stopLocationEngine()V
    .locals 2

    .line 59
    iget-object v0, p0, Lorg/thoughtcrime/securesms/geolocation/DcLocationManager;->serviceBinder:Lorg/thoughtcrime/securesms/geolocation/LocationBackgroundService$LocationBackgroundServiceBinder;

    if-nez v0, :cond_0

    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/geolocation/DcLocationManager;->context:Landroid/content/Context;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/geolocation/DcLocationManager;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 63
    iget-object v0, p0, Lorg/thoughtcrime/securesms/geolocation/DcLocationManager;->serviceBinder:Lorg/thoughtcrime/securesms/geolocation/LocationBackgroundService$LocationBackgroundServiceBinder;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/geolocation/LocationBackgroundService$LocationBackgroundServiceBinder;->stop()V

    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lorg/thoughtcrime/securesms/geolocation/DcLocationManager;->serviceBinder:Lorg/thoughtcrime/securesms/geolocation/LocationBackgroundService$LocationBackgroundServiceBinder;

    return-void
.end method

.method public stopSharingLocation(I)V
    .locals 2

    .line 68
    iget-object v0, p0, Lorg/thoughtcrime/securesms/geolocation/DcLocationManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/b44t/messenger/DcContext;->sendLocationsToChat(II)V

    .line 69
    iget-object p1, p0, Lorg/thoughtcrime/securesms/geolocation/DcLocationManager;->context:Landroid/content/Context;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/b44t/messenger/DcContext;->isSendingLocationsToChat(I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 70
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/geolocation/DcLocationManager;->stopLocationEngine()V

    :cond_0
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 0

    .line 98
    instance-of p2, p1, Lorg/thoughtcrime/securesms/geolocation/DcLocation;

    if-eqz p2, :cond_0

    .line 99
    check-cast p1, Lorg/thoughtcrime/securesms/geolocation/DcLocation;

    iput-object p1, p0, Lorg/thoughtcrime/securesms/geolocation/DcLocationManager;->dcLocation:Lorg/thoughtcrime/securesms/geolocation/DcLocation;

    .line 100
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/geolocation/DcLocation;->isValid()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 101
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/geolocation/DcLocationManager;->writeDcLocationUpdateMessage()V

    :cond_0
    return-void
.end method
