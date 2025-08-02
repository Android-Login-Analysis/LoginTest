.class public final synthetic Lorg/thoughtcrime/securesms/connect/DirectShareUtil$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/connect/DirectShareUtil$$ExternalSyntheticLambda1;->f$0:Landroid/content/Context;

    iput p2, p0, Lorg/thoughtcrime/securesms/connect/DirectShareUtil$$ExternalSyntheticLambda1;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/thoughtcrime/securesms/connect/DirectShareUtil$$ExternalSyntheticLambda1;->f$0:Landroid/content/Context;

    iget v1, p0, Lorg/thoughtcrime/securesms/connect/DirectShareUtil$$ExternalSyntheticLambda1;->f$1:I

    invoke-static {v0, v1}, Lorg/thoughtcrime/securesms/connect/DirectShareUtil;->lambda$clearShortcut$0(Landroid/content/Context;I)V

    return-void
.end method
