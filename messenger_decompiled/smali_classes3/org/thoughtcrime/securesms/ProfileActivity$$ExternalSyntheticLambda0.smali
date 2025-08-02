.class public final synthetic Lorg/thoughtcrime/securesms/ProfileActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/thoughtcrime/securesms/MuteDialog$MuteSelectionListener;


# instance fields
.field public final synthetic f$0:Lorg/thoughtcrime/securesms/ProfileActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/thoughtcrime/securesms/ProfileActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/ProfileActivity$$ExternalSyntheticLambda0;->f$0:Lorg/thoughtcrime/securesms/ProfileActivity;

    return-void
.end method


# virtual methods
.method public final onMuted(J)V
    .locals 1

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileActivity$$ExternalSyntheticLambda0;->f$0:Lorg/thoughtcrime/securesms/ProfileActivity;

    invoke-virtual {v0, p1, p2}, Lorg/thoughtcrime/securesms/ProfileActivity;->lambda$onNotifyOnOff$2$org-thoughtcrime-securesms-ProfileActivity(J)V

    return-void
.end method
