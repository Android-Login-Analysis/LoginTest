.class public Lorg/thoughtcrime/securesms/TransportOptionsAdapter;
.super Landroid/widget/BaseAdapter;
.source "TransportOptionsAdapter.java"


# instance fields
.field private enabledTransports:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/thoughtcrime/securesms/TransportOption;",
            ">;"
        }
    .end annotation
.end field

.field private final inflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lorg/thoughtcrime/securesms/TransportOption;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/TransportOptionsAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 28
    iput-object p2, p0, Lorg/thoughtcrime/securesms/TransportOptionsAdapter;->enabledTransports:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 37
    iget-object v0, p0, Lorg/thoughtcrime/securesms/TransportOptionsAdapter;->enabledTransports:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/thoughtcrime/securesms/TransportOptionsAdapter;->enabledTransports:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    .line 53
    iget-object p2, p0, Lorg/thoughtcrime/securesms/TransportOptionsAdapter;->inflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0c010a

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 56
    :cond_0
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/TransportOptionsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/thoughtcrime/securesms/TransportOption;

    const p3, 0x7f09017e

    .line 57
    invoke-static {p2, p3}, Lorg/thoughtcrime/securesms/util/ViewUtil;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    const v0, 0x7f090399

    .line 58
    invoke-static {p2, v0}, Lorg/thoughtcrime/securesms/util/ViewUtil;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090384

    .line 59
    invoke-static {p2, v1}, Lorg/thoughtcrime/securesms/util/ViewUtil;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 61
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/TransportOption;->getDrawable()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 62
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/TransportOption;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0x8

    .line 63
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-object p2
.end method

.method public setEnabledTransports(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/thoughtcrime/securesms/TransportOption;",
            ">;)V"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lorg/thoughtcrime/securesms/TransportOptionsAdapter;->enabledTransports:Ljava/util/List;

    return-void
.end method
