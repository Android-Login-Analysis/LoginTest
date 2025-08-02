.class public Lorg/thoughtcrime/securesms/util/SendRelayedMessageUtil;
.super Ljava/lang/Object;
.source "SendRelayedMessageUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SendRelayedMessageUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static cleanup(Landroid/app/Activity;)V
    .locals 5

    .line 81
    invoke-static {p0}, Lorg/thoughtcrime/securesms/util/RelayUtil;->getSharedUris(Landroid/app/Activity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 82
    invoke-static {p0, v1}, Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider;->isAuthority(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 83
    sget-object v2, Lorg/thoughtcrime/securesms/util/SendRelayedMessageUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "cleaning up "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-static {}, Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider;->getInstance()Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider;->delete(Landroid/content/Context;Landroid/net/Uri;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static createMessage(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Lcom/b44t/messenger/DcMsg;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 90
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object v0

    .line 92
    invoke-static {p0, p1}, Lorg/thoughtcrime/securesms/util/MediaUtil;->getMimeType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    if-nez p1, :cond_0

    .line 94
    new-instance v2, Lcom/b44t/messenger/DcMsg;

    const/16 v3, 0xa

    invoke-direct {v2, v0, v3}, Lcom/b44t/messenger/DcMsg;-><init>(Lcom/b44t/messenger/DcContext;I)V

    goto :goto_0

    .line 95
    :cond_0
    invoke-static {v1}, Lorg/thoughtcrime/securesms/util/MediaUtil;->isImageType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 96
    new-instance v2, Lcom/b44t/messenger/DcMsg;

    const/16 v3, 0x14

    invoke-direct {v2, v0, v3}, Lcom/b44t/messenger/DcMsg;-><init>(Lcom/b44t/messenger/DcContext;I)V

    goto :goto_0

    .line 97
    :cond_1
    invoke-static {v1}, Lorg/thoughtcrime/securesms/util/MediaUtil;->isAudioType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 98
    new-instance v2, Lcom/b44t/messenger/DcMsg;

    const/16 v3, 0x28

    invoke-direct {v2, v0, v3}, Lcom/b44t/messenger/DcMsg;-><init>(Lcom/b44t/messenger/DcContext;I)V

    goto :goto_0

    .line 99
    :cond_2
    invoke-static {v1}, Lorg/thoughtcrime/securesms/util/MediaUtil;->isVideoType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 100
    new-instance v2, Lcom/b44t/messenger/DcMsg;

    const/16 v3, 0x32

    invoke-direct {v2, v0, v3}, Lcom/b44t/messenger/DcMsg;-><init>(Lcom/b44t/messenger/DcContext;I)V

    goto :goto_0

    .line 102
    :cond_3
    new-instance v2, Lcom/b44t/messenger/DcMsg;

    const/16 v3, 0x3c

    invoke-direct {v2, v0, v3}, Lcom/b44t/messenger/DcMsg;-><init>(Lcom/b44t/messenger/DcContext;I)V

    :goto_0
    if-eqz p1, :cond_4

    .line 106
    invoke-static {p0, p1}, Lorg/thoughtcrime/securesms/util/SendRelayedMessageUtil;->getRealPathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0, v1}, Lcom/b44t/messenger/DcMsg;->setFile(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    if-eqz p2, :cond_5

    .line 109
    invoke-virtual {v2, p2}, Lcom/b44t/messenger/DcMsg;->setText(Ljava/lang/String;)V

    :cond_5
    return-object v2
.end method

.method private static getRealPathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 115
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object v0

    .line 117
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, ""

    const-string v3, "."

    .line 119
    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_0

    .line 121
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    .line 122
    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 124
    :cond_0
    invoke-static {v0, v1, v2}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getBlobdirFile(Lcom/b44t/messenger/DcContext;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 128
    invoke-static {p0, p1}, Lorg/thoughtcrime/securesms/mms/PartAuthority;->getAttachmentStream(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    .line 129
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 130
    invoke-static {p0, p1}, Lorg/thoughtcrime/securesms/util/Util;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v0

    :catch_0
    move-exception p0

    .line 135
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static handleForwarding(Landroid/content/Context;I[I)V
    .locals 0

    .line 59
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object p0

    .line 60
    invoke-virtual {p0, p2, p1}, Lcom/b44t/messenger/DcContext;->forwardMsgs([II)V

    return-void
.end method

.method private static handleSharing(Landroid/content/Context;ILjava/util/ArrayList;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 64
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object v0

    .line 68
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 69
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/Uri;

    invoke-static {p0, p2, p3}, Lorg/thoughtcrime/securesms/util/SendRelayedMessageUtil;->createMessage(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Lcom/b44t/messenger/DcMsg;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/b44t/messenger/DcContext;->sendMsg(ILcom/b44t/messenger/DcMsg;)I

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    if-eqz p3, :cond_1

    .line 72
    invoke-static {p0, v1, p3}, Lorg/thoughtcrime/securesms/util/SendRelayedMessageUtil;->createMessage(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Lcom/b44t/messenger/DcMsg;

    move-result-object p3

    invoke-virtual {v0, p1, p3}, Lcom/b44t/messenger/DcContext;->sendMsg(ILcom/b44t/messenger/DcMsg;)I

    .line 74
    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/net/Uri;

    .line 75
    invoke-static {p0, p3, v1}, Lorg/thoughtcrime/securesms/util/SendRelayedMessageUtil;->createMessage(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Lcom/b44t/messenger/DcMsg;

    move-result-object p3

    invoke-virtual {v0, p1, p3}, Lcom/b44t/messenger/DcContext;->sendMsg(ILcom/b44t/messenger/DcMsg;)I

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public static immediatelyRelay(Landroid/app/Activity;I)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Long;

    int-to-long v1, p1

    .line 32
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p0, v0}, Lorg/thoughtcrime/securesms/util/SendRelayedMessageUtil;->immediatelyRelay(Landroid/app/Activity;[Ljava/lang/Long;)V

    return-void
.end method

.method public static immediatelyRelay(Landroid/app/Activity;[Ljava/lang/Long;)V
    .locals 3

    .line 36
    invoke-static {}, Lorg/thoughtcrime/securesms/ConversationListRelayingActivity;->finishActivity()V

    .line 37
    invoke-static {p0}, Lorg/thoughtcrime/securesms/util/RelayUtil;->isForwarding(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    invoke-static {p0}, Lorg/thoughtcrime/securesms/util/RelayUtil;->getForwardedMessageIDs(Landroid/app/Activity;)[I

    move-result-object v0

    .line 39
    invoke-static {p0}, Lorg/thoughtcrime/securesms/util/RelayUtil;->resetRelayingMessageContent(Landroid/app/Activity;)V

    .line 40
    new-instance v1, Lorg/thoughtcrime/securesms/util/SendRelayedMessageUtil$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p0, v0}, Lorg/thoughtcrime/securesms/util/SendRelayedMessageUtil$$ExternalSyntheticLambda0;-><init>([Ljava/lang/Long;Landroid/app/Activity;[I)V

    invoke-static {v1}, Lorg/thoughtcrime/securesms/util/Util;->runOnAnyBackgroundThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 46
    :cond_0
    invoke-static {p0}, Lorg/thoughtcrime/securesms/util/RelayUtil;->isSharing(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    invoke-static {p0}, Lorg/thoughtcrime/securesms/util/RelayUtil;->getSharedUris(Landroid/app/Activity;)Ljava/util/ArrayList;

    move-result-object v0

    .line 48
    invoke-static {p0}, Lorg/thoughtcrime/securesms/util/RelayUtil;->getSharedText(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    .line 49
    invoke-static {p0}, Lorg/thoughtcrime/securesms/util/RelayUtil;->resetRelayingMessageContent(Landroid/app/Activity;)V

    .line 50
    new-instance v2, Lorg/thoughtcrime/securesms/util/SendRelayedMessageUtil$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1, p0, v0, v1}, Lorg/thoughtcrime/securesms/util/SendRelayedMessageUtil$$ExternalSyntheticLambda1;-><init>([Ljava/lang/Long;Landroid/app/Activity;Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-static {v2}, Lorg/thoughtcrime/securesms/util/Util;->runOnAnyBackgroundThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic lambda$immediatelyRelay$0([Ljava/lang/Long;Landroid/app/Activity;[I)V
    .locals 4

    .line 41
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-int v3, v2

    .line 42
    invoke-static {p1, v3, p2}, Lorg/thoughtcrime/securesms/util/SendRelayedMessageUtil;->handleForwarding(Landroid/content/Context;I[I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic lambda$immediatelyRelay$1([Ljava/lang/Long;Landroid/app/Activity;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 4

    .line 51
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-int v3, v2

    .line 52
    invoke-static {p1, v3, p2, p3}, Lorg/thoughtcrime/securesms/util/SendRelayedMessageUtil;->handleSharing(Landroid/content/Context;ILjava/util/ArrayList;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
