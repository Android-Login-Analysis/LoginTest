.class Lorg/thoughtcrime/securesms/ConversationAdapter$LastSeenHeader;
.super Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration;
.source "ConversationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/ConversationAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LastSeenHeader"
.end annotation


# instance fields
.field private final adapter:Lorg/thoughtcrime/securesms/ConversationAdapter;


# direct methods
.method constructor <init>(Lorg/thoughtcrime/securesms/ConversationAdapter;)V
    .locals 1

    const/4 v0, 0x0

    .line 428
    invoke-direct {p0, p1, v0, v0}, Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration;-><init>(Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration$StickyHeaderAdapter;ZZ)V

    .line 429
    iput-object p1, p0, Lorg/thoughtcrime/securesms/ConversationAdapter$LastSeenHeader;->adapter:Lorg/thoughtcrime/securesms/ConversationAdapter;

    return-void
.end method


# virtual methods
.method protected bridge synthetic getHeader(Landroidx/recyclerview/widget/RecyclerView;Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration$StickyHeaderAdapter;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 424
    invoke-virtual {p0, p1, p2, p3}, Lorg/thoughtcrime/securesms/ConversationAdapter$LastSeenHeader;->getHeader(Landroidx/recyclerview/widget/RecyclerView;Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration$StickyHeaderAdapter;I)Lorg/thoughtcrime/securesms/ConversationAdapter$HeaderViewHolder;

    move-result-object p1

    return-object p1
.end method

.method protected getHeader(Landroidx/recyclerview/widget/RecyclerView;Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration$StickyHeaderAdapter;I)Lorg/thoughtcrime/securesms/ConversationAdapter$HeaderViewHolder;
    .locals 4

    .line 444
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ConversationAdapter$LastSeenHeader;->adapter:Lorg/thoughtcrime/securesms/ConversationAdapter;

    invoke-virtual {p2, p1}, Lorg/thoughtcrime/securesms/ConversationAdapter;->onCreateLastSeenViewHolder(Landroid/view/ViewGroup;)Lorg/thoughtcrime/securesms/ConversationAdapter$HeaderViewHolder;

    move-result-object p2

    .line 445
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationAdapter$LastSeenHeader;->adapter:Lorg/thoughtcrime/securesms/ConversationAdapter;

    invoke-virtual {v0, p2, p3}, Lorg/thoughtcrime/securesms/ConversationAdapter;->onBindLastSeenViewHolder(Lorg/thoughtcrime/securesms/ConversationAdapter$HeaderViewHolder;I)V

    .line 447
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result p3

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    .line 448
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 450
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p2, Lorg/thoughtcrime/securesms/ConversationAdapter$HeaderViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p3, v2, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p3

    .line 451
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    move-result p1

    add-int/2addr v2, p1

    iget-object p1, p2, Lorg/thoughtcrime/securesms/ConversationAdapter$HeaderViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v0, v2, p1}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p1

    .line 453
    iget-object v0, p2, Lorg/thoughtcrime/securesms/ConversationAdapter$HeaderViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p3, p1}, Landroid/view/View;->measure(II)V

    .line 454
    iget-object p1, p2, Lorg/thoughtcrime/securesms/ConversationAdapter$HeaderViewHolder;->itemView:Landroid/view/View;

    iget-object p3, p2, Lorg/thoughtcrime/securesms/ConversationAdapter$HeaderViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    iget-object v0, p2, Lorg/thoughtcrime/securesms/ConversationAdapter$HeaderViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p1, v1, v1, p3, v0}, Landroid/view/View;->layout(IIII)V

    return-object p2
.end method

.method protected getHeaderTop(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/view/View;II)I
    .locals 0

    .line 439
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method protected hasHeader(Landroidx/recyclerview/widget/RecyclerView;Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration$StickyHeaderAdapter;I)Z
    .locals 0

    .line 434
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationAdapter$LastSeenHeader;->adapter:Lorg/thoughtcrime/securesms/ConversationAdapter;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/ConversationAdapter;->isActive()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationAdapter$LastSeenHeader;->adapter:Lorg/thoughtcrime/securesms/ConversationAdapter;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/ConversationAdapter;->getLastSeenPosition()I

    move-result p1

    if-ne p3, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
