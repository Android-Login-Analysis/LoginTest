.class public Lorg/thoughtcrime/securesms/util/MediaUtil;
.super Ljava/lang/Object;
.source "MediaUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/util/MediaUtil$ThumbnailSize;
    }
.end annotation


# static fields
.field public static final AUDIO_AAC:Ljava/lang/String; = "audio/aac"

.field public static final AUDIO_UNSPECIFIED:Ljava/lang/String; = "audio/*"

.field public static final IMAGE_GIF:Ljava/lang/String; = "image/gif"

.field public static final IMAGE_JPEG:Ljava/lang/String; = "image/jpeg"

.field public static final IMAGE_WEBP:Ljava/lang/String; = "image/webp"

.field public static final OCTET:Ljava/lang/String; = "application/octet-stream"

.field private static final TAG:Ljava/lang/String; = "MediaUtil"

.field public static final VCARD:Ljava/lang/String; = "text/vcard"

.field public static final VIDEO_UNSPECIFIED:Ljava/lang/String; = "video/*"

.field public static final WEBXDC:Ljava/lang/String; = "application/webxdc+zip"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createVideoThumbnailIfNeeded(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Lorg/thoughtcrime/securesms/util/MediaUtil$ThumbnailSize;)Z
    .locals 6

    const/4 v0, 0x0

    .line 267
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 268
    new-instance p2, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 269
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    cmp-long p2, v2, v4

    if-lez p2, :cond_2

    .line 272
    :cond_0
    new-instance p2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {p2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 273
    invoke-virtual {p2, p0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    const-wide/16 p0, -0x1

    .line 274
    invoke-virtual {p2, p0, p1}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p3, :cond_1

    .line 276
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p3, Lorg/thoughtcrime/securesms/util/MediaUtil$ThumbnailSize;->width:I

    .line 277
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p3, Lorg/thoughtcrime/securesms/util/MediaUtil$ThumbnailSize;->height:I

    .line 279
    :cond_1
    invoke-virtual {p2}, Landroid/media/MediaMetadataRetriever;->release()V

    if-eqz p0, :cond_2

    .line 282
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 283
    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 p3, 0x5a

    invoke-virtual {p0, p2, p3, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 289
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return v0
.end method

.method public static getCorrectedMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 99
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const-string v0, "image/jpg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object p0

    .line 101
    :cond_1
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    const-string v1, "image/jpeg"

    invoke-virtual {v0, v1}, Landroid/webkit/MimeTypeMap;->hasMimeType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object p0, v1

    :cond_2
    return-object p0
.end method

.method public static getDimensions(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "Failed to close stream after retrieving dimensions."

    const/4 v1, 0x0

    .line 163
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz p2, :cond_8

    .line 162
    invoke-static {p1}, Lorg/thoughtcrime/securesms/util/MediaUtil;->isImageType(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_e

    .line 168
    :cond_0
    invoke-static {p1}, Lorg/thoughtcrime/securesms/util/MediaUtil;->isGif(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 170
    :try_start_0
    invoke-static {p0}, Lorg/thoughtcrime/securesms/mms/GlideApp;->with(Landroid/content/Context;)Lorg/thoughtcrime/securesms/mms/GlideRequests;

    move-result-object p0

    .line 171
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/mms/GlideRequests;->asGif()Lorg/thoughtcrime/securesms/mms/GlideRequest;

    move-result-object p0

    const/4 p1, 0x1

    .line 172
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/mms/GlideRequest;->skipMemoryCache(Z)Lorg/thoughtcrime/securesms/mms/GlideRequest;

    move-result-object p0

    sget-object p1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 173
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/mms/GlideRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lorg/thoughtcrime/securesms/mms/GlideRequest;

    move-result-object p0

    new-instance p1, Lorg/thoughtcrime/securesms/mms/DecryptableStreamUriLoader$DecryptableUri;

    invoke-direct {p1, p2}, Lorg/thoughtcrime/securesms/mms/DecryptableStreamUriLoader$DecryptableUri;-><init>(Landroid/net/Uri;)V

    .line 174
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/mms/GlideRequest;->load(Ljava/lang/Object;)Lorg/thoughtcrime/securesms/mms/GlideRequest;

    move-result-object p0

    .line 175
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/mms/GlideRequest;->submit()Lcom/bumptech/glide/request/FutureTarget;

    move-result-object p0

    .line 176
    invoke-interface {p0}, Lcom/bumptech/glide/request/FutureTarget;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    .line 177
    new-instance p1, Landroid/util/Pair;

    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->getIntrinsicWidth()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->getIntrinsicHeight()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, p1

    goto/16 :goto_b

    :catch_0
    move-exception p0

    .line 181
    sget-object p1, Lorg/thoughtcrime/securesms/util/MediaUtil;->TAG:Ljava/lang/String;

    const-string v0, "Glide experienced an exception while trying to get GIF dimensions."

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_b

    :catch_1
    move-exception p0

    .line 179
    sget-object p1, Lorg/thoughtcrime/securesms/util/MediaUtil;->TAG:Ljava/lang/String;

    const-string v0, "Was unable to complete work for GIF dimensions."

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_b

    .line 186
    :cond_1
    :try_start_1
    invoke-static {p1}, Lorg/thoughtcrime/securesms/util/MediaUtil;->isJpegType(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 187
    invoke-static {p0, p2}, Lorg/thoughtcrime/securesms/mms/PartAuthority;->getAttachmentStream(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Lorg/thoughtcrime/securesms/util/BitmapDecodingException; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 188
    :try_start_2
    invoke-static {p1}, Lorg/thoughtcrime/securesms/util/BitmapUtil;->getExifDimensions(Ljava/io/InputStream;)Landroid/util/Pair;

    move-result-object v2
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lorg/thoughtcrime/securesms/util/BitmapDecodingException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 189
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lorg/thoughtcrime/securesms/util/BitmapDecodingException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catch_2
    move-exception p0

    goto :goto_0

    :catch_3
    move-exception p0

    goto :goto_1

    :catch_4
    move-exception p0

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v3, p1

    goto/16 :goto_c

    :catch_5
    move-exception p0

    move-object v2, v3

    :goto_0
    move-object v3, p1

    goto :goto_6

    :catch_6
    move-exception p0

    move-object v2, v3

    :goto_1
    move-object v3, p1

    goto :goto_7

    :catch_7
    move-exception p0

    move-object v2, v3

    :goto_2
    move-object v3, p1

    goto :goto_8

    :cond_2
    move-object v2, v3

    :goto_3
    if-nez v2, :cond_3

    .line 193
    :try_start_4
    invoke-static {p0, p2}, Lorg/thoughtcrime/securesms/mms/PartAuthority;->getAttachmentStream(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 194
    invoke-static {v3}, Lorg/thoughtcrime/securesms/util/BitmapUtil;->getDimensions(Ljava/io/InputStream;)Landroid/util/Pair;

    move-result-object p0
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Lorg/thoughtcrime/securesms/util/BitmapDecodingException; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    :catch_8
    move-exception p0

    goto :goto_6

    :catch_9
    move-exception p0

    goto :goto_7

    :catch_a
    move-exception p0

    goto :goto_8

    :cond_3
    move-object p0, v2

    :goto_4
    if-eqz v3, :cond_4

    .line 205
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_b

    goto :goto_5

    :catch_b
    move-exception p1

    .line 207
    sget-object v2, Lorg/thoughtcrime/securesms/util/MediaUtil;->TAG:Ljava/lang/String;

    invoke-static {v2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_5
    move-object v3, p0

    goto :goto_b

    :catchall_1
    move-exception p0

    goto/16 :goto_c

    :catch_c
    move-exception p0

    move-object v2, v3

    .line 201
    :goto_6
    :try_start_6
    sget-object p1, Lorg/thoughtcrime/securesms/util/MediaUtil;->TAG:Ljava/lang/String;

    const-string v4, "Bitmap decoding error when retrieving dimensions."

    invoke-static {p1, v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v3, :cond_5

    .line 205
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_d

    goto :goto_a

    :catch_d
    move-exception p0

    goto :goto_9

    :catch_e
    move-exception p0

    move-object v2, v3

    .line 199
    :goto_7
    :try_start_8
    sget-object p1, Lorg/thoughtcrime/securesms/util/MediaUtil;->TAG:Ljava/lang/String;

    const-string v4, "Experienced a read error when retrieving media dimensions."

    invoke-static {p1, v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v3, :cond_5

    .line 205
    :try_start_9
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_f

    goto :goto_a

    :catch_f
    move-exception p0

    goto :goto_9

    :catch_10
    move-exception p0

    move-object v2, v3

    .line 197
    :goto_8
    :try_start_a
    sget-object p1, Lorg/thoughtcrime/securesms/util/MediaUtil;->TAG:Ljava/lang/String;

    const-string v4, "Failed to find file when retrieving media dimensions."

    invoke-static {p1, v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-eqz v3, :cond_5

    .line 205
    :try_start_b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_11

    goto :goto_a

    :catch_11
    move-exception p0

    .line 207
    :goto_9
    sget-object p1, Lorg/thoughtcrime/securesms/util/MediaUtil;->TAG:Ljava/lang/String;

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_a
    move-object v3, v2

    :goto_b
    if-nez v3, :cond_6

    .line 213
    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, v1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 215
    :cond_6
    sget-object p0, Lorg/thoughtcrime/securesms/util/MediaUtil;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Dimensions for ["

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "] are "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " x "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :goto_c
    if-eqz v3, :cond_7

    .line 205
    :try_start_c
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_12

    goto :goto_d

    :catch_12
    move-exception p1

    .line 207
    sget-object p2, Lorg/thoughtcrime/securesms/util/MediaUtil;->TAG:Ljava/lang/String;

    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 210
    :cond_7
    :goto_d
    throw p0

    .line 163
    :cond_8
    :goto_e
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 295
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 301
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "text/vcard"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_1
    const-string v0, "audio/aac"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_2
    const-string v0, "image/webp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_3
    const-string v0, "application/webxdc+zip"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const-string p0, "vcf"

    return-object p0

    :pswitch_1
    const-string p0, "aac"

    return-object p0

    :pswitch_2
    const-string p0, "webp"

    return-object p0

    :pswitch_3
    const-string p0, "xdc"

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x67f93928 -> :sswitch_3
        -0x58a21830 -> :sswitch_2
        0xb26968a -> :sswitch_1
        0x31080524 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 118
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/16 v0, 0x23

    .line 120
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v2, 0x0

    if-lez v0, :cond_1

    .line 122
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    const/16 v0, 0x3f

    .line 125
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-lez v0, :cond_2

    .line 127
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_2
    const/16 v0, 0x2f

    .line 130
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_3

    add-int/lit8 v0, v0, 0x1

    .line 132
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 134
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const/16 v0, 0x2e

    .line 135
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_4

    add-int/lit8 v0, v0, 0x1

    .line 137
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    return-object v1
.end method

.method public static getMediaSize(Landroid/content/Context;Landroid/net/Uri;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    invoke-static {p0, p1}, Lorg/thoughtcrime/securesms/mms/PartAuthority;->getAttachmentStream(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    if-eqz p0, :cond_1

    const/16 p1, 0x1000

    new-array p1, p1, [B

    const-wide/16 v0, 0x0

    .line 152
    :goto_0
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_0

    .line 155
    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-wide v0

    .line 146
    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Couldn\'t obtain input stream."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static getMimeType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 81
    :cond_0
    invoke-static {p0, p1}, Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider;->isAuthority(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    invoke-static {p0, p1}, Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider;->getMimeType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 85
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    .line 87
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/thoughtcrime/securesms/util/MediaUtil;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 88
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    const-string p0, "application/octet-stream"

    .line 93
    :cond_2
    invoke-static {p0}, Lorg/thoughtcrime/securesms/util/MediaUtil;->getCorrectedMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSlideForMsg(Landroid/content/Context;Lcom/b44t/messenger/DcMsg;)Lorg/thoughtcrime/securesms/mms/Slide;
    .locals 2

    .line 57
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getType()I

    move-result v0

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    .line 58
    new-instance v0, Lorg/thoughtcrime/securesms/mms/GifSlide;

    invoke-direct {v0, p0, p1}, Lorg/thoughtcrime/securesms/mms/GifSlide;-><init>(Landroid/content/Context;Lcom/b44t/messenger/DcMsg;)V

    goto/16 :goto_2

    .line 59
    :cond_0
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getType()I

    move-result v0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_1

    .line 60
    new-instance v0, Lorg/thoughtcrime/securesms/mms/ImageSlide;

    invoke-direct {v0, p0, p1}, Lorg/thoughtcrime/securesms/mms/ImageSlide;-><init>(Landroid/content/Context;Lcom/b44t/messenger/DcMsg;)V

    goto :goto_2

    .line 61
    :cond_1
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getType()I

    move-result v0

    const/16 v1, 0x17

    if-ne v0, v1, :cond_2

    .line 62
    new-instance v0, Lorg/thoughtcrime/securesms/mms/StickerSlide;

    invoke-direct {v0, p0, p1}, Lorg/thoughtcrime/securesms/mms/StickerSlide;-><init>(Landroid/content/Context;Lcom/b44t/messenger/DcMsg;)V

    goto :goto_2

    .line 63
    :cond_2
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getType()I

    move-result v0

    const/16 v1, 0x32

    if-ne v0, v1, :cond_3

    .line 64
    new-instance v0, Lorg/thoughtcrime/securesms/mms/VideoSlide;

    invoke-direct {v0, p0, p1}, Lorg/thoughtcrime/securesms/mms/VideoSlide;-><init>(Landroid/content/Context;Lcom/b44t/messenger/DcMsg;)V

    goto :goto_2

    .line 65
    :cond_3
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getType()I

    move-result v0

    const/16 v1, 0x28

    if-eq v0, v1, :cond_8

    .line 66
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getType()I

    move-result v0

    const/16 v1, 0x29

    if-ne v0, v1, :cond_4

    goto :goto_1

    .line 68
    :cond_4
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getType()I

    move-result v0

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_5

    .line 69
    new-instance v0, Lorg/thoughtcrime/securesms/mms/VcardSlide;

    invoke-direct {v0, p0, p1}, Lorg/thoughtcrime/securesms/mms/VcardSlide;-><init>(Landroid/content/Context;Lcom/b44t/messenger/DcMsg;)V

    goto :goto_2

    .line 70
    :cond_5
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getType()I

    move-result v0

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_7

    .line 71
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getType()I

    move-result v0

    const/16 v1, 0x50

    if-ne v0, v1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    goto :goto_2

    .line 72
    :cond_7
    :goto_0
    new-instance v0, Lorg/thoughtcrime/securesms/mms/DocumentSlide;

    invoke-direct {v0, p0, p1}, Lorg/thoughtcrime/securesms/mms/DocumentSlide;-><init>(Landroid/content/Context;Lcom/b44t/messenger/DcMsg;)V

    goto :goto_2

    .line 67
    :cond_8
    :goto_1
    new-instance v0, Lorg/thoughtcrime/securesms/mms/AudioSlide;

    invoke-direct {v0, p0, p1}, Lorg/thoughtcrime/securesms/mms/AudioSlide;-><init>(Landroid/content/Context;Lcom/b44t/messenger/DcMsg;)V

    :goto_2
    return-object v0
.end method

.method public static isAudioType(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "audio/"

    .line 236
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isGif(Ljava/lang/String;)Z
    .locals 1

    .line 224
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v0, "image/gif"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isImageOrVideoType(Ljava/lang/String;)Z
    .locals 1

    .line 248
    invoke-static {p0}, Lorg/thoughtcrime/securesms/util/MediaUtil;->isImageType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lorg/thoughtcrime/securesms/util/MediaUtil;->isVideoType(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isImageType(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "image/"

    .line 232
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isImageVideoOrAudioType(Ljava/lang/String;)Z
    .locals 1

    .line 252
    invoke-static {p0}, Lorg/thoughtcrime/securesms/util/MediaUtil;->isImageOrVideoType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lorg/thoughtcrime/securesms/util/MediaUtil;->isAudioType(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isJpegType(Ljava/lang/String;)Z
    .locals 1

    .line 228
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v0, "image/jpeg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isOctetStream(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "application/octet-stream"

    .line 244
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isVideo(Ljava/lang/String;)Z
    .locals 1

    .line 220
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v0, "video/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isVideoType(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "video/"

    .line 240
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
