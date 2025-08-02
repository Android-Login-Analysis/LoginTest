.class public Lcom/github/penfeizhou/animation/loader/AssetStreamLoader;
.super Lcom/github/penfeizhou/animation/loader/StreamLoader;
.source "AssetStreamLoader.java"


# instance fields
.field private final mAssetName:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/github/penfeizhou/animation/loader/StreamLoader;-><init>()V

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/github/penfeizhou/animation/loader/AssetStreamLoader;->mContext:Landroid/content/Context;

    .line 20
    iput-object p2, p0, Lcom/github/penfeizhou/animation/loader/AssetStreamLoader;->mAssetName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/github/penfeizhou/animation/loader/AssetStreamLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iget-object v1, p0, Lcom/github/penfeizhou/animation/loader/AssetStreamLoader;->mAssetName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
