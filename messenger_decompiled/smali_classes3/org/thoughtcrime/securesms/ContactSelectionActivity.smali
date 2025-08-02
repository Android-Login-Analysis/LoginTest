.class public abstract Lorg/thoughtcrime/securesms/ContactSelectionActivity;
.super Lorg/thoughtcrime/securesms/PassphraseRequiredActionBarActivity;
.source "ContactSelectionActivity.java"

# interfaces
.implements Lorg/thoughtcrime/securesms/ContactSelectionListFragment$OnContactSelectedListener;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final TAG:Ljava/lang/String; = "ContactSelectionActivity"


# instance fields
.field protected contactsFragment:Lorg/thoughtcrime/securesms/ContactSelectionListFragment;

.field private toolbar:Lorg/thoughtcrime/securesms/components/ContactFilterToolbar;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/PassphraseRequiredActionBarActivity;-><init>()V

    return-void
.end method

.method private initializeResources()V
    .locals 2

    .line 72
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ContactSelectionActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0900b8

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/ContactSelectionActivity;->contactsFragment:Lorg/thoughtcrime/securesms/ContactSelectionListFragment;

    .line 73
    invoke-virtual {v0, p0}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->setOnContactSelectedListener(Lorg/thoughtcrime/securesms/ContactSelectionListFragment$OnContactSelectedListener;)V

    return-void
.end method

.method private initializeSearch()V
    .locals 2

    .line 77
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ContactSelectionActivity;->toolbar:Lorg/thoughtcrime/securesms/components/ContactFilterToolbar;

    new-instance v1, Lorg/thoughtcrime/securesms/ContactSelectionActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/thoughtcrime/securesms/ContactSelectionActivity$$ExternalSyntheticLambda0;-><init>(Lorg/thoughtcrime/securesms/ContactSelectionActivity;)V

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/components/ContactFilterToolbar;->setOnFilterChangedListener(Lorg/thoughtcrime/securesms/components/ContactFilterToolbar$OnFilterChangedListener;)V

    return-void
.end method

.method private initializeToolbar()V
    .locals 2

    const v0, 0x7f0903b4

    .line 61
    invoke-static {p0, v0}, Lorg/thoughtcrime/securesms/util/ViewUtil;->findById(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/components/ContactFilterToolbar;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/ContactSelectionActivity;->toolbar:Lorg/thoughtcrime/securesms/components/ContactFilterToolbar;

    .line 62
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/ContactSelectionActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 65
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ContactSelectionActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 66
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ContactSelectionActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 67
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ContactSelectionActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 68
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ContactSelectionActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method protected getToolbar()Lorg/thoughtcrime/securesms/components/ContactFilterToolbar;
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ContactSelectionActivity;->toolbar:Lorg/thoughtcrime/securesms/components/ContactFilterToolbar;

    return-object v0
.end method

.method synthetic lambda$initializeSearch$0$org-thoughtcrime-securesms-ContactSelectionActivity(Ljava/lang/String;)V
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ContactSelectionActivity;->contactsFragment:Lorg/thoughtcrime/securesms/ContactSelectionListFragment;

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->setQueryFilter(Ljava/lang/String;)V

    return-void
.end method

.method public onContactDeselected(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onContactSelected(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;Z)V
    .locals 0

    const p1, 0x7f0c002c

    .line 49
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/ContactSelectionActivity;->setContentView(I)V

    .line 51
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ContactSelectionActivity;->initializeToolbar()V

    .line 52
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ContactSelectionActivity;->initializeResources()V

    .line 53
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ContactSelectionActivity;->initializeSearch()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 82
    invoke-super {p0, p1}, Lorg/thoughtcrime/securesms/PassphraseRequiredActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 84
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 85
    :cond_0
    invoke-super {p0}, Lorg/thoughtcrime/securesms/PassphraseRequiredActionBarActivity;->onBackPressed()V

    const/4 p1, 0x1

    return p1
.end method

.method protected onPreCreate()V
    .locals 1

    .line 43
    new-instance v0, Lorg/thoughtcrime/securesms/util/DynamicNoActionBarTheme;

    invoke-direct {v0}, Lorg/thoughtcrime/securesms/util/DynamicNoActionBarTheme;-><init>()V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/ContactSelectionActivity;->dynamicTheme:Lorg/thoughtcrime/securesms/util/DynamicTheme;

    .line 44
    invoke-super {p0}, Lorg/thoughtcrime/securesms/PassphraseRequiredActionBarActivity;->onPreCreate()V

    return-void
.end method
