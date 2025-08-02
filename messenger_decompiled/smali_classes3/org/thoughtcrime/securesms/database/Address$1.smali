.class Lorg/thoughtcrime/securesms/database/Address$1;
.super Ljava/lang/Object;
.source "Address.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/database/Address;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lorg/thoughtcrime/securesms/database/Address;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/database/Address$1;->createFromParcel(Landroid/os/Parcel;)Lorg/thoughtcrime/securesms/database/Address;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/thoughtcrime/securesms/database/Address;
    .locals 1

    .line 12
    new-instance v0, Lorg/thoughtcrime/securesms/database/Address;

    invoke-direct {v0, p1}, Lorg/thoughtcrime/securesms/database/Address;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/database/Address$1;->newArray(I)[Lorg/thoughtcrime/securesms/database/Address;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lorg/thoughtcrime/securesms/database/Address;
    .locals 0

    .line 16
    new-array p1, p1, [Lorg/thoughtcrime/securesms/database/Address;

    return-object p1
.end method
