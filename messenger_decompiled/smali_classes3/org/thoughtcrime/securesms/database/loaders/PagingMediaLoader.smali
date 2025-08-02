.class public Lorg/thoughtcrime/securesms/database/loaders/PagingMediaLoader;
.super Lorg/thoughtcrime/securesms/util/AsyncLoader;
.source "PagingMediaLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/thoughtcrime/securesms/util/AsyncLoader<",
        "Lcom/b44t/messenger/DcMediaGalleryElement;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PagingMediaLoader"


# instance fields
.field private final leftIsRecent:Z

.field private final msg:Lcom/b44t/messenger/DcMsg;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/b44t/messenger/DcMsg;Z)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/util/AsyncLoader;-><init>(Landroid/content/Context;)V

    .line 25
    iput-object p2, p0, Lorg/thoughtcrime/securesms/database/loaders/PagingMediaLoader;->msg:Lcom/b44t/messenger/DcMsg;

    .line 26
    iput-boolean p3, p0, Lorg/thoughtcrime/securesms/database/loaders/PagingMediaLoader;->leftIsRecent:Z

    return-void
.end method


# virtual methods
.method public loadInBackground()Lcom/b44t/messenger/DcMediaGalleryElement;
    .locals 8

    .line 32
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/database/loaders/PagingMediaLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object v0

    .line 33
    iget-object v1, p0, Lorg/thoughtcrime/securesms/database/loaders/PagingMediaLoader;->msg:Lcom/b44t/messenger/DcMsg;

    invoke-virtual {v1}, Lcom/b44t/messenger/DcMsg;->getChatId()I

    move-result v1

    const/16 v2, 0x15

    const/16 v3, 0x32

    const/16 v4, 0x14

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/b44t/messenger/DcContext;->getChatMedia(IIII)[I

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 36
    :goto_0
    array-length v4, v1

    const/4 v5, -0x1

    if-ge v3, v4, :cond_1

    .line 37
    aget v4, v1, v3

    iget-object v6, p0, Lorg/thoughtcrime/securesms/database/loaders/PagingMediaLoader;->msg:Lcom/b44t/messenger/DcMsg;

    invoke-virtual {v6}, Lcom/b44t/messenger/DcMsg;->getId()I

    move-result v6

    if-ne v4, v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    :goto_1
    if-ne v3, v5, :cond_2

    .line 44
    iget-object v3, p0, Lorg/thoughtcrime/securesms/database/loaders/PagingMediaLoader;->msg:Lcom/b44t/messenger/DcMsg;

    invoke-virtual {v3}, Lcom/b44t/messenger/DcMsg;->getId()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/b44t/messenger/DcContext;->getMsg(I)Lcom/b44t/messenger/DcMsg;

    move-result-object v3

    .line 45
    sget-object v4, Lorg/thoughtcrime/securesms/database/loaders/PagingMediaLoader;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "did not find message in list: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/b44t/messenger/DcMsg;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/b44t/messenger/DcMsg;->getFile()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/b44t/messenger/DcMsg;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    move v2, v3

    .line 47
    :goto_2
    new-instance v3, Lcom/b44t/messenger/DcMediaGalleryElement;

    iget-boolean v4, p0, Lorg/thoughtcrime/securesms/database/loaders/PagingMediaLoader;->leftIsRecent:Z

    invoke-direct {v3, v1, v2, v0, v4}, Lcom/b44t/messenger/DcMediaGalleryElement;-><init>([IILcom/b44t/messenger/DcContext;Z)V

    return-object v3
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/database/loaders/PagingMediaLoader;->loadInBackground()Lcom/b44t/messenger/DcMediaGalleryElement;

    move-result-object v0

    return-object v0
.end method
