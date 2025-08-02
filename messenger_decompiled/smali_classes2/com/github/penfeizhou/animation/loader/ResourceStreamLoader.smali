.class public Lcom/github/penfeizhou/animation/loader/ResourceStreamLoader;
.super Lcom/github/penfeizhou/animation/loader/StreamLoader;
.source "ResourceStreamLoader.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/github/penfeizhou/animation/loader/StreamLoader;-><init>()V

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/github/penfeizhou/animation/loader/ResourceStreamLoader;->mContext:Landroid/content/Context;

    .line 20
    iput p2, p0, Lcom/github/penfeizhou/animation/loader/ResourceStreamLoader;->mResId:I

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
    iget-object v0, p0, Lcom/github/penfeizhou/animation/loader/ResourceStreamLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/github/penfeizhou/animation/loader/ResourceStreamLoader;->mResId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
