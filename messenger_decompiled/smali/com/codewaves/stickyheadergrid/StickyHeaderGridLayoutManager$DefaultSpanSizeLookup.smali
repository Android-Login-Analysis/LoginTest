.class public final Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$DefaultSpanSizeLookup;
.super Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SpanSizeLookup;
.source "StickyHeaderGridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultSpanSizeLookup"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1190
    invoke-direct {p0}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanIndex(III)I
    .locals 0

    .line 1198
    rem-int/2addr p2, p3

    return p2
.end method

.method public getSpanSize(II)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
