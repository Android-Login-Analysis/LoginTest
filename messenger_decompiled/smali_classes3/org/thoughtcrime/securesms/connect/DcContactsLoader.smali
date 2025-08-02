.class public Lorg/thoughtcrime/securesms/connect/DcContactsLoader;
.super Lorg/thoughtcrime/securesms/util/AsyncLoader;
.source "DcContactsLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/connect/DcContactsLoader$Ret;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/thoughtcrime/securesms/util/AsyncLoader<",
        "Lorg/thoughtcrime/securesms/connect/DcContactsLoader$Ret;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "org.thoughtcrime.securesms.connect.DcContactsLoader"


# instance fields
.field private final addCreateContactLink:Z

.field private final addCreateGroupLinks:Z

.field private final addScanQRLink:Z

.field private final blockedContacts:Z

.field private final listflags:I

.field private final query:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;ZZZZ)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/util/AsyncLoader;-><init>(Landroid/content/Context;)V

    .line 26
    iput p2, p0, Lorg/thoughtcrime/securesms/connect/DcContactsLoader;->listflags:I

    if-eqz p3, :cond_0

    .line 27
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p3, 0x0

    :cond_1
    iput-object p3, p0, Lorg/thoughtcrime/securesms/connect/DcContactsLoader;->query:Ljava/lang/String;

    .line 28
    iput-boolean p6, p0, Lorg/thoughtcrime/securesms/connect/DcContactsLoader;->addScanQRLink:Z

    .line 29
    iput-boolean p4, p0, Lorg/thoughtcrime/securesms/connect/DcContactsLoader;->addCreateGroupLinks:Z

    .line 30
    iput-boolean p5, p0, Lorg/thoughtcrime/securesms/connect/DcContactsLoader;->addCreateContactLink:Z

    .line 31
    iput-boolean p7, p0, Lorg/thoughtcrime/securesms/connect/DcContactsLoader;->blockedContacts:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/connect/DcContactsLoader;->loadInBackground()Lorg/thoughtcrime/securesms/connect/DcContactsLoader$Ret;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Lorg/thoughtcrime/securesms/connect/DcContactsLoader$Ret;
    .locals 5

    .line 37
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/connect/DcContactsLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object v0

    .line 38
    iget-boolean v1, p0, Lorg/thoughtcrime/securesms/connect/DcContactsLoader;->blockedContacts:Z

    if-eqz v1, :cond_0

    .line 39
    invoke-virtual {v0}, Lcom/b44t/messenger/DcContext;->getBlockedContacts()[I

    move-result-object v0

    .line 40
    new-instance v1, Lorg/thoughtcrime/securesms/connect/DcContactsLoader$Ret;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/connect/DcContactsLoader;->query:Ljava/lang/String;

    invoke-direct {v1, p0, v0, v2}, Lorg/thoughtcrime/securesms/connect/DcContactsLoader$Ret;-><init>(Lorg/thoughtcrime/securesms/connect/DcContactsLoader;[ILjava/lang/String;)V

    return-object v1

    .line 43
    :cond_0
    iget v1, p0, Lorg/thoughtcrime/securesms/connect/DcContactsLoader;->listflags:I

    iget-object v2, p0, Lorg/thoughtcrime/securesms/connect/DcContactsLoader;->query:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/b44t/messenger/DcContext;->getContacts(ILjava/lang/String;)[I

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [I

    .line 45
    iget-object v4, p0, Lorg/thoughtcrime/securesms/connect/DcContactsLoader;->query:Ljava/lang/String;

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lorg/thoughtcrime/securesms/connect/DcContactsLoader;->addScanQRLink:Z

    if-eqz v4, :cond_1

    const/4 v4, -0x4

    .line 47
    invoke-static {v3, v4}, Lorg/thoughtcrime/securesms/util/Util;->appendInt([II)[I

    move-result-object v3

    .line 49
    :cond_1
    iget-boolean v4, p0, Lorg/thoughtcrime/securesms/connect/DcContactsLoader;->addCreateContactLink:Z

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Lcom/b44t/messenger/DcContext;->isChatmail()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, -0x1

    .line 51
    invoke-static {v3, v0}, Lorg/thoughtcrime/securesms/util/Util;->appendInt([II)[I

    move-result-object v3

    .line 53
    :cond_2
    iget-object v0, p0, Lorg/thoughtcrime/securesms/connect/DcContactsLoader;->query:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lorg/thoughtcrime/securesms/connect/DcContactsLoader;->addCreateGroupLinks:Z

    if-eqz v0, :cond_3

    const/4 v0, -0x2

    .line 54
    invoke-static {v3, v0}, Lorg/thoughtcrime/securesms/util/Util;->appendInt([II)[I

    move-result-object v3

    .line 55
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/connect/DcContactsLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/thoughtcrime/securesms/util/Prefs;->isNewBroadcastListAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, -0x5

    .line 56
    invoke-static {v3, v0}, Lorg/thoughtcrime/securesms/util/Util;->appendInt([II)[I

    move-result-object v3

    .line 58
    :cond_3
    array-length v0, v1

    array-length v4, v3

    add-int/2addr v0, v4

    new-array v0, v0, [I

    .line 59
    array-length v4, v3

    invoke-static {v3, v2, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    array-length v3, v3

    array-length v4, v1

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    new-instance v1, Lorg/thoughtcrime/securesms/connect/DcContactsLoader$Ret;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/connect/DcContactsLoader;->query:Ljava/lang/String;

    invoke-direct {v1, p0, v0, v2}, Lorg/thoughtcrime/securesms/connect/DcContactsLoader$Ret;-><init>(Lorg/thoughtcrime/securesms/connect/DcContactsLoader;[ILjava/lang/String;)V

    return-object v1
.end method
