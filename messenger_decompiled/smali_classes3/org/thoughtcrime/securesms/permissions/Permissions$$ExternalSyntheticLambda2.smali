.class public final synthetic Lorg/thoughtcrime/securesms/permissions/Permissions$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/annimon/stream/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/permissions/Permissions$$ExternalSyntheticLambda2;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/thoughtcrime/securesms/permissions/Permissions$$ExternalSyntheticLambda2;->f$0:Landroid/content/Context;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/thoughtcrime/securesms/permissions/Permissions;->lambda$hasAny$1(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
