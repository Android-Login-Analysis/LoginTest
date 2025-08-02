.class public Lorg/thoughtcrime/securesms/components/ContactFilterToolbar;
.super Landroidx/appcompat/widget/Toolbar;
.source "ContactFilterToolbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/components/ContactFilterToolbar$OnFilterChangedListener;,
        Lorg/thoughtcrime/securesms/components/ContactFilterToolbar$SearchUtil;
    }
.end annotation


# instance fields
.field private final clearToggle:Landroid/widget/ImageView;

.field private listener:Lorg/thoughtcrime/securesms/components/ContactFilterToolbar$OnFilterChangedListener;

.field private final searchText:Landroid/widget/EditText;

.field private final toggle:Lorg/thoughtcrime/securesms/components/AnimatingToggle;

.field private final toggleContainer:Landroid/widget/LinearLayout;

.field private useClearButton:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, v0}, Lorg/thoughtcrime/securesms/components/ContactFilterToolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f0405cb

    .line 33
    invoke-direct {p0, p1, p2, v0}, Lorg/thoughtcrime/securesms/components/ContactFilterToolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 34
    iput-boolean p1, p0, Lorg/thoughtcrime/securesms/components/ContactFilterToolbar;->useClearButton:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p2, 0x7f0c002b

    .line 39
    invoke-static {p1, p2, p0}, Lorg/thoughtcrime/securesms/components/ContactFilterToolbar;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f090316

    .line 41
    invoke-static {p0, p1}, Lorg/thoughtcrime/securesms/util/ViewUtil;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/ContactFilterToolbar;->searchText:Landroid/widget/EditText;

    const p2, 0x7f09008d

    .line 42
    invoke-static {p0, p2}, Lorg/thoughtcrime/securesms/util/ViewUtil;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lorg/thoughtcrime/securesms/components/AnimatingToggle;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/components/ContactFilterToolbar;->toggle:Lorg/thoughtcrime/securesms/components/AnimatingToggle;

    const p3, 0x7f09030c

    .line 43
    invoke-static {p0, p3}, Lorg/thoughtcrime/securesms/util/ViewUtil;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p0, Lorg/thoughtcrime/securesms/components/ContactFilterToolbar;->clearToggle:Landroid/widget/ImageView;

    const v0, 0x7f0903b3

    .line 44
    invoke-static {p0, v0}, Lorg/thoughtcrime/securesms/util/ViewUtil;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/components/ContactFilterToolbar;->toggleContainer:Landroid/widget/LinearLayout;

    const/16 v0, 0x21

    .line 46
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 48
    new-instance v0, Lorg/thoughtcrime/securesms/components/ContactFilterToolbar$1;

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/components/ContactFilterToolbar$1;-><init>(Lorg/thoughtcrime/securesms/components/ContactFilterToolbar;)V

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    new-instance p3, Lorg/thoughtcrime/securesms/components/ContactFilterToolbar$2;

    invoke-direct {p3, p0}, Lorg/thoughtcrime/securesms/components/ContactFilterToolbar$2;-><init>(Lorg/thoughtcrime/securesms/components/ContactFilterToolbar;)V

    invoke-virtual {p1, p3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const/4 p1, 0x0

    .line 81
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/components/ContactFilterToolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    const/4 p3, 0x0

    .line 82
    invoke-virtual {p0, p3}, Lorg/thoughtcrime/securesms/components/ContactFilterToolbar;->setContentInsetStartWithNavigation(I)V

    .line 87
    invoke-virtual {p2, p1}, Lorg/thoughtcrime/securesms/components/AnimatingToggle;->displayQuick(Landroid/view/View;)V

    .line 88
    invoke-virtual {p2, p3}, Lorg/thoughtcrime/securesms/components/AnimatingToggle;->setVisibility(I)V

    return-void
.end method

.method static synthetic access$000(Lorg/thoughtcrime/securesms/components/ContactFilterToolbar;)Landroid/widget/EditText;
    .locals 0

    .line 19
    iget-object p0, p0, Lorg/thoughtcrime/securesms/components/ContactFilterToolbar;->searchText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$100(Lorg/thoughtcrime/securesms/components/ContactFilterToolbar;Landroid/view/View;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/components/ContactFilterToolbar;->displayTogglingView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$200(Lorg/thoughtcrime/securesms/components/ContactFilterToolbar;)Z
    .locals 0

    .line 19
    iget-boolean p0, p0, Lorg/thoughtcrime/securesms/components/ContactFilterToolbar;->useClearButton:Z

    return p0
.end method

.method static synthetic access$300(Lorg/thoughtcrime/securesms/components/ContactFilterToolbar;)Landroid/widget/ImageView;
    .locals 0

    .line 19
    iget-object p0, p0, Lorg/thoughtcrime/securesms/components/ContactFilterToolbar;->clearToggle:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$400(Lorg/thoughtcrime/securesms/components/ContactFilterToolbar;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/ContactFilterToolbar;->notifyListener()V

    return-void
.end method

.method private displayTogglingView(Landroid/view/View;)V
    .locals 1

    .line 109
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/ContactFilterToolbar;->toggle:Lorg/thoughtcrime/securesms/components/AnimatingToggle;

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/components/AnimatingToggle;->display(Landroid/view/View;)V

    if-eqz p1, :cond_0

    .line 111
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/ContactFilterToolbar;->toggleContainer:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, p1}, Lorg/thoughtcrime/securesms/components/ContactFilterToolbar;->expandTapArea(Landroid/view/View;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private expandTapArea(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .line 116
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/ContactFilterToolbar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070060

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 118
    new-instance v1, Lorg/thoughtcrime/securesms/components/ContactFilterToolbar$3;

    invoke-direct {v1, p0, p2, v0, p1}, Lorg/thoughtcrime/securesms/components/ContactFilterToolbar$3;-><init>(Lorg/thoughtcrime/securesms/components/ContactFilterToolbar;Landroid/view/View;ILandroid/view/View;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private notifyListener()V
    .locals 2

    .line 105
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/ContactFilterToolbar;->listener:Lorg/thoughtcrime/securesms/components/ContactFilterToolbar$OnFilterChangedListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/ContactFilterToolbar;->searchText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/thoughtcrime/securesms/components/ContactFilterToolbar$OnFilterChangedListener;->onFilterChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 92
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/ContactFilterToolbar;->searchText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 93
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/ContactFilterToolbar;->notifyListener()V

    return-void
.end method

.method public setOnFilterChangedListener(Lorg/thoughtcrime/securesms/components/ContactFilterToolbar$OnFilterChangedListener;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/ContactFilterToolbar;->listener:Lorg/thoughtcrime/securesms/components/ContactFilterToolbar$OnFilterChangedListener;

    return-void
.end method

.method public setUseClearButton(Z)V
    .locals 0

    .line 97
    iput-boolean p1, p0, Lorg/thoughtcrime/securesms/components/ContactFilterToolbar;->useClearButton:Z

    return-void
.end method
