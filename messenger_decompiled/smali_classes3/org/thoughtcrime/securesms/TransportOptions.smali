.class public Lorg/thoughtcrime/securesms/TransportOptions;
.super Ljava/lang/Object;
.source "TransportOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/TransportOptions$OnTransportChangedListener;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private defaultTransportType:Lorg/thoughtcrime/securesms/TransportOption$Type;

.field private final enabledTransports:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/thoughtcrime/securesms/TransportOption;",
            ">;"
        }
    .end annotation
.end field

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/thoughtcrime/securesms/TransportOptions$OnTransportChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private selectedOption:Lorg/thoughtcrime/securesms/util/guava/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/thoughtcrime/securesms/util/guava/Optional<",
            "Lorg/thoughtcrime/securesms/TransportOption;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/TransportOptions;->listeners:Ljava/util/List;

    .line 19
    sget-object v0, Lorg/thoughtcrime/securesms/TransportOption$Type;->NORMAL_MAIL:Lorg/thoughtcrime/securesms/TransportOption$Type;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/TransportOptions;->defaultTransportType:Lorg/thoughtcrime/securesms/TransportOption$Type;

    .line 20
    invoke-static {}, Lorg/thoughtcrime/securesms/util/guava/Optional;->absent()Lorg/thoughtcrime/securesms/util/guava/Optional;

    move-result-object v0

    iput-object v0, p0, Lorg/thoughtcrime/securesms/TransportOptions;->selectedOption:Lorg/thoughtcrime/securesms/util/guava/Optional;

    .line 23
    iput-object p1, p0, Lorg/thoughtcrime/securesms/TransportOptions;->context:Landroid/content/Context;

    .line 24
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/TransportOptions;->initializeAvailableTransports()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/TransportOptions;->enabledTransports:Ljava/util/List;

    return-void
.end method

.method private initializeAvailableTransports()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/thoughtcrime/securesms/TransportOption;",
            ">;"
        }
    .end annotation

    .line 76
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 78
    new-instance v1, Lorg/thoughtcrime/securesms/TransportOption;

    sget-object v2, Lorg/thoughtcrime/securesms/TransportOption$Type;->NORMAL_MAIL:Lorg/thoughtcrime/securesms/TransportOption$Type;

    iget-object v3, p0, Lorg/thoughtcrime/securesms/TransportOptions;->context:Landroid/content/Context;

    const v4, 0x7f120254

    .line 79
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/thoughtcrime/securesms/TransportOptions;->context:Landroid/content/Context;

    const v5, 0x7f1200a8

    .line 80
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f080160

    invoke-direct {v1, v2, v5, v3, v4}, Lorg/thoughtcrime/securesms/TransportOption;-><init>(Lorg/thoughtcrime/securesms/TransportOption$Type;ILjava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private isEnabled(Lorg/thoughtcrime/securesms/TransportOption;)Z
    .locals 2

    .line 92
    iget-object v0, p0, Lorg/thoughtcrime/securesms/TransportOptions;->enabledTransports:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/thoughtcrime/securesms/TransportOption;

    .line 93
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private notifyTransportChangeListeners()V
    .locals 4

    .line 86
    iget-object v0, p0, Lorg/thoughtcrime/securesms/TransportOptions;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/thoughtcrime/securesms/TransportOptions$OnTransportChangedListener;

    .line 87
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/TransportOptions;->getSelectedTransport()Lorg/thoughtcrime/securesms/TransportOption;

    move-result-object v2

    iget-object v3, p0, Lorg/thoughtcrime/securesms/TransportOptions;->selectedOption:Lorg/thoughtcrime/securesms/util/guava/Optional;

    invoke-virtual {v3}, Lorg/thoughtcrime/securesms/util/guava/Optional;->isPresent()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Lorg/thoughtcrime/securesms/TransportOptions$OnTransportChangedListener;->onChange(Lorg/thoughtcrime/securesms/TransportOption;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addOnTransportChangedListener(Lorg/thoughtcrime/securesms/TransportOptions$OnTransportChangedListener;)V
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/thoughtcrime/securesms/TransportOptions;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getEnabledTransports()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/thoughtcrime/securesms/TransportOption;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lorg/thoughtcrime/securesms/TransportOptions;->enabledTransports:Ljava/util/List;

    return-object v0
.end method

.method public getSelectedTransport()Lorg/thoughtcrime/securesms/TransportOption;
    .locals 4

    .line 56
    iget-object v0, p0, Lorg/thoughtcrime/securesms/TransportOptions;->selectedOption:Lorg/thoughtcrime/securesms/util/guava/Optional;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/util/guava/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/thoughtcrime/securesms/TransportOptions;->selectedOption:Lorg/thoughtcrime/securesms/util/guava/Optional;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/util/guava/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/TransportOption;

    return-object v0

    .line 58
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/TransportOptions;->enabledTransports:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/thoughtcrime/securesms/TransportOption;

    .line 59
    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/TransportOption;->getType()Lorg/thoughtcrime/securesms/TransportOption$Type;

    move-result-object v2

    iget-object v3, p0, Lorg/thoughtcrime/securesms/TransportOptions;->defaultTransportType:Lorg/thoughtcrime/securesms/TransportOption$Type;

    if-ne v2, v3, :cond_1

    return-object v1

    .line 64
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No options of default type!"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    goto :goto_1

    :goto_0
    throw v0

    :goto_1
    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .line 28
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/TransportOptions;->initializeAvailableTransports()Ljava/util/List;

    move-result-object v0

    .line 30
    iget-object v1, p0, Lorg/thoughtcrime/securesms/TransportOptions;->enabledTransports:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 31
    iget-object v1, p0, Lorg/thoughtcrime/securesms/TransportOptions;->enabledTransports:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 33
    iget-object v0, p0, Lorg/thoughtcrime/securesms/TransportOptions;->selectedOption:Lorg/thoughtcrime/securesms/util/guava/Optional;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/util/guava/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/thoughtcrime/securesms/TransportOptions;->selectedOption:Lorg/thoughtcrime/securesms/util/guava/Optional;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/util/guava/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/TransportOption;

    invoke-direct {p0, v0}, Lorg/thoughtcrime/securesms/TransportOptions;->isEnabled(Lorg/thoughtcrime/securesms/TransportOption;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 34
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/TransportOptions;->setSelectedTransport(Lorg/thoughtcrime/securesms/TransportOption;)V

    goto :goto_0

    .line 36
    :cond_0
    sget-object v0, Lorg/thoughtcrime/securesms/TransportOption$Type;->NORMAL_MAIL:Lorg/thoughtcrime/securesms/TransportOption$Type;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/TransportOptions;->defaultTransportType:Lorg/thoughtcrime/securesms/TransportOption$Type;

    .line 38
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/TransportOptions;->notifyTransportChangeListeners()V

    :goto_0
    return-void
.end method

.method public setDefaultTransport(Lorg/thoughtcrime/securesms/TransportOption$Type;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lorg/thoughtcrime/securesms/TransportOptions;->defaultTransportType:Lorg/thoughtcrime/securesms/TransportOption$Type;

    .line 45
    iget-object p1, p0, Lorg/thoughtcrime/securesms/TransportOptions;->selectedOption:Lorg/thoughtcrime/securesms/util/guava/Optional;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/util/guava/Optional;->isPresent()Z

    move-result p1

    if-nez p1, :cond_0

    .line 46
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/TransportOptions;->notifyTransportChangeListeners()V

    :cond_0
    return-void
.end method

.method public setSelectedTransport(Lorg/thoughtcrime/securesms/TransportOption;)V
    .locals 0

    .line 51
    invoke-static {p1}, Lorg/thoughtcrime/securesms/util/guava/Optional;->fromNullable(Ljava/lang/Object;)Lorg/thoughtcrime/securesms/util/guava/Optional;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/TransportOptions;->selectedOption:Lorg/thoughtcrime/securesms/util/guava/Optional;

    .line 52
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/TransportOptions;->notifyTransportChangeListeners()V

    return-void
.end method
