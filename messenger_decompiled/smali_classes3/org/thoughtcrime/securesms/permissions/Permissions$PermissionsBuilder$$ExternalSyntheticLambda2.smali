.class public final synthetic Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

.field public final synthetic f$1:Lorg/thoughtcrime/securesms/permissions/PermissionsRequest;


# direct methods
.method public synthetic constructor <init>(Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;Lorg/thoughtcrime/securesms/permissions/PermissionsRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder$$ExternalSyntheticLambda2;->f$0:Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder$$ExternalSyntheticLambda2;->f$1:Lorg/thoughtcrime/securesms/permissions/PermissionsRequest;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder$$ExternalSyntheticLambda2;->f$0:Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder$$ExternalSyntheticLambda2;->f$1:Lorg/thoughtcrime/securesms/permissions/PermissionsRequest;

    invoke-virtual {v0, v1, p1, p2}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->lambda$executePermissionsRequestWithRationale$1$org-thoughtcrime-securesms-permissions-Permissions$PermissionsBuilder(Lorg/thoughtcrime/securesms/permissions/PermissionsRequest;Landroid/content/DialogInterface;I)V

    return-void
.end method
