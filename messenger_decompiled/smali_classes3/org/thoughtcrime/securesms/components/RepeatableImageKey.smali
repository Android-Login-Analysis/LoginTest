.class public Lorg/thoughtcrime/securesms/components/RepeatableImageKey;
.super Landroid/widget/ImageButton;
.source "RepeatableImageKey.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/components/RepeatableImageKey$RepeaterClickListener;,
        Lorg/thoughtcrime/securesms/components/RepeatableImageKey$RepeaterTouchListener;,
        Lorg/thoughtcrime/securesms/components/RepeatableImageKey$KeyEventListener;,
        Lorg/thoughtcrime/securesms/components/RepeatableImageKey$Repeater;
    }
.end annotation


# instance fields
.field private listener:Lorg/thoughtcrime/securesms/components/RepeatableImageKey$KeyEventListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 19
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/RepeatableImageKey;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/RepeatableImageKey;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/RepeatableImageKey;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 37
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/RepeatableImageKey;->init()V

    return-void
.end method

.method static synthetic access$100(Lorg/thoughtcrime/securesms/components/RepeatableImageKey;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/RepeatableImageKey;->notifyListener()V

    return-void
.end method

.method private init()V
    .locals 2

    .line 41
    new-instance v0, Lorg/thoughtcrime/securesms/components/RepeatableImageKey$RepeaterClickListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/thoughtcrime/securesms/components/RepeatableImageKey$RepeaterClickListener;-><init>(Lorg/thoughtcrime/securesms/components/RepeatableImageKey;Lorg/thoughtcrime/securesms/components/RepeatableImageKey$1;)V

    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/components/RepeatableImageKey;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    new-instance v0, Lorg/thoughtcrime/securesms/components/RepeatableImageKey$RepeaterTouchListener;

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/components/RepeatableImageKey$RepeaterTouchListener;-><init>(Lorg/thoughtcrime/securesms/components/RepeatableImageKey;)V

    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/components/RepeatableImageKey;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private notifyListener()V
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/RepeatableImageKey;->listener:Lorg/thoughtcrime/securesms/components/RepeatableImageKey$KeyEventListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/thoughtcrime/securesms/components/RepeatableImageKey$KeyEventListener;->onKeyEvent()V

    :cond_0
    return-void
.end method


# virtual methods
.method public setOnKeyEventListener(Lorg/thoughtcrime/securesms/components/RepeatableImageKey$KeyEventListener;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/RepeatableImageKey;->listener:Lorg/thoughtcrime/securesms/components/RepeatableImageKey$KeyEventListener;

    return-void
.end method
