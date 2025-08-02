.class public Lorg/thoughtcrime/securesms/components/SendButton;
.super Landroid/widget/ImageButton;
.source "SendButton.java"

# interfaces
.implements Lorg/thoughtcrime/securesms/TransportOptions$OnTransportChangedListener;
.implements Lorg/thoughtcrime/securesms/TransportOptionsPopup$SelectedListener;
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private final transportOptions:Lorg/thoughtcrime/securesms/TransportOptions;

.field private transportOptionsPopup:Lorg/thoughtcrime/securesms/util/guava/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/thoughtcrime/securesms/util/guava/Optional<",
            "Lorg/thoughtcrime/securesms/TransportOptionsPopup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 23
    invoke-static {}, Lorg/thoughtcrime/securesms/util/guava/Optional;->absent()Lorg/thoughtcrime/securesms/util/guava/Optional;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/SendButton;->transportOptionsPopup:Lorg/thoughtcrime/securesms/util/guava/Optional;

    .line 27
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/SendButton;->initializeTransportOptions()Lorg/thoughtcrime/securesms/TransportOptions;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/SendButton;->transportOptions:Lorg/thoughtcrime/securesms/TransportOptions;

    .line 28
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/SendButton;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/thoughtcrime/securesms/util/ViewUtil;->mirrorIfRtl(Landroid/view/View;Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    invoke-static {}, Lorg/thoughtcrime/securesms/util/guava/Optional;->absent()Lorg/thoughtcrime/securesms/util/guava/Optional;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/SendButton;->transportOptionsPopup:Lorg/thoughtcrime/securesms/util/guava/Optional;

    .line 33
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/SendButton;->initializeTransportOptions()Lorg/thoughtcrime/securesms/TransportOptions;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/SendButton;->transportOptions:Lorg/thoughtcrime/securesms/TransportOptions;

    .line 34
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/SendButton;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/thoughtcrime/securesms/util/ViewUtil;->mirrorIfRtl(Landroid/view/View;Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    invoke-static {}, Lorg/thoughtcrime/securesms/util/guava/Optional;->absent()Lorg/thoughtcrime/securesms/util/guava/Optional;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/SendButton;->transportOptionsPopup:Lorg/thoughtcrime/securesms/util/guava/Optional;

    .line 39
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/SendButton;->initializeTransportOptions()Lorg/thoughtcrime/securesms/TransportOptions;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/SendButton;->transportOptions:Lorg/thoughtcrime/securesms/TransportOptions;

    .line 40
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/SendButton;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/thoughtcrime/securesms/util/ViewUtil;->mirrorIfRtl(Landroid/view/View;Landroid/content/Context;)V

    return-void
.end method

.method private getTransportOptionsPopup()Lorg/thoughtcrime/securesms/TransportOptionsPopup;
    .locals 2

    .line 53
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/SendButton;->transportOptionsPopup:Lorg/thoughtcrime/securesms/util/guava/Optional;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/util/guava/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lorg/thoughtcrime/securesms/TransportOptionsPopup;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/SendButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p0}, Lorg/thoughtcrime/securesms/TransportOptionsPopup;-><init>(Landroid/content/Context;Landroid/view/View;Lorg/thoughtcrime/securesms/TransportOptionsPopup$SelectedListener;)V

    invoke-static {v0}, Lorg/thoughtcrime/securesms/util/guava/Optional;->of(Ljava/lang/Object;)Lorg/thoughtcrime/securesms/util/guava/Optional;

    move-result-object v0

    iput-object v0, p0, Lorg/thoughtcrime/securesms/components/SendButton;->transportOptionsPopup:Lorg/thoughtcrime/securesms/util/guava/Optional;

    .line 56
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/SendButton;->transportOptionsPopup:Lorg/thoughtcrime/securesms/util/guava/Optional;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/util/guava/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/TransportOptionsPopup;

    return-object v0
.end method

.method private initializeTransportOptions()Lorg/thoughtcrime/securesms/TransportOptions;
    .locals 2

    .line 44
    new-instance v0, Lorg/thoughtcrime/securesms/TransportOptions;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/SendButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/thoughtcrime/securesms/TransportOptions;-><init>(Landroid/content/Context;)V

    .line 45
    invoke-virtual {v0, p0}, Lorg/thoughtcrime/securesms/TransportOptions;->addOnTransportChangedListener(Lorg/thoughtcrime/securesms/TransportOptions$OnTransportChangedListener;)V

    .line 47
    invoke-virtual {p0, p0}, Lorg/thoughtcrime/securesms/components/SendButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-object v0
.end method


# virtual methods
.method public addOnTransportChangedListener(Lorg/thoughtcrime/securesms/TransportOptions$OnTransportChangedListener;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/SendButton;->transportOptions:Lorg/thoughtcrime/securesms/TransportOptions;

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/TransportOptions;->addOnTransportChangedListener(Lorg/thoughtcrime/securesms/TransportOptions$OnTransportChangedListener;)V

    return-void
.end method

.method public getSelectedTransport()Lorg/thoughtcrime/securesms/TransportOption;
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/SendButton;->transportOptions:Lorg/thoughtcrime/securesms/TransportOptions;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/TransportOptions;->getSelectedTransport()Lorg/thoughtcrime/securesms/TransportOption;

    move-result-object v0

    return-object v0
.end method

.method public onChange(Lorg/thoughtcrime/securesms/TransportOption;Z)V
    .locals 0

    .line 83
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/TransportOption;->getDrawable()I

    move-result p2

    invoke-virtual {p0, p2}, Lorg/thoughtcrime/securesms/components/SendButton;->setImageResource(I)V

    .line 84
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/TransportOption;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/components/SendButton;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 89
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/SendButton;->transportOptions:Lorg/thoughtcrime/securesms/TransportOptions;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/TransportOptions;->getEnabledTransports()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    .line 90
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/SendButton;->getTransportOptionsPopup()Lorg/thoughtcrime/securesms/TransportOptionsPopup;

    move-result-object p1

    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/SendButton;->transportOptions:Lorg/thoughtcrime/securesms/TransportOptions;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/TransportOptions;->getEnabledTransports()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/thoughtcrime/securesms/TransportOptionsPopup;->display(Ljava/util/List;)V

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onSelected(Lorg/thoughtcrime/securesms/TransportOption;)V
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/SendButton;->transportOptions:Lorg/thoughtcrime/securesms/TransportOptions;

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/TransportOptions;->setSelectedTransport(Lorg/thoughtcrime/securesms/TransportOption;)V

    .line 78
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/SendButton;->getTransportOptionsPopup()Lorg/thoughtcrime/securesms/TransportOptionsPopup;

    move-result-object p1

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/TransportOptionsPopup;->dismiss()V

    return-void
.end method

.method public resetAvailableTransports()V
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/SendButton;->transportOptions:Lorg/thoughtcrime/securesms/TransportOptions;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/TransportOptions;->reset()V

    return-void
.end method

.method public setDefaultTransport(Lorg/thoughtcrime/securesms/TransportOption$Type;)V
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/SendButton;->transportOptions:Lorg/thoughtcrime/securesms/TransportOptions;

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/TransportOptions;->setDefaultTransport(Lorg/thoughtcrime/securesms/TransportOption$Type;)V

    return-void
.end method
