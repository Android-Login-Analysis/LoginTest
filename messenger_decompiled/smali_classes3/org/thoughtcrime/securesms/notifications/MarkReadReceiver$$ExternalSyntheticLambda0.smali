.class public final synthetic Lorg/thoughtcrime/securesms/notifications/MarkReadReceiver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;IIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/notifications/MarkReadReceiver$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iput p2, p0, Lorg/thoughtcrime/securesms/notifications/MarkReadReceiver$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Lorg/thoughtcrime/securesms/notifications/MarkReadReceiver$$ExternalSyntheticLambda0;->f$2:I

    iput-boolean p4, p0, Lorg/thoughtcrime/securesms/notifications/MarkReadReceiver$$ExternalSyntheticLambda0;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lorg/thoughtcrime/securesms/notifications/MarkReadReceiver$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iget v1, p0, Lorg/thoughtcrime/securesms/notifications/MarkReadReceiver$$ExternalSyntheticLambda0;->f$1:I

    iget v2, p0, Lorg/thoughtcrime/securesms/notifications/MarkReadReceiver$$ExternalSyntheticLambda0;->f$2:I

    iget-boolean v3, p0, Lorg/thoughtcrime/securesms/notifications/MarkReadReceiver$$ExternalSyntheticLambda0;->f$3:Z

    invoke-static {v0, v1, v2, v3}, Lorg/thoughtcrime/securesms/notifications/MarkReadReceiver;->lambda$onReceive$0(Landroid/content/Context;IIZ)V

    return-void
.end method
