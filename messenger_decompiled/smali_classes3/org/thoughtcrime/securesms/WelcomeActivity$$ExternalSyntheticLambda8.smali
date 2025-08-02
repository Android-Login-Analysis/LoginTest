.class public final synthetic Lorg/thoughtcrime/securesms/WelcomeActivity$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/thoughtcrime/securesms/WelcomeActivity;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lorg/thoughtcrime/securesms/WelcomeActivity;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/WelcomeActivity$$ExternalSyntheticLambda8;->f$0:Lorg/thoughtcrime/securesms/WelcomeActivity;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/WelcomeActivity$$ExternalSyntheticLambda8;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lorg/thoughtcrime/securesms/WelcomeActivity$$ExternalSyntheticLambda8;->f$2:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/thoughtcrime/securesms/WelcomeActivity$$ExternalSyntheticLambda8;->f$0:Lorg/thoughtcrime/securesms/WelcomeActivity;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/WelcomeActivity$$ExternalSyntheticLambda8;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/WelcomeActivity$$ExternalSyntheticLambda8;->f$2:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lorg/thoughtcrime/securesms/WelcomeActivity;->lambda$startImport$6$org-thoughtcrime-securesms-WelcomeActivity(Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method
