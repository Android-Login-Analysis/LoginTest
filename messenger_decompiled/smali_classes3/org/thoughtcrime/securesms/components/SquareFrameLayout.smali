.class public Lorg/thoughtcrime/securesms/components/SquareFrameLayout;
.super Landroid/widget/FrameLayout;
.source "SquareFrameLayout.java"


# instance fields
.field private final squareHeight:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, p1, v0}, Lorg/thoughtcrime/securesms/components/SquareFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1, p2, v0}, Lorg/thoughtcrime/securesms/components/SquareFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lorg/thoughtcrime/securesms/R$styleable;->SquareFrameLayout:[I

    invoke-virtual {p1, p2, v0, p3, p3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 30
    invoke-virtual {p1, p3, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lorg/thoughtcrime/securesms/components/SquareFrameLayout;->squareHeight:Z

    .line 31
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .line 33
    :cond_0
    iput-boolean p3, p0, Lorg/thoughtcrime/securesms/components/SquareFrameLayout;->squareHeight:Z

    :goto_0
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    .line 40
    iget-boolean v0, p0, Lorg/thoughtcrime/securesms/components/SquareFrameLayout;->squareHeight:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p2, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_0

    .line 41
    :cond_0
    invoke-super {p0, p1, p1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :goto_0
    return-void
.end method
