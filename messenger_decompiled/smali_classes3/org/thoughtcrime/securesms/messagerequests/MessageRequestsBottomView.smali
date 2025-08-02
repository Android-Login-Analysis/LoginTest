.class public Lorg/thoughtcrime/securesms/messagerequests/MessageRequestsBottomView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "MessageRequestsBottomView.java"


# instance fields
.field private accept:Landroid/widget/Button;

.field private block:Landroid/widget/Button;

.field private question:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .line 33
    invoke-super {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->onFinishInflate()V

    .line 35
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/messagerequests/MessageRequestsBottomView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c009a

    invoke-static {v0, v1, p0}, Lorg/thoughtcrime/securesms/messagerequests/MessageRequestsBottomView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f09021b

    .line 37
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/messagerequests/MessageRequestsBottomView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/messagerequests/MessageRequestsBottomView;->question:Landroidx/appcompat/widget/AppCompatTextView;

    const v0, 0x7f090219

    .line 38
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/messagerequests/MessageRequestsBottomView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/messagerequests/MessageRequestsBottomView;->accept:Landroid/widget/Button;

    const v0, 0x7f09021a

    .line 39
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/messagerequests/MessageRequestsBottomView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/messagerequests/MessageRequestsBottomView;->block:Landroid/widget/Button;

    return-void
.end method

.method public setAcceptOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/thoughtcrime/securesms/messagerequests/MessageRequestsBottomView;->accept:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setAcceptText(I)V
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/thoughtcrime/securesms/messagerequests/MessageRequestsBottomView;->accept:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    return-void
.end method

.method public setBlockOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/thoughtcrime/securesms/messagerequests/MessageRequestsBottomView;->block:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setBlockText(I)V
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/thoughtcrime/securesms/messagerequests/MessageRequestsBottomView;->block:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    return-void
.end method

.method public setQuestion(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 59
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/messagerequests/MessageRequestsBottomView;->question:Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setMaxHeight(I)V

    .line 63
    iget-object v0, p0, Lorg/thoughtcrime/securesms/messagerequests/MessageRequestsBottomView;->question:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 60
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/messagerequests/MessageRequestsBottomView;->question:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v0, 0x5

    invoke-static {v0}, Lorg/thoughtcrime/securesms/util/ViewUtil;->dpToPx(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setMaxHeight(I)V

    :goto_1
    return-void
.end method
