.class Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$1;
.super Ljava/lang/Object;
.source "MultiLineTextRenderer.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 363
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$1;->createFromParcel(Landroid/os/Parcel;)Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;
    .locals 2

    .line 366
    new-instance v0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 363
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer$1;->newArray(I)[Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;
    .locals 0

    .line 371
    new-array p1, p1, [Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;

    return-object p1
.end method
