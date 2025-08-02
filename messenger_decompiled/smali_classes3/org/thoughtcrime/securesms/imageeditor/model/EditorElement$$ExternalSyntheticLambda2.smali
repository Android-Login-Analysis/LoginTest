.class public final synthetic Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement$FindElementPredicate;


# instance fields
.field public final synthetic f$0:[F

.field public final synthetic f$1:[F


# direct methods
.method public synthetic constructor <init>([F[F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement$$ExternalSyntheticLambda2;->f$0:[F

    iput-object p2, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement$$ExternalSyntheticLambda2;->f$1:[F

    return-void
.end method


# virtual methods
.method public final test(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;Landroid/graphics/Matrix;)Z
    .locals 2

    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement$$ExternalSyntheticLambda2;->f$0:[F

    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement$$ExternalSyntheticLambda2;->f$1:[F

    invoke-static {v0, v1, p1, p2}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->lambda$findElementAt$2([F[FLorg/thoughtcrime/securesms/imageeditor/model/EditorElement;Landroid/graphics/Matrix;)Z

    move-result p1

    return p1
.end method
