.class public final synthetic Lorg/thoughtcrime/securesms/mms/AttachmentManager$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/thoughtcrime/securesms/mms/AttachmentManager;

.field public final synthetic f$1:Landroid/app/Activity;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lorg/thoughtcrime/securesms/mms/AttachmentManager;Landroid/app/Activity;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$$ExternalSyntheticLambda6;->f$0:Lorg/thoughtcrime/securesms/mms/AttachmentManager;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$$ExternalSyntheticLambda6;->f$1:Landroid/app/Activity;

    iput p3, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$$ExternalSyntheticLambda6;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$$ExternalSyntheticLambda6;->f$0:Lorg/thoughtcrime/securesms/mms/AttachmentManager;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$$ExternalSyntheticLambda6;->f$1:Landroid/app/Activity;

    iget v2, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$$ExternalSyntheticLambda6;->f$2:I

    invoke-virtual {v0, v1, v2}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->lambda$captureVideo$6$org-thoughtcrime-securesms-mms-AttachmentManager(Landroid/app/Activity;I)V

    return-void
.end method
