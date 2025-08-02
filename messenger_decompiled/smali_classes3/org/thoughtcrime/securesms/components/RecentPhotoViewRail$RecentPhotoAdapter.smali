.class Lorg/thoughtcrime/securesms/components/RecentPhotoViewRail$RecentPhotoAdapter;
.super Lorg/thoughtcrime/securesms/database/CursorRecyclerViewAdapter;
.source "RecentPhotoViewRail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/components/RecentPhotoViewRail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RecentPhotoAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/components/RecentPhotoViewRail$RecentPhotoAdapter$RecentPhotoViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/thoughtcrime/securesms/database/CursorRecyclerViewAdapter<",
        "Lorg/thoughtcrime/securesms/components/RecentPhotoViewRail$RecentPhotoAdapter$RecentPhotoViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final baseUri:Landroid/net/Uri;

.field private clickedListener:Lorg/thoughtcrime/securesms/components/RecentPhotoViewRail$OnItemClickedListener;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Landroid/net/Uri;Lorg/thoughtcrime/securesms/components/RecentPhotoViewRail$OnItemClickedListener;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1, p2}, Lorg/thoughtcrime/securesms/database/CursorRecyclerViewAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 88
    iput-object p3, p0, Lorg/thoughtcrime/securesms/components/RecentPhotoViewRail$RecentPhotoAdapter;->baseUri:Landroid/net/Uri;

    .line 89
    iput-object p4, p0, Lorg/thoughtcrime/securesms/components/RecentPhotoViewRail$RecentPhotoAdapter;->clickedListener:Lorg/thoughtcrime/securesms/components/RecentPhotoViewRail$OnItemClickedListener;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Landroid/net/Uri;Lorg/thoughtcrime/securesms/components/RecentPhotoViewRail$OnItemClickedListener;Lorg/thoughtcrime/securesms/components/RecentPhotoViewRail$1;)V
    .locals 0

    .line 81
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/thoughtcrime/securesms/components/RecentPhotoViewRail$RecentPhotoAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Landroid/net/Uri;Lorg/thoughtcrime/securesms/components/RecentPhotoViewRail$OnItemClickedListener;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$onBindItemViewHolder$0$org-thoughtcrime-securesms-components-RecentPhotoViewRail$RecentPhotoAdapter(Landroid/net/Uri;Landroid/view/View;)V
    .locals 0

    .line 121
    iget-object p2, p0, Lorg/thoughtcrime/securesms/components/RecentPhotoViewRail$RecentPhotoAdapter;->clickedListener:Lorg/thoughtcrime/securesms/components/RecentPhotoViewRail$OnItemClickedListener;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lorg/thoughtcrime/securesms/components/RecentPhotoViewRail$OnItemClickedListener;->onItemClicked(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onBindItemViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/database/Cursor;)V
    .locals 0

    .line 81
    check-cast p1, Lorg/thoughtcrime/securesms/components/RecentPhotoViewRail$RecentPhotoAdapter$RecentPhotoViewHolder;

    invoke-virtual {p0, p1, p2}, Lorg/thoughtcrime/securesms/components/RecentPhotoViewRail$RecentPhotoAdapter;->onBindItemViewHolder(Lorg/thoughtcrime/securesms/components/RecentPhotoViewRail$RecentPhotoAdapter$RecentPhotoViewHolder;Landroid/database/Cursor;)V

    return-void
.end method

.method public onBindItemViewHolder(Lorg/thoughtcrime/securesms/components/RecentPhotoViewRail$RecentPhotoAdapter$RecentPhotoViewHolder;Landroid/database/Cursor;)V
    .locals 6

    .line 102
    iget-object v0, p1, Lorg/thoughtcrime/securesms/components/RecentPhotoViewRail$RecentPhotoAdapter$RecentPhotoViewHolder;->imageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string v0, "_id"

    .line 104
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-string v2, "datetaken"

    .line 105
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    const-string v2, "date_modified"

    .line 106
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-string v4, "mime_type"

    .line 107
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "orientation"

    .line 108
    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    .line 110
    sget-object v5, Lorg/thoughtcrime/securesms/database/loaders/RecentPhotosLoader;->BASE_URL:Landroid/net/Uri;

    invoke-static {v5, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 112
    new-instance v1, Lcom/bumptech/glide/signature/MediaStoreSignature;

    invoke-direct {v1, v4, v2, v3, p2}, Lcom/bumptech/glide/signature/MediaStoreSignature;-><init>(Ljava/lang/String;JI)V

    .line 114
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/RecentPhotoViewRail$RecentPhotoAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lorg/thoughtcrime/securesms/mms/GlideApp;->with(Landroid/content/Context;)Lorg/thoughtcrime/securesms/mms/GlideRequests;

    move-result-object p2

    .line 115
    invoke-virtual {p2, v0}, Lorg/thoughtcrime/securesms/mms/GlideRequests;->load(Landroid/net/Uri;)Lorg/thoughtcrime/securesms/mms/GlideRequest;

    move-result-object p2

    .line 116
    invoke-virtual {p2, v1}, Lorg/thoughtcrime/securesms/mms/GlideRequest;->signature(Lcom/bumptech/glide/load/Key;)Lorg/thoughtcrime/securesms/mms/GlideRequest;

    move-result-object p2

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 117
    invoke-virtual {p2, v1}, Lorg/thoughtcrime/securesms/mms/GlideRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lorg/thoughtcrime/securesms/mms/GlideRequest;

    move-result-object p2

    iget-object v1, p1, Lorg/thoughtcrime/securesms/components/RecentPhotoViewRail$RecentPhotoAdapter$RecentPhotoViewHolder;->imageView:Landroid/widget/ImageView;

    .line 118
    invoke-virtual {p2, v1}, Lorg/thoughtcrime/securesms/mms/GlideRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 120
    iget-object p1, p1, Lorg/thoughtcrime/securesms/components/RecentPhotoViewRail$RecentPhotoAdapter$RecentPhotoViewHolder;->imageView:Landroid/widget/ImageView;

    new-instance p2, Lorg/thoughtcrime/securesms/components/RecentPhotoViewRail$RecentPhotoAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, v0}, Lorg/thoughtcrime/securesms/components/RecentPhotoViewRail$RecentPhotoAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/thoughtcrime/securesms/components/RecentPhotoViewRail$RecentPhotoAdapter;Landroid/net/Uri;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateItemViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 81
    invoke-virtual {p0, p1, p2}, Lorg/thoughtcrime/securesms/components/RecentPhotoViewRail$RecentPhotoAdapter;->onCreateItemViewHolder(Landroid/view/ViewGroup;I)Lorg/thoughtcrime/securesms/components/RecentPhotoViewRail$RecentPhotoAdapter$RecentPhotoViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateItemViewHolder(Landroid/view/ViewGroup;I)Lorg/thoughtcrime/securesms/components/RecentPhotoViewRail$RecentPhotoAdapter$RecentPhotoViewHolder;
    .locals 2

    .line 94
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c00f4

    const/4 v1, 0x0

    .line 95
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 97
    new-instance p2, Lorg/thoughtcrime/securesms/components/RecentPhotoViewRail$RecentPhotoAdapter$RecentPhotoViewHolder;

    invoke-direct {p2, p1}, Lorg/thoughtcrime/securesms/components/RecentPhotoViewRail$RecentPhotoAdapter$RecentPhotoViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public setListener(Lorg/thoughtcrime/securesms/components/RecentPhotoViewRail$OnItemClickedListener;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/RecentPhotoViewRail$RecentPhotoAdapter;->clickedListener:Lorg/thoughtcrime/securesms/components/RecentPhotoViewRail$OnItemClickedListener;

    return-void
.end method
