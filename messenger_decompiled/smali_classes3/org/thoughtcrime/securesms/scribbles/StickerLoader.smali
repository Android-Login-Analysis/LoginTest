.class Lorg/thoughtcrime/securesms/scribbles/StickerLoader;
.super Lorg/thoughtcrime/securesms/util/AsyncLoader;
.source "StickerLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/thoughtcrime/securesms/util/AsyncLoader<",
        "[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "org.thoughtcrime.securesms.scribbles.StickerLoader"


# instance fields
.field private final assetDirectory:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/util/AsyncLoader;-><init>(Landroid/content/Context;)V

    .line 36
    iput-object p2, p0, Lorg/thoughtcrime/securesms/scribbles/StickerLoader;->assetDirectory:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/scribbles/StickerLoader;->loadInBackground()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()[Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    .line 43
    :try_start_0
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/scribbles/StickerLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    iget-object v2, p0, Lorg/thoughtcrime/securesms/scribbles/StickerLoader;->assetDirectory:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 45
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 46
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/thoughtcrime/securesms/scribbles/StickerLoader;->assetDirectory:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    :catch_0
    move-exception v1

    .line 51
    sget-object v2, Lorg/thoughtcrime/securesms/scribbles/StickerLoader;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method
