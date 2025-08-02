.class public final synthetic Lorg/thoughtcrime/securesms/WelcomeActivity$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/thoughtcrime/securesms/WelcomeActivity;

.field public final synthetic f$1:Lorg/thoughtcrime/securesms/connect/AccountManager;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lorg/thoughtcrime/securesms/WelcomeActivity;Lorg/thoughtcrime/securesms/connect/AccountManager;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/WelcomeActivity$$ExternalSyntheticLambda7;->f$0:Lorg/thoughtcrime/securesms/WelcomeActivity;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/WelcomeActivity$$ExternalSyntheticLambda7;->f$1:Lorg/thoughtcrime/securesms/connect/AccountManager;

    iput-object p3, p0, Lorg/thoughtcrime/securesms/WelcomeActivity$$ExternalSyntheticLambda7;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lorg/thoughtcrime/securesms/WelcomeActivity$$ExternalSyntheticLambda7;->f$3:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lorg/thoughtcrime/securesms/WelcomeActivity$$ExternalSyntheticLambda7;->f$0:Lorg/thoughtcrime/securesms/WelcomeActivity;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/WelcomeActivity$$ExternalSyntheticLambda7;->f$1:Lorg/thoughtcrime/securesms/connect/AccountManager;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/WelcomeActivity$$ExternalSyntheticLambda7;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lorg/thoughtcrime/securesms/WelcomeActivity$$ExternalSyntheticLambda7;->f$3:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v3}, Lorg/thoughtcrime/securesms/WelcomeActivity;->lambda$startImport$7$org-thoughtcrime-securesms-WelcomeActivity(Lorg/thoughtcrime/securesms/connect/AccountManager;Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method
