.class public Lorg/thoughtcrime/securesms/jobmanager/JobParameters;
.super Ljava/lang/Object;
.source "JobParameters.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/jobmanager/JobParameters$Builder;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x43badd37e879b808L


# instance fields
.field private final groupId:Ljava/lang/String;

.field private final requirements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/thoughtcrime/securesms/jobmanager/requirements/Requirement;",
            ">;"
        }
    .end annotation
.end field

.field private final retryCount:I

.field private final retryUntil:J

.field private final wakeLock:Z

.field private final wakeLockTimeout:J


# direct methods
.method private constructor <init>(Ljava/util/List;Ljava/lang/String;IJZJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/thoughtcrime/securesms/jobmanager/requirements/Requirement;",
            ">;",
            "Ljava/lang/String;",
            "IJZJ)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/thoughtcrime/securesms/jobmanager/JobParameters;->requirements:Ljava/util/List;

    .line 45
    iput-object p2, p0, Lorg/thoughtcrime/securesms/jobmanager/JobParameters;->groupId:Ljava/lang/String;

    .line 46
    iput p3, p0, Lorg/thoughtcrime/securesms/jobmanager/JobParameters;->retryCount:I

    .line 47
    iput-wide p4, p0, Lorg/thoughtcrime/securesms/jobmanager/JobParameters;->retryUntil:J

    .line 48
    iput-boolean p6, p0, Lorg/thoughtcrime/securesms/jobmanager/JobParameters;->wakeLock:Z

    .line 49
    iput-wide p7, p0, Lorg/thoughtcrime/securesms/jobmanager/JobParameters;->wakeLockTimeout:J

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Ljava/lang/String;IJZJLorg/thoughtcrime/securesms/jobmanager/JobParameters$1;)V
    .locals 0

    .line 28
    invoke-direct/range {p0 .. p8}, Lorg/thoughtcrime/securesms/jobmanager/JobParameters;-><init>(Ljava/util/List;Ljava/lang/String;IJZJ)V

    return-void
.end method

.method public static newBuilder()Lorg/thoughtcrime/securesms/jobmanager/JobParameters$Builder;
    .locals 1

    .line 68
    new-instance v0, Lorg/thoughtcrime/securesms/jobmanager/JobParameters$Builder;

    invoke-direct {v0}, Lorg/thoughtcrime/securesms/jobmanager/JobParameters$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getGroupId()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/thoughtcrime/securesms/jobmanager/JobParameters;->groupId:Ljava/lang/String;

    return-object v0
.end method

.method public getRequirements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/thoughtcrime/securesms/jobmanager/requirements/Requirement;",
            ">;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lorg/thoughtcrime/securesms/jobmanager/JobParameters;->requirements:Ljava/util/List;

    return-object v0
.end method

.method public getRetryCount()I
    .locals 1

    .line 57
    iget v0, p0, Lorg/thoughtcrime/securesms/jobmanager/JobParameters;->retryCount:I

    return v0
.end method

.method public getRetryUntil()J
    .locals 2

    .line 61
    iget-wide v0, p0, Lorg/thoughtcrime/securesms/jobmanager/JobParameters;->retryUntil:J

    return-wide v0
.end method

.method public getWakeLockTimeout()J
    .locals 2

    .line 80
    iget-wide v0, p0, Lorg/thoughtcrime/securesms/jobmanager/JobParameters;->wakeLockTimeout:J

    return-wide v0
.end method

.method public needsWakeLock()Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Lorg/thoughtcrime/securesms/jobmanager/JobParameters;->wakeLock:Z

    return v0
.end method
