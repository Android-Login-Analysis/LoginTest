.class public abstract Lorg/thoughtcrime/securesms/util/AsyncLoader;
.super Landroidx/loader/content/AsyncTaskLoader;
.source "AsyncLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/loader/content/AsyncTaskLoader<",
        "TD;>;"
    }
.end annotation


# instance fields
.field private data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TD;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Landroidx/loader/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public deliverResult(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .line 41
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/util/AsyncLoader;->isReset()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 46
    :cond_0
    iput-object p1, p0, Lorg/thoughtcrime/securesms/util/AsyncLoader;->data:Ljava/lang/Object;

    .line 48
    invoke-super {p0, p1}, Landroidx/loader/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    return-void
.end method

.method protected onReset()V
    .locals 1

    .line 71
    invoke-super {p0}, Landroidx/loader/content/AsyncTaskLoader;->onReset()V

    .line 74
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/util/AsyncLoader;->onStopLoading()V

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lorg/thoughtcrime/securesms/util/AsyncLoader;->data:Ljava/lang/Object;

    return-void
.end method

.method protected onStartLoading()V
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/thoughtcrime/securesms/util/AsyncLoader;->data:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/util/AsyncLoader;->deliverResult(Ljava/lang/Object;)V

    .line 58
    :cond_0
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/util/AsyncLoader;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/thoughtcrime/securesms/util/AsyncLoader;->data:Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 59
    :cond_1
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/util/AsyncLoader;->forceLoad()V

    :cond_2
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .line 66
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/util/AsyncLoader;->cancelLoad()Z

    return-void
.end method
