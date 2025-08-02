.class public Lorg/thoughtcrime/securesms/components/GlideDrawableListeningTarget;
.super Lcom/bumptech/glide/request/target/DrawableImageViewTarget;
.source "GlideDrawableListeningTarget.java"


# instance fields
.field private final loaded:Lcom/b44t/messenger/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b44t/messenger/util/concurrent/SettableFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Lcom/b44t/messenger/util/concurrent/SettableFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            "Lcom/b44t/messenger/util/concurrent/SettableFuture<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/target/DrawableImageViewTarget;-><init>(Landroid/widget/ImageView;)V

    .line 17
    iput-object p2, p0, Lorg/thoughtcrime/securesms/components/GlideDrawableListeningTarget;->loaded:Lcom/b44t/messenger/util/concurrent/SettableFuture;

    return-void
.end method


# virtual methods
.method public onLoadFailed(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 28
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/target/DrawableImageViewTarget;->onLoadFailed(Landroid/graphics/drawable/Drawable;)V

    .line 29
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/GlideDrawableListeningTarget;->loaded:Lcom/b44t/messenger/util/concurrent/SettableFuture;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/b44t/messenger/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    return-void
.end method

.method protected setResource(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 22
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/target/DrawableImageViewTarget;->setResource(Landroid/graphics/drawable/Drawable;)V

    .line 23
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/GlideDrawableListeningTarget;->loaded:Lcom/b44t/messenger/util/concurrent/SettableFuture;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/b44t/messenger/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    return-void
.end method

.method protected bridge synthetic setResource(Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/components/GlideDrawableListeningTarget;->setResource(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
