.class public Lorg/thoughtcrime/securesms/mms/DecryptableStreamUriLoader$DecryptableUri;
.super Ljava/lang/Object;
.source "DecryptableStreamUriLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/Key;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/mms/DecryptableStreamUriLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DecryptableUri"
.end annotation


# instance fields
.field public final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lorg/thoughtcrime/securesms/mms/DecryptableStreamUriLoader$DecryptableUri;->uri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 72
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 74
    :cond_1
    check-cast p1, Lorg/thoughtcrime/securesms/mms/DecryptableStreamUriLoader$DecryptableUri;

    .line 76
    iget-object v0, p0, Lorg/thoughtcrime/securesms/mms/DecryptableStreamUriLoader$DecryptableUri;->uri:Landroid/net/Uri;

    iget-object p1, p1, Lorg/thoughtcrime/securesms/mms/DecryptableStreamUriLoader$DecryptableUri;->uri:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/thoughtcrime/securesms/mms/DecryptableStreamUriLoader$DecryptableUri;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    return v0
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/thoughtcrime/securesms/mms/DecryptableStreamUriLoader$DecryptableUri;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method
