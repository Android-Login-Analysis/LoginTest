.class public final synthetic Lorg/thoughtcrime/securesms/components/reminder/DozeReminder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/reminder/DozeReminder$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/reminder/DozeReminder$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lorg/thoughtcrime/securesms/components/reminder/DozeReminder;->lambda$maybeAskDirectly$0(Landroid/content/Context;Landroid/content/DialogInterface;I)V

    return-void
.end method
