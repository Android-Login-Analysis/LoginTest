.class Lorg/thoughtcrime/securesms/scribbles/StickerSelectActivity$StickerPagerAdapter;
.super Landroidx/fragment/app/FragmentStatePagerAdapter;
.source "StickerSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/scribbles/StickerSelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StickerPagerAdapter"
.end annotation


# instance fields
.field private final fragments:[Landroidx/fragment/app/Fragment;


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentManager;Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment$StickerSelectionListener;)V
    .locals 3

    .line 85
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentStatePagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    const/4 p1, 0x5

    new-array p1, p1, [Landroidx/fragment/app/Fragment;

    const-string v0, "stickers/emoticons"

    .line 88
    invoke-static {v0}, Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment;->newInstance(Ljava/lang/String;)Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const-string v0, "stickers/clothes"

    .line 89
    invoke-static {v0}, Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment;->newInstance(Ljava/lang/String;)Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, p1, v2

    const-string v0, "stickers/animals"

    .line 90
    invoke-static {v0}, Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment;->newInstance(Ljava/lang/String;)Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, p1, v2

    const-string v0, "stickers/food"

    .line 91
    invoke-static {v0}, Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment;->newInstance(Ljava/lang/String;)Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment;

    move-result-object v0

    const/4 v2, 0x3

    aput-object v0, p1, v2

    const-string v0, "stickers/weather"

    .line 92
    invoke-static {v0}, Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment;->newInstance(Ljava/lang/String;)Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment;

    move-result-object v0

    const/4 v2, 0x4

    aput-object v0, p1, v2

    iput-object p1, p0, Lorg/thoughtcrime/securesms/scribbles/StickerSelectActivity$StickerPagerAdapter;->fragments:[Landroidx/fragment/app/Fragment;

    .line 95
    array-length v0, p1

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 96
    check-cast v2, Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment;

    invoke-virtual {v2, p2}, Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment;->setListener(Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment$StickerSelectionListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/StickerSelectActivity$StickerPagerAdapter;->fragments:[Landroidx/fragment/app/Fragment;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/StickerSelectActivity$StickerPagerAdapter;->fragments:[Landroidx/fragment/app/Fragment;

    aget-object p1, v0, p1

    return-object p1
.end method
