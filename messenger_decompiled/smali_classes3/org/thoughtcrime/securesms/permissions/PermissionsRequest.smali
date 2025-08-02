.class Lorg/thoughtcrime/securesms/permissions/PermissionsRequest;
.super Ljava/lang/Object;
.source "PermissionsRequest.java"


# instance fields
.field private final PRE_REQUEST_MAPPING:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final allGrantedListener:Ljava/lang/Runnable;

.field private final anyDeniedListener:Ljava/lang/Runnable;

.field private final anyPermanentlyDeniedListener:Ljava/lang/Runnable;

.field private final anyResultListener:Ljava/lang/Runnable;

.field private final someDeniedListener:Lcom/annimon/stream/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/annimon/stream/function/Consumer<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final someGrantedListener:Lcom/annimon/stream/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/annimon/stream/function/Consumer<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final somePermanentlyDeniedListener:Lcom/annimon/stream/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/annimon/stream/function/Consumer<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Lcom/annimon/stream/function/Consumer;Lcom/annimon/stream/function/Consumer;Lcom/annimon/stream/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Ljava/lang/Runnable;",
            "Ljava/lang/Runnable;",
            "Ljava/lang/Runnable;",
            "Lcom/annimon/stream/function/Consumer<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/annimon/stream/function/Consumer<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/annimon/stream/function/Consumer<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/permissions/PermissionsRequest;->PRE_REQUEST_MAPPING:Ljava/util/Map;

    .line 36
    iput-object p1, p0, Lorg/thoughtcrime/securesms/permissions/PermissionsRequest;->allGrantedListener:Ljava/lang/Runnable;

    .line 38
    iput-object p2, p0, Lorg/thoughtcrime/securesms/permissions/PermissionsRequest;->anyDeniedListener:Ljava/lang/Runnable;

    .line 39
    iput-object p3, p0, Lorg/thoughtcrime/securesms/permissions/PermissionsRequest;->anyPermanentlyDeniedListener:Ljava/lang/Runnable;

    .line 40
    iput-object p4, p0, Lorg/thoughtcrime/securesms/permissions/PermissionsRequest;->anyResultListener:Ljava/lang/Runnable;

    .line 42
    iput-object p5, p0, Lorg/thoughtcrime/securesms/permissions/PermissionsRequest;->someGrantedListener:Lcom/annimon/stream/function/Consumer;

    .line 43
    iput-object p6, p0, Lorg/thoughtcrime/securesms/permissions/PermissionsRequest;->someDeniedListener:Lcom/annimon/stream/function/Consumer;

    .line 44
    iput-object p7, p0, Lorg/thoughtcrime/securesms/permissions/PermissionsRequest;->somePermanentlyDeniedListener:Lcom/annimon/stream/function/Consumer;

    return-void
.end method


# virtual methods
.method addMapping(Ljava/lang/String;Z)V
    .locals 1

    .line 90
    iget-object v0, p0, Lorg/thoughtcrime/securesms/permissions/PermissionsRequest;->PRE_REQUEST_MAPPING:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method onResult([Ljava/lang/String;[I[Z)V
    .locals 6

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 49
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 50
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, p1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    .line 52
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_3

    .line 53
    aget v4, p2, v3

    if-nez v4, :cond_0

    .line 54
    aget-object v4, p1, v3

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 56
    :cond_0
    iget-object v4, p0, Lorg/thoughtcrime/securesms/permissions/PermissionsRequest;->PRE_REQUEST_MAPPING:Ljava/util/Map;

    aget-object v5, p1, v3

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 58
    iget-object v5, p0, Lorg/thoughtcrime/securesms/permissions/PermissionsRequest;->somePermanentlyDeniedListener:Lcom/annimon/stream/function/Consumer;

    if-nez v5, :cond_1

    iget-object v5, p0, Lorg/thoughtcrime/securesms/permissions/PermissionsRequest;->anyPermanentlyDeniedListener:Ljava/lang/Runnable;

    if-eqz v5, :cond_2

    :cond_1
    if-nez v4, :cond_2

    aget-boolean v4, p3, v3

    if-nez v4, :cond_2

    .line 61
    aget-object v4, p1, v3

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 63
    :cond_2
    aget-object v4, p1, v3

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 68
    :cond_3
    iget-object p1, p0, Lorg/thoughtcrime/securesms/permissions/PermissionsRequest;->allGrantedListener:Ljava/lang/Runnable;

    if-eqz p1, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_4

    .line 69
    iget-object p1, p0, Lorg/thoughtcrime/securesms/permissions/PermissionsRequest;->allGrantedListener:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_2

    .line 70
    :cond_4
    iget-object p1, p0, Lorg/thoughtcrime/securesms/permissions/PermissionsRequest;->someGrantedListener:Lcom/annimon/stream/function/Consumer;

    if-eqz p1, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_5

    .line 71
    iget-object p1, p0, Lorg/thoughtcrime/securesms/permissions/PermissionsRequest;->someGrantedListener:Lcom/annimon/stream/function/Consumer;

    invoke-interface {p1, v0}, Lcom/annimon/stream/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 74
    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_7

    .line 75
    iget-object p1, p0, Lorg/thoughtcrime/securesms/permissions/PermissionsRequest;->anyDeniedListener:Ljava/lang/Runnable;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 76
    :cond_6
    iget-object p1, p0, Lorg/thoughtcrime/securesms/permissions/PermissionsRequest;->someDeniedListener:Lcom/annimon/stream/function/Consumer;

    if-eqz p1, :cond_7

    invoke-interface {p1, v1}, Lcom/annimon/stream/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 79
    :cond_7
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_9

    .line 80
    iget-object p1, p0, Lorg/thoughtcrime/securesms/permissions/PermissionsRequest;->anyPermanentlyDeniedListener:Ljava/lang/Runnable;

    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 81
    :cond_8
    iget-object p1, p0, Lorg/thoughtcrime/securesms/permissions/PermissionsRequest;->somePermanentlyDeniedListener:Lcom/annimon/stream/function/Consumer;

    if-eqz p1, :cond_9

    invoke-interface {p1, v2}, Lcom/annimon/stream/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 84
    :cond_9
    iget-object p1, p0, Lorg/thoughtcrime/securesms/permissions/PermissionsRequest;->anyResultListener:Ljava/lang/Runnable;

    if-eqz p1, :cond_a

    .line 85
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_a
    return-void
.end method
