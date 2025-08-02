.class Lorg/thoughtcrime/securesms/components/AudioView$PlayClickedListener;
.super Ljava/lang/Object;
.source "AudioView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/components/AudioView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlayClickedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/components/AudioView;


# direct methods
.method private constructor <init>(Lorg/thoughtcrime/securesms/components/AudioView;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/AudioView$PlayClickedListener;->this$0:Lorg/thoughtcrime/securesms/components/AudioView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/thoughtcrime/securesms/components/AudioView;Lorg/thoughtcrime/securesms/components/AudioView$1;)V
    .locals 0

    .line 240
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/components/AudioView$PlayClickedListener;-><init>(Lorg/thoughtcrime/securesms/components/AudioView;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$onClick$0$org-thoughtcrime-securesms-components-AudioView$PlayClickedListener(I)V
    .locals 1

    .line 0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 251
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/AudioView$PlayClickedListener;->this$0:Lorg/thoughtcrime/securesms/components/AudioView;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/components/AudioView;->access$800(Lorg/thoughtcrime/securesms/components/AudioView;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->performClick()Z

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 245
    :try_start_0
    invoke-static {}, Lorg/thoughtcrime/securesms/components/AudioView;->access$300()Ljava/lang/String;

    move-result-object p1

    const-string v0, "playbutton onClick"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/AudioView$PlayClickedListener;->this$0:Lorg/thoughtcrime/securesms/components/AudioView;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/components/AudioView;->access$400(Lorg/thoughtcrime/securesms/components/AudioView;)Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 247
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_1

    .line 248
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/AudioView$PlayClickedListener;->this$0:Lorg/thoughtcrime/securesms/components/AudioView;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/components/AudioView;->access$500(Lorg/thoughtcrime/securesms/components/AudioView;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object p1

    if-nez p1, :cond_0

    .line 249
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/AudioView$PlayClickedListener;->this$0:Lorg/thoughtcrime/securesms/components/AudioView;

    new-instance v0, Lorg/thoughtcrime/securesms/components/AudioView$PlayClickedListener$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/components/AudioView$PlayClickedListener$$ExternalSyntheticLambda1;-><init>(Lorg/thoughtcrime/securesms/components/AudioView$PlayClickedListener;)V

    invoke-static {p1, v0}, Lorg/thoughtcrime/securesms/components/AudioView;->access$502(Lorg/thoughtcrime/securesms/components/AudioView;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 256
    :cond_0
    new-instance p1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {p1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v0, 0x2

    .line 257
    invoke-static {p1, v0}, Landroidx/core/app/NotificationCompat$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/media/AudioAttributes$Builder;I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    const/4 v0, 0x1

    .line 258
    invoke-static {p1, v0}, Landroidx/core/app/NotificationCompat$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/AudioAttributes$Builder;I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    .line 259
    invoke-static {p1}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/AudioAttributes$Builder;)Landroid/media/AudioAttributes;

    move-result-object p1

    .line 261
    new-instance v1, Landroid/media/AudioFocusRequest$Builder;

    invoke-direct {v1, v0}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    .line 262
    invoke-static {v1, p1}, Lcom/bumptech/glide/util/LogTime$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/AudioFocusRequest$Builder;Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 263
    invoke-static {p1, v0}, Lkotlinx/coroutines/time/TimeKt$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/AudioFocusRequest$Builder;Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p1

    .line 264
    invoke-static {p1, v0}, Lcom/bumptech/glide/util/LogTime$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/AudioFocusRequest$Builder;Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p1

    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/AudioView$PlayClickedListener;->this$0:Lorg/thoughtcrime/securesms/components/AudioView;

    .line 265
    invoke-static {v0}, Lorg/thoughtcrime/securesms/components/AudioView;->access$500(Lorg/thoughtcrime/securesms/components/AudioView;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/bumptech/glide/util/LogTime$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/AudioFocusRequest$Builder;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p1

    .line 266
    invoke-static {p1}, Lcom/bumptech/glide/util/LogTime$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/AudioFocusRequest$Builder;)Landroid/media/AudioFocusRequest;

    move-result-object p1

    .line 268
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/AudioView$PlayClickedListener;->this$0:Lorg/thoughtcrime/securesms/components/AudioView;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/AudioView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 269
    invoke-static {v0, p1}, Lcom/bumptech/glide/util/LogTime$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/AudioManager;Landroid/media/AudioFocusRequest;)I

    .line 272
    :cond_1
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/AudioView$PlayClickedListener;->this$0:Lorg/thoughtcrime/securesms/components/AudioView;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/components/AudioView;->access$600(Lorg/thoughtcrime/securesms/components/AudioView;)V

    .line 273
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/AudioView$PlayClickedListener;->this$0:Lorg/thoughtcrime/securesms/components/AudioView;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/components/AudioView;->access$400(Lorg/thoughtcrime/securesms/components/AudioView;)Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;

    move-result-object p1

    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/AudioView$PlayClickedListener;->this$0:Lorg/thoughtcrime/securesms/components/AudioView;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/components/AudioView;->access$700(Lorg/thoughtcrime/securesms/components/AudioView;)D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->play(D)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 276
    invoke-static {}, Lorg/thoughtcrime/securesms/components/AudioView;->access$300()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return-void
.end method
