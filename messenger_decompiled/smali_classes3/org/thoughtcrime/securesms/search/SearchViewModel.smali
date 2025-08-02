.class Lorg/thoughtcrime/securesms/search/SearchViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "SearchViewModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/search/SearchViewModel$ObservingLiveData;,
        Lorg/thoughtcrime/securesms/search/SearchViewModel$Callback;,
        Lorg/thoughtcrime/securesms/search/SearchViewModel$Factory;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SearchViewModel"


# instance fields
.field private final dcContext:Lcom/b44t/messenger/DcContext;

.field private forwarding:Z

.field private inBgSearch:Z

.field private lastQuery:Ljava/lang/String;

.field private needsAnotherBgSearch:Z

.field private final searchResult:Lorg/thoughtcrime/securesms/search/SearchViewModel$ObservingLiveData;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lorg/thoughtcrime/securesms/search/SearchViewModel;->forwarding:Z

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/search/SearchViewModel;->dcContext:Lcom/b44t/messenger/DcContext;

    .line 31
    new-instance p1, Lorg/thoughtcrime/securesms/search/SearchViewModel$ObservingLiveData;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lorg/thoughtcrime/securesms/search/SearchViewModel$ObservingLiveData;-><init>(Lorg/thoughtcrime/securesms/search/SearchViewModel$1;)V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/search/SearchViewModel;->searchResult:Lorg/thoughtcrime/securesms/search/SearchViewModel$ObservingLiveData;

    return-void
.end method

.method private queryAndCallback(Ljava/lang/String;Lorg/thoughtcrime/securesms/search/SearchViewModel$Callback;)V
    .locals 12

    .line 75
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    sget-object p1, Lorg/thoughtcrime/securesms/search/model/SearchResult;->EMPTY:Lorg/thoughtcrime/securesms/search/model/SearchResult;

    invoke-interface {p2, p1}, Lorg/thoughtcrime/securesms/search/SearchViewModel$Callback;->onResult(Lorg/thoughtcrime/securesms/search/model/SearchResult;)V

    return-void

    .line 81
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 82
    iget-object v2, p0, Lorg/thoughtcrime/securesms/search/SearchViewModel;->dcContext:Lcom/b44t/messenger/DcContext;

    iget-boolean v3, p0, Lorg/thoughtcrime/securesms/search/SearchViewModel;->forwarding:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    const/16 v3, 0x8

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3, p1, v4}, Lcom/b44t/messenger/DcContext;->getChatlist(ILjava/lang/String;I)Lcom/b44t/messenger/DcChatlist;

    move-result-object v2

    .line 83
    invoke-virtual {v2}, Lcom/b44t/messenger/DcChatlist;->getCnt()I

    move-result v3

    add-int/2addr v3, v4

    .line 84
    sget-object v5, Lorg/thoughtcrime/securesms/search/SearchViewModel;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u23f0 getChatlist("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v0

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v1, p0, Lorg/thoughtcrime/securesms/search/SearchViewModel;->lastQuery:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    if-lez v3, :cond_2

    const-string v0, "... skipping getContacts() and searchMsgs(), more recent search pending"

    .line 88
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    new-instance v0, Lorg/thoughtcrime/securesms/search/model/SearchResult;

    new-array v1, v4, [I

    new-array v3, v4, [I

    invoke-direct {v0, p1, v1, v2, v3}, Lorg/thoughtcrime/securesms/search/model/SearchResult;-><init>(Ljava/lang/String;[ILcom/b44t/messenger/DcChatlist;[I)V

    invoke-interface {p2, v0}, Lorg/thoughtcrime/securesms/search/SearchViewModel$Callback;->onResult(Lorg/thoughtcrime/securesms/search/model/SearchResult;)V

    return-void

    .line 93
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 94
    iget-object v1, p0, Lorg/thoughtcrime/securesms/search/SearchViewModel;->dcContext:Lcom/b44t/messenger/DcContext;

    const/4 v6, 0x2

    invoke-virtual {v1, v6, p1}, Lcom/b44t/messenger/DcContext;->getContacts(ILjava/lang/String;)[I

    move-result-object v1

    .line 95
    array-length v6, v1

    add-int/2addr v3, v6

    .line 96
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v10, "\u23f0 getContacts("

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v8

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-boolean v6, p0, Lorg/thoughtcrime/securesms/search/SearchViewModel;->forwarding:Z

    if-eqz v6, :cond_3

    const-string v0, "... searchMsgs() disabled by caller"

    .line 100
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    new-instance v0, Lorg/thoughtcrime/securesms/search/model/SearchResult;

    new-array v3, v4, [I

    invoke-direct {v0, p1, v1, v2, v3}, Lorg/thoughtcrime/securesms/search/model/SearchResult;-><init>(Ljava/lang/String;[ILcom/b44t/messenger/DcChatlist;[I)V

    invoke-interface {p2, v0}, Lorg/thoughtcrime/securesms/search/SearchViewModel$Callback;->onResult(Lorg/thoughtcrime/securesms/search/model/SearchResult;)V

    return-void

    .line 105
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v8, 0x1

    if-gt v6, v8, :cond_4

    const-string v0, "... skipping searchMsgs(), string too short"

    .line 106
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    new-instance v0, Lorg/thoughtcrime/securesms/search/model/SearchResult;

    new-array v3, v4, [I

    invoke-direct {v0, p1, v1, v2, v3}, Lorg/thoughtcrime/securesms/search/model/SearchResult;-><init>(Ljava/lang/String;[ILcom/b44t/messenger/DcChatlist;[I)V

    invoke-interface {p2, v0}, Lorg/thoughtcrime/securesms/search/SearchViewModel$Callback;->onResult(Lorg/thoughtcrime/securesms/search/model/SearchResult;)V

    return-void

    .line 111
    :cond_4
    iget-object v6, p0, Lorg/thoughtcrime/securesms/search/SearchViewModel;->lastQuery:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    if-lez v3, :cond_5

    const-string v0, "... skipping searchMsgs(), more recent search pending"

    .line 112
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    new-instance v0, Lorg/thoughtcrime/securesms/search/model/SearchResult;

    new-array v3, v4, [I

    invoke-direct {v0, p1, v1, v2, v3}, Lorg/thoughtcrime/securesms/search/model/SearchResult;-><init>(Ljava/lang/String;[ILcom/b44t/messenger/DcChatlist;[I)V

    invoke-interface {p2, v0}, Lorg/thoughtcrime/securesms/search/SearchViewModel$Callback;->onResult(Lorg/thoughtcrime/securesms/search/model/SearchResult;)V

    return-void

    .line 117
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 118
    iget-object v3, p0, Lorg/thoughtcrime/securesms/search/SearchViewModel;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {v3, v4, p1}, Lcom/b44t/messenger/DcContext;->searchMsgs(ILjava/lang/String;)[I

    move-result-object v3

    .line 119
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "\u23f0 searchMsgs("

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    new-instance v0, Lorg/thoughtcrime/securesms/search/model/SearchResult;

    invoke-direct {v0, p1, v1, v2, v3}, Lorg/thoughtcrime/securesms/search/model/SearchResult;-><init>(Ljava/lang/String;[ILcom/b44t/messenger/DcChatlist;[I)V

    invoke-interface {p2, v0}, Lorg/thoughtcrime/securesms/search/SearchViewModel$Callback;->onResult(Lorg/thoughtcrime/securesms/search/model/SearchResult;)V

    return-void
.end method


# virtual methods
.method getLastQuery()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lorg/thoughtcrime/securesms/search/SearchViewModel;->lastQuery:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method getSearchResult()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lorg/thoughtcrime/securesms/search/model/SearchResult;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lorg/thoughtcrime/securesms/search/SearchViewModel;->searchResult:Lorg/thoughtcrime/securesms/search/SearchViewModel$ObservingLiveData;

    return-object v0
.end method

.method synthetic lambda$updateQuery$0$org-thoughtcrime-securesms-search-SearchViewModel()V
    .locals 6

    .line 0
    const-wide/16 v0, 0x64

    .line 56
    invoke-static {v0, v1}, Lorg/thoughtcrime/securesms/util/Util;->sleep(J)V

    const/4 v2, 0x0

    .line 57
    iput-boolean v2, p0, Lorg/thoughtcrime/securesms/search/SearchViewModel;->needsAnotherBgSearch:Z

    .line 58
    iget-object v3, p0, Lorg/thoughtcrime/securesms/search/SearchViewModel;->lastQuery:Ljava/lang/String;

    iget-object v4, p0, Lorg/thoughtcrime/securesms/search/SearchViewModel;->searchResult:Lorg/thoughtcrime/securesms/search/SearchViewModel$ObservingLiveData;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lorg/thoughtcrime/securesms/search/SearchViewModel$$ExternalSyntheticLambda1;

    invoke-direct {v5, v4}, Lorg/thoughtcrime/securesms/search/SearchViewModel$$ExternalSyntheticLambda1;-><init>(Lorg/thoughtcrime/securesms/search/SearchViewModel$ObservingLiveData;)V

    invoke-direct {p0, v3, v5}, Lorg/thoughtcrime/securesms/search/SearchViewModel;->queryAndCallback(Ljava/lang/String;Lorg/thoughtcrime/securesms/search/SearchViewModel$Callback;)V

    .line 60
    :goto_0
    iget-boolean v3, p0, Lorg/thoughtcrime/securesms/search/SearchViewModel;->needsAnotherBgSearch:Z

    if-eqz v3, :cond_0

    .line 61
    invoke-static {v0, v1}, Lorg/thoughtcrime/securesms/util/Util;->sleep(J)V

    .line 62
    iput-boolean v2, p0, Lorg/thoughtcrime/securesms/search/SearchViewModel;->needsAnotherBgSearch:Z

    .line 63
    sget-object v3, Lorg/thoughtcrime/securesms/search/SearchViewModel;->TAG:Ljava/lang/String;

    const-string v4, "... executing debounced search call"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v3, p0, Lorg/thoughtcrime/securesms/search/SearchViewModel;->lastQuery:Ljava/lang/String;

    iget-object v4, p0, Lorg/thoughtcrime/securesms/search/SearchViewModel;->searchResult:Lorg/thoughtcrime/securesms/search/SearchViewModel$ObservingLiveData;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lorg/thoughtcrime/securesms/search/SearchViewModel$$ExternalSyntheticLambda1;

    invoke-direct {v5, v4}, Lorg/thoughtcrime/securesms/search/SearchViewModel$$ExternalSyntheticLambda1;-><init>(Lorg/thoughtcrime/securesms/search/SearchViewModel$ObservingLiveData;)V

    invoke-direct {p0, v3, v5}, Lorg/thoughtcrime/securesms/search/SearchViewModel;->queryAndCallback(Ljava/lang/String;Lorg/thoughtcrime/securesms/search/SearchViewModel$Callback;)V

    goto :goto_0

    .line 67
    :cond_0
    iput-boolean v2, p0, Lorg/thoughtcrime/securesms/search/SearchViewModel;->inBgSearch:Z

    return-void
.end method

.method protected onCleared()V
    .locals 0

    return-void
.end method

.method public setForwardingMode(Z)V
    .locals 0

    .line 39
    iput-boolean p1, p0, Lorg/thoughtcrime/securesms/search/SearchViewModel;->forwarding:Z

    return-void
.end method

.method public updateQuery()V
    .locals 2

    .line 49
    iget-boolean v0, p0, Lorg/thoughtcrime/securesms/search/SearchViewModel;->inBgSearch:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 50
    iput-boolean v1, p0, Lorg/thoughtcrime/securesms/search/SearchViewModel;->needsAnotherBgSearch:Z

    .line 51
    sget-object v0, Lorg/thoughtcrime/securesms/search/SearchViewModel;->TAG:Ljava/lang/String;

    const-string v1, "... search call debounced"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 53
    :cond_0
    iput-boolean v1, p0, Lorg/thoughtcrime/securesms/search/SearchViewModel;->inBgSearch:Z

    .line 54
    new-instance v0, Lorg/thoughtcrime/securesms/search/SearchViewModel$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/search/SearchViewModel$$ExternalSyntheticLambda0;-><init>(Lorg/thoughtcrime/securesms/search/SearchViewModel;)V

    invoke-static {v0}, Lorg/thoughtcrime/securesms/util/Util;->runOnBackground(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method updateQuery(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lorg/thoughtcrime/securesms/search/SearchViewModel;->lastQuery:Ljava/lang/String;

    .line 45
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/search/SearchViewModel;->updateQuery()V

    return-void
.end method
