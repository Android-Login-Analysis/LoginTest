.class public Lorg/thoughtcrime/securesms/mms/DecryptableStreamUriLoader;
.super Ljava/lang/Object;
.source "DecryptableStreamUriLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/mms/DecryptableStreamUriLoader$DecryptableUri;,
        Lorg/thoughtcrime/securesms/mms/DecryptableStreamUriLoader$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/ModelLoader<",
        "Lorg/thoughtcrime/securesms/mms/DecryptableStreamUriLoader$DecryptableUri;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lorg/thoughtcrime/securesms/mms/DecryptableStreamUriLoader;->context:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lorg/thoughtcrime/securesms/mms/DecryptableStreamUriLoader$1;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/mms/DecryptableStreamUriLoader;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic buildLoadData(Ljava/lang/Object;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;
    .locals 0

    .line 19
    check-cast p1, Lorg/thoughtcrime/securesms/mms/DecryptableStreamUriLoader$DecryptableUri;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/thoughtcrime/securesms/mms/DecryptableStreamUriLoader;->buildLoadData(Lorg/thoughtcrime/securesms/mms/DecryptableStreamUriLoader$DecryptableUri;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    move-result-object p1

    return-object p1
.end method

.method public buildLoadData(Lorg/thoughtcrime/securesms/mms/DecryptableStreamUriLoader$DecryptableUri;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/thoughtcrime/securesms/mms/DecryptableStreamUriLoader$DecryptableUri;",
            "II",
            "Lcom/bumptech/glide/load/Options;",
            ")",
            "Lcom/bumptech/glide/load/model/ModelLoader$LoadData<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 30
    new-instance p2, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    new-instance p3, Lorg/thoughtcrime/securesms/mms/DecryptableStreamLocalUriFetcher;

    iget-object p4, p0, Lorg/thoughtcrime/securesms/mms/DecryptableStreamUriLoader;->context:Landroid/content/Context;

    iget-object v0, p1, Lorg/thoughtcrime/securesms/mms/DecryptableStreamUriLoader$DecryptableUri;->uri:Landroid/net/Uri;

    invoke-direct {p3, p4, v0}, Lorg/thoughtcrime/securesms/mms/DecryptableStreamLocalUriFetcher;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-direct {p2, p1, p3}, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;-><init>(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/data/DataFetcher;)V

    return-object p2
.end method

.method public bridge synthetic handles(Ljava/lang/Object;)Z
    .locals 0

    .line 19
    check-cast p1, Lorg/thoughtcrime/securesms/mms/DecryptableStreamUriLoader$DecryptableUri;

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/mms/DecryptableStreamUriLoader;->handles(Lorg/thoughtcrime/securesms/mms/DecryptableStreamUriLoader$DecryptableUri;)Z

    move-result p1

    return p1
.end method

.method public handles(Lorg/thoughtcrime/securesms/mms/DecryptableStreamUriLoader$DecryptableUri;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
