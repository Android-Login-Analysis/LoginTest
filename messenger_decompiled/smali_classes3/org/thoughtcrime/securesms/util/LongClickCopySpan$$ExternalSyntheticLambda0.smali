.class public final synthetic Lorg/thoughtcrime/securesms/util/LongClickCopySpan$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/thoughtcrime/securesms/util/LongClickCopySpan;

.field public final synthetic f$1:Landroid/app/Activity;

.field public final synthetic f$2:Lcom/b44t/messenger/DcContact;


# direct methods
.method public synthetic constructor <init>(Lorg/thoughtcrime/securesms/util/LongClickCopySpan;Landroid/app/Activity;Lcom/b44t/messenger/DcContact;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/util/LongClickCopySpan$$ExternalSyntheticLambda0;->f$0:Lorg/thoughtcrime/securesms/util/LongClickCopySpan;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/util/LongClickCopySpan$$ExternalSyntheticLambda0;->f$1:Landroid/app/Activity;

    iput-object p3, p0, Lorg/thoughtcrime/securesms/util/LongClickCopySpan$$ExternalSyntheticLambda0;->f$2:Lcom/b44t/messenger/DcContact;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lorg/thoughtcrime/securesms/util/LongClickCopySpan$$ExternalSyntheticLambda0;->f$0:Lorg/thoughtcrime/securesms/util/LongClickCopySpan;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/util/LongClickCopySpan$$ExternalSyntheticLambda0;->f$1:Landroid/app/Activity;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/util/LongClickCopySpan$$ExternalSyntheticLambda0;->f$2:Lcom/b44t/messenger/DcContact;

    invoke-virtual {v0, v1, v2, p1, p2}, Lorg/thoughtcrime/securesms/util/LongClickCopySpan;->lambda$onClick$0$org-thoughtcrime-securesms-util-LongClickCopySpan(Landroid/app/Activity;Lcom/b44t/messenger/DcContact;Landroid/content/DialogInterface;I)V

    return-void
.end method
