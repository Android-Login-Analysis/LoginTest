.class Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer$1;
.super Lcom/bumptech/glide/request/target/CustomTarget;
.source "UriGlideRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer;->render(Lorg/thoughtcrime/securesms/imageeditor/RendererContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/target/CustomTarget<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer;

.field final synthetic val$rendererContext:Lorg/thoughtcrime/securesms/imageeditor/RendererContext;


# direct methods
.method constructor <init>(Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer;Lorg/thoughtcrime/securesms/imageeditor/RendererContext;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer$1;->this$0:Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer$1;->val$rendererContext:Lorg/thoughtcrime/securesms/imageeditor/RendererContext;

    invoke-direct {p0}, Lcom/bumptech/glide/request/target/CustomTarget;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 97
    iget-object p1, p0, Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer$1;->this$0:Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer;->access$102(Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    return-void
.end method

.method public onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/bumptech/glide/request/transition/Transition<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 90
    iget-object p2, p0, Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer$1;->this$0:Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer;

    iget-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer$1;->val$rendererContext:Lorg/thoughtcrime/securesms/imageeditor/RendererContext;

    invoke-static {p2, v0, p1}, Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer;->access$000(Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer;Lorg/thoughtcrime/securesms/imageeditor/RendererContext;Landroid/graphics/Bitmap;)V

    .line 92
    iget-object p1, p0, Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer$1;->val$rendererContext:Lorg/thoughtcrime/securesms/imageeditor/RendererContext;

    iget-object p1, p1, Lorg/thoughtcrime/securesms/imageeditor/RendererContext;->invalidate:Lorg/thoughtcrime/securesms/imageeditor/RendererContext$Invalidate;

    iget-object p2, p0, Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer$1;->this$0:Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer;

    invoke-interface {p1, p2}, Lorg/thoughtcrime/securesms/imageeditor/RendererContext$Invalidate;->onInvalidate(Lorg/thoughtcrime/securesms/imageeditor/Renderer;)V

    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 0

    .line 87
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lorg/thoughtcrime/securesms/scribbles/UriGlideRenderer$1;->onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V

    return-void
.end method
