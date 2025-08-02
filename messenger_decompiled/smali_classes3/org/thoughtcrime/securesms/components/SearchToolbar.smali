.class public Lorg/thoughtcrime/securesms/components/SearchToolbar;
.super Landroid/widget/LinearLayout;
.source "SearchToolbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/components/SearchToolbar$SearchListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SearchToolbar"


# instance fields
.field private listener:Lorg/thoughtcrime/securesms/components/SearchToolbar$SearchListener;

.field private searchItem:Landroid/view/MenuItem;

.field private x:F

.field private y:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/SearchToolbar;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/SearchToolbar;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/SearchToolbar;->initialize()V

    return-void
.end method

.method static synthetic access$000(Lorg/thoughtcrime/securesms/components/SearchToolbar;)Lorg/thoughtcrime/securesms/components/SearchToolbar$SearchListener;
    .locals 0

    .line 25
    iget-object p0, p0, Lorg/thoughtcrime/securesms/components/SearchToolbar;->listener:Lorg/thoughtcrime/securesms/components/SearchToolbar$SearchListener;

    return-object p0
.end method

.method static synthetic access$100(Lorg/thoughtcrime/securesms/components/SearchToolbar;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/SearchToolbar;->hide()V

    return-void
.end method

.method private hide()V
    .locals 4

    .line 139
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/SearchToolbar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 142
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/SearchToolbar;->listener:Lorg/thoughtcrime/securesms/components/SearchToolbar$SearchListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/thoughtcrime/securesms/components/SearchToolbar$SearchListener;->onSearchClosed()V

    .line 144
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 145
    iget v0, p0, Lorg/thoughtcrime/securesms/components/SearchToolbar;->x:F

    float-to-int v0, v0

    iget v1, p0, Lorg/thoughtcrime/securesms/components/SearchToolbar;->y:F

    float-to-int v1, v1

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/SearchToolbar;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lcom/google/android/material/chip/Chip$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    const-wide/16 v1, 0x190

    .line 146
    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 147
    new-instance v1, Lorg/thoughtcrime/securesms/components/SearchToolbar$3;

    invoke-direct {v1, p0}, Lorg/thoughtcrime/securesms/components/SearchToolbar$3;-><init>(Lorg/thoughtcrime/securesms/components/SearchToolbar;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 153
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    .line 155
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/components/SearchToolbar;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private initialize()V
    .locals 4

    .line 48
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/SearchToolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c00fb

    invoke-static {v0, v1, p0}, Lorg/thoughtcrime/securesms/components/SearchToolbar;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const/4 v0, 0x1

    .line 49
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/components/SearchToolbar;->setOrientation(I)V

    const v0, 0x7f0903b4

    .line 51
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/components/SearchToolbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    if-nez v0, :cond_0

    .line 53
    sget-object v0, Lorg/thoughtcrime/securesms/components/SearchToolbar;->TAG:Ljava/lang/String;

    const-string v1, "SearchToolbar: No toolbar"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 57
    :cond_0
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/SearchToolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800e2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 58
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 59
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/SearchToolbar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0600a4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 61
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x7f0e000b

    .line 62
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->inflateMenu(I)V

    .line 64
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const v2, 0x7f09003e

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lorg/thoughtcrime/securesms/components/SearchToolbar;->searchItem:Landroid/view/MenuItem;

    .line 65
    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/SearchView;

    const v2, 0x7f090314

    .line 66
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const/4 v3, 0x6

    .line 67
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/SearchView;->setImeOptions(I)V

    const/4 v3, 0x0

    .line 69
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/SearchView;->setSubmitButtonEnabled(Z)V

    const v3, 0x7f1203b3

    if-eqz v2, :cond_1

    .line 72
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(I)V

    .line 73
    new-instance v3, Lorg/thoughtcrime/securesms/components/SearchToolbar$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, Lorg/thoughtcrime/securesms/components/SearchToolbar$$ExternalSyntheticLambda0;-><init>(Landroidx/appcompat/widget/SearchView;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/SearchToolbar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 84
    :goto_0
    new-instance v2, Lorg/thoughtcrime/securesms/components/SearchToolbar$1;

    invoke-direct {v2, p0}, Lorg/thoughtcrime/securesms/components/SearchToolbar$1;-><init>(Lorg/thoughtcrime/securesms/components/SearchToolbar;)V

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    .line 97
    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/SearchToolbar;->searchItem:Landroid/view/MenuItem;

    new-instance v2, Lorg/thoughtcrime/securesms/components/SearchToolbar$2;

    invoke-direct {v2, p0}, Lorg/thoughtcrime/securesms/components/SearchToolbar$2;-><init>(Lorg/thoughtcrime/securesms/components/SearchToolbar;)V

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    .line 110
    new-instance v1, Lorg/thoughtcrime/securesms/components/SearchToolbar$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/thoughtcrime/securesms/components/SearchToolbar$$ExternalSyntheticLambda1;-><init>(Lorg/thoughtcrime/securesms/components/SearchToolbar;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$initialize$0(Landroidx/appcompat/widget/SearchView;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    if-ne p1, p2, :cond_0

    .line 75
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->clearFocus()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public collapse()V
    .locals 1

    .line 134
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/SearchToolbar;->searchItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->collapseActionView()Z

    return-void
.end method

.method public display(FF)V
    .locals 3

    .line 115
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/SearchToolbar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    iput p1, p0, Lorg/thoughtcrime/securesms/components/SearchToolbar;->x:F

    .line 117
    iput p2, p0, Lorg/thoughtcrime/securesms/components/SearchToolbar;->y:F

    .line 119
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/SearchToolbar;->searchItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 121
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    float-to-int p1, p1

    float-to-int p2, p2

    .line 122
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/SearchToolbar;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1, v0}, Lcom/google/android/material/chip/Chip$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object p1

    const-wide/16 v0, 0x190

    .line 123
    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 125
    invoke-virtual {p0, v2}, Lorg/thoughtcrime/securesms/components/SearchToolbar;->setVisibility(I)V

    .line 126
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    goto :goto_0

    .line 128
    :cond_0
    invoke-virtual {p0, v2}, Lorg/thoughtcrime/securesms/components/SearchToolbar;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public isVisible()Z
    .locals 1

    .line 161
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/SearchToolbar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method synthetic lambda$initialize$1$org-thoughtcrime-securesms-components-SearchToolbar(Landroid/view/View;)V
    .locals 0

    .line 110
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/SearchToolbar;->hide()V

    return-void
.end method

.method public setListener(Lorg/thoughtcrime/securesms/components/SearchToolbar$SearchListener;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/SearchToolbar;->listener:Lorg/thoughtcrime/securesms/components/SearchToolbar$SearchListener;

    return-void
.end method
