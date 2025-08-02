.class public Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$HeaderViewHolder;
.super Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$ViewHolder;
.source "StickyHeaderGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HeaderViewHolder"
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public isHeader()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
