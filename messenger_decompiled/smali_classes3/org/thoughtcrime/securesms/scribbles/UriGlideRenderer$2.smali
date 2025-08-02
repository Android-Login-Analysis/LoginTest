.class Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer$2;
.super Ljava/lang/Object;
.source "UriGlideRenderer.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 286
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer$2;->createFromParcel(Landroid/os/Parcel;)Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer;
    .locals 4

    .line 289
    new-instance v0, Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 290
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 291
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 292
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-direct {v0, v1, v3, v2, p1}, Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer;-><init>(Landroid/net/Uri;ZII)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 286
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer$2;->newArray(I)[Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer;
    .locals 0

    .line 298
    new-array p1, p1, [Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer;

    return-object p1
.end method
