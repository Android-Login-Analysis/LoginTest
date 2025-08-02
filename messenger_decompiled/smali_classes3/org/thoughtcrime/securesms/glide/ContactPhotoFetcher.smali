.class Lorg/thoughtcrime/securesms/glide/ContactPhotoFetcher;
.super Ljava/lang/Object;
.source "ContactPhotoFetcher.java"

# interfaces
.implements Lcom/bumptech/glide/load/data/DataFetcher;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/data/DataFetcher<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final contactPhoto:Lorg/thoughtcrime/securesms/contacts/avatars/ContactPhoto;

.field private final context:Landroid/content/Context;

.field private inputStream:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Landroid/content/Context;Lorg/thoughtcrime/securesms/contacts/avatars/ContactPhoto;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/glide/ContactPhotoFetcher;->context:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lorg/thoughtcrime/securesms/glide/ContactPhotoFetcher;->contactPhoto:Lorg/thoughtcrime/securesms/contacts/avatars/ContactPhoto;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    return-void
.end method

.method public cleanup()V
    .locals 1

    .line 41
    :try_start_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/glide/ContactPhotoFetcher;->inputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public getDataClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 53
    const-class v0, Ljava/io/InputStream;

    return-object v0
.end method

.method public getDataSource()Lcom/bumptech/glide/load/DataSource;
    .locals 1

    .line 59
    sget-object v0, Lcom/bumptech/glide/load/DataSource;->LOCAL:Lcom/bumptech/glide/load/DataSource;

    return-object v0
.end method

.method public loadData(Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Priority;",
            "Lcom/bumptech/glide/load/data/DataFetcher$DataCallback<",
            "-",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .line 31
    :try_start_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/glide/ContactPhotoFetcher;->contactPhoto:Lorg/thoughtcrime/securesms/contacts/avatars/ContactPhoto;

    iget-object v0, p0, Lorg/thoughtcrime/securesms/glide/ContactPhotoFetcher;->context:Landroid/content/Context;

    invoke-interface {p1, v0}, Lorg/thoughtcrime/securesms/contacts/avatars/ContactPhoto;->openInputStream(Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/glide/ContactPhotoFetcher;->inputStream:Ljava/io/InputStream;

    .line 32
    invoke-interface {p2, p1}, Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;->onDataReady(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 34
    invoke-interface {p2, p1}, Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;->onLoadFailed(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
