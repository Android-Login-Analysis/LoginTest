.class Lorg/thoughtcrime/securesms/imageeditor/renderers/OvalGuideRenderer$1;
.super Ljava/lang/Object;
.source "OvalGuideRenderer.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/imageeditor/renderers/OvalGuideRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lorg/thoughtcrime/securesms/imageeditor/renderers/OvalGuideRenderer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 65
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/imageeditor/renderers/OvalGuideRenderer$1;->createFromParcel(Landroid/os/Parcel;)Lorg/thoughtcrime/securesms/imageeditor/renderers/OvalGuideRenderer;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/thoughtcrime/securesms/imageeditor/renderers/OvalGuideRenderer;
    .locals 1

    .line 68
    new-instance v0, Lorg/thoughtcrime/securesms/imageeditor/renderers/OvalGuideRenderer;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-direct {v0, p1}, Lorg/thoughtcrime/securesms/imageeditor/renderers/OvalGuideRenderer;-><init>(I)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 65
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/imageeditor/renderers/OvalGuideRenderer$1;->newArray(I)[Lorg/thoughtcrime/securesms/imageeditor/renderers/OvalGuideRenderer;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lorg/thoughtcrime/securesms/imageeditor/renderers/OvalGuideRenderer;
    .locals 0

    .line 73
    new-array p1, p1, [Lorg/thoughtcrime/securesms/imageeditor/renderers/OvalGuideRenderer;

    return-object p1
.end method
