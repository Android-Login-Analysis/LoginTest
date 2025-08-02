.class public Lorg/thoughtcrime/securesms/ProfileSettingsItem;
.super Landroid/widget/LinearLayout;
.source "ProfileSettingsItem.java"


# instance fields
.field private labelView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 26
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0901a2

    .line 27
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/ProfileSettingsItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/ProfileSettingsItem;->labelView:Landroid/widget/TextView;

    return-void
.end method

.method public set(Ljava/lang/String;II)V
    .locals 1

    .line 31
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileSettingsItem;->labelView:Landroid/widget/TextView;

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ProfileSettingsItem;->labelView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    if-eqz p2, :cond_1

    .line 36
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ProfileSettingsItem;->labelView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ProfileSettingsItem;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 38
    :cond_1
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ProfileSettingsItem;->labelView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ProfileSettingsItem;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f040218

    invoke-static {p2, p3}, Lorg/thoughtcrime/securesms/util/ResUtil;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method
