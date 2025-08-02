.class public Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardBottomTabAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "MediaKeyboardBottomTabAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardBottomTabAdapter$EventListener;,
        Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardBottomTabAdapter$MediaKeyboardBottomTabViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardBottomTabAdapter$MediaKeyboardBottomTabViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private activePosition:I

.field private count:I

.field private final eventListener:Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardBottomTabAdapter$EventListener;

.field private final glideRequests:Lorg/thoughtcrime/securesms/mms/GlideRequests;

.field private final highlightTop:Z

.field private tabIconProvider:Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider$TabIconProvider;


# direct methods
.method public constructor <init>(Lorg/thoughtcrime/securesms/mms/GlideRequests;Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardBottomTabAdapter$EventListener;Z)V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 25
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardBottomTabAdapter;->glideRequests:Lorg/thoughtcrime/securesms/mms/GlideRequests;

    .line 26
    iput-object p2, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardBottomTabAdapter;->eventListener:Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardBottomTabAdapter$EventListener;

    .line 27
    iput-boolean p3, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardBottomTabAdapter;->highlightTop:Z

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 48
    iget v0, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardBottomTabAdapter;->count:I

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 14
    check-cast p1, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardBottomTabAdapter$MediaKeyboardBottomTabViewHolder;

    invoke-virtual {p0, p1, p2}, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardBottomTabAdapter;->onBindViewHolder(Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardBottomTabAdapter$MediaKeyboardBottomTabViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardBottomTabAdapter$MediaKeyboardBottomTabViewHolder;I)V
    .locals 6

    .line 38
    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardBottomTabAdapter;->glideRequests:Lorg/thoughtcrime/securesms/mms/GlideRequests;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardBottomTabAdapter;->eventListener:Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardBottomTabAdapter$EventListener;

    iget-object v3, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardBottomTabAdapter;->tabIconProvider:Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider$TabIconProvider;

    iget v0, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardBottomTabAdapter;->activePosition:I

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v5, 0x0

    :goto_0
    move-object v0, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardBottomTabAdapter$MediaKeyboardBottomTabViewHolder;->bind(Lorg/thoughtcrime/securesms/mms/GlideRequests;Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardBottomTabAdapter$EventListener;Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider$TabIconProvider;IZ)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 14
    invoke-virtual {p0, p1, p2}, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardBottomTabAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardBottomTabAdapter$MediaKeyboardBottomTabViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardBottomTabAdapter$MediaKeyboardBottomTabViewHolder;
    .locals 3

    .line 32
    new-instance p2, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardBottomTabAdapter$MediaKeyboardBottomTabViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0092

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-boolean v0, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardBottomTabAdapter;->highlightTop:Z

    invoke-direct {p2, p1, v0}, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardBottomTabAdapter$MediaKeyboardBottomTabViewHolder;-><init>(Landroid/view/View;Z)V

    return-object p2
.end method

.method public bridge synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 14
    check-cast p1, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardBottomTabAdapter$MediaKeyboardBottomTabViewHolder;

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardBottomTabAdapter;->onViewRecycled(Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardBottomTabAdapter$MediaKeyboardBottomTabViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardBottomTabAdapter$MediaKeyboardBottomTabViewHolder;)V
    .locals 0

    .line 43
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardBottomTabAdapter$MediaKeyboardBottomTabViewHolder;->recycle()V

    return-void
.end method

.method public setActivePosition(I)V
    .locals 0

    .line 59
    iput p1, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardBottomTabAdapter;->activePosition:I

    .line 60
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardBottomTabAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setTabIconProvider(Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider$TabIconProvider;I)V
    .locals 0

    .line 52
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardBottomTabAdapter;->tabIconProvider:Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider$TabIconProvider;

    .line 53
    iput p2, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardBottomTabAdapter;->count:I

    .line 55
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardBottomTabAdapter;->notifyDataSetChanged()V

    return-void
.end method
