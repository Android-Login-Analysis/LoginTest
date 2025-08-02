.class public final synthetic Lorg/thoughtcrime/securesms/components/InputAwareLayout$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/thoughtcrime/securesms/components/InputAwareLayout;

.field public final synthetic f$1:Lorg/thoughtcrime/securesms/components/InputAwareLayout$InputView;


# direct methods
.method public synthetic constructor <init>(Lorg/thoughtcrime/securesms/components/InputAwareLayout;Lorg/thoughtcrime/securesms/components/InputAwareLayout$InputView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/InputAwareLayout$$ExternalSyntheticLambda0;->f$0:Lorg/thoughtcrime/securesms/components/InputAwareLayout;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/components/InputAwareLayout$$ExternalSyntheticLambda0;->f$1:Lorg/thoughtcrime/securesms/components/InputAwareLayout$InputView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/InputAwareLayout$$ExternalSyntheticLambda0;->f$0:Lorg/thoughtcrime/securesms/components/InputAwareLayout;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/InputAwareLayout$$ExternalSyntheticLambda0;->f$1:Lorg/thoughtcrime/securesms/components/InputAwareLayout$InputView;

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/components/InputAwareLayout;->lambda$show$0$org-thoughtcrime-securesms-components-InputAwareLayout(Lorg/thoughtcrime/securesms/components/InputAwareLayout$InputView;)V

    return-void
.end method
