.class public final synthetic Lorg/thoughtcrime/securesms/WebxdcActivity$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/thoughtcrime/securesms/WebxdcActivity;

.field public final synthetic f$1:Lorg/json/JSONObject;


# direct methods
.method public synthetic constructor <init>(Lorg/thoughtcrime/securesms/WebxdcActivity;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/WebxdcActivity$$ExternalSyntheticLambda5;->f$0:Lorg/thoughtcrime/securesms/WebxdcActivity;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/WebxdcActivity$$ExternalSyntheticLambda5;->f$1:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/thoughtcrime/securesms/WebxdcActivity$$ExternalSyntheticLambda5;->f$0:Lorg/thoughtcrime/securesms/WebxdcActivity;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/WebxdcActivity$$ExternalSyntheticLambda5;->f$1:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/WebxdcActivity;->lambda$onCreate$1$org-thoughtcrime-securesms-WebxdcActivity(Lorg/json/JSONObject;)V

    return-void
.end method
