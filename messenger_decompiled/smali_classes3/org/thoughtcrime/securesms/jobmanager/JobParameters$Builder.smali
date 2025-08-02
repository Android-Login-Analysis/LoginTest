.class public Lorg/thoughtcrime/securesms/jobmanager/JobParameters$Builder;
.super Ljava/lang/Object;
.source "JobParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/jobmanager/JobParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private groupId:Ljava/lang/String;

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

.field private final retryDuration:J

.field private final wakeLock:Z

.field private final wakeLockTimeout:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/jobmanager/JobParameters$Builder;->requirements:Ljava/util/List;

    const/16 v0, 0x64

    .line 85
    iput v0, p0, Lorg/thoughtcrime/securesms/jobmanager/JobParameters$Builder;->retryCount:I

    const-wide/16 v0, 0x0

    .line 86
    iput-wide v0, p0, Lorg/thoughtcrime/securesms/jobmanager/JobParameters$Builder;->retryDuration:J

    const/4 v2, 0x0

    .line 87
    iput-object v2, p0, Lorg/thoughtcrime/securesms/jobmanager/JobParameters$Builder;->groupId:Ljava/lang/String;

    const/4 v2, 0x0

    .line 88
    iput-boolean v2, p0, Lorg/thoughtcrime/securesms/jobmanager/JobParameters$Builder;->wakeLock:Z

    .line 89
    iput-wide v0, p0, Lorg/thoughtcrime/securesms/jobmanager/JobParameters$Builder;->wakeLockTimeout:J

    return-void
.end method


# virtual methods
.method public create()Lorg/thoughtcrime/securesms/jobmanager/JobParameters;
    .locals 11

    .line 107
    new-instance v10, Lorg/thoughtcrime/securesms/jobmanager/JobParameters;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/jobmanager/JobParameters$Builder;->requirements:Ljava/util/List;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/jobmanager/JobParameters$Builder;->groupId:Ljava/lang/String;

    const/16 v3, 0x64

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    add-long/2addr v4, v6

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lorg/thoughtcrime/securesms/jobmanager/JobParameters;-><init>(Ljava/util/List;Ljava/lang/String;IJZJLorg/thoughtcrime/securesms/jobmanager/JobParameters$1;)V

    return-object v10
.end method

.method public withGroupId(Ljava/lang/String;)Lorg/thoughtcrime/securesms/jobmanager/JobParameters$Builder;
    .locals 0

    .line 99
    iput-object p1, p0, Lorg/thoughtcrime/securesms/jobmanager/JobParameters$Builder;->groupId:Ljava/lang/String;

    return-object p0
.end method
