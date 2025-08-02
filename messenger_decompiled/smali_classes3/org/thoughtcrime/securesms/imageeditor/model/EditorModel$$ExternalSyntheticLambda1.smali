.class public final synthetic Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/thoughtcrime/securesms/imageeditor/model/Bisect$ModifyElement;


# instance fields
.field public final synthetic f$0:F

.field public final synthetic f$1:F


# direct methods
.method public synthetic constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel$$ExternalSyntheticLambda1;->f$0:F

    iput p2, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel$$ExternalSyntheticLambda1;->f$1:F

    return-void
.end method


# virtual methods
.method public final applyFactor(Landroid/graphics/Matrix;F)V
    .locals 2

    iget v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel$$ExternalSyntheticLambda1;->f$0:F

    iget v1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel$$ExternalSyntheticLambda1;->f$1:F

    invoke-static {v0, v1, p1, p2}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->lambda$tryToTranslateToFit$5(FFLandroid/graphics/Matrix;F)V

    return-void
.end method
