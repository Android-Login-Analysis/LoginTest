.class final enum Lorg/thoughtcrime/securesms/jobmanager/JobConsumer$JobResult;
.super Ljava/lang/Enum;
.source "JobConsumer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/jobmanager/JobConsumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "JobResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/thoughtcrime/securesms/jobmanager/JobConsumer$JobResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/thoughtcrime/securesms/jobmanager/JobConsumer$JobResult;

.field public static final enum DEFERRED:Lorg/thoughtcrime/securesms/jobmanager/JobConsumer$JobResult;

.field public static final enum FAILURE:Lorg/thoughtcrime/securesms/jobmanager/JobConsumer$JobResult;

.field public static final enum SUCCESS:Lorg/thoughtcrime/securesms/jobmanager/JobConsumer$JobResult;


# direct methods
.method private static synthetic $values()[Lorg/thoughtcrime/securesms/jobmanager/JobConsumer$JobResult;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/thoughtcrime/securesms/jobmanager/JobConsumer$JobResult;

    const/4 v1, 0x0

    .line 26
    sget-object v2, Lorg/thoughtcrime/securesms/jobmanager/JobConsumer$JobResult;->SUCCESS:Lorg/thoughtcrime/securesms/jobmanager/JobConsumer$JobResult;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/thoughtcrime/securesms/jobmanager/JobConsumer$JobResult;->FAILURE:Lorg/thoughtcrime/securesms/jobmanager/JobConsumer$JobResult;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lorg/thoughtcrime/securesms/jobmanager/JobConsumer$JobResult;->DEFERRED:Lorg/thoughtcrime/securesms/jobmanager/JobConsumer$JobResult;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 27
    new-instance v0, Lorg/thoughtcrime/securesms/jobmanager/JobConsumer$JobResult;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/thoughtcrime/securesms/jobmanager/JobConsumer$JobResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/thoughtcrime/securesms/jobmanager/JobConsumer$JobResult;->SUCCESS:Lorg/thoughtcrime/securesms/jobmanager/JobConsumer$JobResult;

    .line 28
    new-instance v0, Lorg/thoughtcrime/securesms/jobmanager/JobConsumer$JobResult;

    const-string v1, "FAILURE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/thoughtcrime/securesms/jobmanager/JobConsumer$JobResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/thoughtcrime/securesms/jobmanager/JobConsumer$JobResult;->FAILURE:Lorg/thoughtcrime/securesms/jobmanager/JobConsumer$JobResult;

    .line 29
    new-instance v0, Lorg/thoughtcrime/securesms/jobmanager/JobConsumer$JobResult;

    const-string v1, "DEFERRED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/thoughtcrime/securesms/jobmanager/JobConsumer$JobResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/thoughtcrime/securesms/jobmanager/JobConsumer$JobResult;->DEFERRED:Lorg/thoughtcrime/securesms/jobmanager/JobConsumer$JobResult;

    .line 26
    invoke-static {}, Lorg/thoughtcrime/securesms/jobmanager/JobConsumer$JobResult;->$values()[Lorg/thoughtcrime/securesms/jobmanager/JobConsumer$JobResult;

    move-result-object v0

    sput-object v0, Lorg/thoughtcrime/securesms/jobmanager/JobConsumer$JobResult;->$VALUES:[Lorg/thoughtcrime/securesms/jobmanager/JobConsumer$JobResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/thoughtcrime/securesms/jobmanager/JobConsumer$JobResult;
    .locals 1

    .line 26
    const-class v0, Lorg/thoughtcrime/securesms/jobmanager/JobConsumer$JobResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/thoughtcrime/securesms/jobmanager/JobConsumer$JobResult;

    return-object p0
.end method

.method public static values()[Lorg/thoughtcrime/securesms/jobmanager/JobConsumer$JobResult;
    .locals 1

    .line 26
    sget-object v0, Lorg/thoughtcrime/securesms/jobmanager/JobConsumer$JobResult;->$VALUES:[Lorg/thoughtcrime/securesms/jobmanager/JobConsumer$JobResult;

    invoke-virtual {v0}, [Lorg/thoughtcrime/securesms/jobmanager/JobConsumer$JobResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/thoughtcrime/securesms/jobmanager/JobConsumer$JobResult;

    return-object v0
.end method
