.class Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment$1;
.super Ljava/lang/Object;
.source "ImageEditorFragment.java"

# interfaces
.implements Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$TapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;


# direct methods
.method constructor <init>(Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;)V
    .locals 0

    .line 333
    iput-object p1, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment$1;->this$0:Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private setTextElement(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;Lorg/thoughtcrime/securesms/imageeditor/ColorableRenderer;Z)V
    .locals 2

    .line 368
    invoke-interface {p2}, Lorg/thoughtcrime/securesms/imageeditor/ColorableRenderer;->getColor()I

    move-result p2

    .line 369
    iget-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment$1;->this$0:Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;->access$100(Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;)Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;

    move-result-object v0

    sget-object v1, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;->TEXT:Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->enterMode(Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;)V

    .line 370
    iget-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment$1;->this$0:Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;->access$100(Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;)Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->setActiveColor(I)V

    if-eqz p3, :cond_0

    .line 372
    iget-object p2, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment$1;->this$0:Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;

    const/4 p3, 0x0

    invoke-static {p2, p1, p3}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;->access$300(Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onEntityDoubleTap(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)V
    .locals 2

    .line 358
    iget-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment$1;->this$0:Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;

    invoke-static {v0, p1}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;->access$002(Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    .line 359
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->getRenderer()Lorg/thoughtcrime/securesms/imageeditor/Renderer;

    move-result-object v0

    instance-of v0, v0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;

    if-eqz v0, :cond_0

    .line 360
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->getRenderer()Lorg/thoughtcrime/securesms/imageeditor/Renderer;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/imageeditor/ColorableRenderer;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment$1;->setTextElement(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;Lorg/thoughtcrime/securesms/imageeditor/ColorableRenderer;Z)V

    :cond_0
    return-void
.end method

.method public onEntityDown(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)V
    .locals 1

    if-nez p1, :cond_0

    .line 338
    iget-object p1, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment$1;->this$0:Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;->access$002(Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    .line 339
    iget-object p1, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment$1;->this$0:Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;->access$100(Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;)Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;

    move-result-object p1

    sget-object v0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;->NONE:Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->enterMode(Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;)V

    .line 340
    iget-object p1, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment$1;->this$0:Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;->access$200(Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;)Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->doneTextEditing()V

    :cond_0
    return-void
.end method

.method public onEntitySingleTap(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)V
    .locals 2

    .line 346
    iget-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment$1;->this$0:Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;

    invoke-static {v0, p1}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;->access$002(Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    .line 347
    iget-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment$1;->this$0:Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;->access$000(Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;)Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 348
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->getRenderer()Lorg/thoughtcrime/securesms/imageeditor/Renderer;

    move-result-object v0

    instance-of v0, v0, Lorg/thoughtcrime/securesms/imageeditor/renderers/MultiLineTextRenderer;

    if-eqz v0, :cond_0

    .line 349
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->getRenderer()Lorg/thoughtcrime/securesms/imageeditor/Renderer;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/imageeditor/ColorableRenderer;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment$1;->this$0:Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;

    invoke-static {v1}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;->access$200(Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;)Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->isTextEditing()Z

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment$1;->setTextElement(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;Lorg/thoughtcrime/securesms/imageeditor/ColorableRenderer;Z)V

    goto :goto_0

    .line 351
    :cond_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment$1;->this$0:Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;->access$100(Lorg/thoughtcrime/securesms/scribbles/ImageEditorFragment;)Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;

    move-result-object p1

    sget-object v0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;->MOVE_DELETE:Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;->enterMode(Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;)V

    :cond_1
    :goto_0
    return-void
.end method
