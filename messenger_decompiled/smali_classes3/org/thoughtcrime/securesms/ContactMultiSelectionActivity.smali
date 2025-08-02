.class public Lorg/thoughtcrime/securesms/ContactMultiSelectionActivity;
.super Lorg/thoughtcrime/securesms/ContactSelectionActivity;
.source "ContactMultiSelectionActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ContactSelectionActivity;-><init>()V

    return-void
.end method

.method private saveSelection()V
    .locals 3

    .line 71
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ContactMultiSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 72
    iget-object v1, p0, Lorg/thoughtcrime/securesms/ContactMultiSelectionActivity;->contactsFragment:Lorg/thoughtcrime/securesms/ContactSelectionListFragment;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->getSelectedContacts()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 75
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v1, "contacts"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    :cond_0
    const/4 v1, -0x1

    .line 78
    invoke-virtual {p0, v1, v0}, Lorg/thoughtcrime/securesms/ContactMultiSelectionActivity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;Z)V
    .locals 3

    .line 38
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ContactMultiSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "multi_select"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 39
    invoke-super {p0, p1, p2}, Lorg/thoughtcrime/securesms/ContactSelectionActivity;->onCreate(Landroid/os/Bundle;Z)V

    .line 40
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ContactMultiSelectionActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const p2, 0x7f0800fc

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/ActionBar;->setHomeAsUpIndicator(I)V

    .line 44
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ContactMultiSelectionActivity;->getToolbar()Lorg/thoughtcrime/securesms/components/ContactFilterToolbar;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/components/ContactFilterToolbar;->setUseClearButton(Z)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 59
    invoke-super {p0, p1}, Lorg/thoughtcrime/securesms/ContactSelectionActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 60
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f0901ed

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 62
    :cond_0
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ContactMultiSelectionActivity;->saveSelection()V

    .line 63
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ContactMultiSelectionActivity;->finish()V

    const/4 p1, 0x1

    return p1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 49
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ContactMultiSelectionActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 50
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    const/high16 v1, 0x7f0e0000

    .line 52
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 53
    invoke-super {p0, p1}, Lorg/thoughtcrime/securesms/ContactSelectionActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    const/4 p1, 0x1

    return p1
.end method
