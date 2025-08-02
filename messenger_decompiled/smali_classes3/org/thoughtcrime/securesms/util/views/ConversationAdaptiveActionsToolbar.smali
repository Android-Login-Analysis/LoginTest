.class public Lorg/thoughtcrime/securesms/util/views/ConversationAdaptiveActionsToolbar;
.super Landroidx/appcompat/widget/Toolbar;
.source "ConversationAdaptiveActionsToolbar.java"


# static fields
.field private static final ACTION_VIEW_WIDTH_DP:I = 0x30

.field private static final ID_ALWAYS_SHOW_AS_ACTION:I = 0x7f0901f7

.field private static final ID_NEVER_SHOW_AS_ACTION_1:I = 0x7f0901f9

.field private static final ID_NEVER_SHOW_AS_ACTION_2:I = 0x7f0901ee

.field private static final ID_NEVER_SHOW_AS_ACTION_3:I = 0x7f0901fa

.field private static final ID_NEVER_SHOW_AS_ACTION_4:I = 0x7f09020a

.field private static final NAVIGATION_DP:I = 0x38

.field private static final OVERFLOW_VIEW_WIDTH_DP:I = 0x24

.field private static final TITLE_DP:I = 0x30


# instance fields
.field private final maxShown:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, v0}, Lorg/thoughtcrime/securesms/util/views/ConversationAdaptiveActionsToolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f0405cb

    .line 39
    invoke-direct {p0, p1, p2, v0}, Lorg/thoughtcrime/securesms/util/views/ConversationAdaptiveActionsToolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    sget-object p3, Lorg/thoughtcrime/securesms/R$styleable;->ConversationAdaptiveActionsToolbar:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    const/16 p3, 0x64

    .line 47
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lorg/thoughtcrime/securesms/util/views/ConversationAdaptiveActionsToolbar;->maxShown:I

    .line 49
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static adjustMenuActions(Landroid/view/Menu;II)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 62
    :goto_0
    invoke-interface {p0}, Landroid/view/Menu;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 63
    invoke-interface {p0, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/MenuItem;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 v1, 0x68

    .line 68
    invoke-static {v1}, Lorg/thoughtcrime/securesms/util/ViewUtil;->dpToPx(I)I

    move-result v1

    sub-int/2addr p2, v1

    const/16 v1, 0x30

    .line 69
    invoke-static {v1}, Lorg/thoughtcrime/securesms/util/ViewUtil;->dpToPx(I)I

    move-result v3

    div-int v3, p2, v3

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-ge v3, v2, :cond_2

    const/16 v2, 0x24

    .line 72
    invoke-static {v2}, Lorg/thoughtcrime/securesms/util/ViewUtil;->dpToPx(I)I

    move-result v2

    sub-int/2addr p2, v2

    .line 75
    :cond_2
    invoke-static {v1}, Lorg/thoughtcrime/securesms/util/ViewUtil;->dpToPx(I)I

    move-result v1

    div-int/2addr p2, v1

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    const p2, 0x7f0901f7

    .line 77
    invoke-interface {p0, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    add-int/lit8 p1, p1, -0x1

    const/4 v1, 0x0

    .line 80
    :goto_1
    invoke-interface {p0}, Landroid/view/Menu;->size()I

    move-result v3

    if-ge v1, v3, :cond_8

    .line 81
    invoke-interface {p0, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 83
    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    const v5, 0x7f0901f9

    const/4 v6, 0x1

    if-eq v4, v5, :cond_4

    .line 84
    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    const v5, 0x7f0901ee

    if-eq v4, v5, :cond_4

    .line 85
    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    const v5, 0x7f0901fa

    if-eq v4, v5, :cond_4

    .line 86
    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    const v5, 0x7f09020a

    if-ne v4, v5, :cond_3

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v4, 0x1

    .line 87
    :goto_3
    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    if-ne v5, p2, :cond_5

    goto :goto_4

    :cond_5
    const/4 v6, 0x0

    :goto_4
    if-eqz v6, :cond_6

    goto :goto_5

    .line 91
    :cond_6
    invoke-interface {v3}, Landroid/view/MenuItem;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_7

    if-lez p1, :cond_7

    if-nez v4, :cond_7

    .line 92
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_5

    .line 95
    :cond_7
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_8
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 3

    .line 54
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/Toolbar;->onMeasure(II)V

    .line 55
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/util/views/ConversationAdaptiveActionsToolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    iget v1, p0, Lorg/thoughtcrime/securesms/util/views/ConversationAdaptiveActionsToolbar;->maxShown:I

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/util/views/ConversationAdaptiveActionsToolbar;->getMeasuredWidth()I

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/thoughtcrime/securesms/util/views/ConversationAdaptiveActionsToolbar;->adjustMenuActions(Landroid/view/Menu;II)V

    .line 56
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/Toolbar;->onMeasure(II)V

    return-void
.end method
