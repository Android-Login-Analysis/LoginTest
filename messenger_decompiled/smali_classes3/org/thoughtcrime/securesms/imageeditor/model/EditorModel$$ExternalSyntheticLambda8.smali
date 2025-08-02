.class public final synthetic Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement$PerElementFunction;


# instance fields
.field public final synthetic f$0:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel$$ExternalSyntheticLambda8;->f$0:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final apply(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)V
    .locals 1

    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel$$ExternalSyntheticLambda8;->f$0:Ljava/util/Set;

    invoke-static {v0, p1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->lambda$getUniqueColorsIgnoringAlpha$6(Ljava/util/Set;Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)V

    return-void
.end method
