.class public Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader;
.super Landroidx/loader/content/AsyncTaskLoader;
.source "BucketedThreadMediaLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/loader/content/AsyncTaskLoader<",
        "Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia;",
        ">;"
    }
.end annotation


# instance fields
.field private final chatId:I

.field private final msgType1:I

.field private final msgType2:I

.field private final msgType3:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IIII)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Landroidx/loader/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 35
    iput p2, p0, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader;->chatId:I

    .line 36
    iput p3, p0, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader;->msgType1:I

    .line 37
    iput p4, p0, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader;->msgType2:I

    .line 38
    iput p5, p0, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader;->msgType3:I

    .line 40
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader;->onContentChanged()V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader;->loadInBackground()Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia;
    .locals 6

    .line 61
    new-instance v0, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia;-><init>(Landroid/content/Context;)V

    .line 62
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object v1

    .line 63
    iget v2, p0, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader;->chatId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 64
    iget v3, p0, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader;->msgType1:I

    iget v4, p0, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader;->msgType2:I

    iget v5, p0, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader;->msgType3:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/b44t/messenger/DcContext;->getChatMedia(IIII)[I

    move-result-object v2

    .line 65
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget v5, v2, v4

    .line 66
    invoke-virtual {v1, v5}, Lcom/b44t/messenger/DcContext;->getMsg(I)Lcom/b44t/messenger/DcMsg;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia;->add(Lcom/b44t/messenger/DcMsg;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected onAbandon()V
    .locals 0

    return-void
.end method

.method protected onStartLoading()V
    .locals 1

    .line 45
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader;->takeContentChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader;->forceLoad()V

    :cond_0
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .line 52
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader;->cancelLoad()Z

    return-void
.end method
