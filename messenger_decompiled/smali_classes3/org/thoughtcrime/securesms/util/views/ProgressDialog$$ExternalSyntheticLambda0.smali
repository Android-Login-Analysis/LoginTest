.class public final synthetic Lorg/thoughtcrime/securesms/util/views/ProgressDialog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/content/DialogInterface$OnCancelListener;

.field public final synthetic f$1:Lorg/thoughtcrime/securesms/util/views/ProgressDialog;


# direct methods
.method public synthetic constructor <init>(Landroid/content/DialogInterface$OnCancelListener;Lorg/thoughtcrime/securesms/util/views/ProgressDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/util/views/ProgressDialog$$ExternalSyntheticLambda0;->f$0:Landroid/content/DialogInterface$OnCancelListener;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/util/views/ProgressDialog$$ExternalSyntheticLambda0;->f$1:Lorg/thoughtcrime/securesms/util/views/ProgressDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lorg/thoughtcrime/securesms/util/views/ProgressDialog$$ExternalSyntheticLambda0;->f$0:Landroid/content/DialogInterface$OnCancelListener;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/util/views/ProgressDialog$$ExternalSyntheticLambda0;->f$1:Lorg/thoughtcrime/securesms/util/views/ProgressDialog;

    invoke-static {v0, v1, p1, p2}, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;->lambda$show$0(Landroid/content/DialogInterface$OnCancelListener;Lorg/thoughtcrime/securesms/util/views/ProgressDialog;Landroid/content/DialogInterface;I)V

    return-void
.end method
