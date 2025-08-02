.class final Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$DoubleTapGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ImageEditorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DoubleTapGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;


# direct methods
.method private constructor <init>(Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;)V
    .locals 0

    .line 417
    iput-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$DoubleTapGestureListener;->this$0:Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$1;)V
    .locals 0

    .line 417
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$DoubleTapGestureListener;-><init>(Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 421
    iget-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$DoubleTapGestureListener;->this$0:Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->access$200(Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;)Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$TapListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$DoubleTapGestureListener;->this$0:Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->access$300(Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;)Lorg/thoughtcrime/securesms/imageeditor/EditSession;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$DoubleTapGestureListener;->this$0:Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->access$400(Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 422
    iget-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$DoubleTapGestureListener;->this$0:Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->access$200(Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;)Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$TapListener;

    move-result-object p1

    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$DoubleTapGestureListener;->this$0:Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->access$300(Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;)Lorg/thoughtcrime/securesms/imageeditor/EditSession;

    move-result-object v0

    invoke-interface {v0}, Lorg/thoughtcrime/securesms/imageeditor/EditSession;->getSelected()Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$TapListener;->onEntityDoubleTap(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 432
    iget-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$DoubleTapGestureListener;->this$0:Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->access$200(Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;)Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$TapListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$DoubleTapGestureListener;->this$0:Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->access$400(Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 433
    iget-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$DoubleTapGestureListener;->this$0:Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->access$300(Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;)Lorg/thoughtcrime/securesms/imageeditor/EditSession;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 434
    iget-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$DoubleTapGestureListener;->this$0:Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->access$300(Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;)Lorg/thoughtcrime/securesms/imageeditor/EditSession;

    move-result-object p1

    invoke-interface {p1}, Lorg/thoughtcrime/securesms/imageeditor/EditSession;->getSelected()Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    move-result-object p1

    .line 435
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$DoubleTapGestureListener;->this$0:Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->access$100(Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;)Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorModel;->indicateSelected(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)V

    .line 436
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$DoubleTapGestureListener;->this$0:Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->access$200(Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;)Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$TapListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$TapListener;->onEntitySingleTap(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)V

    goto :goto_0

    .line 438
    :cond_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$DoubleTapGestureListener;->this$0:Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;->access$200(Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView;)Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$TapListener;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/thoughtcrime/securesms/imageeditor/ImageEditorView$TapListener;->onEntitySingleTap(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
