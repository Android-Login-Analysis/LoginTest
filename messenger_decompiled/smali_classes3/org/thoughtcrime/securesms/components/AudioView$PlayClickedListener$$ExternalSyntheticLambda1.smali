.class public final synthetic Lorg/thoughtcrime/securesms/components/AudioView$PlayClickedListener$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# instance fields
.field public final synthetic f$0:Lorg/thoughtcrime/securesms/components/AudioView$PlayClickedListener;


# direct methods
.method public synthetic constructor <init>(Lorg/thoughtcrime/securesms/components/AudioView$PlayClickedListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/AudioView$PlayClickedListener$$ExternalSyntheticLambda1;->f$0:Lorg/thoughtcrime/securesms/components/AudioView$PlayClickedListener;

    return-void
.end method


# virtual methods
.method public final onAudioFocusChange(I)V
    .locals 1

    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/AudioView$PlayClickedListener$$ExternalSyntheticLambda1;->f$0:Lorg/thoughtcrime/securesms/components/AudioView$PlayClickedListener;

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/components/AudioView$PlayClickedListener;->lambda$onClick$0$org-thoughtcrime-securesms-components-AudioView$PlayClickedListener(I)V

    return-void
.end method
