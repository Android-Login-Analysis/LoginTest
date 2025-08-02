.class public Lorg/thoughtcrime/securesms/util/Stopwatch;
.super Ljava/lang/Object;
.source "Stopwatch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/util/Stopwatch$Split;
    }
.end annotation


# instance fields
.field private final splits:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/thoughtcrime/securesms/util/Stopwatch$Split;",
            ">;"
        }
    .end annotation
.end field

.field private final startTime:J

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/thoughtcrime/securesms/util/Stopwatch;->startTime:J

    .line 19
    iput-object p1, p0, Lorg/thoughtcrime/securesms/util/Stopwatch;->title:Ljava/lang/String;

    .line 20
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/util/Stopwatch;->splits:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public split(Ljava/lang/String;)V
    .locals 4

    .line 24
    iget-object v0, p0, Lorg/thoughtcrime/securesms/util/Stopwatch;->splits:Ljava/util/List;

    new-instance v1, Lorg/thoughtcrime/securesms/util/Stopwatch$Split;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, p1}, Lorg/thoughtcrime/securesms/util/Stopwatch$Split;-><init>(JLjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public stop(Ljava/lang/String;)V
    .locals 9

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    iget-object v1, p0, Lorg/thoughtcrime/securesms/util/Stopwatch;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget-object v1, p0, Lorg/thoughtcrime/securesms/util/Stopwatch;->splits:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const-string v2, "  "

    const-string v3, ": "

    if-lez v1, :cond_0

    .line 32
    iget-object v1, p0, Lorg/thoughtcrime/securesms/util/Stopwatch;->splits:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/thoughtcrime/securesms/util/Stopwatch$Split;

    iget-object v1, v1, Lorg/thoughtcrime/securesms/util/Stopwatch$Split;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    iget-object v1, p0, Lorg/thoughtcrime/securesms/util/Stopwatch;->splits:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/thoughtcrime/securesms/util/Stopwatch$Split;

    iget-wide v4, v1, Lorg/thoughtcrime/securesms/util/Stopwatch$Split;->time:J

    iget-wide v6, p0, Lorg/thoughtcrime/securesms/util/Stopwatch;->startTime:J

    sub-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    :cond_0
    iget-object v1, p0, Lorg/thoughtcrime/securesms/util/Stopwatch;->splits:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x1

    if-le v1, v4, :cond_2

    const/4 v1, 0x1

    .line 38
    :goto_0
    iget-object v5, p0, Lorg/thoughtcrime/securesms/util/Stopwatch;->splits:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 39
    iget-object v5, p0, Lorg/thoughtcrime/securesms/util/Stopwatch;->splits:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/thoughtcrime/securesms/util/Stopwatch$Split;

    iget-object v5, v5, Lorg/thoughtcrime/securesms/util/Stopwatch$Split;->label:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    iget-object v5, p0, Lorg/thoughtcrime/securesms/util/Stopwatch;->splits:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/thoughtcrime/securesms/util/Stopwatch$Split;

    iget-wide v5, v5, Lorg/thoughtcrime/securesms/util/Stopwatch$Split;->time:J

    iget-object v7, p0, Lorg/thoughtcrime/securesms/util/Stopwatch;->splits:Ljava/util/List;

    add-int/lit8 v8, v1, -0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/thoughtcrime/securesms/util/Stopwatch$Split;

    iget-wide v7, v7, Lorg/thoughtcrime/securesms/util/Stopwatch$Split;->time:J

    sub-long/2addr v5, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "total: "

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/util/Stopwatch;->splits:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/thoughtcrime/securesms/util/Stopwatch$Split;

    iget-wide v1, v1, Lorg/thoughtcrime/securesms/util/Stopwatch$Split;->time:J

    iget-wide v3, p0, Lorg/thoughtcrime/securesms/util/Stopwatch;->startTime:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 47
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
