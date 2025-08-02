.class public final synthetic Lorg/thoughtcrime/securesms/notifications/RemoteReplyReceiver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/CharSequence;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;IILjava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/notifications/RemoteReplyReceiver$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iput p2, p0, Lorg/thoughtcrime/securesms/notifications/RemoteReplyReceiver$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Lorg/thoughtcrime/securesms/notifications/RemoteReplyReceiver$$ExternalSyntheticLambda0;->f$2:I

    iput-object p4, p0, Lorg/thoughtcrime/securesms/notifications/RemoteReplyReceiver$$ExternalSyntheticLambda0;->f$3:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lorg/thoughtcrime/securesms/notifications/RemoteReplyReceiver$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iget v1, p0, Lorg/thoughtcrime/securesms/notifications/RemoteReplyReceiver$$ExternalSyntheticLambda0;->f$1:I

    iget v2, p0, Lorg/thoughtcrime/securesms/notifications/RemoteReplyReceiver$$ExternalSyntheticLambda0;->f$2:I

    iget-object v3, p0, Lorg/thoughtcrime/securesms/notifications/RemoteReplyReceiver$$ExternalSyntheticLambda0;->f$3:Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2, v3}, Lorg/thoughtcrime/securesms/notifications/RemoteReplyReceiver;->lambda$onReceive$0(Landroid/content/Context;IILjava/lang/CharSequence;)V

    return-void
.end method
