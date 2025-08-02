.class public final synthetic Lorg/thoughtcrime/securesms/connect/DcEventCenter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;

.field public final synthetic f$1:Lcom/b44t/messenger/DcEvent;


# direct methods
.method public synthetic constructor <init>(Lorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;Lcom/b44t/messenger/DcEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/connect/DcEventCenter$$ExternalSyntheticLambda1;->f$0:Lorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/connect/DcEventCenter$$ExternalSyntheticLambda1;->f$1:Lcom/b44t/messenger/DcEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/thoughtcrime/securesms/connect/DcEventCenter$$ExternalSyntheticLambda1;->f$0:Lorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/connect/DcEventCenter$$ExternalSyntheticLambda1;->f$1:Lcom/b44t/messenger/DcEvent;

    invoke-static {v0, v1}, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->lambda$sendToObservers$0(Lorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;Lcom/b44t/messenger/DcEvent;)V

    return-void
.end method
