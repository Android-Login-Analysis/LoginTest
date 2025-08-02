.class public Lorg/thoughtcrime/securesms/BlockedContactsActivity;
.super Lorg/thoughtcrime/securesms/PassphraseRequiredActionBarActivity;
.source "BlockedContactsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/BlockedContactsActivity$BlockedAndShareContactsFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/PassphraseRequiredActionBarActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;Z)V
    .locals 2

    .line 33
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/BlockedContactsActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 34
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/BlockedContactsActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const p2, 0x7f12031b

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 35
    new-instance p1, Lorg/thoughtcrime/securesms/BlockedContactsActivity$BlockedAndShareContactsFragment;

    invoke-direct {p1}, Lorg/thoughtcrime/securesms/BlockedContactsActivity$BlockedAndShareContactsFragment;-><init>()V

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/BlockedContactsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const v0, 0x1020002

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Lorg/thoughtcrime/securesms/BlockedContactsActivity;->initFragment(ILandroidx/fragment/app/Fragment;Ljava/util/Locale;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 40
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 41
    :cond_0
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/BlockedContactsActivity;->finish()V

    const/4 p1, 0x1

    return p1
.end method
