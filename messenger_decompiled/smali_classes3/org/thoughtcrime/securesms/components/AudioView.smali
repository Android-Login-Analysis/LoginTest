.class public Lorg/thoughtcrime/securesms/components/AudioView;
.super Landroid/widget/FrameLayout;
.source "AudioView.java"

# interfaces
.implements Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/components/AudioView$PlayClickedListener;,
        Lorg/thoughtcrime/securesms/components/AudioView$PauseClickedListener;,
        Lorg/thoughtcrime/securesms/components/AudioView$SeekBarModifiedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AudioView"


# instance fields
.field private audioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private audioSlidePlayer:Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;

.field private backwardsCounter:I

.field private final controlToggle:Lorg/thoughtcrime/securesms/components/AnimatingToggle;

.field private final mask:Landroid/view/View;

.field private final pauseButton:Landroid/widget/ImageView;

.field private final playButton:Landroid/widget/ImageView;

.field private final seekBar:Landroid/widget/SeekBar;

.field private final timestamp:Landroid/widget/TextView;

.field private final title:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, v0}, Lorg/thoughtcrime/securesms/components/AudioView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, p2, v0}, Lorg/thoughtcrime/securesms/components/AudioView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p2, 0x7f0c0024

    .line 58
    invoke-static {p1, p2, p0}, Lorg/thoughtcrime/securesms/components/AudioView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p2, 0x7f0900bf

    .line 60
    invoke-virtual {p0, p2}, Lorg/thoughtcrime/securesms/components/AudioView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lorg/thoughtcrime/securesms/components/AnimatingToggle;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/components/AudioView;->controlToggle:Lorg/thoughtcrime/securesms/components/AnimatingToggle;

    const p2, 0x7f090299

    .line 61
    invoke-virtual {p0, p2}, Lorg/thoughtcrime/securesms/components/AudioView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/components/AudioView;->playButton:Landroid/widget/ImageView;

    const p3, 0x7f090293

    .line 62
    invoke-virtual {p0, p3}, Lorg/thoughtcrime/securesms/components/AudioView;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p0, Lorg/thoughtcrime/securesms/components/AudioView;->pauseButton:Landroid/widget/ImageView;

    const v0, 0x7f09031a

    .line 63
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/components/AudioView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/components/AudioView;->seekBar:Landroid/widget/SeekBar;

    const v1, 0x7f0903ae

    .line 64
    invoke-virtual {p0, v1}, Lorg/thoughtcrime/securesms/components/AudioView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lorg/thoughtcrime/securesms/components/AudioView;->timestamp:Landroid/widget/TextView;

    const v2, 0x7f0903af

    .line 65
    invoke-virtual {p0, v2}, Lorg/thoughtcrime/securesms/components/AudioView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lorg/thoughtcrime/securesms/components/AudioView;->title:Landroid/widget/TextView;

    const v2, 0x7f09019a

    .line 66
    invoke-virtual {p0, v2}, Lorg/thoughtcrime/securesms/components/AudioView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lorg/thoughtcrime/securesms/components/AudioView;->mask:Landroid/view/View;

    const-string v2, "00:00"

    .line 68
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    new-instance v1, Lorg/thoughtcrime/securesms/components/AudioView$PlayClickedListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/thoughtcrime/securesms/components/AudioView$PlayClickedListener;-><init>(Lorg/thoughtcrime/securesms/components/AudioView;Lorg/thoughtcrime/securesms/components/AudioView$1;)V

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    new-instance v1, Lorg/thoughtcrime/securesms/components/AudioView$PauseClickedListener;

    invoke-direct {v1, p0, v2}, Lorg/thoughtcrime/securesms/components/AudioView$PauseClickedListener;-><init>(Lorg/thoughtcrime/securesms/components/AudioView;Lorg/thoughtcrime/securesms/components/AudioView$1;)V

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    new-instance v1, Lorg/thoughtcrime/securesms/components/AudioView$SeekBarModifiedListener;

    invoke-direct {v1, p0, v2}, Lorg/thoughtcrime/securesms/components/AudioView$SeekBarModifiedListener;-><init>(Lorg/thoughtcrime/securesms/components/AudioView;Lorg/thoughtcrime/securesms/components/AudioView$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 74
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const v0, 0x7f0801cf

    .line 75
    invoke-static {p1, v0}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0801cb

    .line 76
    invoke-static {p1, v0}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0800f4

    .line 77
    invoke-static {p1, v0}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 78
    invoke-static {p1, v0}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 81
    :cond_0
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/AudioView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f060020

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/components/AudioView;->setTint(I)V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 32
    sget-object v0, Lorg/thoughtcrime/securesms/components/AudioView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lorg/thoughtcrime/securesms/components/AudioView;)Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;
    .locals 0

    .line 32
    iget-object p0, p0, Lorg/thoughtcrime/securesms/components/AudioView;->audioSlidePlayer:Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;

    return-object p0
.end method

.method static synthetic access$500(Lorg/thoughtcrime/securesms/components/AudioView;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .locals 0

    .line 32
    iget-object p0, p0, Lorg/thoughtcrime/securesms/components/AudioView;->audioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-object p0
.end method

.method static synthetic access$502(Lorg/thoughtcrime/securesms/components/AudioView;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .locals 0

    .line 32
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/AudioView;->audioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-object p1
.end method

.method static synthetic access$600(Lorg/thoughtcrime/securesms/components/AudioView;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/AudioView;->togglePlayToPause()V

    return-void
.end method

.method static synthetic access$700(Lorg/thoughtcrime/securesms/components/AudioView;)D
    .locals 2

    .line 32
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/AudioView;->getProgress()D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$800(Lorg/thoughtcrime/securesms/components/AudioView;)Landroid/widget/ImageView;
    .locals 0

    .line 32
    iget-object p0, p0, Lorg/thoughtcrime/securesms/components/AudioView;->pauseButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$900(Lorg/thoughtcrime/securesms/components/AudioView;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/AudioView;->togglePauseToPlay()V

    return-void
.end method

.method private getProgress()D
    .locals 4

    .line 213
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/AudioView;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/AudioView;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 216
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/AudioView;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    int-to-double v0, v0

    iget-object v2, p0, Lorg/thoughtcrime/securesms/components/AudioView;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getMax()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    return-wide v0

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private togglePauseToPlay()V
    .locals 2

    .line 231
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/AudioView;->controlToggle:Lorg/thoughtcrime/securesms/components/AnimatingToggle;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/AudioView;->playButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/components/AnimatingToggle;->displayQuick(Landroid/view/View;)V

    .line 233
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 234
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/AudioView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0801cc

    invoke-static {v0, v1}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Landroidx/tracing/Trace$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/graphics/drawable/AnimatedVectorDrawable;

    move-result-object v0

    .line 235
    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/AudioView;->playButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 236
    invoke-static {v0}, Landroidx/tracing/Trace$$ExternalSyntheticApiModelOutline0;->m$2(Landroid/graphics/drawable/AnimatedVectorDrawable;)V

    :cond_0
    return-void
.end method

.method private togglePlayToPause()V
    .locals 2

    .line 221
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/AudioView;->controlToggle:Lorg/thoughtcrime/securesms/components/AnimatingToggle;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/AudioView;->pauseButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/components/AnimatingToggle;->displayQuick(Landroid/view/View;)V

    .line 223
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 224
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/AudioView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0801d0

    invoke-static {v0, v1}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Landroidx/tracing/Trace$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/graphics/drawable/AnimatedVectorDrawable;

    move-result-object v0

    .line 225
    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/AudioView;->pauseButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 226
    invoke-static {v0}, Landroidx/tracing/Trace$$ExternalSyntheticApiModelOutline0;->m$2(Landroid/graphics/drawable/AnimatedVectorDrawable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    .line 143
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/AudioView;->audioSlidePlayer:Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/AudioView;->pauseButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 144
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/AudioView;->audioSlidePlayer:Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->stop()V

    :cond_0
    return-void
.end method

.method public disablePlayer(Z)V
    .locals 1

    .line 173
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/AudioView;->mask:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public getDescription()Ljava/lang/String;
    .locals 3

    .line 125
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/AudioView;->title:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 126
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/AudioView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120066

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 128
    :cond_0
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/AudioView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120432

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 130
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/components/AudioView;->timestamp:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 131
    iget-object v2, p0, Lorg/thoughtcrime/securesms/components/AudioView;->title:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/AudioView;->title:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public getSeekBarGlobalVisibleRect(Landroid/graphics/Rect;)V
    .locals 1

    .line 209
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/AudioView;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    return-void
.end method

.method public onProgress(Lorg/thoughtcrime/securesms/mms/AudioSlide;DJ)V
    .locals 2

    .line 178
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/AudioView;->audioSlidePlayer:Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->getAudioSlide()Lorg/thoughtcrime/securesms/mms/AudioSlide;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/mms/AudioSlide;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 181
    :cond_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/AudioView;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result p1

    int-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p2, p2, v0

    invoke-static {p2, p3}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    double-to-int p1, p1

    .line 183
    iget-object p2, p0, Lorg/thoughtcrime/securesms/components/AudioView;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {p2}, Landroid/widget/SeekBar;->getProgress()I

    move-result p2

    if-gt p1, p2, :cond_2

    iget p2, p0, Lorg/thoughtcrime/securesms/components/AudioView;->backwardsCounter:I

    const/4 p3, 0x3

    if-le p2, p3, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 p2, p2, 0x1

    .line 190
    iput p2, p0, Lorg/thoughtcrime/securesms/components/AudioView;->backwardsCounter:I

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p2, 0x0

    .line 184
    iput p2, p0, Lorg/thoughtcrime/securesms/components/AudioView;->backwardsCounter:I

    .line 185
    iget-object p2, p0, Lorg/thoughtcrime/securesms/components/AudioView;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {p2, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    const-wide/16 p1, -0x1

    cmp-long p3, p4, p1

    if-eqz p3, :cond_3

    .line 187
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/AudioView;->timestamp:Landroid/widget/TextView;

    invoke-static {p4, p5}, Lorg/thoughtcrime/securesms/util/DateUtils;->getFormatedDuration(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onReceivedDuration(I)V
    .locals 3

    .line 150
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/AudioView;->timestamp:Landroid/widget/TextView;

    int-to-long v1, p1

    invoke-static {v1, v2}, Lorg/thoughtcrime/securesms/util/DateUtils;->getFormatedDuration(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 155
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/AudioView;->pauseButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/AudioView;->togglePlayToPause()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 7

    .line 162
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/AudioView;->playButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/AudioView;->togglePauseToPlay()V

    .line 166
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/AudioView;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/AudioView;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    if-lt v0, v1, :cond_1

    const/4 v0, 0x4

    .line 167
    iput v0, p0, Lorg/thoughtcrime/securesms/components/AudioView;->backwardsCounter:I

    .line 168
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/AudioView;->audioSlidePlayer:Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->getAudioSlide()Lorg/thoughtcrime/securesms/mms/AudioSlide;

    move-result-object v2

    const-wide/16 v3, 0x0

    const-wide/16 v5, -0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lorg/thoughtcrime/securesms/components/AudioView;->onProgress(Lorg/thoughtcrime/securesms/mms/AudioSlide;DJ)V

    :cond_1
    return-void
.end method

.method public setAudio(Lorg/thoughtcrime/securesms/mms/AudioSlide;I)V
    .locals 4

    .line 86
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/AudioView;->controlToggle:Lorg/thoughtcrime/securesms/components/AnimatingToggle;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/AudioView;->playButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/components/AnimatingToggle;->displayQuick(Landroid/view/View;)V

    .line 87
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/AudioView;->seekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 88
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/AudioView;->seekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 89
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/AudioView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p0}, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->createFor(Landroid/content/Context;Lorg/thoughtcrime/securesms/mms/AudioSlide;Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$Listener;)Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;

    move-result-object v0

    iput-object v0, p0, Lorg/thoughtcrime/securesms/components/AudioView;->audioSlidePlayer:Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;

    .line 90
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/AudioView;->timestamp:Landroid/widget/TextView;

    int-to-long v2, p2

    invoke-static {v2, v3}, Lorg/thoughtcrime/securesms/util/DateUtils;->getFormatedDuration(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/mms/AudioSlide;->asAttachment()Lorg/thoughtcrime/securesms/attachments/Attachment;

    move-result-object p2

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/attachments/Attachment;->isVoiceNote()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/mms/AudioSlide;->getFileName()Lorg/thoughtcrime/securesms/util/guava/Optional;

    move-result-object p2

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/util/guava/Optional;->isPresent()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    iget-object p2, p0, Lorg/thoughtcrime/securesms/components/AudioView;->title:Landroid/widget/TextView;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/mms/AudioSlide;->getFileName()Lorg/thoughtcrime/securesms/util/guava/Optional;

    move-result-object p1

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/util/guava/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/AudioView;->title:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 93
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/AudioView;->title:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public setDuration(I)V
    .locals 5

    .line 138
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/AudioView;->getProgress()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    .line 139
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/AudioView;->timestamp:Landroid/widget/TextView;

    int-to-long v1, p1

    invoke-static {v1, v2}, Lorg/thoughtcrime/securesms/util/DateUtils;->getFormatedDuration(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 103
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/AudioView;->mask:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1

    .line 109
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 110
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/AudioView;->mask:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 111
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/AudioView;->playButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 112
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/AudioView;->pauseButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setTint(I)V
    .locals 2

    .line 195
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 196
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/AudioView;->playButton:Landroid/widget/ImageView;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlinx/coroutines/time/TimeKt$$ExternalSyntheticApiModelOutline0;->m(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    .line 197
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/AudioView;->pauseButton:Landroid/widget/ImageView;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlinx/coroutines/time/TimeKt$$ExternalSyntheticApiModelOutline0;->m(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 199
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/AudioView;->playButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 200
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/AudioView;->pauseButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 203
    :goto_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/AudioView;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 205
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/AudioView;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public togglePlay()V
    .locals 1

    .line 116
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/AudioView;->playButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/AudioView;->playButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->performClick()Z

    goto :goto_0

    .line 119
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/AudioView;->pauseButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->performClick()Z

    :goto_0
    return-void
.end method
