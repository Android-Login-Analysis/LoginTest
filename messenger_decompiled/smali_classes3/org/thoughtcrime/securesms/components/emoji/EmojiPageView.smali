.class public Lorg/thoughtcrime/securesms/components/emoji/EmojiPageView;
.super Landroid/widget/FrameLayout;
.source "EmojiPageView.java"

# interfaces
.implements Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter$VariationSelectorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/components/emoji/EmojiPageView$ScrollDisabler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EmojiPageView"


# instance fields
.field private final adapter:Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter;

.field private final layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

.field private model:Lorg/thoughtcrime/securesms/components/emoji/EmojiPageModel;

.field private final popup:Lorg/thoughtcrime/securesms/components/emoji/EmojiVariationSelectorPopup;

.field private final recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private final scrollDisabler:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

.field private final variationSelectorListener:Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter$VariationSelectorListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/thoughtcrime/securesms/components/emoji/EmojiKeyboardProvider$EmojiEventListener;Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter$VariationSelectorListener;Z)V
    .locals 9

    .line 32
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 33
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0063

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 35
    iput-object p3, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageView;->variationSelectorListener:Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter$VariationSelectorListener;

    const p3, 0x7f090110

    .line 37
    invoke-virtual {v0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p3, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 38
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    const/16 v1, 0x8

    invoke-direct {v0, p1, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageView;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 39
    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageView$ScrollDisabler;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageView$ScrollDisabler;-><init>(Lorg/thoughtcrime/securesms/components/emoji/EmojiPageView$1;)V

    iput-object v1, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageView;->scrollDisabler:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    .line 40
    new-instance v5, Lorg/thoughtcrime/securesms/components/emoji/EmojiVariationSelectorPopup;

    invoke-direct {v5, p1, p2}, Lorg/thoughtcrime/securesms/components/emoji/EmojiVariationSelectorPopup;-><init>(Landroid/content/Context;Lorg/thoughtcrime/securesms/components/emoji/EmojiKeyboardProvider$EmojiEventListener;)V

    iput-object v5, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageView;->popup:Lorg/thoughtcrime/securesms/components/emoji/EmojiVariationSelectorPopup;

    .line 41
    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider;->getInstance(Landroid/content/Context;)Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider;

    move-result-object v4

    move-object v3, v1

    move-object v6, p2

    move-object v7, p0

    move v8, p4

    invoke-direct/range {v3 .. v8}, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter;-><init>(Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider;Lorg/thoughtcrime/securesms/components/emoji/EmojiVariationSelectorPopup;Lorg/thoughtcrime/securesms/components/emoji/EmojiKeyboardProvider$EmojiEventListener;Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter$VariationSelectorListener;Z)V

    iput-object v1, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageView;->adapter:Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter;

    .line 47
    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 48
    invoke-virtual {p3, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$onVariationSelectorStateChanged$0$org-thoughtcrime-securesms-components-emoji-EmojiPageView()V
    .locals 2

    .line 80
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageView;->scrollDisabler:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    return-void
.end method

.method public onSelected()V
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageView;->model:Lorg/thoughtcrime/securesms/components/emoji/EmojiPageModel;

    invoke-interface {v0}, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageModel;->isDynamic()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageView;->adapter:Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter;

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 71
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f07009f

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    .line 72
    iget-object p3, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageView;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    div-int/2addr p1, p2

    const/4 p2, 0x1

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p3, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    return-void
.end method

.method public onVariationSelectorStateChanged(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 78
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageView;->scrollDisabler:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    goto :goto_0

    .line 80
    :cond_0
    new-instance v0, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageView$$ExternalSyntheticLambda0;-><init>(Lorg/thoughtcrime/securesms/components/emoji/EmojiPageView;)V

    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageView;->post(Ljava/lang/Runnable;)Z

    .line 83
    :goto_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageView;->variationSelectorListener:Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter$VariationSelectorListener;

    if-eqz v0, :cond_1

    .line 84
    invoke-interface {v0, p1}, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter$VariationSelectorListener;->onVariationSelectorStateChanged(Z)V

    :cond_1
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    if-eqz p2, :cond_0

    .line 65
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageView;->popup:Lorg/thoughtcrime/securesms/components/emoji/EmojiVariationSelectorPopup;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/components/emoji/EmojiVariationSelectorPopup;->dismiss()V

    :cond_0
    return-void
.end method

.method public setModel(Lorg/thoughtcrime/securesms/components/emoji/EmojiPageModel;)V
    .locals 1

    .line 58
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageView;->model:Lorg/thoughtcrime/securesms/components/emoji/EmojiPageModel;

    .line 59
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageView;->adapter:Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter;

    invoke-interface {p1}, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageModel;->getDisplayEmoji()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter;->setEmoji(Ljava/util/List;)V

    return-void
.end method

.method public setRecyclerNestedScrollingEnabled(Z)V
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    return-void
.end method
