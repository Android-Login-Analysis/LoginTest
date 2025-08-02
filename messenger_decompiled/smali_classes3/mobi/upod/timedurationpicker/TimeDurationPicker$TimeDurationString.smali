.class Lmobi/upod/timedurationpicker/TimeDurationPicker$TimeDurationString;
.super Ljava/lang/Object;
.source "TimeDurationPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/upod/timedurationpicker/TimeDurationPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimeDurationString"
.end annotation


# instance fields
.field private duration:J

.field private final input:Ljava/lang/StringBuilder;

.field private maxDigits:I

.field private timeUnits:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    .line 462
    iput v0, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker$TimeDurationString;->maxDigits:I

    const-wide/16 v1, 0x0

    .line 463
    iput-wide v1, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker$TimeDurationString;->duration:J

    .line 464
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v1, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker$TimeDurationString;->input:Ljava/lang/StringBuilder;

    .line 467
    invoke-direct {p0}, Lmobi/upod/timedurationpicker/TimeDurationPicker$TimeDurationString;->padWithZeros()V

    return-void
.end method

.method static synthetic access$300(Lmobi/upod/timedurationpicker/TimeDurationPicker$TimeDurationString;I)V
    .locals 0

    .line 460
    invoke-direct {p0, p1}, Lmobi/upod/timedurationpicker/TimeDurationPicker$TimeDurationString;->updateTimeUnits(I)V

    return-void
.end method

.method private padWithZeros()V
    .locals 3

    .line 567
    :goto_0
    iget-object v0, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker$TimeDurationString;->input:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iget v1, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker$TimeDurationString;->maxDigits:I

    if-ge v0, v1, :cond_0

    .line 568
    iget-object v0, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker$TimeDurationString;->input:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    const/16 v2, 0x30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private removeLeadingZeros()V
    .locals 3

    .line 562
    :goto_0
    iget-object v0, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker$TimeDurationString;->input:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker$TimeDurationString;->input:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v2, 0x30

    if-ne v0, v2, :cond_0

    .line 563
    iget-object v0, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker$TimeDurationString;->input:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setDuration(JJJ)V
    .locals 3

    const-wide/16 v0, 0x63

    cmp-long v2, p1, v0

    if-gtz v2, :cond_1

    cmp-long v2, p3, v0

    if-lez v2, :cond_0

    goto :goto_0

    .line 549
    :cond_0
    invoke-direct {p0, p1, p2}, Lmobi/upod/timedurationpicker/TimeDurationPicker$TimeDurationString;->stringFragment(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p3, p4}, Lmobi/upod/timedurationpicker/TimeDurationPicker$TimeDurationString;->stringFragment(J)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p5, p6}, Lmobi/upod/timedurationpicker/TimeDurationPicker$TimeDurationString;->stringFragment(J)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lmobi/upod/timedurationpicker/TimeDurationPicker$TimeDurationString;->setDurationString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, "99"

    .line 547
    invoke-direct {p0, p1, p1, p1}, Lmobi/upod/timedurationpicker/TimeDurationPicker$TimeDurationString;->setDurationString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private setDurationString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 553
    iget-object v0, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker$TimeDurationString;->input:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 554
    iget v0, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker$TimeDurationString;->timeUnits:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    .line 555
    :cond_0
    iget-object v0, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker$TimeDurationString;->input:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    :cond_1
    iget-object p1, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker$TimeDurationString;->input:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    iget p1, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker$TimeDurationString;->timeUnits:I

    if-eqz p1, :cond_2

    const/4 p2, 0x2

    if-ne p1, p2, :cond_3

    .line 558
    :cond_2
    iget-object p1, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker$TimeDurationString;->input:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    return-void
.end method

.method private setMaxDigits(I)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x6

    .line 477
    iput p1, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker$TimeDurationString;->maxDigits:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    .line 479
    iput p1, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker$TimeDurationString;->maxDigits:I

    .line 480
    :goto_0
    iget-wide v0, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker$TimeDurationString;->duration:J

    invoke-virtual {p0, v0, v1}, Lmobi/upod/timedurationpicker/TimeDurationPicker$TimeDurationString;->setDuration(J)V

    return-void
.end method

.method private stringFragment(J)Ljava/lang/String;
    .locals 4

    .line 572
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v1, 0xa

    cmp-long v3, p1, v1

    if-gez v3, :cond_0

    const-string v1, "0"

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private updateTimeUnits(I)V
    .locals 0

    .line 471
    iput p1, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker$TimeDurationString;->timeUnits:I

    .line 472
    invoke-direct {p0, p1}, Lmobi/upod/timedurationpicker/TimeDurationPicker$TimeDurationString;->setMaxDigits(I)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 506
    iget-object v0, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker$TimeDurationString;->input:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 507
    invoke-direct {p0}, Lmobi/upod/timedurationpicker/TimeDurationPicker$TimeDurationString;->padWithZeros()V

    return-void
.end method

.method public getDuration()J
    .locals 3

    .line 531
    invoke-virtual {p0}, Lmobi/upod/timedurationpicker/TimeDurationPicker$TimeDurationString;->getHoursString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 532
    invoke-virtual {p0}, Lmobi/upod/timedurationpicker/TimeDurationPicker$TimeDurationString;->getMinutesString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 533
    invoke-virtual {p0}, Lmobi/upod/timedurationpicker/TimeDurationPicker$TimeDurationString;->getSecondsString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 534
    invoke-static {v0, v1, v2}, Lmobi/upod/timedurationpicker/TimeDurationUtil;->durationOf(III)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHoursString()Ljava/lang/String;
    .locals 3

    .line 511
    iget v0, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker$TimeDurationString;->timeUnits:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "00"

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker$TimeDurationString;->input:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public getInputString()Ljava/lang/String;
    .locals 1

    .line 527
    iget-object v0, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker$TimeDurationString;->input:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMinutesString()Ljava/lang/String;
    .locals 3

    .line 515
    iget v0, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker$TimeDurationString;->timeUnits:I

    const/4 v1, 0x2

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    .line 516
    iget-object v0, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker$TimeDurationString;->input:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "00"

    return-object v0

    .line 515
    :cond_2
    :goto_0
    iget-object v0, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker$TimeDurationString;->input:Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSecondsString()Ljava/lang/String;
    .locals 3

    .line 521
    iget v0, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker$TimeDurationString;->timeUnits:I

    const/4 v1, 0x4

    if-nez v0, :cond_0

    iget-object v0, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker$TimeDurationString;->input:Ljava/lang/StringBuilder;

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 522
    iget-object v0, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker$TimeDurationString;->input:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "00"

    return-object v0
.end method

.method public popDigit()V
    .locals 2

    .line 500
    iget-object v0, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker$TimeDurationString;->input:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 501
    iget-object v0, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker$TimeDurationString;->input:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 502
    :cond_0
    invoke-direct {p0}, Lmobi/upod/timedurationpicker/TimeDurationPicker$TimeDurationString;->padWithZeros()V

    return-void
.end method

.method public pushDigit(C)V
    .locals 2

    .line 489
    invoke-static {p1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 492
    invoke-direct {p0}, Lmobi/upod/timedurationpicker/TimeDurationPicker$TimeDurationString;->removeLeadingZeros()V

    .line 493
    iget-object v0, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker$TimeDurationString;->input:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iget v1, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker$TimeDurationString;->maxDigits:I

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker$TimeDurationString;->input:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-gtz v0, :cond_0

    const/16 v0, 0x30

    if-eq p1, v0, :cond_1

    .line 494
    :cond_0
    iget-object v0, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker$TimeDurationString;->input:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 496
    :cond_1
    invoke-direct {p0}, Lmobi/upod/timedurationpicker/TimeDurationPicker$TimeDurationString;->padWithZeros()V

    return-void

    .line 490
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Only numbers are allowed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public pushNumber(Ljava/lang/CharSequence;)V
    .locals 2

    const/4 v0, 0x0

    .line 484
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 485
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lmobi/upod/timedurationpicker/TimeDurationPicker$TimeDurationString;->pushDigit(C)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setDuration(J)V
    .locals 8

    .line 538
    iput-wide p1, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker$TimeDurationString;->duration:J

    .line 540
    invoke-static {p1, p2}, Lmobi/upod/timedurationpicker/TimeDurationUtil;->hoursOf(J)I

    move-result v0

    int-to-long v2, v0

    iget v0, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker$TimeDurationString;->timeUnits:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 541
    invoke-static {p1, p2}, Lmobi/upod/timedurationpicker/TimeDurationUtil;->minutesOf(J)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Lmobi/upod/timedurationpicker/TimeDurationUtil;->minutesInHourOf(J)I

    move-result v0

    :goto_0
    int-to-long v0, v0

    move-wide v4, v0

    .line 542
    invoke-static {p1, p2}, Lmobi/upod/timedurationpicker/TimeDurationUtil;->secondsInMinuteOf(J)I

    move-result p1

    int-to-long v6, p1

    move-object v1, p0

    .line 539
    invoke-direct/range {v1 .. v7}, Lmobi/upod/timedurationpicker/TimeDurationPicker$TimeDurationString;->setDuration(JJJ)V

    return-void
.end method
