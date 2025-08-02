.class public final synthetic Lorg/thoughtcrime/securesms/ApplicationContext$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/thoughtcrime/securesms/ApplicationContext;


# direct methods
.method public synthetic constructor <init>(Lorg/thoughtcrime/securesms/ApplicationContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/ApplicationContext$$ExternalSyntheticLambda0;->f$0:Lorg/thoughtcrime/securesms/ApplicationContext;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ApplicationContext$$ExternalSyntheticLambda0;->f$0:Lorg/thoughtcrime/securesms/ApplicationContext;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/ApplicationContext;->lambda$onCreate$0$org-thoughtcrime-securesms-ApplicationContext()V

    return-void
.end method
