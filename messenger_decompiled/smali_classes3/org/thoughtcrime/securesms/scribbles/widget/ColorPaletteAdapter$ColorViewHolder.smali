.class Lorg/thoughtcrime/securesms/scribbles/widget/ColorPaletteAdapter$ColorViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ColorPaletteAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/scribbles/widget/ColorPaletteAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ColorViewHolder"
.end annotation


# instance fields
.field final foreground:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 61
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f090287

    .line 62
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lorg/thoughtcrime/securesms/scribbles/widget/ColorPaletteAdapter$ColorViewHolder;->foreground:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic lambda$bind$0(Lorg/thoughtcrime/securesms/scribbles/widget/ColorPaletteAdapter$EventListener;ILandroid/view/View;)V
    .locals 0

    .line 69
    invoke-interface {p0, p1}, Lorg/thoughtcrime/securesms/scribbles/widget/ColorPaletteAdapter$EventListener;->onColorSelected(I)V

    return-void
.end method


# virtual methods
.method bind(ILorg/thoughtcrime/securesms/scribbles/widget/ColorPaletteAdapter$EventListener;)V
    .locals 2

    .line 66
    iget-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/widget/ColorPaletteAdapter$ColorViewHolder;->foreground:Landroid/widget/ImageView;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    if-eqz p2, :cond_0

    .line 69
    iget-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/widget/ColorPaletteAdapter$ColorViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lorg/thoughtcrime/securesms/scribbles/widget/ColorPaletteAdapter$ColorViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2, p1}, Lorg/thoughtcrime/securesms/scribbles/widget/ColorPaletteAdapter$ColorViewHolder$$ExternalSyntheticLambda0;-><init>(Lorg/thoughtcrime/securesms/scribbles/widget/ColorPaletteAdapter$EventListener;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method
