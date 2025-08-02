.class Lorg/thoughtcrime/securesms/components/ZoomingImageView$1;
.super Landroid/os/AsyncTask;
.source "ZoomingImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/thoughtcrime/securesms/components/ZoomingImageView;->setImageUri(Lorg/thoughtcrime/securesms/mms/GlideRequests;Landroid/net/Uri;Ljava/lang/String;)V
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
        "Landroid/util/Pair<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/components/ZoomingImageView;

.field final synthetic val$contentType:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$glideRequests:Lorg/thoughtcrime/securesms/mms/GlideRequests;

.field final synthetic val$maxTextureSize:I

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lorg/thoughtcrime/securesms/components/ZoomingImageView;Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;ILorg/thoughtcrime/securesms/mms/GlideRequests;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/ZoomingImageView$1;->this$0:Lorg/thoughtcrime/securesms/components/ZoomingImageView;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/components/ZoomingImageView$1;->val$contentType:Ljava/lang/String;

    iput-object p3, p0, Lorg/thoughtcrime/securesms/components/ZoomingImageView$1;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lorg/thoughtcrime/securesms/components/ZoomingImageView$1;->val$uri:Landroid/net/Uri;

    iput p5, p0, Lorg/thoughtcrime/securesms/components/ZoomingImageView$1;->val$maxTextureSize:I

    iput-object p6, p0, Lorg/thoughtcrime/securesms/components/ZoomingImageView$1;->val$glideRequests:Lorg/thoughtcrime/securesms/mms/GlideRequests;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 73
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/ZoomingImageView$1;->val$contentType:Ljava/lang/String;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/util/MediaUtil;->isGif(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return-object v0

    .line 76
    :cond_0
    :try_start_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/ZoomingImageView$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/ZoomingImageView$1;->val$uri:Landroid/net/Uri;

    invoke-static {p1, v1}, Lorg/thoughtcrime/securesms/mms/PartAuthority;->getAttachmentStream(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    .line 77
    invoke-static {p1}, Lorg/thoughtcrime/securesms/util/BitmapUtil;->getDimensions(Ljava/io/InputStream;)Landroid/util/Pair;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/thoughtcrime/securesms/util/BitmapDecodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 79
    :goto_0
    invoke-static {}, Lorg/thoughtcrime/securesms/components/ZoomingImageView;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 70
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/components/ZoomingImageView$1;->doInBackground([Ljava/lang/Void;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/util/Pair;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 85
    invoke-static {}, Lorg/thoughtcrime/securesms/components/ZoomingImageView;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Dimensions: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string v2, "(null)"

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    .line 87
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lorg/thoughtcrime/securesms/components/ZoomingImageView$1;->val$maxTextureSize:I

    if-gt v0, v1, :cond_1

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget v0, p0, Lorg/thoughtcrime/securesms/components/ZoomingImageView$1;->val$maxTextureSize:I

    if-gt p1, v0, :cond_1

    goto :goto_1

    .line 91
    :cond_1
    invoke-static {}, Lorg/thoughtcrime/securesms/components/ZoomingImageView;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Loading in subsampling image view..."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/ZoomingImageView$1;->this$0:Lorg/thoughtcrime/securesms/components/ZoomingImageView;

    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/ZoomingImageView$1;->val$uri:Landroid/net/Uri;

    invoke-static {p1, v0}, Lorg/thoughtcrime/securesms/components/ZoomingImageView;->access$200(Lorg/thoughtcrime/securesms/components/ZoomingImageView;Landroid/net/Uri;)V

    goto :goto_2

    .line 88
    :cond_2
    :goto_1
    invoke-static {}, Lorg/thoughtcrime/securesms/components/ZoomingImageView;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Loading in standard image view..."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/ZoomingImageView$1;->this$0:Lorg/thoughtcrime/securesms/components/ZoomingImageView;

    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/ZoomingImageView$1;->val$glideRequests:Lorg/thoughtcrime/securesms/mms/GlideRequests;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/ZoomingImageView$1;->val$uri:Landroid/net/Uri;

    invoke-static {p1, v0, v1}, Lorg/thoughtcrime/securesms/components/ZoomingImageView;->access$100(Lorg/thoughtcrime/securesms/components/ZoomingImageView;Lorg/thoughtcrime/securesms/mms/GlideRequests;Landroid/net/Uri;)V

    :goto_2
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 70
    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/components/ZoomingImageView$1;->onPostExecute(Landroid/util/Pair;)V

    return-void
.end method
