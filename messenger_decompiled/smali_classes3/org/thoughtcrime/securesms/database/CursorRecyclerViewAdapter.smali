.class public abstract Lorg/thoughtcrime/securesms/database/CursorRecyclerViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "CursorRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/database/CursorRecyclerViewAdapter$AdapterDataSetObserver;,
        Lorg/thoughtcrime/securesms/database/CursorRecyclerViewAdapter$HeaderFooterViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field static final FOOTER_ID:J = -0x7fffffffffffffffL

.field static final FOOTER_TYPE:I = -0x7fffffff

.field static final HEADER_ID:J = -0x8000000000000000L

.field static final HEADER_TYPE:I = -0x80000000


# instance fields
.field private final context:Landroid/content/Context;

.field private cursor:Landroid/database/Cursor;

.field private footer:Landroid/view/View;

.field private header:Landroid/view/View;

.field private final observer:Landroid/database/DataSetObserver;

.field private valid:Z


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2

    .line 53
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 35
    new-instance v0, Lorg/thoughtcrime/securesms/database/CursorRecyclerViewAdapter$AdapterDataSetObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/thoughtcrime/securesms/database/CursorRecyclerViewAdapter$AdapterDataSetObserver;-><init>(Lorg/thoughtcrime/securesms/database/CursorRecyclerViewAdapter;Lorg/thoughtcrime/securesms/database/CursorRecyclerViewAdapter$1;)V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/database/CursorRecyclerViewAdapter;->observer:Landroid/database/DataSetObserver;

    .line 54
    iput-object p1, p0, Lorg/thoughtcrime/securesms/database/CursorRecyclerViewAdapter;->context:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lorg/thoughtcrime/securesms/database/CursorRecyclerViewAdapter;->cursor:Landroid/database/Cursor;

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    .line 57
    iput-boolean p1, p0, Lorg/thoughtcrime/securesms/database/CursorRecyclerViewAdapter;->valid:Z

    .line 58
    invoke-interface {p2, v0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    return-void
.end method

.method static synthetic access$102(Lorg/thoughtcrime/securesms/database/CursorRecyclerViewAdapter;Z)Z
    .locals 0

    .line 33
    iput-boolean p1, p0, Lorg/thoughtcrime/securesms/database/CursorRecyclerViewAdapter;->valid:Z

    return p1
.end method

.method private getCursorPosition(I)I
    .locals 1

    .line 199
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/database/CursorRecyclerViewAdapter;->hasHeaderView()Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 203
    :cond_0
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/database/CursorRecyclerViewAdapter;->getFastAccessSize()I

    move-result v0

    sub-int/2addr p1, v0

    return p1
.end method


# virtual methods
.method public changeCursor(Landroid/database/Cursor;)V
    .locals 0

    .line 79
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/database/CursorRecyclerViewAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 81
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/thoughtcrime/securesms/database/CursorRecyclerViewAdapter;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getCursor()Landroid/database/Cursor;
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/thoughtcrime/securesms/database/CursorRecyclerViewAdapter;->cursor:Landroid/database/Cursor;

    return-object v0
.end method

.method protected getCursorAtPositionOrThrow(I)Landroid/database/Cursor;
    .locals 3

    .line 177
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/database/CursorRecyclerViewAdapter;->isActiveCursor()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lorg/thoughtcrime/securesms/database/CursorRecyclerViewAdapter;->cursor:Landroid/database/Cursor;

    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/database/CursorRecyclerViewAdapter;->getCursorPosition(I)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    iget-object p1, p0, Lorg/thoughtcrime/securesms/database/CursorRecyclerViewAdapter;->cursor:Landroid/database/Cursor;

    return-object p1

    .line 181
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "couldn\'t move cursor to position "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "this should only be called when the cursor is valid"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected getFastAccessItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected getFastAccessItemViewType(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected getFastAccessSize()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getItemCount()I
    .locals 2

    .line 107
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/database/CursorRecyclerViewAdapter;->isActiveCursor()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 109
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/database/CursorRecyclerViewAdapter;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 110
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/database/CursorRecyclerViewAdapter;->getFastAccessSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 111
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/database/CursorRecyclerViewAdapter;->hasHeaderView()Z

    move-result v1

    add-int/2addr v0, v1

    .line 112
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/database/CursorRecyclerViewAdapter;->hasFooterView()Z

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final getItemId(I)J
    .locals 5

    .line 165
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/database/CursorRecyclerViewAdapter;->isHeaderPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    .line 166
    :cond_0
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/database/CursorRecyclerViewAdapter;->isFooterPosition(I)Z

    move-result v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_1

    return-wide v1

    .line 167
    :cond_1
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/database/CursorRecyclerViewAdapter;->isFastAccessPosition(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/database/CursorRecyclerViewAdapter;->getFastAccessItemId(I)J

    move-result-wide v0

    return-wide v0

    .line 168
    :cond_2
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/database/CursorRecyclerViewAdapter;->getCursorAtPositionOrThrow(I)Landroid/database/Cursor;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/database/CursorRecyclerViewAdapter;->getItemId(Landroid/database/Cursor;)J

    move-result-wide v3

    cmp-long p1, v3, v1

    if-gtz p1, :cond_3

    const-wide/16 v0, 0x2

    add-long/2addr v3, v0

    :cond_3
    return-wide v3
.end method

.method public getItemId(Landroid/database/Cursor;)J
    .locals 2

    const-string v0, "_id"

    .line 173
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 1

    .line 153
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/database/CursorRecyclerViewAdapter;->isHeaderPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 p1, -0x80000000

    return p1

    .line 154
    :cond_0
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/database/CursorRecyclerViewAdapter;->isFooterPosition(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const p1, -0x7fffffff

    return p1

    .line 155
    :cond_1
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/database/CursorRecyclerViewAdapter;->isFastAccessPosition(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/database/CursorRecyclerViewAdapter;->getFastAccessItemViewType(I)I

    move-result p1

    return p1

    .line 156
    :cond_2
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/database/CursorRecyclerViewAdapter;->getCursorAtPositionOrThrow(I)Landroid/database/Cursor;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/database/CursorRecyclerViewAdapter;->getItemViewType(Landroid/database/Cursor;)I

    move-result p1

    return p1
.end method

.method public getItemViewType(Landroid/database/Cursor;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public hasFooterView()Z
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/thoughtcrime/securesms/database/CursorRecyclerViewAdapter;->footer:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasHeaderView()Z
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/thoughtcrime/securesms/database/CursorRecyclerViewAdapter;->header:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isActiveCursor()Z
    .locals 1

    .line 187
    iget-boolean v0, p0, Lorg/thoughtcrime/securesms/database/CursorRecyclerViewAdapter;->valid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/thoughtcrime/securesms/database/CursorRecyclerViewAdapter;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isFastAccessPosition(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected isFooterPosition(I)Z
    .locals 2

    .line 191
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/database/CursorRecyclerViewAdapter;->hasFooterView()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/database/CursorRecyclerViewAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected isHeaderPosition(I)Z
    .locals 1

    .line 195
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/database/CursorRecyclerViewAdapter;->hasHeaderView()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected onBindFastAccessItemViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    return-void
.end method

.method public abstract onBindItemViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/database/Cursor;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 139
    invoke-virtual {p0, p2}, Lorg/thoughtcrime/securesms/database/CursorRecyclerViewAdapter;->isHeaderPosition(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p2}, Lorg/thoughtcrime/securesms/database/CursorRecyclerViewAdapter;->isFooterPosition(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 140
    invoke-virtual {p0, p2}, Lorg/thoughtcrime/securesms/database/CursorRecyclerViewAdapter;->isFastAccessPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/thoughtcrime/securesms/database/CursorRecyclerViewAdapter;->onBindFastAccessItemViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    goto :goto_0

    .line 141
    :cond_0
    invoke-virtual {p0, p2}, Lorg/thoughtcrime/securesms/database/CursorRecyclerViewAdapter;->getCursorAtPositionOrThrow(I)Landroid/database/Cursor;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/thoughtcrime/securesms/database/CursorRecyclerViewAdapter;->onBindItemViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/database/Cursor;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public abstract onCreateItemViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    const/high16 v0, -0x80000000

    if-eq p2, v0, :cond_1

    const v0, -0x7fffffff

    if-eq p2, v0, :cond_0

    .line 130
    invoke-virtual {p0, p1, p2}, Lorg/thoughtcrime/securesms/database/CursorRecyclerViewAdapter;->onCreateItemViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    return-object p1

    .line 129
    :cond_0
    new-instance p1, Lorg/thoughtcrime/securesms/database/CursorRecyclerViewAdapter$HeaderFooterViewHolder;

    iget-object p2, p0, Lorg/thoughtcrime/securesms/database/CursorRecyclerViewAdapter;->footer:Landroid/view/View;

    invoke-direct {p1, p2}, Lorg/thoughtcrime/securesms/database/CursorRecyclerViewAdapter$HeaderFooterViewHolder;-><init>(Landroid/view/View;)V

    return-object p1

    .line 128
    :cond_1
    new-instance p1, Lorg/thoughtcrime/securesms/database/CursorRecyclerViewAdapter$HeaderFooterViewHolder;

    iget-object p2, p0, Lorg/thoughtcrime/securesms/database/CursorRecyclerViewAdapter;->header:Landroid/view/View;

    invoke-direct {p1, p2}, Lorg/thoughtcrime/securesms/database/CursorRecyclerViewAdapter$HeaderFooterViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public onItemViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    return-void
.end method

.method public final onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 118
    instance-of v0, p1, Lorg/thoughtcrime/securesms/database/CursorRecyclerViewAdapter$HeaderFooterViewHolder;

    if-nez v0, :cond_0

    .line 119
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/database/CursorRecyclerViewAdapter;->onItemViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_0
    return-void
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 2

    .line 86
    iget-object v0, p0, Lorg/thoughtcrime/securesms/database/CursorRecyclerViewAdapter;->cursor:Landroid/database/Cursor;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-eqz v0, :cond_1

    .line 92
    iget-object v1, p0, Lorg/thoughtcrime/securesms/database/CursorRecyclerViewAdapter;->observer:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 95
    :cond_1
    iput-object p1, p0, Lorg/thoughtcrime/securesms/database/CursorRecyclerViewAdapter;->cursor:Landroid/database/Cursor;

    if-eqz p1, :cond_2

    .line 97
    iget-object v1, p0, Lorg/thoughtcrime/securesms/database/CursorRecyclerViewAdapter;->observer:Landroid/database/DataSetObserver;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 100
    :cond_2
    iget-object p1, p0, Lorg/thoughtcrime/securesms/database/CursorRecyclerViewAdapter;->cursor:Landroid/database/Cursor;

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lorg/thoughtcrime/securesms/database/CursorRecyclerViewAdapter;->valid:Z

    .line 101
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/database/CursorRecyclerViewAdapter;->notifyDataSetChanged()V

    return-object v0
.end method
