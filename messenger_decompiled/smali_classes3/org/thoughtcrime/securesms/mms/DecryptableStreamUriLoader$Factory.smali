.class Lorg/thoughtcrime/securesms/mms/DecryptableStreamUriLoader$Factory;
.super Ljava/lang/Object;
.source "DecryptableStreamUriLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoaderFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/mms/DecryptableStreamUriLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/ModelLoaderFactory<",
        "Lorg/thoughtcrime/securesms/mms/DecryptableStreamUriLoader$DecryptableUri;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/mms/DecryptableStreamUriLoader$Factory;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public build(Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;)Lcom/bumptech/glide/load/model/ModelLoader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;",
            ")",
            "Lcom/bumptech/glide/load/model/ModelLoader<",
            "Lorg/thoughtcrime/securesms/mms/DecryptableStreamUriLoader$DecryptableUri;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 48
    new-instance p1, Lorg/thoughtcrime/securesms/mms/DecryptableStreamUriLoader;

    iget-object v0, p0, Lorg/thoughtcrime/securesms/mms/DecryptableStreamUriLoader$Factory;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lorg/thoughtcrime/securesms/mms/DecryptableStreamUriLoader;-><init>(Landroid/content/Context;Lorg/thoughtcrime/securesms/mms/DecryptableStreamUriLoader$1;)V

    return-object p1
.end method

.method public teardown()V
    .locals 0

    return-void
.end method
