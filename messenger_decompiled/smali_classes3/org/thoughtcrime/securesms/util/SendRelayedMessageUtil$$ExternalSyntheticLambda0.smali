.class public final synthetic Lorg/thoughtcrime/securesms/util/SendRelayedMessageUtil$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:[Ljava/lang/Long;

.field public final synthetic f$1:Landroid/app/Activity;

.field public final synthetic f$2:[I


# direct methods
.method public synthetic constructor <init>([Ljava/lang/Long;Landroid/app/Activity;[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/util/SendRelayedMessageUtil$$ExternalSyntheticLambda0;->f$0:[Ljava/lang/Long;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/util/SendRelayedMessageUtil$$ExternalSyntheticLambda0;->f$1:Landroid/app/Activity;

    iput-object p3, p0, Lorg/thoughtcrime/securesms/util/SendRelayedMessageUtil$$ExternalSyntheticLambda0;->f$2:[I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/thoughtcrime/securesms/util/SendRelayedMessageUtil$$ExternalSyntheticLambda0;->f$0:[Ljava/lang/Long;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/util/SendRelayedMessageUtil$$ExternalSyntheticLambda0;->f$1:Landroid/app/Activity;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/util/SendRelayedMessageUtil$$ExternalSyntheticLambda0;->f$2:[I

    invoke-static {v0, v1, v2}, Lorg/thoughtcrime/securesms/util/SendRelayedMessageUtil;->lambda$immediatelyRelay$0([Ljava/lang/Long;Landroid/app/Activity;[I)V

    return-void
.end method
