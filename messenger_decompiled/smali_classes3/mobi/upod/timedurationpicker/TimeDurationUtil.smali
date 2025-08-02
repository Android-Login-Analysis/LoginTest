.class public Lmobi/upod/timedurationpicker/TimeDurationUtil;
.super Ljava/lang/Object;
.source "TimeDurationUtil.java"


# static fields
.field public static final MILLIS_PER_HOUR:I = 0x36ee80

.field public static final MILLIS_PER_MINUTE:I = 0xea60

.field public static final MILLIS_PER_SECOND:I = 0x3e8


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static durationOf(III)J
    .locals 1

    const v0, 0x36ee80

    mul-int p0, p0, v0

    const v0, 0xea60

    mul-int p1, p1, v0

    add-int/2addr p0, p1

    mul-int/lit16 p2, p2, 0x3e8

    add-int/2addr p0, p2

    int-to-long p0, p0

    return-wide p0
.end method

.method public static formatHoursMinutesSeconds(J)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 76
    invoke-static {p0, p1}, Lmobi/upod/timedurationpicker/TimeDurationUtil;->hoursOf(J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p0, p1}, Lmobi/upod/timedurationpicker/TimeDurationUtil;->minutesInHourOf(J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p0, p1}, Lmobi/upod/timedurationpicker/TimeDurationUtil;->secondsInMinuteOf(J)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x2

    aput-object p0, v0, p1

    const-string p0, "%d:%02d:%02d"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatMinutesSeconds(J)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 85
    invoke-static {p0, p1}, Lmobi/upod/timedurationpicker/TimeDurationUtil;->minutesOf(J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p0, p1}, Lmobi/upod/timedurationpicker/TimeDurationUtil;->secondsInMinuteOf(J)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v0, p1

    const-string p0, "%d:%02d"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatSeconds(J)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 94
    invoke-static {p0, p1}, Lmobi/upod/timedurationpicker/TimeDurationUtil;->secondsInMinuteOf(J)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x0

    aput-object p0, v0, p1

    const-string p0, "%d"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static hoursOf(J)I
    .locals 0

    long-to-int p1, p0

    const p0, 0x36ee80

    .line 20
    div-int/2addr p1, p0

    return p1
.end method

.method public static minutesInHourOf(J)I
    .locals 2

    .line 38
    invoke-static {p0, p1}, Lmobi/upod/timedurationpicker/TimeDurationUtil;->hoursOf(J)I

    move-result v0

    const v1, 0x36ee80

    mul-int v0, v0, v1

    int-to-long v0, v0

    sub-long/2addr p0, v0

    long-to-int p1, p0

    const p0, 0xea60

    div-int/2addr p1, p0

    return p1
.end method

.method public static minutesOf(J)I
    .locals 0

    long-to-int p1, p0

    const p0, 0xea60

    .line 29
    div-int/2addr p1, p0

    return p1
.end method

.method public static secondsInMinuteOf(J)I
    .locals 2

    .line 56
    invoke-static {p0, p1}, Lmobi/upod/timedurationpicker/TimeDurationUtil;->hoursOf(J)I

    move-result v0

    const v1, 0x36ee80

    mul-int v0, v0, v1

    int-to-long v0, v0

    sub-long v0, p0, v0

    invoke-static {p0, p1}, Lmobi/upod/timedurationpicker/TimeDurationUtil;->minutesInHourOf(J)I

    move-result p0

    const p1, 0xea60

    mul-int p0, p0, p1

    int-to-long p0, p0

    sub-long/2addr v0, p0

    long-to-int p0, v0

    div-int/lit16 p0, p0, 0x3e8

    return p0
.end method

.method public static secondsOf(J)I
    .locals 0

    long-to-int p1, p0

    .line 47
    div-int/lit16 p1, p1, 0x3e8

    return p1
.end method
