.class Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$HeaderHolder;
.super Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$HeaderViewHolder;
.source "ProfileDocumentsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeaderHolder"
.end annotation


# instance fields
.field final textView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 56
    invoke-direct {p0, p1}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridAdapter$HeaderViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0901a2

    .line 57
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter$HeaderHolder;->textView:Landroid/widget/TextView;

    return-void
.end method
