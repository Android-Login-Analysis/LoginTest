.class public Lorg/thoughtcrime/securesms/components/InputPanel;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "InputPanel.java"

# interfaces
.implements Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$Listener;
.implements Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout$OnKeyboardShownListener;
.implements Lorg/thoughtcrime/securesms/components/emoji/EmojiKeyboardProvider$EmojiEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/components/InputPanel$RecordTime;,
        Lorg/thoughtcrime/securesms/components/InputPanel$SlideToCancel;,
        Lorg/thoughtcrime/securesms/components/InputPanel$Listener;,
        Lorg/thoughtcrime/securesms/components/InputPanel$MediaListener;
    }
.end annotation


# static fields
.field private static final FADE_TIME:I = 0x96

.field private static final TAG:Ljava/lang/String; = "InputPanel"


# instance fields
.field private buttonToggle:Landroid/view/View;

.field private composeText:Lorg/thoughtcrime/securesms/components/ComposeText;

.field private emojiVisible:Z

.field private listener:Lorg/thoughtcrime/securesms/components/InputPanel$Listener;

.field private mediaKeyboard:Lorg/thoughtcrime/securesms/components/emoji/EmojiToggle;

.field private microphoneRecorderView:Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView;

.field private quickAudioToggle:Landroid/view/View;

.field private quickCameraToggle:Landroid/view/View;

.field private quoteAnimator:Landroid/animation/ValueAnimator;

.field private quoteView:Lorg/thoughtcrime/securesms/components/QuoteView;

.field private recordLockCancel:Landroid/view/View;

.field private recordTime:Lorg/thoughtcrime/securesms/components/InputPanel$RecordTime;

.field private recordingContainer:Landroid/view/View;

.field private slideToCancel:Lorg/thoughtcrime/securesms/components/InputPanel$SlideToCancel;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 85
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$100(Lorg/thoughtcrime/securesms/components/InputPanel;)Lorg/thoughtcrime/securesms/components/QuoteView;
    .locals 0

    .line 48
    iget-object p0, p0, Lorg/thoughtcrime/securesms/components/InputPanel;->quoteView:Lorg/thoughtcrime/securesms/components/QuoteView;

    return-object p0
.end method

.method static synthetic access$200(Lorg/thoughtcrime/securesms/components/InputPanel;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lorg/thoughtcrime/securesms/components/InputPanel;->emojiVisible:Z

    return p0
.end method

.method static synthetic access$300(Lorg/thoughtcrime/securesms/components/InputPanel;)Lorg/thoughtcrime/securesms/components/emoji/EmojiToggle;
    .locals 0

    .line 48
    iget-object p0, p0, Lorg/thoughtcrime/securesms/components/InputPanel;->mediaKeyboard:Lorg/thoughtcrime/securesms/components/emoji/EmojiToggle;

    return-object p0
.end method

.method static synthetic access$400(Lorg/thoughtcrime/securesms/components/InputPanel;)Lorg/thoughtcrime/securesms/components/ComposeText;
    .locals 0

    .line 48
    iget-object p0, p0, Lorg/thoughtcrime/securesms/components/InputPanel;->composeText:Lorg/thoughtcrime/securesms/components/ComposeText;

    return-object p0
.end method

.method static synthetic access$500(Lorg/thoughtcrime/securesms/components/InputPanel;)Landroid/view/View;
    .locals 0

    .line 48
    iget-object p0, p0, Lorg/thoughtcrime/securesms/components/InputPanel;->quickCameraToggle:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$600(Lorg/thoughtcrime/securesms/components/InputPanel;)Landroid/view/View;
    .locals 0

    .line 48
    iget-object p0, p0, Lorg/thoughtcrime/securesms/components/InputPanel;->quickAudioToggle:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$700(Lorg/thoughtcrime/securesms/components/InputPanel;)Landroid/view/View;
    .locals 0

    .line 48
    iget-object p0, p0, Lorg/thoughtcrime/securesms/components/InputPanel;->buttonToggle:Landroid/view/View;

    return-object p0
.end method

.method private static createHeightAnimator(Landroid/view/View;IILorg/thoughtcrime/securesms/animation/AnimationCompleteListener;)Landroid/animation/ValueAnimator;
    .locals 2

    .line 178
    filled-new-array {p1, p2}, [I

    move-result-object p1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    .line 179
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 181
    new-instance p2, Lorg/thoughtcrime/securesms/components/InputPanel$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/thoughtcrime/securesms/components/InputPanel$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    if-eqz p3, :cond_0

    .line 188
    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    return-object p1
.end method

.method static synthetic lambda$createHeightAnimator$3(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 182
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 183
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 184
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic lambda$setListener$2(Lorg/thoughtcrime/securesms/components/InputPanel$Listener;Landroid/view/View;)V
    .locals 0

    .line 123
    invoke-interface {p0}, Lorg/thoughtcrime/securesms/components/InputPanel$Listener;->onEmojiToggle()V

    return-void
.end method

.method private onRecordHideEvent()J
    .locals 4

    .line 285
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/InputPanel;->recordLockCancel:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 287
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/InputPanel;->slideToCancel:Lorg/thoughtcrime/securesms/components/InputPanel$SlideToCancel;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/InputPanel$SlideToCancel;->hide()Lcom/b44t/messenger/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 288
    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/InputPanel;->recordTime:Lorg/thoughtcrime/securesms/components/InputPanel$RecordTime;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/components/InputPanel$RecordTime;->hide()J

    move-result-wide v1

    .line 290
    new-instance v3, Lorg/thoughtcrime/securesms/components/InputPanel$2;

    invoke-direct {v3, p0}, Lorg/thoughtcrime/securesms/components/InputPanel$2;-><init>(Lorg/thoughtcrime/securesms/components/InputPanel;)V

    invoke-interface {v0, v3}, Lcom/b44t/messenger/util/concurrent/ListenableFuture;->addListener(Lcom/b44t/messenger/util/concurrent/ListenableFuture$Listener;)V

    return-wide v1
.end method


# virtual methods
.method public clearQuote()V
    .locals 4

    .line 159
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/InputPanel;->quoteAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 163
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/InputPanel;->quoteView:Lorg/thoughtcrime/securesms/components/QuoteView;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/QuoteView;->getMeasuredHeight()I

    move-result v1

    new-instance v2, Lorg/thoughtcrime/securesms/components/InputPanel$1;

    invoke-direct {v2, p0}, Lorg/thoughtcrime/securesms/components/InputPanel$1;-><init>(Lorg/thoughtcrime/securesms/components/InputPanel;)V

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Lorg/thoughtcrime/securesms/components/InputPanel;->createHeightAnimator(Landroid/view/View;IILorg/thoughtcrime/securesms/animation/AnimationCompleteListener;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/thoughtcrime/securesms/components/InputPanel;->quoteAnimator:Landroid/animation/ValueAnimator;

    .line 170
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public clearQuoteWithoutAnimation()V
    .locals 1

    .line 155
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/InputPanel;->quoteView:Lorg/thoughtcrime/securesms/components/QuoteView;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/QuoteView;->dismiss()V

    return-void
.end method

.method public clickOnComposeInput()V
    .locals 1

    .line 206
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/InputPanel;->composeText:Lorg/thoughtcrime/securesms/components/ComposeText;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/ComposeText;->performClick()Z

    return-void
.end method

.method public getQuote()Lorg/thoughtcrime/securesms/util/guava/Optional;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/thoughtcrime/securesms/util/guava/Optional<",
            "Lorg/thoughtcrime/securesms/mms/QuoteModel;",
            ">;"
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/InputPanel;->quoteView:Lorg/thoughtcrime/securesms/components/QuoteView;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/QuoteView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/InputPanel;->quoteView:Lorg/thoughtcrime/securesms/components/QuoteView;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/QuoteView;->getBody()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 196
    new-instance v0, Lorg/thoughtcrime/securesms/mms/QuoteModel;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/InputPanel;->quoteView:Lorg/thoughtcrime/securesms/components/QuoteView;

    .line 197
    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/components/QuoteView;->getDcContact()Lcom/b44t/messenger/DcContact;

    move-result-object v2

    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/InputPanel;->quoteView:Lorg/thoughtcrime/securesms/components/QuoteView;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/components/QuoteView;->getBody()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/InputPanel;->quoteView:Lorg/thoughtcrime/securesms/components/QuoteView;

    .line 198
    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/components/QuoteView;->getAttachments()Ljava/util/List;

    move-result-object v5

    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/InputPanel;->quoteView:Lorg/thoughtcrime/securesms/components/QuoteView;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/components/QuoteView;->getOriginalMsg()Lcom/b44t/messenger/DcMsg;

    move-result-object v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/thoughtcrime/securesms/mms/QuoteModel;-><init>(Lcom/b44t/messenger/DcContact;Ljava/lang/String;ZLjava/util/List;Lcom/b44t/messenger/DcMsg;)V

    .line 196
    invoke-static {v0}, Lorg/thoughtcrime/securesms/util/guava/Optional;->of(Ljava/lang/Object;)Lorg/thoughtcrime/securesms/util/guava/Optional;

    move-result-object v0

    return-object v0

    .line 201
    :cond_0
    invoke-static {}, Lorg/thoughtcrime/securesms/util/guava/Optional;->absent()Lorg/thoughtcrime/securesms/util/guava/Optional;

    move-result-object v0

    return-object v0
.end method

.method public isRecordingInLockedMode()Z
    .locals 1

    .line 321
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/InputPanel;->microphoneRecorderView:Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView;->isRecordingLocked()Z

    move-result v0

    return v0
.end method

.method synthetic lambda$onFinishInflate$0$org-thoughtcrime-securesms-components-InputPanel(Landroid/view/View;)V
    .locals 0

    .line 107
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/InputPanel;->microphoneRecorderView:Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView;->cancelAction()V

    return-void
.end method

.method synthetic lambda$onFinishInflate$1$org-thoughtcrime-securesms-components-InputPanel(Landroid/view/View;)V
    .locals 0

    .line 117
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/InputPanel;->clearQuote()V

    return-void
.end method

.method public onEmojiSelected(Ljava/lang/String;)V
    .locals 1

    .line 317
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/InputPanel;->composeText:Lorg/thoughtcrime/securesms/components/ComposeText;

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/components/ComposeText;->insertEmoji(Ljava/lang/String;)V

    return-void
.end method

.method public onFinishInflate()V
    .locals 4

    .line 90
    invoke-super {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->onFinishInflate()V

    const v0, 0x7f0902bb

    .line 92
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/components/InputPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0902c0

    .line 94
    invoke-virtual {p0, v1}, Lorg/thoughtcrime/securesms/components/InputPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/thoughtcrime/securesms/components/QuoteView;

    iput-object v1, p0, Lorg/thoughtcrime/securesms/components/InputPanel;->quoteView:Lorg/thoughtcrime/securesms/components/QuoteView;

    const v1, 0x7f09011b

    .line 95
    invoke-virtual {p0, v1}, Lorg/thoughtcrime/securesms/components/InputPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/thoughtcrime/securesms/components/emoji/EmojiToggle;

    iput-object v1, p0, Lorg/thoughtcrime/securesms/components/InputPanel;->mediaKeyboard:Lorg/thoughtcrime/securesms/components/emoji/EmojiToggle;

    const v1, 0x7f09010f

    .line 96
    invoke-virtual {p0, v1}, Lorg/thoughtcrime/securesms/components/InputPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/thoughtcrime/securesms/components/ComposeText;

    iput-object v1, p0, Lorg/thoughtcrime/securesms/components/InputPanel;->composeText:Lorg/thoughtcrime/securesms/components/ComposeText;

    const v1, 0x7f0902b5

    .line 97
    invoke-virtual {p0, v1}, Lorg/thoughtcrime/securesms/components/InputPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lorg/thoughtcrime/securesms/components/InputPanel;->quickCameraToggle:Landroid/view/View;

    const v1, 0x7f0902b3

    .line 98
    invoke-virtual {p0, v1}, Lorg/thoughtcrime/securesms/components/InputPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lorg/thoughtcrime/securesms/components/InputPanel;->quickAudioToggle:Landroid/view/View;

    const v1, 0x7f09008d

    .line 99
    invoke-virtual {p0, v1}, Lorg/thoughtcrime/securesms/components/InputPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lorg/thoughtcrime/securesms/components/InputPanel;->buttonToggle:Landroid/view/View;

    const v1, 0x7f0902d3

    .line 100
    invoke-virtual {p0, v1}, Lorg/thoughtcrime/securesms/components/InputPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lorg/thoughtcrime/securesms/components/InputPanel;->recordingContainer:Landroid/view/View;

    const v1, 0x7f0902cf

    .line 101
    invoke-virtual {p0, v1}, Lorg/thoughtcrime/securesms/components/InputPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lorg/thoughtcrime/securesms/components/InputPanel;->recordLockCancel:Landroid/view/View;

    .line 102
    new-instance v1, Lorg/thoughtcrime/securesms/components/InputPanel$RecordTime;

    const v2, 0x7f0902d0

    invoke-virtual {p0, v2}, Lorg/thoughtcrime/securesms/components/InputPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/thoughtcrime/securesms/components/InputPanel$RecordTime;-><init>(Landroid/widget/TextView;Lorg/thoughtcrime/securesms/components/InputPanel$1;)V

    iput-object v1, p0, Lorg/thoughtcrime/securesms/components/InputPanel;->recordTime:Lorg/thoughtcrime/securesms/components/InputPanel$RecordTime;

    .line 103
    new-instance v1, Lorg/thoughtcrime/securesms/components/InputPanel$SlideToCancel;

    const v2, 0x7f090341

    invoke-virtual {p0, v2}, Lorg/thoughtcrime/securesms/components/InputPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/thoughtcrime/securesms/components/InputPanel$SlideToCancel;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lorg/thoughtcrime/securesms/components/InputPanel;->slideToCancel:Lorg/thoughtcrime/securesms/components/InputPanel$SlideToCancel;

    const v1, 0x7f0902d2

    .line 104
    invoke-virtual {p0, v1}, Lorg/thoughtcrime/securesms/components/InputPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView;

    iput-object v1, p0, Lorg/thoughtcrime/securesms/components/InputPanel;->microphoneRecorderView:Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView;

    .line 105
    invoke-virtual {v1, p0}, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView;->setListener(Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$Listener;)V

    .line 107
    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/InputPanel;->recordLockCancel:Landroid/view/View;

    new-instance v2, Lorg/thoughtcrime/securesms/components/InputPanel$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lorg/thoughtcrime/securesms/components/InputPanel$$ExternalSyntheticLambda2;-><init>(Lorg/thoughtcrime/securesms/components/InputPanel;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/InputPanel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/thoughtcrime/securesms/util/Prefs;->isSystemEmojiPreferred(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 110
    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/InputPanel;->mediaKeyboard:Lorg/thoughtcrime/securesms/components/emoji/EmojiToggle;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lorg/thoughtcrime/securesms/components/emoji/EmojiToggle;->setVisibility(I)V

    .line 111
    iput-boolean v2, p0, Lorg/thoughtcrime/securesms/components/InputPanel;->emojiVisible:Z

    goto :goto_0

    .line 113
    :cond_0
    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/InputPanel;->mediaKeyboard:Lorg/thoughtcrime/securesms/components/emoji/EmojiToggle;

    invoke-virtual {v1, v2}, Lorg/thoughtcrime/securesms/components/emoji/EmojiToggle;->setVisibility(I)V

    const/4 v1, 0x1

    .line 114
    iput-boolean v1, p0, Lorg/thoughtcrime/securesms/components/InputPanel;->emojiVisible:Z

    .line 117
    :goto_0
    new-instance v1, Lorg/thoughtcrime/securesms/components/InputPanel$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lorg/thoughtcrime/securesms/components/InputPanel$$ExternalSyntheticLambda3;-><init>(Lorg/thoughtcrime/securesms/components/InputPanel;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;)V
    .locals 1

    .line 312
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/InputPanel;->composeText:Lorg/thoughtcrime/securesms/components/ComposeText;

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/components/ComposeText;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    return-void
.end method

.method public onKeyboardShown()V
    .locals 1

    .line 307
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/InputPanel;->mediaKeyboard:Lorg/thoughtcrime/securesms/components/emoji/EmojiToggle;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/emoji/EmojiToggle;->setToMedia()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 274
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/InputPanel;->microphoneRecorderView:Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView;->cancelAction()V

    return-void
.end method

.method public onRecordCanceled()V
    .locals 1

    .line 261
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/InputPanel;->onRecordHideEvent()J

    .line 262
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/InputPanel;->listener:Lorg/thoughtcrime/securesms/components/InputPanel$Listener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/thoughtcrime/securesms/components/InputPanel$Listener;->onRecorderCanceled()V

    :cond_0
    return-void
.end method

.method public onRecordLocked()V
    .locals 3

    .line 267
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/InputPanel;->slideToCancel:Lorg/thoughtcrime/securesms/components/InputPanel$SlideToCancel;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/InputPanel$SlideToCancel;->hide()Lcom/b44t/messenger/util/concurrent/ListenableFuture;

    .line 268
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/InputPanel;->recordLockCancel:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 269
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/InputPanel;->buttonToggle:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 270
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/InputPanel;->listener:Lorg/thoughtcrime/securesms/components/InputPanel$Listener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/thoughtcrime/securesms/components/InputPanel$Listener;->onRecorderLocked()V

    :cond_0
    return-void
.end method

.method public onRecordMoved(FF)V
    .locals 4

    .line 248
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/InputPanel;->slideToCancel:Lorg/thoughtcrime/securesms/components/InputPanel$SlideToCancel;

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/components/InputPanel$SlideToCancel;->moveTo(F)V

    .line 250
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/InputPanel;->recordingContainer:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p2, p1

    .line 252
    invoke-static {p0}, Lorg/thoughtcrime/securesms/util/ViewUtil;->isLtr(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    float-to-double v0, p2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double p1, v0, v2

    if-lez p1, :cond_1

    .line 253
    :cond_0
    invoke-static {p0}, Lorg/thoughtcrime/securesms/util/ViewUtil;->isRtl(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_2

    float-to-double p1, p2

    const-wide v0, 0x3fe3333333333333L    # 0.6

    cmpl-double v2, p1, v0

    if-ltz v2, :cond_2

    .line 255
    :cond_1
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/InputPanel;->microphoneRecorderView:Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView;->cancelAction()V

    :cond_2
    return-void
.end method

.method public onRecordPermissionRequired()V
    .locals 1

    .line 215
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/InputPanel;->listener:Lorg/thoughtcrime/securesms/components/InputPanel$Listener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/thoughtcrime/securesms/components/InputPanel$Listener;->onRecorderPermissionRequired()V

    :cond_0
    return-void
.end method

.method public onRecordPressed()V
    .locals 3

    .line 220
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/InputPanel;->listener:Lorg/thoughtcrime/securesms/components/InputPanel$Listener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/thoughtcrime/securesms/components/InputPanel$Listener;->onRecorderStarted()V

    .line 221
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/InputPanel;->recordTime:Lorg/thoughtcrime/securesms/components/InputPanel$RecordTime;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/InputPanel$RecordTime;->display()V

    .line 222
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/InputPanel;->slideToCancel:Lorg/thoughtcrime/securesms/components/InputPanel$SlideToCancel;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/InputPanel$SlideToCancel;->display()V

    .line 224
    iget-boolean v0, p0, Lorg/thoughtcrime/securesms/components/InputPanel;->emojiVisible:Z

    const/4 v1, 0x4

    const/16 v2, 0x96

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/InputPanel;->mediaKeyboard:Lorg/thoughtcrime/securesms/components/emoji/EmojiToggle;

    invoke-static {v0, v2, v1}, Lorg/thoughtcrime/securesms/util/ViewUtil;->fadeOut(Landroid/view/View;II)Lcom/b44t/messenger/util/concurrent/ListenableFuture;

    .line 225
    :cond_1
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/InputPanel;->composeText:Lorg/thoughtcrime/securesms/components/ComposeText;

    invoke-static {v0, v2, v1}, Lorg/thoughtcrime/securesms/util/ViewUtil;->fadeOut(Landroid/view/View;II)Lcom/b44t/messenger/util/concurrent/ListenableFuture;

    .line 226
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/InputPanel;->quickCameraToggle:Landroid/view/View;

    invoke-static {v0, v2, v1}, Lorg/thoughtcrime/securesms/util/ViewUtil;->fadeOut(Landroid/view/View;II)Lcom/b44t/messenger/util/concurrent/ListenableFuture;

    .line 227
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/InputPanel;->quickAudioToggle:Landroid/view/View;

    invoke-static {v0, v2, v1}, Lorg/thoughtcrime/securesms/util/ViewUtil;->fadeOut(Landroid/view/View;II)Lcom/b44t/messenger/util/concurrent/ListenableFuture;

    .line 228
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/InputPanel;->buttonToggle:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public onRecordReleased()V
    .locals 5

    .line 233
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/InputPanel;->onRecordHideEvent()J

    move-result-wide v0

    .line 235
    iget-object v2, p0, Lorg/thoughtcrime/securesms/components/InputPanel;->listener:Lorg/thoughtcrime/securesms/components/InputPanel$Listener;

    if-eqz v2, :cond_1

    .line 236
    sget-object v2, Lorg/thoughtcrime/securesms/components/InputPanel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Elapsed time: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 238
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/InputPanel;->listener:Lorg/thoughtcrime/securesms/components/InputPanel$Listener;

    invoke-interface {v0}, Lorg/thoughtcrime/securesms/components/InputPanel$Listener;->onRecorderFinished()V

    goto :goto_0

    .line 240
    :cond_0
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/InputPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1200b5

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 241
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/InputPanel;->listener:Lorg/thoughtcrime/securesms/components/InputPanel$Listener;

    invoke-interface {v0}, Lorg/thoughtcrime/securesms/components/InputPanel$Listener;->onRecorderCanceled()V

    :cond_1
    :goto_0
    return-void
.end method

.method public releaseRecordingLock()V
    .locals 1

    .line 325
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/InputPanel;->microphoneRecorderView:Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView;->unlockAction()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 278
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/InputPanel;->composeText:Lorg/thoughtcrime/securesms/components/ComposeText;

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/components/ComposeText;->setEnabled(Z)V

    .line 279
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/InputPanel;->mediaKeyboard:Lorg/thoughtcrime/securesms/components/emoji/EmojiToggle;

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/components/emoji/EmojiToggle;->setEnabled(Z)V

    .line 280
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/InputPanel;->quickAudioToggle:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 281
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/InputPanel;->quickCameraToggle:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public setListener(Lorg/thoughtcrime/securesms/components/InputPanel$Listener;)V
    .locals 2

    .line 121
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/InputPanel;->listener:Lorg/thoughtcrime/securesms/components/InputPanel$Listener;

    .line 123
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/InputPanel;->mediaKeyboard:Lorg/thoughtcrime/securesms/components/emoji/EmojiToggle;

    new-instance v1, Lorg/thoughtcrime/securesms/components/InputPanel$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lorg/thoughtcrime/securesms/components/InputPanel$$ExternalSyntheticLambda1;-><init>(Lorg/thoughtcrime/securesms/components/InputPanel$Listener;)V

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/components/emoji/EmojiToggle;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setMediaKeyboard(Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;)V
    .locals 1

    .line 210
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/InputPanel;->mediaKeyboard:Lorg/thoughtcrime/securesms/components/emoji/EmojiToggle;

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/components/emoji/EmojiToggle;->attach(Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;)V

    return-void
.end method

.method public setMediaListener(Lorg/thoughtcrime/securesms/components/InputPanel$MediaListener;)V
    .locals 1

    .line 127
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/InputPanel;->composeText:Lorg/thoughtcrime/securesms/components/ComposeText;

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/components/ComposeText;->setMediaListener(Lorg/thoughtcrime/securesms/components/InputPanel$MediaListener;)V

    return-void
.end method

.method public setQuote(Lorg/thoughtcrime/securesms/mms/GlideRequests;Lcom/b44t/messenger/DcMsg;JLorg/thoughtcrime/securesms/recipients/Recipient;Ljava/lang/CharSequence;Lorg/thoughtcrime/securesms/mms/SlideDeck;)V
    .locals 7

    .line 137
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/InputPanel;->quoteView:Lorg/thoughtcrime/securesms/components/QuoteView;

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    invoke-virtual/range {v0 .. v6}, Lorg/thoughtcrime/securesms/components/QuoteView;->setQuote(Lorg/thoughtcrime/securesms/mms/GlideRequests;Lcom/b44t/messenger/DcMsg;Lorg/thoughtcrime/securesms/recipients/Recipient;Ljava/lang/CharSequence;Lorg/thoughtcrime/securesms/mms/SlideDeck;Z)V

    .line 139
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/InputPanel;->quoteView:Lorg/thoughtcrime/securesms/components/QuoteView;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/components/QuoteView;->getVisibility()I

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/InputPanel;->quoteView:Lorg/thoughtcrime/securesms/components/QuoteView;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/components/QuoteView;->getMeasuredHeight()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 142
    :goto_0
    iget-object p3, p0, Lorg/thoughtcrime/securesms/components/InputPanel;->quoteView:Lorg/thoughtcrime/securesms/components/QuoteView;

    invoke-virtual {p3, p2}, Lorg/thoughtcrime/securesms/components/QuoteView;->setVisibility(I)V

    .line 143
    iget-object p3, p0, Lorg/thoughtcrime/securesms/components/InputPanel;->quoteView:Lorg/thoughtcrime/securesms/components/QuoteView;

    invoke-virtual {p3, p2, p2}, Lorg/thoughtcrime/securesms/components/QuoteView;->measure(II)V

    .line 145
    iget-object p2, p0, Lorg/thoughtcrime/securesms/components/InputPanel;->quoteAnimator:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_1

    .line 146
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 149
    :cond_1
    iget-object p2, p0, Lorg/thoughtcrime/securesms/components/InputPanel;->quoteView:Lorg/thoughtcrime/securesms/components/QuoteView;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/components/QuoteView;->getMeasuredHeight()I

    move-result p3

    const/4 p4, 0x0

    invoke-static {p2, p1, p3, p4}, Lorg/thoughtcrime/securesms/components/InputPanel;->createHeightAnimator(Landroid/view/View;IILorg/thoughtcrime/securesms/animation/AnimationCompleteListener;)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/InputPanel;->quoteAnimator:Landroid/animation/ValueAnimator;

    .line 151
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
