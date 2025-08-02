.class public abstract Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SpanSizeLookup;
.super Ljava/lang/Object;
.source "StickyHeaderGridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SpanSizeLookup"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanIndex(III)I
    .locals 5

    .line 1238
    invoke-virtual {p0, p1, p2}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SpanSizeLookup;->getSpanSize(II)I

    move-result v0

    const/4 v1, 0x0

    if-lt v0, p3, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, p2, :cond_3

    .line 1245
    invoke-virtual {p0, p1, v2}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SpanSizeLookup;->getSpanSize(II)I

    move-result v4

    add-int/2addr v3, v4

    if-ne v3, p3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    if-le v3, p3, :cond_2

    move v3, v4

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    add-int/2addr v0, v3

    if-gt v0, p3, :cond_4

    return v3

    :cond_4
    return v1
.end method

.method public abstract getSpanSize(II)I
.end method
