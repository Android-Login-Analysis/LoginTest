.class Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine$1;
.super Ljava/lang/Object;
.source "AutomaticControlPointBezierLine.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 200
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine$1;->createFromParcel(Landroid/os/Parcel;)Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;
    .locals 4

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object p1

    .line 205
    new-instance v1, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;

    if-eqz v0, :cond_0

    array-length v2, v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    invoke-direct {v1, v0, p1, v2, v3}, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;-><init>([F[FILorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine$1;)V

    return-object v1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 200
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine$1;->newArray(I)[Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;
    .locals 0

    .line 210
    new-array p1, p1, [Lorg/thoughtcrime/securesms/imageeditor/renderers/AutomaticControlPointBezierLine;

    return-object p1
.end method
