.class Lorg/thoughtcrime/securesms/components/emoji/EmojiKeyboardProvider$EmojiPagerAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "EmojiKeyboardProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/components/emoji/EmojiKeyboardProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmojiPagerAdapter"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final emojiSelectionListener:Lorg/thoughtcrime/securesms/components/emoji/EmojiKeyboardProvider$EmojiEventListener;

.field private final pages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/thoughtcrime/securesms/components/emoji/EmojiPageModel;",
            ">;"
        }
    .end annotation
.end field

.field private final variationSelectorListener:Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter$VariationSelectorListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lorg/thoughtcrime/securesms/components/emoji/EmojiKeyboardProvider$EmojiEventListener;Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter$VariationSelectorListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lorg/thoughtcrime/securesms/components/emoji/EmojiPageModel;",
            ">;",
            "Lorg/thoughtcrime/securesms/components/emoji/EmojiKeyboardProvider$EmojiEventListener;",
            "Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter$VariationSelectorListener;",
            ")V"
        }
    .end annotation

    .line 124
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 125
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiKeyboardProvider$EmojiPagerAdapter;->context:Landroid/content/Context;

    .line 126
    iput-object p2, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiKeyboardProvider$EmojiPagerAdapter;->pages:Ljava/util/List;

    .line 127
    iput-object p3, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiKeyboardProvider$EmojiPagerAdapter;->emojiSelectionListener:Lorg/thoughtcrime/securesms/components/emoji/EmojiKeyboardProvider$EmojiEventListener;

    .line 128
    iput-object p4, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiKeyboardProvider$EmojiPagerAdapter;->variationSelectorListener:Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter$VariationSelectorListener;

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 146
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 133
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiKeyboardProvider$EmojiPagerAdapter;->pages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 5

    .line 138
    new-instance v0, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageView;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiKeyboardProvider$EmojiPagerAdapter;->context:Landroid/content/Context;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiKeyboardProvider$EmojiPagerAdapter;->emojiSelectionListener:Lorg/thoughtcrime/securesms/components/emoji/EmojiKeyboardProvider$EmojiEventListener;

    iget-object v3, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiKeyboardProvider$EmojiPagerAdapter;->variationSelectorListener:Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter$VariationSelectorListener;

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageView;-><init>(Landroid/content/Context;Lorg/thoughtcrime/securesms/components/emoji/EmojiKeyboardProvider$EmojiEventListener;Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter$VariationSelectorListener;Z)V

    .line 139
    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiKeyboardProvider$EmojiPagerAdapter;->pages:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageModel;

    invoke-virtual {v0, p2}, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageView;->setModel(Lorg/thoughtcrime/securesms/components/emoji/EmojiPageModel;)V

    .line 140
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    .line 151
    move-object v0, p3

    check-cast v0, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageView;

    .line 152
    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageView;->onSelected()V

    .line 153
    invoke-super {p0, p1, p2, p3}, Landroidx/viewpager/widget/PagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    return-void
.end method
