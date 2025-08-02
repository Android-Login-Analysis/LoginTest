.class public Lorg/thoughtcrime/securesms/search/SearchViewModel$Factory;
.super Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;
.source "SearchViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/search/SearchViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 140
    invoke-direct {p0}, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;-><init>()V

    .line 141
    iput-object p1, p0, Lorg/thoughtcrime/securesms/search/SearchViewModel$Factory;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/ViewModel;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 147
    new-instance v0, Lorg/thoughtcrime/securesms/search/SearchViewModel;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/search/SearchViewModel$Factory;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/thoughtcrime/securesms/search/SearchViewModel;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/ViewModel;

    return-object p1
.end method
