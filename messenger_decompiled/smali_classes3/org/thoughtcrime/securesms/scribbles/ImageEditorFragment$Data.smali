.class public Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment$Data;
.super Ljava/lang/Object;
.source "ImageEditorFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Data"
.end annotation


# instance fields
.field private final bundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 64
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, v0}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment$Data;-><init>(Landroid/os/Bundle;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment$Data;->bundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public readModel()Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;
    .locals 2

    .line 74
    iget-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment$Data;->bundle:Landroid/os/Bundle;

    const-string v1, "MODEL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 78
    :cond_0
    sget-object v1, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v1}, Lorg/thoughtcrime/securesms/util/ParcelUtil;->deserialize([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;

    return-object v0
.end method

.method writeModel(Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;)V
    .locals 2

    .line 68
    invoke-static {p1}, Lorg/thoughtcrime/securesms/util/ParcelUtil;->serialize(Landroid/os/Parcelable;)[B

    move-result-object p1

    .line 69
    iget-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment$Data;->bundle:Landroid/os/Bundle;

    const-string v1, "MODEL"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-void
.end method
