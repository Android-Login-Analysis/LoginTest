.class Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardBottomTabAdapter$MediaKeyboardBottomTabViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "MediaKeyboardBottomTabAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardBottomTabAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MediaKeyboardBottomTabViewHolder"
.end annotation


# instance fields
.field private final image:Landroid/widget/ImageView;

.field private final indicator:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Z)V
    .locals 3

    .line 69
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0901e6

    .line 71
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901e0

    .line 72
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0901df

    .line 74
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardBottomTabAdapter$MediaKeyboardBottomTabViewHolder;->image:Landroid/widget/ImageView;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 75
    :goto_0
    iput-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardBottomTabAdapter$MediaKeyboardBottomTabViewHolder;->indicator:Landroid/view/View;

    const/4 p1, 0x0

    .line 77
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method static synthetic lambda$bind$0(Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardBottomTabAdapter$EventListener;ILandroid/view/View;)V
    .locals 0

    .line 92
    invoke-interface {p0, p1}, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardBottomTabAdapter$EventListener;->onTabSelected(I)V

    return-void
.end method


# virtual methods
.method bind(Lorg/thoughtcrime/securesms/mms/GlideRequests;Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardBottomTabAdapter$EventListener;Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider$TabIconProvider;IZ)V
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardBottomTabAdapter$MediaKeyboardBottomTabViewHolder;->image:Landroid/widget/ImageView;

    invoke-interface {p3, p1, v0, p4}, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider$TabIconProvider;->loadCategoryTabIcon(Lorg/thoughtcrime/securesms/mms/GlideRequests;Landroid/widget/ImageView;I)V

    .line 87
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardBottomTabAdapter$MediaKeyboardBottomTabViewHolder;->image:Landroid/widget/ImageView;

    if-eqz p5, :cond_0

    const/high16 p3, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 p3, 0x3f000000    # 0.5f

    :goto_0
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 88
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardBottomTabAdapter$MediaKeyboardBottomTabViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {p1, p5}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 90
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardBottomTabAdapter$MediaKeyboardBottomTabViewHolder;->indicator:Landroid/view/View;

    if-eqz p5, :cond_1

    const/4 p3, 0x0

    goto :goto_1

    :cond_1
    const/4 p3, 0x4

    :goto_1
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 92
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardBottomTabAdapter$MediaKeyboardBottomTabViewHolder;->itemView:Landroid/view/View;

    new-instance p3, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardBottomTabAdapter$MediaKeyboardBottomTabViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {p3, p2, p4}, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardBottomTabAdapter$MediaKeyboardBottomTabViewHolder$$ExternalSyntheticLambda0;-><init>(Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardBottomTabAdapter$EventListener;I)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method recycle()V
    .locals 2

    .line 96
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardBottomTabAdapter$MediaKeyboardBottomTabViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
