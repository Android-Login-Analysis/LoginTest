.class public Lorg/thoughtcrime/securesms/scribbles/StickerSelectActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "StickerSelectActivity.java"

# interfaces
.implements Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment$StickerSelectionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/scribbles/StickerSelectActivity$StickerPagerAdapter;
    }
.end annotation


# static fields
.field public static final EXTRA_STICKER_FILE:Ljava/lang/String; = "extra_sticker_file"

.field private static final TAB_TITLES:[I

.field private static final TAG:Ljava/lang/String; = "StickerSelectActivity"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const v0, 0x7f080130

    const v1, 0x7f080175

    const v2, 0x7f080164

    const v3, 0x7f080176

    const v4, 0x7f08014c

    .line 39
    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lorg/thoughtcrime/securesms/scribbles/StickerSelectActivity;->TAB_TITLES:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 49
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c00f8

    .line 50
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/scribbles/StickerSelectActivity;->setContentView(I)V

    const p1, 0x7f090091

    .line 52
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/scribbles/StickerSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    .line 53
    new-instance v0, Lorg/thoughtcrime/securesms/scribbles/StickerSelectActivity$StickerPagerAdapter;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/scribbles/StickerSelectActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/thoughtcrime/securesms/scribbles/StickerSelectActivity$StickerPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment$StickerSelectionListener;)V

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    const v0, 0x7f090092

    .line 55
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/scribbles/StickerSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    .line 56
    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    const/4 p1, 0x0

    .line 58
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 59
    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v1

    sget-object v2, Lorg/thoughtcrime/securesms/scribbles/StickerSelectActivity;->TAB_TITLES:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Lcom/google/android/material/tabs/TabLayout$Tab;->setIcon(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 65
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 66
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/scribbles/StickerSelectActivity;->onBackPressed()V

    const/4 p1, 0x1

    return p1

    .line 69
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onStickerSelected(Ljava/lang/String;)V
    .locals 2

    .line 74
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "extra_sticker_file"

    .line 75
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 76
    invoke-virtual {p0, p1, v0}, Lorg/thoughtcrime/securesms/scribbles/StickerSelectActivity;->setResult(ILandroid/content/Intent;)V

    .line 77
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/scribbles/StickerSelectActivity;->finish()V

    return-void
.end method
