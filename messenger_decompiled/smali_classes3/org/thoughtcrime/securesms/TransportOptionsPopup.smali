.class public Lorg/thoughtcrime/securesms/TransportOptionsPopup;
.super Landroidx/appcompat/widget/ListPopupWindow;
.source "TransportOptionsPopup.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/TransportOptionsPopup$SelectedListener;
    }
.end annotation


# instance fields
.field private final adapter:Lorg/thoughtcrime/securesms/TransportOptionsAdapter;

.field private final listener:Lorg/thoughtcrime/securesms/TransportOptionsPopup$SelectedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lorg/thoughtcrime/securesms/TransportOptionsPopup$SelectedListener;)V
    .locals 2

    .line 19
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    .line 20
    iput-object p3, p0, Lorg/thoughtcrime/securesms/TransportOptionsPopup;->listener:Lorg/thoughtcrime/securesms/TransportOptionsPopup$SelectedListener;

    .line 21
    new-instance p3, Lorg/thoughtcrime/securesms/TransportOptionsAdapter;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-direct {p3, p1, v0}, Lorg/thoughtcrime/securesms/TransportOptionsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p3, p0, Lorg/thoughtcrime/securesms/TransportOptionsPopup;->adapter:Lorg/thoughtcrime/securesms/TransportOptionsAdapter;

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07036f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/TransportOptionsPopup;->setVerticalOffset(I)V

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07036e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/TransportOptionsPopup;->setHorizontalOffset(I)V

    const/4 v0, 0x2

    .line 25
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/TransportOptionsPopup;->setInputMethodMode(I)V

    const/4 v0, 0x1

    .line 26
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/TransportOptionsPopup;->setModal(Z)V

    .line 27
    invoke-virtual {p0, p2}, Lorg/thoughtcrime/securesms/TransportOptionsPopup;->setAnchorView(Landroid/view/View;)V

    .line 28
    invoke-virtual {p0, p3}, Lorg/thoughtcrime/securesms/TransportOptionsPopup;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07036d

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/TransportOptionsPopup;->setContentWidth(I)V

    .line 31
    invoke-virtual {p0, p0}, Lorg/thoughtcrime/securesms/TransportOptionsPopup;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method


# virtual methods
.method public display(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/thoughtcrime/securesms/TransportOption;",
            ">;)V"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lorg/thoughtcrime/securesms/TransportOptionsPopup;->adapter:Lorg/thoughtcrime/securesms/TransportOptionsAdapter;

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/TransportOptionsAdapter;->setEnabledTransports(Ljava/util/List;)V

    .line 36
    iget-object p1, p0, Lorg/thoughtcrime/securesms/TransportOptionsPopup;->adapter:Lorg/thoughtcrime/securesms/TransportOptionsAdapter;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/TransportOptionsAdapter;->notifyDataSetChanged()V

    .line 37
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/TransportOptionsPopup;->show()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 42
    iget-object p1, p0, Lorg/thoughtcrime/securesms/TransportOptionsPopup;->listener:Lorg/thoughtcrime/securesms/TransportOptionsPopup$SelectedListener;

    iget-object p2, p0, Lorg/thoughtcrime/securesms/TransportOptionsPopup;->adapter:Lorg/thoughtcrime/securesms/TransportOptionsAdapter;

    invoke-virtual {p2, p3}, Lorg/thoughtcrime/securesms/TransportOptionsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/thoughtcrime/securesms/TransportOption;

    invoke-interface {p1, p2}, Lorg/thoughtcrime/securesms/TransportOptionsPopup$SelectedListener;->onSelected(Lorg/thoughtcrime/securesms/TransportOption;)V

    return-void
.end method
