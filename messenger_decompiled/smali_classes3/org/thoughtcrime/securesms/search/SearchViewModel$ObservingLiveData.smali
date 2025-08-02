.class Lorg/thoughtcrime/securesms/search/SearchViewModel$ObservingLiveData;
.super Landroidx/lifecycle/MutableLiveData;
.source "SearchViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/search/SearchViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ObservingLiveData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/lifecycle/MutableLiveData<",
        "Lorg/thoughtcrime/securesms/search/model/SearchResult;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 133
    invoke-direct {p0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/thoughtcrime/securesms/search/SearchViewModel$1;)V
    .locals 0

    .line 133
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/search/SearchViewModel$ObservingLiveData;-><init>()V

    return-void
.end method
