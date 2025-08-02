.class public Lorg/thoughtcrime/securesms/scribbles/widget/ColorPaletteAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ColorPaletteAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/scribbles/widget/ColorPaletteAdapter$ColorViewHolder;,
        Lorg/thoughtcrime/securesms/scribbles/widget/ColorPaletteAdapter$EventListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lorg/thoughtcrime/securesms/scribbles/widget/ColorPaletteAdapter$ColorViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final colors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private eventListener:Lorg/thoughtcrime/securesms/scribbles/widget/ColorPaletteAdapter$EventListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/widget/ColorPaletteAdapter;->colors:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/widget/ColorPaletteAdapter;->colors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 18
    check-cast p1, Lorg/thoughtcrime/securesms/scribbles/widget/ColorPaletteAdapter$ColorViewHolder;

    invoke-virtual {p0, p1, p2}, Lorg/thoughtcrime/securesms/scribbles/widget/ColorPaletteAdapter;->onBindViewHolder(Lorg/thoughtcrime/securesms/scribbles/widget/ColorPaletteAdapter$ColorViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lorg/thoughtcrime/securesms/scribbles/widget/ColorPaletteAdapter$ColorViewHolder;I)V
    .locals 1

    .line 31
    iget-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/widget/ColorPaletteAdapter;->colors:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/widget/ColorPaletteAdapter;->eventListener:Lorg/thoughtcrime/securesms/scribbles/widget/ColorPaletteAdapter$EventListener;

    invoke-virtual {p1, p2, v0}, Lorg/thoughtcrime/securesms/scribbles/widget/ColorPaletteAdapter$ColorViewHolder;->bind(ILorg/thoughtcrime/securesms/scribbles/widget/ColorPaletteAdapter$EventListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2}, Lorg/thoughtcrime/securesms/scribbles/widget/ColorPaletteAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/thoughtcrime/securesms/scribbles/widget/ColorPaletteAdapter$ColorViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/thoughtcrime/securesms/scribbles/widget/ColorPaletteAdapter$ColorViewHolder;
    .locals 3

    .line 26
    new-instance p2, Lorg/thoughtcrime/securesms/scribbles/widget/ColorPaletteAdapter$ColorViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c007b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/thoughtcrime/securesms/scribbles/widget/ColorPaletteAdapter$ColorViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public setColors(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/widget/ColorPaletteAdapter;->colors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 41
    iget-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/widget/ColorPaletteAdapter;->colors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 43
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/scribbles/widget/ColorPaletteAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setEventListener(Lorg/thoughtcrime/securesms/scribbles/widget/ColorPaletteAdapter$EventListener;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lorg/thoughtcrime/securesms/scribbles/widget/ColorPaletteAdapter;->eventListener:Lorg/thoughtcrime/securesms/scribbles/widget/ColorPaletteAdapter$EventListener;

    .line 49
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/scribbles/widget/ColorPaletteAdapter;->notifyDataSetChanged()V

    return-void
.end method
