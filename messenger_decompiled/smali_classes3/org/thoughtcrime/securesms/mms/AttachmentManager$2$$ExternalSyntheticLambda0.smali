.class public final synthetic Lorg/thoughtcrime/securesms/mms/AttachmentManager$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/thoughtcrime/securesms/mms/SlideClickListener;


# instance fields
.field public final synthetic f$0:Lorg/thoughtcrime/securesms/mms/AttachmentManager$2;

.field public final synthetic f$1:Lcom/b44t/messenger/DcMsg;


# direct methods
.method public synthetic constructor <init>(Lorg/thoughtcrime/securesms/mms/AttachmentManager$2;Lcom/b44t/messenger/DcMsg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$2$$ExternalSyntheticLambda0;->f$0:Lorg/thoughtcrime/securesms/mms/AttachmentManager$2;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$2$$ExternalSyntheticLambda0;->f$1:Lcom/b44t/messenger/DcMsg;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;Lorg/thoughtcrime/securesms/mms/Slide;)V
    .locals 2

    iget-object v0, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$2$$ExternalSyntheticLambda0;->f$0:Lorg/thoughtcrime/securesms/mms/AttachmentManager$2;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$2$$ExternalSyntheticLambda0;->f$1:Lcom/b44t/messenger/DcMsg;

    invoke-virtual {v0, v1, p1, p2}, Lorg/thoughtcrime/securesms/mms/AttachmentManager$2;->lambda$onPostExecute$0$org-thoughtcrime-securesms-mms-AttachmentManager$2(Lcom/b44t/messenger/DcMsg;Landroid/view/View;Lorg/thoughtcrime/securesms/mms/Slide;)V

    return-void
.end method
