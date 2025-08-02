.class Lorg/thoughtcrime/securesms/mms/AttachmentManager$2$1SetDurationListener;
.super Ljava/lang/Object;
.source "AttachmentManager.java"

# interfaces
.implements Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/thoughtcrime/securesms/mms/AttachmentManager$2;->onPostExecute(Lorg/thoughtcrime/securesms/mms/Slide;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SetDurationListener"
.end annotation


# instance fields
.field final synthetic this$1:Lorg/thoughtcrime/securesms/mms/AttachmentManager$2;


# direct methods
.method constructor <init>(Lorg/thoughtcrime/securesms/mms/AttachmentManager$2;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$2$1SetDurationListener;->this$1:Lorg/thoughtcrime/securesms/mms/AttachmentManager$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(Lorg/thoughtcrime/securesms/mms/AudioSlide;DJ)V
    .locals 0

    return-void
.end method

.method public onReceivedDuration(I)V
    .locals 1

    .line 306
    iget-object v0, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$2$1SetDurationListener;->this$1:Lorg/thoughtcrime/securesms/mms/AttachmentManager$2;

    iget-object v0, v0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$2;->this$0:Lorg/thoughtcrime/securesms/mms/AttachmentManager;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->access$900(Lorg/thoughtcrime/securesms/mms/AttachmentManager;)Lorg/thoughtcrime/securesms/components/RemovableEditableMediaView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/RemovableEditableMediaView;->getCurrent()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/components/AudioView;

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/components/AudioView;->setDuration(I)V

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method
