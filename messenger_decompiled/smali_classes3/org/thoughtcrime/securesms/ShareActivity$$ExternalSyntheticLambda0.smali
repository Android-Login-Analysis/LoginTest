.class public final synthetic Lorg/thoughtcrime/securesms/ShareActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/thoughtcrime/securesms/ShareActivity;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lorg/thoughtcrime/securesms/ShareActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/ShareActivity$$ExternalSyntheticLambda0;->f$0:Lorg/thoughtcrime/securesms/ShareActivity;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/ShareActivity$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ShareActivity$$ExternalSyntheticLambda0;->f$0:Lorg/thoughtcrime/securesms/ShareActivity;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/ShareActivity$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/ShareActivity;->lambda$requestPermissionForFiles$0$org-thoughtcrime-securesms-ShareActivity(Ljava/util/List;)V

    return-void
.end method
