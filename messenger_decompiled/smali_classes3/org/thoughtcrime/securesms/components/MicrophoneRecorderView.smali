.class public final Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView;
.super Landroid/widget/FrameLayout;
.source "MicrophoneRecorderView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$State;,
        Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$FloatingRecordButton;,
        Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$LockDropTarget;,
        Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$Listener;
    }
.end annotation


# static fields
.field public static final ANIMATION_DURATION:I = 0xc8


# instance fields
.field private floatingRecordButton:Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$FloatingRecordButton;

.field private listener:Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$Listener;

.field private lockDropTarget:Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$LockDropTarget;

.field private state:Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$State;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 40
    sget-object p1, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$State;->NOT_RUNNING:Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$State;

    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView;->state:Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$State;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    sget-object p1, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$State;->NOT_RUNNING:Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$State;

    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView;->state:Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$State;

    return-void
.end method

.method private hideUi()V
    .locals 1

    .line 93
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView;->floatingRecordButton:Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$FloatingRecordButton;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$FloatingRecordButton;->hide()V

    .line 94
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView;->lockDropTarget:Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$LockDropTarget;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$LockDropTarget;->hide()V

    return-void
.end method

.method private lockAction()V
    .locals 2

    .line 75
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView;->state:Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$State;

    sget-object v1, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$State;->RUNNING_HELD:Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$State;

    if-ne v0, v1, :cond_0

    .line 76
    sget-object v0, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$State;->RUNNING_LOCKED:Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$State;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView;->state:Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$State;

    .line 77
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView;->hideUi()V

    .line 79
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView;->listener:Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$Listener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$Listener;->onRecordLocked()V

    :cond_0
    return-void
.end method


# virtual methods
.method public cancelAction()V
    .locals 2

    .line 62
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView;->state:Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$State;

    sget-object v1, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$State;->NOT_RUNNING:Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$State;

    if-eq v0, v1, :cond_0

    .line 63
    sget-object v0, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$State;->NOT_RUNNING:Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$State;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView;->state:Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$State;

    .line 64
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView;->hideUi()V

    .line 66
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView;->listener:Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$Listener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$Listener;->onRecordCanceled()V

    :cond_0
    return-void
.end method

.method public isRecordingLocked()Z
    .locals 2

    .line 71
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView;->state:Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$State;

    sget-object v1, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$State;->RUNNING_LOCKED:Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onFinishInflate()V
    .locals 3

    .line 52
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 54
    new-instance v0, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$FloatingRecordButton;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0902b2

    invoke-virtual {p0, v2}, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-direct {v0, v1, v2}, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$FloatingRecordButton;-><init>(Landroid/content/Context;Landroid/widget/ImageView;)V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView;->floatingRecordButton:Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$FloatingRecordButton;

    .line 55
    new-instance v0, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$LockDropTarget;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0901b6

    invoke-virtual {p0, v2}, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$LockDropTarget;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView;->lockDropTarget:Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$LockDropTarget;

    const v0, 0x7f0902b3

    .line 57
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 58
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 99
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    goto/16 :goto_0

    .line 119
    :cond_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView;->state:Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$State;

    sget-object v1, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$State;->RUNNING_HELD:Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$State;

    if-ne p1, v1, :cond_5

    .line 120
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView;->floatingRecordButton:Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$FloatingRecordButton;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1, v1, v2}, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$FloatingRecordButton;->moveTo(FF)V

    .line 121
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView;->listener:Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$Listener;

    if-eqz p1, :cond_1

    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView;->floatingRecordButton:Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$FloatingRecordButton;

    invoke-static {v1}, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$FloatingRecordButton;->access$000(Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$FloatingRecordButton;)F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p2

    invoke-interface {p1, v1, p2}, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$Listener;->onRecordMoved(FF)V

    .line 123
    :cond_1
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07035e

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 124
    iget-object p2, p0, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView;->floatingRecordButton:Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$FloatingRecordButton;

    invoke-static {p2}, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$FloatingRecordButton;->access$100(Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$FloatingRecordButton;)F

    move-result p2

    int-to-float p1, p1

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_5

    .line 125
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView;->lockAction()V

    goto :goto_0

    .line 112
    :cond_2
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView;->state:Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$State;

    sget-object p2, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$State;->RUNNING_HELD:Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$State;

    if-ne p1, p2, :cond_5

    .line 113
    sget-object p1, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$State;->NOT_RUNNING:Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$State;

    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView;->state:Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$State;

    .line 114
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView;->hideUi()V

    .line 115
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView;->listener:Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$Listener;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$Listener;->onRecordReleased()V

    goto :goto_0

    .line 101
    :cond_3
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView;->getContext()Landroid/content/Context;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "android.permission.RECORD_AUDIO"

    aput-object v2, v1, v0

    invoke-static {p1, v1}, Lorg/thoughtcrime/securesms/permissions/Permissions;->hasAll(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 102
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView;->listener:Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$Listener;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$Listener;->onRecordPermissionRequired()V

    goto :goto_0

    .line 104
    :cond_4
    sget-object p1, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$State;->RUNNING_HELD:Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$State;

    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView;->state:Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$State;

    .line 105
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView;->floatingRecordButton:Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$FloatingRecordButton;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1, v1, p2}, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$FloatingRecordButton;->display(FF)V

    .line 106
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView;->lockDropTarget:Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$LockDropTarget;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$LockDropTarget;->display()V

    .line 107
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView;->listener:Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$Listener;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$Listener;->onRecordPressed()V

    :cond_5
    :goto_0
    return v0
.end method

.method public setListener(Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$Listener;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView;->listener:Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$Listener;

    return-void
.end method

.method public unlockAction()V
    .locals 2

    .line 84
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView;->state:Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$State;

    sget-object v1, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$State;->RUNNING_LOCKED:Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$State;

    if-ne v0, v1, :cond_0

    .line 85
    sget-object v0, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$State;->NOT_RUNNING:Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$State;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView;->state:Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$State;

    .line 86
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView;->hideUi()V

    .line 88
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView;->listener:Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$Listener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/thoughtcrime/securesms/components/MicrophoneRecorderView$Listener;->onRecordReleased()V

    :cond_0
    return-void
.end method
