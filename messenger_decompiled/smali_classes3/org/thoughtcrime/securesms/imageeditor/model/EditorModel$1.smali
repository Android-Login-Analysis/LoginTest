.class Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel$1;
.super Ljava/lang/Object;
.source "EditorModel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 521
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 521
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel$1;->createFromParcel(Landroid/os/Parcel;)Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;
    .locals 2

    .line 524
    new-instance v0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;-><init>(Landroid/os/Parcel;Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel$1;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 521
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel$1;->newArray(I)[Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;
    .locals 0

    .line 529
    new-array p1, p1, [Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;

    return-object p1
.end method
