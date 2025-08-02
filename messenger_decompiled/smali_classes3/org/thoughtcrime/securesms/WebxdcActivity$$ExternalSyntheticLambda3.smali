.class public final synthetic Lorg/thoughtcrime/securesms/WebxdcActivity$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/thoughtcrime/securesms/WebxdcActivity;

.field public final synthetic f$1:Lorg/json/JSONObject;

.field public final synthetic f$2:Lcom/b44t/messenger/DcChat;


# direct methods
.method public synthetic constructor <init>(Lorg/thoughtcrime/securesms/WebxdcActivity;Lorg/json/JSONObject;Lcom/b44t/messenger/DcChat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/WebxdcActivity$$ExternalSyntheticLambda3;->f$0:Lorg/thoughtcrime/securesms/WebxdcActivity;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/WebxdcActivity$$ExternalSyntheticLambda3;->f$1:Lorg/json/JSONObject;

    iput-object p3, p0, Lorg/thoughtcrime/securesms/WebxdcActivity$$ExternalSyntheticLambda3;->f$2:Lcom/b44t/messenger/DcChat;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/thoughtcrime/securesms/WebxdcActivity$$ExternalSyntheticLambda3;->f$0:Lorg/thoughtcrime/securesms/WebxdcActivity;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/WebxdcActivity$$ExternalSyntheticLambda3;->f$1:Lorg/json/JSONObject;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/WebxdcActivity$$ExternalSyntheticLambda3;->f$2:Lcom/b44t/messenger/DcChat;

    invoke-virtual {v0, v1, v2}, Lorg/thoughtcrime/securesms/WebxdcActivity;->lambda$onCreate$0$org-thoughtcrime-securesms-WebxdcActivity(Lorg/json/JSONObject;Lcom/b44t/messenger/DcChat;)V

    return-void
.end method
