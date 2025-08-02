.class public Lorg/thoughtcrime/securesms/geolocation/DcLocation;
.super Ljava/util/Observable;
.source "DcLocation.java"


# static fields
.field private static final EARTH_RADIUS:I = 0x18e3

.field private static final TAG:Ljava/lang/String; = "DcLocation"

.field private static final TIMEOUT:I = 0x3a98

.field private static instance:Lorg/thoughtcrime/securesms/geolocation/DcLocation;


# instance fields
.field private lastLocation:Landroid/location/Location;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 16
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/geolocation/DcLocation;->getDefault()Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lorg/thoughtcrime/securesms/geolocation/DcLocation;->lastLocation:Landroid/location/Location;

    return-void
.end method

.method private distance(Landroid/location/Location;Landroid/location/Location;)D
    .locals 8

    .line 100
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    .line 101
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    .line 102
    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    .line 103
    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide p1

    sub-double v6, v4, v0

    .line 105
    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    sub-double/2addr p1, v2

    .line 106
    invoke-static {p1, p2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p1

    .line 108
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 109
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    .line 111
    invoke-direct {p0, v6, v7}, Lorg/thoughtcrime/securesms/geolocation/DcLocation;->haversin(D)D

    move-result-wide v4

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double v0, v0, v2

    invoke-direct {p0, p1, p2}, Lorg/thoughtcrime/securesms/geolocation/DcLocation;->haversin(D)D

    move-result-wide p1

    mul-double v0, v0, p1

    add-double/2addr v4, v0

    .line 112
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    mul-double p1, p1, v0

    const-wide v0, 0x40b8e30000000000L    # 6371.0

    mul-double p1, p1, v0

    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double p1, p1, v0

    .line 115
    sget-object v0, Lorg/thoughtcrime/securesms/geolocation/DcLocation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Distance between location updates: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide p1
.end method

.method private getDefault()Landroid/location/Location;
    .locals 2

    .line 50
    new-instance v0, Landroid/location/Location;

    const-string v1, "?"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getInstance()Lorg/thoughtcrime/securesms/geolocation/DcLocation;
    .locals 1

    .line 20
    sget-object v0, Lorg/thoughtcrime/securesms/geolocation/DcLocation;->instance:Lorg/thoughtcrime/securesms/geolocation/DcLocation;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lorg/thoughtcrime/securesms/geolocation/DcLocation;

    invoke-direct {v0}, Lorg/thoughtcrime/securesms/geolocation/DcLocation;-><init>()V

    sput-object v0, Lorg/thoughtcrime/securesms/geolocation/DcLocation;->instance:Lorg/thoughtcrime/securesms/geolocation/DcLocation;

    .line 23
    :cond_0
    sget-object v0, Lorg/thoughtcrime/securesms/geolocation/DcLocation;->instance:Lorg/thoughtcrime/securesms/geolocation/DcLocation;

    return-object v0
.end method

.method private hasLocationChanged(D)Z
    .locals 3

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    cmpl-double v2, p1, v0

    if-lez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private hasLocationSignificantlyChanged(D)Z
    .locals 3

    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    cmpl-double v2, p1, v0

    if-lez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private haversin(D)D
    .locals 2

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    div-double/2addr p1, v0

    .line 120
    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    return-wide p1
.end method

.method private isBetterLocation(Landroid/location/Location;Landroid/location/Location;)Z
    .locals 7

    const/4 v0, 0x1

    if-nez p2, :cond_0

    return v0

    .line 66
    :cond_0
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    invoke-virtual {p2}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, -0x3a98

    const/4 v5, 0x0

    cmp-long v6, v1, v3

    if-gez v6, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    return v5

    .line 74
    :cond_2
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    invoke-virtual {p2}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 75
    sget-object v2, Lorg/thoughtcrime/securesms/geolocation/DcLocation;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "accuracyDelta: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x32

    if-le v1, v2, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 77
    :goto_1
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lorg/thoughtcrime/securesms/geolocation/DcLocation;->isSameProvider(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    return v0

    :cond_4
    if-lez v1, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    .line 84
    :goto_2
    invoke-direct {p0, p1, p2}, Lorg/thoughtcrime/securesms/geolocation/DcLocation;->distance(Landroid/location/Location;Landroid/location/Location;)D

    move-result-wide p1

    .line 85
    invoke-direct {p0, p1, p2}, Lorg/thoughtcrime/securesms/geolocation/DcLocation;->hasLocationChanged(D)Z

    move-result v2

    if-eqz v2, :cond_6

    if-nez v1, :cond_8

    .line 86
    :cond_6
    invoke-direct {p0, p1, p2}, Lorg/thoughtcrime/securesms/geolocation/DcLocation;->hasLocationSignificantlyChanged(D)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    :cond_8
    :goto_3
    return v0
.end method

.method private isSameProvider(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    if-nez p1, :cond_1

    if-nez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 128
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public getLastLocation()Landroid/location/Location;
    .locals 1

    .line 27
    iget-object v0, p0, Lorg/thoughtcrime/securesms/geolocation/DcLocation;->lastLocation:Landroid/location/Location;

    return-object v0
.end method

.method public isValid()Z
    .locals 2

    .line 32
    iget-object v0, p0, Lorg/thoughtcrime/securesms/geolocation/DcLocation;->lastLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method reset()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/geolocation/DcLocation;->getDefault()Landroid/location/Location;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/geolocation/DcLocation;->updateLocation(Landroid/location/Location;)V

    return-void
.end method

.method updateLocation(Landroid/location/Location;)V
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/thoughtcrime/securesms/geolocation/DcLocation;->lastLocation:Landroid/location/Location;

    invoke-direct {p0, p1, v0}, Lorg/thoughtcrime/securesms/geolocation/DcLocation;->isBetterLocation(Landroid/location/Location;Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    iput-object p1, p0, Lorg/thoughtcrime/securesms/geolocation/DcLocation;->lastLocation:Landroid/location/Location;

    .line 39
    sget-object p1, Lorg/thoughtcrime/securesms/geolocation/DcLocation;->instance:Lorg/thoughtcrime/securesms/geolocation/DcLocation;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/geolocation/DcLocation;->setChanged()V

    .line 40
    sget-object p1, Lorg/thoughtcrime/securesms/geolocation/DcLocation;->instance:Lorg/thoughtcrime/securesms/geolocation/DcLocation;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/geolocation/DcLocation;->notifyObservers()V

    :cond_0
    return-void
.end method
