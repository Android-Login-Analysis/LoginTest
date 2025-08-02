.class abstract Lorg/thoughtcrime/securesms/imageeditor/renderers/InvalidateableRenderer;
.super Ljava/lang/Object;
.source "InvalidateableRenderer.java"

# interfaces
.implements Lorg/thoughtcrime/securesms/imageeditor/Renderer;


# instance fields
.field private invalidate:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lorg/thoughtcrime/securesms/imageeditor/RendererContext$Invalidate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/InvalidateableRenderer;->invalidate:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private setInvalidate(Lorg/thoughtcrime/securesms/imageeditor/RendererContext$Invalidate;)V
    .locals 1

    .line 23
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/InvalidateableRenderer;->invalidate:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 24
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/InvalidateableRenderer;->invalidate:Ljava/lang/ref/WeakReference;

    :cond_0
    return-void
.end method


# virtual methods
.method protected invalidate()V
    .locals 1

    .line 29
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/renderers/InvalidateableRenderer;->invalidate:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/imageeditor/RendererContext$Invalidate;

    if-eqz v0, :cond_0

    .line 31
    invoke-interface {v0, p0}, Lorg/thoughtcrime/securesms/imageeditor/RendererContext$Invalidate;->onInvalidate(Lorg/thoughtcrime/securesms/imageeditor/Renderer;)V

    :cond_0
    return-void
.end method

.method public render(Lorg/thoughtcrime/securesms/imageeditor/RendererContext;)V
    .locals 0

    .line 19
    iget-object p1, p1, Lorg/thoughtcrime/securesms/imageeditor/RendererContext;->invalidate:Lorg/thoughtcrime/securesms/imageeditor/RendererContext$Invalidate;

    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/imageeditor/renderers/InvalidateableRenderer;->setInvalidate(Lorg/thoughtcrime/securesms/imageeditor/RendererContext$Invalidate;)V

    return-void
.end method
