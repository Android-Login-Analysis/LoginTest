.class public Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "StickyHeaderDecoration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration$StickyHeaderAdapter;
    }
.end annotation


# static fields
.field private static final NO_HEADER_ID:J = -0x1L

.field private static final TAG:Ljava/lang/String; = "org.thoughtcrime.securesms.util.StickyHeaderDecoration"


# instance fields
.field private final adapter:Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration$StickyHeaderAdapter;

.field private final headerCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final renderInline:Z

.field private screenOrientation:I

.field private final sticky:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration$StickyHeaderAdapter;ZZ)V
    .locals 0

    .line 36
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration;->adapter:Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration$StickyHeaderAdapter;

    .line 38
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration;->headerCache:Ljava/util/Map;

    .line 39
    iput-boolean p2, p0, Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration;->renderInline:Z

    .line 40
    iput-boolean p3, p0, Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration;->sticky:Z

    return-void
.end method

.method private getChildY(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)I
    .locals 0

    .line 167
    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method private isReverseLayout(Landroidx/recyclerview/widget/RecyclerView;)Z
    .locals 1

    .line 175
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    instance-of v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getReverseLayout()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private translatedChildPosition(Landroidx/recyclerview/widget/RecyclerView;I)I
    .locals 1

    .line 163
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration;->isReverseLayout(Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    sub-int p2, p1, p2

    :cond_0
    return p2
.end method


# virtual methods
.method protected getHeader(Landroidx/recyclerview/widget/RecyclerView;Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration$StickyHeaderAdapter;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 7

    .line 79
    invoke-interface {p2, p3}, Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration$StickyHeaderAdapter;->getHeaderId(I)J

    move-result-wide v0

    .line 81
    iget-object v2, p0, Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration;->headerCache:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    iget-object p1, p0, Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration;->headerCache:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p1

    .line 84
    :cond_0
    invoke-interface {p2, p1}, Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration$StickyHeaderAdapter;->onCreateHeaderViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 85
    iget-object v3, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 88
    invoke-interface {p2, v2, p3}, Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration$StickyHeaderAdapter;->onBindHeaderViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 90
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result p2

    const/high16 p3, 0x40000000    # 2.0f

    invoke-static {p2, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 91
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result p3

    const/4 v4, 0x0

    invoke-static {p3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    .line 94
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 93
    invoke-static {p2, v5, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p2

    .line 96
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result v5

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    move-result p1

    add-int/2addr v5, p1

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 95
    invoke-static {p3, v5, p1}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p1

    .line 98
    invoke-virtual {v3, p2, p1}, Landroid/view/View;->measure(II)V

    .line 99
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {v3, v4, v4, p1, p2}, Landroid/view/View;->layout(IIII)V

    .line 101
    iget-object p1, p0, Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration;->headerCache:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2
.end method

.method protected getHeaderHeightForLayout(Landroid/view/View;)I
    .locals 1

    .line 171
    iget-boolean v0, p0, Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration;->renderInline:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    :goto_0
    return p1
.end method

.method protected getHeaderTop(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/view/View;II)I
    .locals 6

    .line 134
    invoke-virtual {p0, p3}, Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration;->getHeaderHeightForLayout(Landroid/view/View;)I

    move-result p3

    .line 135
    invoke-direct {p0, p1, p2}, Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration;->getChildY(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)I

    move-result p2

    sub-int/2addr p2, p3

    .line 136
    iget-boolean v0, p0, Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration;->sticky:Z

    if-eqz v0, :cond_2

    if-nez p5, :cond_2

    .line 137
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result p5

    .line 138
    iget-object v0, p0, Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration;->adapter:Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration$StickyHeaderAdapter;

    invoke-interface {v0, p4}, Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration$StickyHeaderAdapter;->getHeaderId(I)J

    move-result-wide v0

    const/4 p4, 0x1

    :goto_0
    if-ge p4, p5, :cond_1

    .line 141
    invoke-direct {p0, p1, p4}, Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration;->translatedChildPosition(Landroidx/recyclerview/widget/RecyclerView;I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 143
    iget-object v3, p0, Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration;->adapter:Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration$StickyHeaderAdapter;

    invoke-interface {v3, v2}, Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration$StickyHeaderAdapter;->getHeaderId(I)J

    move-result-wide v3

    cmp-long v5, v3, v0

    if-eqz v5, :cond_0

    .line 145
    invoke-direct {p0, p1, p4}, Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration;->translatedChildPosition(Landroidx/recyclerview/widget/RecyclerView;I)I

    move-result p4

    invoke-virtual {p1, p4}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    .line 146
    invoke-direct {p0, p1, p4}, Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration;->getChildY(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)I

    move-result p4

    iget-object p5, p0, Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration;->adapter:Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration$StickyHeaderAdapter;

    invoke-virtual {p0, p1, p5, v2}, Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration;->getHeader(Landroidx/recyclerview/widget/RecyclerView;Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration$StickyHeaderAdapter;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr p3, p1

    sub-int/2addr p4, p3

    if-gez p4, :cond_1

    return p4

    :cond_0
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 156
    :cond_1
    iget-boolean p1, p0, Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration;->sticky:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    :cond_2
    return p2
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    .line 50
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    const/4 p4, -0x1

    const/4 v0, 0x0

    if-eq p2, p4, :cond_0

    .line 53
    iget-object p4, p0, Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration;->adapter:Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration$StickyHeaderAdapter;

    invoke-virtual {p0, p3, p4, p2}, Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration;->hasHeader(Landroidx/recyclerview/widget/RecyclerView;Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration$StickyHeaderAdapter;I)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 54
    iget-object p4, p0, Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration;->adapter:Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration$StickyHeaderAdapter;

    invoke-virtual {p0, p3, p4, p2}, Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration;->getHeader(Landroidx/recyclerview/widget/RecyclerView;Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration$StickyHeaderAdapter;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p2

    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 55
    invoke-virtual {p0, p2}, Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration;->getHeaderHeightForLayout(Landroid/view/View;)I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 58
    :goto_0
    invoke-virtual {p1, v0, p2, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method protected hasHeader(Landroidx/recyclerview/widget/RecyclerView;Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration$StickyHeaderAdapter;I)Z
    .locals 6

    .line 62
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration;->isReverseLayout(Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result p1

    .line 63
    move-object v0, p2

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    const-wide/16 v1, -0x1

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    sub-int/2addr v0, v3

    if-ne p3, v0, :cond_0

    .line 65
    invoke-interface {p2, p3}, Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration$StickyHeaderAdapter;->getHeaderId(I)J

    move-result-wide v4

    cmp-long v0, v4, v1

    if-nez v0, :cond_1

    :cond_0
    if-nez p1, :cond_2

    if-nez p3, :cond_2

    :cond_1
    return v3

    :cond_2
    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, -0x1

    :goto_0
    add-int/2addr p1, p3

    .line 72
    invoke-interface {p2, p3}, Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration$StickyHeaderAdapter;->getHeaderId(I)J

    move-result-wide v4

    .line 73
    invoke-interface {p2, p1}, Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration$StickyHeaderAdapter;->getHeaderId(I)J

    move-result-wide p1

    cmp-long p3, v4, v1

    if-eqz p3, :cond_4

    cmp-long p3, p1, v1

    if-eqz p3, :cond_4

    cmp-long p3, v4, p1

    if-eqz p3, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    return v3
.end method

.method public invalidateLayouts()V
    .locals 1

    .line 187
    iget-object v0, p0, Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration;->headerCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 180
    iget v0, p0, Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration;->screenOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 181
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration;->screenOrientation:I

    .line 182
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration;->invalidateLayouts()V

    :cond_0
    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 9

    .line 112
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_3

    .line 115
    invoke-direct {p0, p2, v0}, Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration;->translatedChildPosition(Landroidx/recyclerview/widget/RecyclerView;I)I

    move-result v1

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 117
    invoke-virtual {p2, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v5

    const/4 v1, -0x1

    if-eq v5, v1, :cond_2

    if-nez v0, :cond_0

    .line 119
    iget-boolean v1, p0, Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration;->sticky:Z

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration;->adapter:Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration$StickyHeaderAdapter;

    invoke-virtual {p0, p2, v1, v5}, Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration;->hasHeader(Landroidx/recyclerview/widget/RecyclerView;Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration$StickyHeaderAdapter;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 120
    :cond_1
    iget-object v1, p0, Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration;->adapter:Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration$StickyHeaderAdapter;

    invoke-virtual {p0, p2, v1, v5}, Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration;->getHeader(Landroidx/recyclerview/widget/RecyclerView;Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration$StickyHeaderAdapter;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    iget-object v7, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 121
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 122
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v8

    move-object v1, p0

    move-object v2, p2

    move-object v4, v7

    move v6, v0

    .line 123
    invoke-virtual/range {v1 .. v6}, Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration;->getHeaderTop(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/view/View;II)I

    move-result v1

    int-to-float v2, v8

    int-to-float v1, v1

    .line 124
    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 125
    invoke-virtual {v7, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 126
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
