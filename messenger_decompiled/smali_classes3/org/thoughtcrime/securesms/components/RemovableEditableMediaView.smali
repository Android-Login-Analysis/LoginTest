.class public Lorg/thoughtcrime/securesms/components/RemovableEditableMediaView;
.super Landroid/widget/FrameLayout;
.source "RemovableEditableMediaView.java"


# instance fields
.field private current:Landroid/view/View;

.field private final edit:Landroid/widget/ImageView;

.field private final editSize:I

.field private final remove:Landroid/widget/ImageView;

.field private final removeSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, v0}, Lorg/thoughtcrime/securesms/components/RemovableEditableMediaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, p2, v0}, Lorg/thoughtcrime/securesms/components/RemovableEditableMediaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0c0097

    const/4 v0, 0x0

    invoke-virtual {p2, p3, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/components/RemovableEditableMediaView;->remove:Landroid/widget/ImageView;

    .line 36
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p3, 0x7f0c0095

    invoke-virtual {p1, p3, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/RemovableEditableMediaView;->edit:Landroid/widget/ImageView;

    .line 38
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/RemovableEditableMediaView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f07026a

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lorg/thoughtcrime/securesms/components/RemovableEditableMediaView;->removeSize:I

    .line 39
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/RemovableEditableMediaView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f070265

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lorg/thoughtcrime/securesms/components/RemovableEditableMediaView;->editSize:I

    const/16 p3, 0x8

    .line 41
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 42
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public display(Landroid/view/View;Z)V
    .locals 4

    .line 53
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/RemovableEditableMediaView;->edit:Landroid/widget/ImageView;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    :goto_0
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 55
    iget-object p2, p0, Lorg/thoughtcrime/securesms/components/RemovableEditableMediaView;->current:Landroid/view/View;

    if-ne p1, p2, :cond_1

    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 56
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    if-eqz p1, :cond_3

    .line 59
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    iget v0, p0, Lorg/thoughtcrime/securesms/components/RemovableEditableMediaView;->removeSize:I

    div-int/lit8 v1, v0, 0x2

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {p1, p2, v1, v0, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 60
    iget-object p2, p0, Lorg/thoughtcrime/securesms/components/RemovableEditableMediaView;->edit:Landroid/widget/ImageView;

    iget v0, p0, Lorg/thoughtcrime/securesms/components/RemovableEditableMediaView;->removeSize:I

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p2, v2, v2, v0, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 62
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 63
    iget-object p2, p0, Lorg/thoughtcrime/securesms/components/RemovableEditableMediaView;->remove:Landroid/widget/ImageView;

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 65
    :cond_3
    iget-object p2, p0, Lorg/thoughtcrime/securesms/components/RemovableEditableMediaView;->remove:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 66
    iget-object p2, p0, Lorg/thoughtcrime/securesms/components/RemovableEditableMediaView;->edit:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 69
    :goto_1
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/RemovableEditableMediaView;->current:Landroid/view/View;

    return-void
.end method

.method public getCurrent()Landroid/view/View;
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/RemovableEditableMediaView;->current:Landroid/view/View;

    return-object v0
.end method

.method public onFinishInflate()V
    .locals 1

    .line 47
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 48
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/RemovableEditableMediaView;->remove:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/components/RemovableEditableMediaView;->addView(Landroid/view/View;)V

    .line 49
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/RemovableEditableMediaView;->edit:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/components/RemovableEditableMediaView;->addView(Landroid/view/View;)V

    return-void
.end method

.method public setEditClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/RemovableEditableMediaView;->edit:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setRemoveClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/RemovableEditableMediaView;->remove:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
