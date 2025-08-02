.class Lorg/thoughtcrime/securesms/jobmanager/JobManager$1;
.super Ljava/lang/Object;
.source "JobManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/thoughtcrime/securesms/jobmanager/JobManager;->add(Lorg/thoughtcrime/securesms/jobmanager/Job;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/jobmanager/JobManager;

.field final synthetic val$job:Lorg/thoughtcrime/securesms/jobmanager/Job;


# direct methods
.method constructor <init>(Lorg/thoughtcrime/securesms/jobmanager/JobManager;Lorg/thoughtcrime/securesms/jobmanager/Job;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lorg/thoughtcrime/securesms/jobmanager/JobManager$1;->this$0:Lorg/thoughtcrime/securesms/jobmanager/JobManager;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/jobmanager/JobManager$1;->val$job:Lorg/thoughtcrime/securesms/jobmanager/Job;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 43
    iget-object v0, p0, Lorg/thoughtcrime/securesms/jobmanager/JobManager$1;->val$job:Lorg/thoughtcrime/securesms/jobmanager/Job;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/jobmanager/Job;->onAdded()V

    .line 44
    iget-object v0, p0, Lorg/thoughtcrime/securesms/jobmanager/JobManager$1;->this$0:Lorg/thoughtcrime/securesms/jobmanager/JobManager;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/jobmanager/JobManager;->access$000(Lorg/thoughtcrime/securesms/jobmanager/JobManager;)Lorg/thoughtcrime/securesms/jobmanager/JobQueue;

    move-result-object v0

    iget-object v1, p0, Lorg/thoughtcrime/securesms/jobmanager/JobManager$1;->val$job:Lorg/thoughtcrime/securesms/jobmanager/Job;

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/jobmanager/JobQueue;->add(Lorg/thoughtcrime/securesms/jobmanager/Job;)V

    return-void
.end method
