.class public Lorg/thoughtcrime/securesms/util/views/ProgressDialog;
.super Landroidx/appcompat/app/AlertDialog;
.source "ProgressDialog.java"


# instance fields
.field private indeterminate:Z

.field private message:Ljava/lang/String;

.field private progressBar:Landroid/widget/ProgressBar;

.field private textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Landroidx/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private isButtonVisible(I)Z
    .locals 1

    .line 45
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 49
    :cond_0
    invoke-virtual {p1}, Landroid/widget/Button;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method static synthetic lambda$show$0(Landroid/content/DialogInterface$OnCancelListener;Lorg/thoughtcrime/securesms/util/views/ProgressDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 112
    invoke-interface {p0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    return-void
.end method

.method private setIndeterminate(Z)V
    .locals 1

    .line 81
    iput-boolean p1, p0, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;->indeterminate:Z

    .line 82
    iget-object v0, p0, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;->progressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    :cond_0
    return-void
.end method

.method private setupProgressBar()V
    .locals 3

    .line 67
    iget-object v0, p0, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;->progressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 69
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060056

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 70
    iget-object v0, p0, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;->progressBar:Landroid/widget/ProgressBar;

    iget-boolean v1, p0, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;->indeterminate:Z

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    :cond_0
    return-void
.end method

.method private setupTextView()V
    .locals 2

    .line 75
    iget-object v0, p0, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;->textView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;->message:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    iget-object v0, p0, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lorg/thoughtcrime/securesms/util/views/ProgressDialog;
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 90
    invoke-static/range {v0 .. v5}, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lorg/thoughtcrime/securesms/util/views/ProgressDialog;

    move-result-object p0

    return-object p0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lorg/thoughtcrime/securesms/util/views/ProgressDialog;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 96
    invoke-static/range {v0 .. v5}, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lorg/thoughtcrime/securesms/util/views/ProgressDialog;

    move-result-object p0

    return-object p0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lorg/thoughtcrime/securesms/util/views/ProgressDialog;
    .locals 1

    .line 103
    new-instance v0, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 104
    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 105
    invoke-virtual {v0, p2}, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 106
    invoke-direct {v0, p3}, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;->setIndeterminate(Z)V

    .line 107
    invoke-virtual {v0, p4}, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;->setCancelable(Z)V

    .line 108
    invoke-virtual {v0, p5}, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    .line 110
    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    const p1, 0x7f120097

    .line 111
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/thoughtcrime/securesms/util/views/ProgressDialog$$ExternalSyntheticLambda0;

    invoke-direct {p1, p5, v0}, Lorg/thoughtcrime/securesms/util/views/ProgressDialog$$ExternalSyntheticLambda0;-><init>(Landroid/content/DialogInterface$OnCancelListener;Lorg/thoughtcrime/securesms/util/views/ProgressDialog;)V

    const/4 p2, -0x2

    invoke-virtual {v0, p2, p0, p1}, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 114
    :cond_0
    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;->show()V

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 31
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c005f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 32
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;->setView(Landroid/view/View;)V

    .line 33
    invoke-super {p0, p1}, Landroidx/appcompat/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1

    .line 38
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;->message:Ljava/lang/String;

    .line 39
    iget-object v0, p0, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;->textView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    .line 54
    invoke-super {p0}, Landroidx/appcompat/app/AlertDialog;->show()V

    const/4 v0, -0x1

    .line 56
    invoke-direct {p0, v0}, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;->isButtonVisible(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x2

    invoke-direct {p0, v0}, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;->isButtonVisible(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x3

    invoke-direct {p0, v0}, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;->isButtonVisible(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const v0, 0x7f09024f

    .line 57
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    const v0, 0x7f0902a5

    .line 60
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;->progressBar:Landroid/widget/ProgressBar;

    const v0, 0x7f090399

    .line 61
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;->textView:Landroid/widget/TextView;

    .line 62
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;->setupProgressBar()V

    .line 63
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;->setupTextView()V

    return-void
.end method
