.class public final synthetic Lorg/thoughtcrime/securesms/videochat/VideochatUtil$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/thoughtcrime/securesms/videochat/VideochatUtil;

.field public final synthetic f$1:Lcom/b44t/messenger/DcContext;

.field public final synthetic f$2:Lcom/b44t/messenger/DcChat;

.field public final synthetic f$3:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lorg/thoughtcrime/securesms/videochat/VideochatUtil;Lcom/b44t/messenger/DcContext;Lcom/b44t/messenger/DcChat;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/videochat/VideochatUtil$$ExternalSyntheticLambda0;->f$0:Lorg/thoughtcrime/securesms/videochat/VideochatUtil;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/videochat/VideochatUtil$$ExternalSyntheticLambda0;->f$1:Lcom/b44t/messenger/DcContext;

    iput-object p3, p0, Lorg/thoughtcrime/securesms/videochat/VideochatUtil$$ExternalSyntheticLambda0;->f$2:Lcom/b44t/messenger/DcChat;

    iput-object p4, p0, Lorg/thoughtcrime/securesms/videochat/VideochatUtil$$ExternalSyntheticLambda0;->f$3:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object v0, p0, Lorg/thoughtcrime/securesms/videochat/VideochatUtil$$ExternalSyntheticLambda0;->f$0:Lorg/thoughtcrime/securesms/videochat/VideochatUtil;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/videochat/VideochatUtil$$ExternalSyntheticLambda0;->f$1:Lcom/b44t/messenger/DcContext;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/videochat/VideochatUtil$$ExternalSyntheticLambda0;->f$2:Lcom/b44t/messenger/DcChat;

    iget-object v3, p0, Lorg/thoughtcrime/securesms/videochat/VideochatUtil$$ExternalSyntheticLambda0;->f$3:Landroid/app/Activity;

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/thoughtcrime/securesms/videochat/VideochatUtil;->lambda$invite$0$org-thoughtcrime-securesms-videochat-VideochatUtil(Lcom/b44t/messenger/DcContext;Lcom/b44t/messenger/DcChat;Landroid/app/Activity;Landroid/content/DialogInterface;I)V

    return-void
.end method
