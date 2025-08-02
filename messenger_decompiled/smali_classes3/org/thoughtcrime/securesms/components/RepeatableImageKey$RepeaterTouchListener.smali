.class Lorg/thoughtcrime/securesms/components/RepeatableImageKey$RepeaterTouchListener;
.super Ljava/lang/Object;
.source "RepeatableImageKey.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/components/RepeatableImageKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RepeaterTouchListener"
.end annotation


# instance fields
.field private final repeater:Lorg/thoughtcrime/securesms/components/RepeatableImageKey$Repeater;

.field final synthetic this$0:Lorg/thoughtcrime/securesms/components/RepeatableImageKey;


# direct methods
.method public constructor <init>(Lorg/thoughtcrime/securesms/components/RepeatableImageKey;)V
    .locals 2

    .line 70
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/RepeatableImageKey$RepeaterTouchListener;->this$0:Lorg/thoughtcrime/securesms/components/RepeatableImageKey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Lorg/thoughtcrime/securesms/components/RepeatableImageKey$Repeater;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/thoughtcrime/securesms/components/RepeatableImageKey$Repeater;-><init>(Lorg/thoughtcrime/securesms/components/RepeatableImageKey;Lorg/thoughtcrime/securesms/components/RepeatableImageKey$1;)V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/components/RepeatableImageKey$RepeaterTouchListener;->repeater:Lorg/thoughtcrime/securesms/components/RepeatableImageKey$Repeater;

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 76
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    const/4 v2, 0x1

    if-eq p2, v2, :cond_0

    if-eq p2, v0, :cond_0

    return v1

    .line 83
    :cond_0
    iget-object p2, p0, Lorg/thoughtcrime/securesms/components/RepeatableImageKey$RepeaterTouchListener;->repeater:Lorg/thoughtcrime/securesms/components/RepeatableImageKey$Repeater;

    invoke-virtual {p1, p2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return v1

    .line 78
    :cond_1
    iget-object p2, p0, Lorg/thoughtcrime/securesms/components/RepeatableImageKey$RepeaterTouchListener;->repeater:Lorg/thoughtcrime/securesms/components/RepeatableImageKey$Repeater;

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p1, p2, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 79
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/RepeatableImageKey$RepeaterTouchListener;->this$0:Lorg/thoughtcrime/securesms/components/RepeatableImageKey;

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/components/RepeatableImageKey;->performHapticFeedback(I)Z

    return v1
.end method
