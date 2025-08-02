.class Lorg/thoughtcrime/securesms/components/ThumbnailView$1;
.super Landroid/os/AsyncTask;
.source "ThumbnailView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/thoughtcrime/securesms/components/ThumbnailView;->setImageResource(Lorg/thoughtcrime/securesms/mms/GlideRequests;Lorg/thoughtcrime/securesms/mms/Slide;II)Lcom/b44t/messenger/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/components/ThumbnailView;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$dataUri:Landroid/net/Uri;

.field final synthetic val$glideRequests:Lorg/thoughtcrime/securesms/mms/GlideRequests;

.field final synthetic val$img:Landroid/widget/ImageView;

.field final synthetic val$result:Lcom/b44t/messenger/util/concurrent/SettableFuture;

.field final synthetic val$thumbnailUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lorg/thoughtcrime/securesms/components/ThumbnailView;Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Lorg/thoughtcrime/securesms/mms/GlideRequests;Landroid/widget/ImageView;Lcom/b44t/messenger/util/concurrent/SettableFuture;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/ThumbnailView$1;->this$0:Lorg/thoughtcrime/securesms/components/ThumbnailView;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/components/ThumbnailView$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lorg/thoughtcrime/securesms/components/ThumbnailView$1;->val$dataUri:Landroid/net/Uri;

    iput-object p4, p0, Lorg/thoughtcrime/securesms/components/ThumbnailView$1;->val$thumbnailUri:Landroid/net/Uri;

    iput-object p5, p0, Lorg/thoughtcrime/securesms/components/ThumbnailView$1;->val$glideRequests:Lorg/thoughtcrime/securesms/mms/GlideRequests;

    iput-object p6, p0, Lorg/thoughtcrime/securesms/components/ThumbnailView$1;->val$img:Landroid/widget/ImageView;

    iput-object p7, p0, Lorg/thoughtcrime/securesms/components/ThumbnailView$1;->val$result:Lcom/b44t/messenger/util/concurrent/SettableFuture;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3

    .line 257
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/ThumbnailView$1;->val$context:Landroid/content/Context;

    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/ThumbnailView$1;->val$dataUri:Landroid/net/Uri;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/ThumbnailView$1;->val$thumbnailUri:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/thoughtcrime/securesms/util/MediaUtil;->createVideoThumbnailIfNeeded(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Lorg/thoughtcrime/securesms/util/MediaUtil$ThumbnailSize;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 254
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/components/ThumbnailView$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3

    .line 261
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/ThumbnailView$1;->val$glideRequests:Lorg/thoughtcrime/securesms/mms/GlideRequests;

    new-instance v0, Lorg/thoughtcrime/securesms/mms/DecryptableStreamUriLoader$DecryptableUri;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/ThumbnailView$1;->val$thumbnailUri:Landroid/net/Uri;

    invoke-direct {v0, v1}, Lorg/thoughtcrime/securesms/mms/DecryptableStreamUriLoader$DecryptableUri;-><init>(Landroid/net/Uri;)V

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/mms/GlideRequests;->load(Ljava/lang/Object;)Lorg/thoughtcrime/securesms/mms/GlideRequest;

    move-result-object p1

    sget-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 262
    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/mms/GlideRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lorg/thoughtcrime/securesms/mms/GlideRequest;

    move-result-object p1

    .line 263
    invoke-static {}, Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;->withCrossFade()Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/mms/GlideRequest;->transition(Lcom/bumptech/glide/TransitionOptions;)Lorg/thoughtcrime/securesms/mms/GlideRequest;

    move-result-object p1

    .line 264
    new-instance v0, Lorg/thoughtcrime/securesms/components/GlideDrawableListeningTarget;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/ThumbnailView$1;->val$img:Landroid/widget/ImageView;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/components/ThumbnailView$1;->val$result:Lcom/b44t/messenger/util/concurrent/SettableFuture;

    invoke-direct {v0, v1, v2}, Lorg/thoughtcrime/securesms/components/GlideDrawableListeningTarget;-><init>(Landroid/widget/ImageView;Lcom/b44t/messenger/util/concurrent/SettableFuture;)V

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/mms/GlideRequest;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 254
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/components/ThumbnailView$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
