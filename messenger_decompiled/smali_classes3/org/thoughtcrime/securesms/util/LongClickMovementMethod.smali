.class public Lorg/thoughtcrime/securesms/util/LongClickMovementMethod;
.super Landroid/text/method/LinkMovementMethod;
.source "LongClickMovementMethod.java"


# static fields
.field private static sInstance:Lorg/thoughtcrime/securesms/util/LongClickMovementMethod;


# instance fields
.field private currentSpan:Lorg/thoughtcrime/securesms/util/LongClickCopySpan;

.field private final gestureDetector:Landroid/view/GestureDetector;

.field private widget:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 26
    invoke-direct {p0}, Landroid/text/method/LinkMovementMethod;-><init>()V

    .line 27
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lorg/thoughtcrime/securesms/util/LongClickMovementMethod$1;

    invoke-direct {v1, p0}, Lorg/thoughtcrime/securesms/util/LongClickMovementMethod$1;-><init>(Lorg/thoughtcrime/securesms/util/LongClickMovementMethod;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/util/LongClickMovementMethod;->gestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method static synthetic access$000(Lorg/thoughtcrime/securesms/util/LongClickMovementMethod;)Lorg/thoughtcrime/securesms/util/LongClickCopySpan;
    .locals 0

    .line 18
    iget-object p0, p0, Lorg/thoughtcrime/securesms/util/LongClickMovementMethod;->currentSpan:Lorg/thoughtcrime/securesms/util/LongClickCopySpan;

    return-object p0
.end method

.method static synthetic access$002(Lorg/thoughtcrime/securesms/util/LongClickMovementMethod;Lorg/thoughtcrime/securesms/util/LongClickCopySpan;)Lorg/thoughtcrime/securesms/util/LongClickCopySpan;
    .locals 0

    .line 18
    iput-object p1, p0, Lorg/thoughtcrime/securesms/util/LongClickMovementMethod;->currentSpan:Lorg/thoughtcrime/securesms/util/LongClickCopySpan;

    return-object p1
.end method

.method static synthetic access$100(Lorg/thoughtcrime/securesms/util/LongClickMovementMethod;)Landroid/view/View;
    .locals 0

    .line 18
    iget-object p0, p0, Lorg/thoughtcrime/securesms/util/LongClickMovementMethod;->widget:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$102(Lorg/thoughtcrime/securesms/util/LongClickMovementMethod;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 18
    iput-object p1, p0, Lorg/thoughtcrime/securesms/util/LongClickMovementMethod;->widget:Landroid/view/View;

    return-object p1
.end method

.method public static getInstance(Landroid/content/Context;)Lorg/thoughtcrime/securesms/util/LongClickMovementMethod;
    .locals 1

    .line 99
    sget-object v0, Lorg/thoughtcrime/securesms/util/LongClickMovementMethod;->sInstance:Lorg/thoughtcrime/securesms/util/LongClickMovementMethod;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Lorg/thoughtcrime/securesms/util/LongClickMovementMethod;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/util/LongClickMovementMethod;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/thoughtcrime/securesms/util/LongClickMovementMethod;->sInstance:Lorg/thoughtcrime/securesms/util/LongClickMovementMethod;

    .line 102
    :cond_0
    sget-object p0, Lorg/thoughtcrime/securesms/util/LongClickMovementMethod;->sInstance:Lorg/thoughtcrime/securesms/util/LongClickMovementMethod;

    return-object p0
.end method


# virtual methods
.method public onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 51
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x3

    if-ne v0, v2, :cond_4

    .line 87
    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result p1

    .line 88
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    const-class v2, Lorg/thoughtcrime/securesms/util/LongClickCopySpan;

    .line 87
    invoke-interface {p2, p1, v0, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/thoughtcrime/securesms/util/LongClickCopySpan;

    .line 89
    array-length v0, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 90
    invoke-virtual {v3, v1, v1}, Lorg/thoughtcrime/securesms/util/LongClickCopySpan;->setHighlighted(ZI)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 92
    :cond_1
    invoke-static {p2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    .line 93
    iget-object p1, p0, Lorg/thoughtcrime/securesms/util/LongClickMovementMethod;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p1, p3}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 55
    :cond_2
    :goto_1
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    .line 56
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    .line 58
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v5

    sub-int/2addr v3, v5

    .line 59
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    .line 61
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v5

    add-int/2addr v3, v5

    .line 62
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v5

    add-int/2addr v4, v5

    .line 64
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v5

    .line 65
    invoke-virtual {v5, v4}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v4

    int-to-float v3, v3

    .line 66
    invoke-virtual {v5, v4, v3}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v3

    .line 68
    const-class v4, Lorg/thoughtcrime/securesms/util/LongClickCopySpan;

    invoke-interface {p2, v3, v3, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/thoughtcrime/securesms/util/LongClickCopySpan;

    .line 69
    array-length v4, v3

    if-eqz v4, :cond_4

    .line 70
    aget-object v3, v3, v1

    if-nez v0, :cond_3

    .line 72
    invoke-interface {p2, v3}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 73
    invoke-interface {p2, v3}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 72
    invoke-static {p2, v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 75
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f06035b

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    .line 74
    invoke-virtual {v3, v2, p2}, Lorg/thoughtcrime/securesms/util/LongClickCopySpan;->setHighlighted(ZI)V

    goto :goto_2

    .line 77
    :cond_3
    invoke-static {p2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    .line 78
    invoke-virtual {v3, v1, v1}, Lorg/thoughtcrime/securesms/util/LongClickCopySpan;->setHighlighted(ZI)V

    .line 81
    :goto_2
    iput-object v3, p0, Lorg/thoughtcrime/securesms/util/LongClickMovementMethod;->currentSpan:Lorg/thoughtcrime/securesms/util/LongClickCopySpan;

    .line 82
    iput-object p1, p0, Lorg/thoughtcrime/securesms/util/LongClickMovementMethod;->widget:Landroid/view/View;

    .line 83
    iget-object p1, p0, Lorg/thoughtcrime/securesms/util/LongClickMovementMethod;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p1, p3}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 95
    :cond_4
    invoke-super {p0, p1, p2, p3}, Landroid/text/method/LinkMovementMethod;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
