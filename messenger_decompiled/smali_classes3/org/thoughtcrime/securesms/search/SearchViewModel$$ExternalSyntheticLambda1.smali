.class public final synthetic Lorg/thoughtcrime/securesms/search/SearchViewModel$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/thoughtcrime/securesms/search/SearchViewModel$Callback;


# instance fields
.field public final synthetic f$0:Lorg/thoughtcrime/securesms/search/SearchViewModel$ObservingLiveData;


# direct methods
.method public synthetic constructor <init>(Lorg/thoughtcrime/securesms/search/SearchViewModel$ObservingLiveData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/search/SearchViewModel$$ExternalSyntheticLambda1;->f$0:Lorg/thoughtcrime/securesms/search/SearchViewModel$ObservingLiveData;

    return-void
.end method


# virtual methods
.method public final onResult(Lorg/thoughtcrime/securesms/search/model/SearchResult;)V
    .locals 1

    iget-object v0, p0, Lorg/thoughtcrime/securesms/search/SearchViewModel$$ExternalSyntheticLambda1;->f$0:Lorg/thoughtcrime/securesms/search/SearchViewModel$ObservingLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
