.class public final synthetic Lorg/thoughtcrime/securesms/EphemeralMessagesDialog$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:[I

.field public final synthetic f$1:Lorg/thoughtcrime/securesms/EphemeralMessagesDialog$EphemeralMessagesInterface;


# direct methods
.method public synthetic constructor <init>([ILorg/thoughtcrime/securesms/EphemeralMessagesDialog$EphemeralMessagesInterface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/EphemeralMessagesDialog$$ExternalSyntheticLambda1;->f$0:[I

    iput-object p2, p0, Lorg/thoughtcrime/securesms/EphemeralMessagesDialog$$ExternalSyntheticLambda1;->f$1:Lorg/thoughtcrime/securesms/EphemeralMessagesDialog$EphemeralMessagesInterface;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lorg/thoughtcrime/securesms/EphemeralMessagesDialog$$ExternalSyntheticLambda1;->f$0:[I

    iget-object v1, p0, Lorg/thoughtcrime/securesms/EphemeralMessagesDialog$$ExternalSyntheticLambda1;->f$1:Lorg/thoughtcrime/securesms/EphemeralMessagesDialog$EphemeralMessagesInterface;

    invoke-static {v0, v1, p1, p2}, Lorg/thoughtcrime/securesms/EphemeralMessagesDialog;->lambda$show$1([ILorg/thoughtcrime/securesms/EphemeralMessagesDialog$EphemeralMessagesInterface;Landroid/content/DialogInterface;I)V

    return-void
.end method
