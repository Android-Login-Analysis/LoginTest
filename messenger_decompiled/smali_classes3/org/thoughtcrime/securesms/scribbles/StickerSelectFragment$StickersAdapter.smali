.class Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment$StickersAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "StickerSelectFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StickersAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment$StickersAdapter$StickerViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment$StickersAdapter$StickerViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final glideRequests:Lorg/thoughtcrime/securesms/mms/GlideRequests;

.field private final layoutInflater:Landroid/view/LayoutInflater;

.field private final stickerFiles:[Ljava/lang/String;

.field final synthetic this$0:Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment;


# direct methods
.method constructor <init>(Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment;Landroid/content/Context;Lorg/thoughtcrime/securesms/mms/GlideRequests;[Ljava/lang/String;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment$StickersAdapter;->this$0:Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 104
    iput-object p3, p0, Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment$StickersAdapter;->glideRequests:Lorg/thoughtcrime/securesms/mms/GlideRequests;

    .line 105
    iput-object p4, p0, Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment$StickersAdapter;->stickerFiles:[Ljava/lang/String;

    .line 106
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment$StickersAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic access$300(Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment$StickersAdapter;Ljava/lang/String;)V
    .locals 0

    .line 97
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment$StickersAdapter;->onStickerSelected(Ljava/lang/String;)V

    return-void
.end method

.method private onStickerSelected(Ljava/lang/String;)V
    .locals 1

    .line 135
    iget-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment$StickersAdapter;->this$0:Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment;->access$200(Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment;)Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment$StickerSelectionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment$StickersAdapter;->this$0:Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment;->access$200(Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment;)Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment$StickerSelectionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment$StickerSelectionListener;->onStickerSelected(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 125
    iget-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment$StickersAdapter;->stickerFiles:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 97
    check-cast p1, Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment$StickersAdapter$StickerViewHolder;

    invoke-virtual {p0, p1, p2}, Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment$StickersAdapter;->onBindViewHolder(Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment$StickersAdapter$StickerViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment$StickersAdapter$StickerViewHolder;I)V
    .locals 2

    .line 116
    iget-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment$StickersAdapter;->stickerFiles:[Ljava/lang/String;

    aget-object p2, v0, p2

    invoke-static {p1, p2}, Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment$StickersAdapter$StickerViewHolder;->access$002(Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment$StickersAdapter$StickerViewHolder;Ljava/lang/String;)Ljava/lang/String;

    .line 118
    iget-object p2, p0, Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment$StickersAdapter;->glideRequests:Lorg/thoughtcrime/securesms/mms/GlideRequests;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "file:///android_asset/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment$StickersAdapter$StickerViewHolder;->access$000(Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment$StickersAdapter$StickerViewHolder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/thoughtcrime/securesms/mms/GlideRequests;->load(Landroid/net/Uri;)Lorg/thoughtcrime/securesms/mms/GlideRequest;

    move-result-object p2

    sget-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 119
    invoke-virtual {p2, v0}, Lorg/thoughtcrime/securesms/mms/GlideRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lorg/thoughtcrime/securesms/mms/GlideRequest;

    move-result-object p2

    .line 120
    invoke-static {p1}, Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment$StickersAdapter$StickerViewHolder;->access$100(Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment$StickersAdapter$StickerViewHolder;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/thoughtcrime/securesms/mms/GlideRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 97
    invoke-virtual {p0, p1, p2}, Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment$StickersAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment$StickersAdapter$StickerViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment$StickersAdapter$StickerViewHolder;
    .locals 3

    .line 111
    new-instance p2, Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment$StickersAdapter$StickerViewHolder;

    iget-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment$StickersAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0c00fa

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment$StickersAdapter$StickerViewHolder;-><init>(Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment$StickersAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public bridge synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 97
    check-cast p1, Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment$StickersAdapter$StickerViewHolder;

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment$StickersAdapter;->onViewRecycled(Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment$StickersAdapter$StickerViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment$StickersAdapter$StickerViewHolder;)V
    .locals 1

    .line 130
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 131
    iget-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment$StickersAdapter;->glideRequests:Lorg/thoughtcrime/securesms/mms/GlideRequests;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment$StickersAdapter$StickerViewHolder;->access$100(Lorg/thoughtcrime/securesms/scribbles/StickerSelectFragment$StickersAdapter$StickerViewHolder;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/mms/GlideRequests;->clear(Landroid/view/View;)V

    return-void
.end method
