.class public abstract Lorg/thoughtcrime/securesms/jobmanager/Job;
.super Ljava/lang/Object;
.source "Job.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final parameters:Lorg/thoughtcrime/securesms/jobmanager/JobParameters;

.field private transient runIteration:I

.field private transient wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Lorg/thoughtcrime/securesms/jobmanager/JobParameters;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/thoughtcrime/securesms/jobmanager/Job;->parameters:Lorg/thoughtcrime/securesms/jobmanager/JobParameters;

    return-void
.end method


# virtual methods
.method public getGroupId()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/thoughtcrime/securesms/jobmanager/Job;->parameters:Lorg/thoughtcrime/securesms/jobmanager/JobParameters;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/jobmanager/JobParameters;->getGroupId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRetryCount()I
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/thoughtcrime/securesms/jobmanager/Job;->parameters:Lorg/thoughtcrime/securesms/jobmanager/JobParameters;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/jobmanager/JobParameters;->getRetryCount()I

    move-result v0

    return v0
.end method

.method public getRetryUntil()J
    .locals 2

    .line 57
    iget-object v0, p0, Lorg/thoughtcrime/securesms/jobmanager/Job;->parameters:Lorg/thoughtcrime/securesms/jobmanager/JobParameters;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/jobmanager/JobParameters;->getRetryUntil()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRunIteration()I
    .locals 1

    .line 65
    iget v0, p0, Lorg/thoughtcrime/securesms/jobmanager/Job;->runIteration:I

    return v0
.end method

.method public getWakeLock()Landroid/os/PowerManager$WakeLock;
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/thoughtcrime/securesms/jobmanager/Job;->wakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method public getWakeLockTimeout()J
    .locals 2

    .line 73
    iget-object v0, p0, Lorg/thoughtcrime/securesms/jobmanager/Job;->parameters:Lorg/thoughtcrime/securesms/jobmanager/JobParameters;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/jobmanager/JobParameters;->getWakeLockTimeout()J

    move-result-wide v0

    return-wide v0
.end method

.method public isRequirementsMet()Z
    .locals 2

    .line 41
    iget-object v0, p0, Lorg/thoughtcrime/securesms/jobmanager/Job;->parameters:Lorg/thoughtcrime/securesms/jobmanager/JobParameters;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/jobmanager/JobParameters;->getRequirements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/thoughtcrime/securesms/jobmanager/requirements/Requirement;

    .line 42
    invoke-interface {v1, p0}, Lorg/thoughtcrime/securesms/jobmanager/requirements/Requirement;->isPresent(Lorg/thoughtcrime/securesms/jobmanager/Job;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public needsWakeLock()Z
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/thoughtcrime/securesms/jobmanager/Job;->parameters:Lorg/thoughtcrime/securesms/jobmanager/JobParameters;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/jobmanager/JobParameters;->needsWakeLock()Z

    move-result v0

    return v0
.end method

.method public abstract onAdded()V
.end method

.method public abstract onCanceled()V
.end method

.method public onRetry()V
    .locals 2

    .line 85
    iget v0, p0, Lorg/thoughtcrime/securesms/jobmanager/Job;->runIteration:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/thoughtcrime/securesms/jobmanager/Job;->runIteration:I

    .line 87
    iget-object v0, p0, Lorg/thoughtcrime/securesms/jobmanager/Job;->parameters:Lorg/thoughtcrime/securesms/jobmanager/JobParameters;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/jobmanager/JobParameters;->getRequirements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/thoughtcrime/securesms/jobmanager/requirements/Requirement;

    .line 88
    invoke-interface {v1, p0}, Lorg/thoughtcrime/securesms/jobmanager/requirements/Requirement;->onRetry(Lorg/thoughtcrime/securesms/jobmanager/Job;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected abstract onRun()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract onShouldRetry(Ljava/lang/Exception;)Z
.end method

.method public resetRunStats()V
    .locals 1

    const/4 v0, 0x0

    .line 61
    iput v0, p0, Lorg/thoughtcrime/securesms/jobmanager/Job;->runIteration:I

    return-void
.end method

.method public setWakeLock(Landroid/os/PowerManager$WakeLock;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lorg/thoughtcrime/securesms/jobmanager/Job;->wakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method
