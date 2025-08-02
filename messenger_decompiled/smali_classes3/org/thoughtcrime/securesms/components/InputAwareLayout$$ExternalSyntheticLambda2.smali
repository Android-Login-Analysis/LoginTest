.class public final synthetic Lorg/thoughtcrime/securesms/components/InputAwareLayout$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/EditText;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/InputAwareLayout$$ExternalSyntheticLambda2;->f$0:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/InputAwareLayout$$ExternalSyntheticLambda2;->f$0:Landroid/widget/EditText;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/components/InputAwareLayout;->lambda$showSoftkey$2(Landroid/widget/EditText;)V

    return-void
.end method
