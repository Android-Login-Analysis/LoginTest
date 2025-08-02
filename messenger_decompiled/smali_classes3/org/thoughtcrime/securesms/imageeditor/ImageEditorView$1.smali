.class Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$1;
.super Ljava/lang/Object;
.source "ImageEditorView.java"

# interfaces
.implements Lorg/thoughtcrime/securesms/imageeditor/RendererContext$Ready;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;


# direct methods
.method constructor <init>(Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$1;->this$0:Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReady(Lorg/thoughtcrime/securesms/imageeditor/Renderer;Landroid/graphics/Matrix;Landroid/graphics/Point;)V
    .locals 1

    .line 161
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$1;->this$0:Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->access$100(Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;)Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->onReady(Lorg/thoughtcrime/securesms/imageeditor/Renderer;Landroid/graphics/Matrix;Landroid/graphics/Point;)V

    .line 162
    iget-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$1;->this$0:Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->invalidate()V

    return-void
.end method
