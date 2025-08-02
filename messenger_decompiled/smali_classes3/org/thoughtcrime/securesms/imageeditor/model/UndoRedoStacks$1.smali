.class Lorg/thoughtcrime/securesms/imageeditor/model/UndoRedoStacks$1;
.super Ljava/lang/Object;
.source "UndoRedoStacks.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/imageeditor/model/UndoRedoStacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lorg/thoughtcrime/securesms/imageeditor/model/UndoRedoStacks;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/imageeditor/model/UndoRedoStacks$1;->createFromParcel(Landroid/os/Parcel;)Lorg/thoughtcrime/securesms/imageeditor/model/UndoRedoStacks;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/thoughtcrime/securesms/imageeditor/model/UndoRedoStacks;
    .locals 4

    .line 31
    new-instance v0, Lorg/thoughtcrime/securesms/imageeditor/model/UndoRedoStacks;

    const-class v1, Lorg/thoughtcrime/securesms/imageeditor/model/ElementStack;

    .line 32
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lorg/thoughtcrime/securesms/imageeditor/model/ElementStack;

    const-class v2, Lorg/thoughtcrime/securesms/imageeditor/model/ElementStack;

    .line 33
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lorg/thoughtcrime/securesms/imageeditor/model/ElementStack;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p1, v3}, Lorg/thoughtcrime/securesms/imageeditor/model/UndoRedoStacks;-><init>(Lorg/thoughtcrime/securesms/imageeditor/model/ElementStack;Lorg/thoughtcrime/securesms/imageeditor/model/ElementStack;[BLorg/thoughtcrime/securesms/imageeditor/model/UndoRedoStacks$1;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/imageeditor/model/UndoRedoStacks$1;->newArray(I)[Lorg/thoughtcrime/securesms/imageeditor/model/UndoRedoStacks;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lorg/thoughtcrime/securesms/imageeditor/model/UndoRedoStacks;
    .locals 0

    .line 40
    new-array p1, p1, [Lorg/thoughtcrime/securesms/imageeditor/model/UndoRedoStacks;

    return-object p1
.end method
