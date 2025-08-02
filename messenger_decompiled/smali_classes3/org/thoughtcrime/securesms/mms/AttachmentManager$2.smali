.class Lorg/thoughtcrime/securesms/mms/AttachmentManager$2;
.super Landroid/os/AsyncTask;
.source "AttachmentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/thoughtcrime/securesms/mms/AttachmentManager;->setMedia(Lorg/thoughtcrime/securesms/mms/GlideRequests;Landroid/net/Uri;Lcom/b44t/messenger/DcMsg;Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;III)Lcom/b44t/messenger/util/concurrent/ListenableFuture;
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
        "Lorg/thoughtcrime/securesms/mms/Slide;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/mms/AttachmentManager;

.field final synthetic val$chatId:I

.field final synthetic val$glideRequests:Lorg/thoughtcrime/securesms/mms/GlideRequests;

.field final synthetic val$height:I

.field final synthetic val$mediaType:Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;

.field final synthetic val$msg:Lcom/b44t/messenger/DcMsg;

.field final synthetic val$result:Lcom/b44t/messenger/util/concurrent/SettableFuture;

.field final synthetic val$uri:Landroid/net/Uri;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lorg/thoughtcrime/securesms/mms/AttachmentManager;Lorg/thoughtcrime/securesms/mms/GlideRequests;Lcom/b44t/messenger/DcMsg;Landroid/net/Uri;IIILcom/b44t/messenger/util/concurrent/SettableFuture;Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$2;->this$0:Lorg/thoughtcrime/securesms/mms/AttachmentManager;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$2;->val$glideRequests:Lorg/thoughtcrime/securesms/mms/GlideRequests;

    iput-object p3, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$2;->val$msg:Lcom/b44t/messenger/DcMsg;

    iput-object p4, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$2;->val$uri:Landroid/net/Uri;

    iput p5, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$2;->val$width:I

    iput p6, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$2;->val$height:I

    iput p7, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$2;->val$chatId:I

    iput-object p8, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$2;->val$result:Lcom/b44t/messenger/util/concurrent/SettableFuture;

    iput-object p9, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$2;->val$mediaType:Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private getContentResolverSlideInfo(Landroid/net/Uri;III)Lorg/thoughtcrime/securesms/mms/Slide;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v8, "remote slide with size "

    .line 343
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const/4 v11, 0x0

    .line 346
    :try_start_0
    iget-object v2, v1, Lorg/thoughtcrime/securesms/mms/AttachmentManager$2;->this$0:Lorg/thoughtcrime/securesms/mms/AttachmentManager;

    invoke-static {v2}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->access$600(Lorg/thoughtcrime/securesms/mms/AttachmentManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v12, :cond_3

    .line 348
    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "_display_name"

    .line 349
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v2, "_size"

    .line 350
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 351
    iget-object v2, v1, Lorg/thoughtcrime/securesms/mms/AttachmentManager$2;->this$0:Lorg/thoughtcrime/securesms/mms/AttachmentManager;

    invoke-static {v2}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->access$600(Lorg/thoughtcrime/securesms/mms/AttachmentManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v11, p2

    move/from16 v15, p3

    goto :goto_1

    .line 354
    :cond_1
    :goto_0
    iget-object v2, v1, Lorg/thoughtcrime/securesms/mms/AttachmentManager$2;->this$0:Lorg/thoughtcrime/securesms/mms/AttachmentManager;

    invoke-static {v2}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->access$600(Lorg/thoughtcrime/securesms/mms/AttachmentManager;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v6, v0}, Lorg/thoughtcrime/securesms/util/MediaUtil;->getDimensions(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Landroid/util/Pair;

    move-result-object v2

    .line 355
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 356
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v15, v2

    move v11, v3

    .line 359
    :goto_1
    invoke-static {}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->access$700()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " took "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v9

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-object v2, v1, Lorg/thoughtcrime/securesms/mms/AttachmentManager$2;->val$mediaType:Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;

    iget-object v3, v1, Lorg/thoughtcrime/securesms/mms/AttachmentManager$2;->this$0:Lorg/thoughtcrime/securesms/mms/AttachmentManager;

    invoke-static {v3}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->access$600(Lorg/thoughtcrime/securesms/mms/AttachmentManager;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v4, p1

    move-wide v7, v13

    move v9, v11

    move v10, v15

    move/from16 v11, p4

    invoke-virtual/range {v2 .. v11}, Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;->createSlide(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JIII)Lorg/thoughtcrime/securesms/mms/Slide;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v12, :cond_2

    .line 363
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v0

    :catchall_0
    move-exception v0

    move-object v11, v12

    goto :goto_2

    :cond_3
    if-eqz v12, :cond_4

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object v11

    :catchall_1
    move-exception v0

    :goto_2
    if-eqz v11, :cond_5

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 364
    :cond_5
    throw v0
.end method

.method private getManuallyCalculatedSlideInfo(Landroid/net/Uri;II)Lorg/thoughtcrime/securesms/mms/Slide;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v1, p0

    move-object v4, p1

    .line 370
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 375
    invoke-static {p1}, Lorg/thoughtcrime/securesms/mms/PartAuthority;->isLocalUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, v1, Lorg/thoughtcrime/securesms/mms/AttachmentManager$2;->this$0:Lorg/thoughtcrime/securesms/mms/AttachmentManager;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->access$600(Lorg/thoughtcrime/securesms/mms/AttachmentManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/thoughtcrime/securesms/mms/PartAuthority;->getAttachmentSize(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/Long;

    move-result-object v0

    .line 377
    iget-object v5, v1, Lorg/thoughtcrime/securesms/mms/AttachmentManager$2;->this$0:Lorg/thoughtcrime/securesms/mms/AttachmentManager;

    invoke-static {v5}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->access$600(Lorg/thoughtcrime/securesms/mms/AttachmentManager;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, p1}, Lorg/thoughtcrime/securesms/mms/PartAuthority;->getAttachmentFileName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    .line 378
    iget-object v6, v1, Lorg/thoughtcrime/securesms/mms/AttachmentManager$2;->this$0:Lorg/thoughtcrime/securesms/mms/AttachmentManager;

    invoke-static {v6}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->access$600(Lorg/thoughtcrime/securesms/mms/AttachmentManager;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, p1}, Lorg/thoughtcrime/securesms/mms/PartAuthority;->getAttachmentContentType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move-object v5, v0

    move-object v6, v5

    :goto_0
    if-nez v0, :cond_1

    .line 382
    iget-object v0, v1, Lorg/thoughtcrime/securesms/mms/AttachmentManager$2;->this$0:Lorg/thoughtcrime/securesms/mms/AttachmentManager;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->access$600(Lorg/thoughtcrime/securesms/mms/AttachmentManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/thoughtcrime/securesms/util/MediaUtil;->getMediaSize(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :cond_1
    move-object v7, v0

    if-nez v6, :cond_2

    .line 386
    iget-object v0, v1, Lorg/thoughtcrime/securesms/mms/AttachmentManager$2;->this$0:Lorg/thoughtcrime/securesms/mms/AttachmentManager;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->access$600(Lorg/thoughtcrime/securesms/mms/AttachmentManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/thoughtcrime/securesms/util/MediaUtil;->getMimeType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    :cond_2
    if-eqz p2, :cond_4

    if-nez p3, :cond_3

    goto :goto_1

    :cond_3
    move v9, p2

    move/from16 v10, p3

    goto :goto_2

    .line 390
    :cond_4
    :goto_1
    iget-object v0, v1, Lorg/thoughtcrime/securesms/mms/AttachmentManager$2;->this$0:Lorg/thoughtcrime/securesms/mms/AttachmentManager;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->access$600(Lorg/thoughtcrime/securesms/mms/AttachmentManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v6, p1}, Lorg/thoughtcrime/securesms/util/MediaUtil;->getDimensions(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Landroid/util/Pair;

    move-result-object v0

    .line 391
    iget-object v8, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 392
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v10, v0

    move v9, v8

    :goto_2
    if-nez v5, :cond_5

    .line 397
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 399
    invoke-static {}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->access$700()Ljava/lang/String;

    move-result-object v8

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Could not get file name from uri: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_5
    :goto_3
    invoke-static {}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->access$700()Ljava/lang/String;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v11, "local slide with size "

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " took "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v2

    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    iget-object v2, v1, Lorg/thoughtcrime/securesms/mms/AttachmentManager$2;->val$mediaType:Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;

    iget-object v0, v1, Lorg/thoughtcrime/securesms/mms/AttachmentManager$2;->this$0:Lorg/thoughtcrime/securesms/mms/AttachmentManager;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->access$600(Lorg/thoughtcrime/securesms/mms/AttachmentManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget v11, v1, Lorg/thoughtcrime/securesms/mms/AttachmentManager$2;->val$chatId:I

    move-object v4, p1

    invoke-virtual/range {v2 .. v11}, Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;->createSlide(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JIII)Lorg/thoughtcrime/securesms/mms/Slide;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 250
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/mms/AttachmentManager$2;->doInBackground([Ljava/lang/Void;)Lorg/thoughtcrime/securesms/mms/Slide;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lorg/thoughtcrime/securesms/mms/Slide;
    .locals 3

    .line 260
    :try_start_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$2;->val$msg:Lcom/b44t/messenger/DcMsg;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getType()I

    move-result p1

    const/16 v0, 0x50

    if-ne p1, v0, :cond_0

    .line 261
    new-instance p1, Lorg/thoughtcrime/securesms/mms/DocumentSlide;

    iget-object v0, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$2;->this$0:Lorg/thoughtcrime/securesms/mms/AttachmentManager;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->access$600(Lorg/thoughtcrime/securesms/mms/AttachmentManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$2;->val$msg:Lcom/b44t/messenger/DcMsg;

    invoke-direct {p1, v0, v1}, Lorg/thoughtcrime/securesms/mms/DocumentSlide;-><init>(Landroid/content/Context;Lcom/b44t/messenger/DcMsg;)V

    return-object p1

    .line 263
    :cond_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$2;->val$uri:Landroid/net/Uri;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/mms/PartAuthority;->isLocalUri(Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 264
    iget-object p1, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$2;->val$uri:Landroid/net/Uri;

    iget v0, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$2;->val$width:I

    iget v1, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$2;->val$height:I

    invoke-direct {p0, p1, v0, v1}, Lorg/thoughtcrime/securesms/mms/AttachmentManager$2;->getManuallyCalculatedSlideInfo(Landroid/net/Uri;II)Lorg/thoughtcrime/securesms/mms/Slide;

    move-result-object p1

    return-object p1

    .line 266
    :cond_1
    iget-object p1, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$2;->val$uri:Landroid/net/Uri;

    iget v0, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$2;->val$width:I

    iget v1, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$2;->val$height:I

    iget v2, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$2;->val$chatId:I

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/thoughtcrime/securesms/mms/AttachmentManager$2;->getContentResolverSlideInfo(Landroid/net/Uri;III)Lorg/thoughtcrime/securesms/mms/Slide;

    move-result-object p1

    if-nez p1, :cond_2

    .line 268
    iget-object p1, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$2;->val$uri:Landroid/net/Uri;

    iget v0, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$2;->val$width:I

    iget v1, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$2;->val$height:I

    invoke-direct {p0, p1, v0, v1}, Lorg/thoughtcrime/securesms/mms/AttachmentManager$2;->getManuallyCalculatedSlideInfo(Landroid/net/Uri;II)Lorg/thoughtcrime/securesms/mms/Slide;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object p1

    :catch_0
    move-exception p1

    .line 272
    invoke-static {}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->access$700()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method synthetic lambda$onPostExecute$0$org-thoughtcrime-securesms-mms-AttachmentManager$2(Lcom/b44t/messenger/DcMsg;Landroid/view/View;Lorg/thoughtcrime/securesms/mms/Slide;)V
    .locals 0

    .line 323
    iget-object p2, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$2;->this$0:Lorg/thoughtcrime/securesms/mms/AttachmentManager;

    invoke-static {p2}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->access$600(Lorg/thoughtcrime/securesms/mms/AttachmentManager;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lorg/thoughtcrime/securesms/WebxdcActivity;->openWebxdcActivity(Landroid/content/Context;Lcom/b44t/messenger/DcMsg;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 250
    check-cast p1, Lorg/thoughtcrime/securesms/mms/Slide;

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/mms/AttachmentManager$2;->onPostExecute(Lorg/thoughtcrime/securesms/mms/Slide;)V

    return-void
.end method

.method protected onPostExecute(Lorg/thoughtcrime/securesms/mms/Slide;)V
    .locals 8

    const/4 v0, 0x0

    .line 281
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    if-nez p1, :cond_0

    .line 280
    iget-object p1, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$2;->this$0:Lorg/thoughtcrime/securesms/mms/AttachmentManager;

    invoke-static {p1, v0}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->access$400(Lorg/thoughtcrime/securesms/mms/AttachmentManager;Z)V

    .line 281
    iget-object p1, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$2;->val$result:Lcom/b44t/messenger/util/concurrent/SettableFuture;

    invoke-virtual {p1, v1}, Lcom/b44t/messenger/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 282
    :cond_0
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/mms/Slide;->getFileSize()J

    move-result-wide v2

    const-wide/32 v4, 0x40000000

    const/4 v6, 0x1

    cmp-long v7, v2, v4

    if-lez v7, :cond_1

    .line 285
    iget-object v2, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$2;->this$0:Lorg/thoughtcrime/securesms/mms/AttachmentManager;

    invoke-static {v2, v0}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->access$400(Lorg/thoughtcrime/securesms/mms/AttachmentManager;Z)V

    .line 286
    invoke-static {}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->access$700()Ljava/lang/String;

    move-result-object v0

    const-string v2, "File too large."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object p1, p1, Lorg/thoughtcrime/securesms/mms/Slide;->context:Landroid/content/Context;

    invoke-static {p1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 288
    iget-object p1, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$2;->val$result:Lcom/b44t/messenger/util/concurrent/SettableFuture;

    invoke-virtual {p1, v1}, Lcom/b44t/messenger/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 290
    :cond_1
    iget-object v1, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$2;->this$0:Lorg/thoughtcrime/securesms/mms/AttachmentManager;

    invoke-static {v1, p1}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->access$800(Lorg/thoughtcrime/securesms/mms/AttachmentManager;Lorg/thoughtcrime/securesms/mms/Slide;)V

    .line 291
    iget-object v1, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$2;->this$0:Lorg/thoughtcrime/securesms/mms/AttachmentManager;

    invoke-static {v1, v6}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->access$400(Lorg/thoughtcrime/securesms/mms/AttachmentManager;Z)V

    .line 293
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/mms/Slide;->hasAudio()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 309
    iget-object v1, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$2;->this$0:Lorg/thoughtcrime/securesms/mms/AttachmentManager;

    invoke-static {v1}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->access$600(Lorg/thoughtcrime/securesms/mms/AttachmentManager;)Landroid/content/Context;

    move-result-object v1

    check-cast p1, Lorg/thoughtcrime/securesms/mms/AudioSlide;

    new-instance v2, Lorg/thoughtcrime/securesms/mms/AttachmentManager$2$1SetDurationListener;

    invoke-direct {v2, p0}, Lorg/thoughtcrime/securesms/mms/AttachmentManager$2$1SetDurationListener;-><init>(Lorg/thoughtcrime/securesms/mms/AttachmentManager$2;)V

    invoke-static {v1, p1, v2}, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->createFor(Landroid/content/Context;Lorg/thoughtcrime/securesms/mms/AudioSlide;Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer$Listener;)Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;

    move-result-object v1

    .line 310
    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/audio/AudioSlidePlayer;->requestDuration()V

    .line 312
    iget-object v1, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$2;->this$0:Lorg/thoughtcrime/securesms/mms/AttachmentManager;

    invoke-static {v1}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->access$1000(Lorg/thoughtcrime/securesms/mms/AttachmentManager;)Lorg/thoughtcrime/securesms/components/AudioView;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lorg/thoughtcrime/securesms/components/AudioView;->setAudio(Lorg/thoughtcrime/securesms/mms/AudioSlide;I)V

    .line 313
    iget-object p1, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$2;->this$0:Lorg/thoughtcrime/securesms/mms/AttachmentManager;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->access$900(Lorg/thoughtcrime/securesms/mms/AttachmentManager;)Lorg/thoughtcrime/securesms/components/RemovableEditableMediaView;

    move-result-object p1

    iget-object v1, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$2;->this$0:Lorg/thoughtcrime/securesms/mms/AttachmentManager;

    invoke-static {v1}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->access$1000(Lorg/thoughtcrime/securesms/mms/AttachmentManager;)Lorg/thoughtcrime/securesms/components/AudioView;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lorg/thoughtcrime/securesms/components/RemovableEditableMediaView;->display(Landroid/view/View;Z)V

    .line 314
    iget-object p1, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$2;->val$result:Lcom/b44t/messenger/util/concurrent/SettableFuture;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/b44t/messenger/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 315
    :cond_2
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/mms/Slide;->isVcard()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 316
    iget-object v1, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$2;->this$0:Lorg/thoughtcrime/securesms/mms/AttachmentManager;

    invoke-static {v1}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->access$1100(Lorg/thoughtcrime/securesms/mms/AttachmentManager;)Lorg/thoughtcrime/securesms/components/VcardView;

    move-result-object v1

    iget-object v2, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$2;->val$glideRequests:Lorg/thoughtcrime/securesms/mms/GlideRequests;

    check-cast p1, Lorg/thoughtcrime/securesms/mms/VcardSlide;

    iget-object v3, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$2;->this$0:Lorg/thoughtcrime/securesms/mms/AttachmentManager;

    invoke-static {v3}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->access$600(Lorg/thoughtcrime/securesms/mms/AttachmentManager;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getRpc(Landroid/content/Context;)Lcom/b44t/messenger/rpc/Rpc;

    move-result-object v3

    invoke-virtual {v1, v2, p1, v3}, Lorg/thoughtcrime/securesms/components/VcardView;->setVcard(Lorg/thoughtcrime/securesms/mms/GlideRequests;Lorg/thoughtcrime/securesms/mms/VcardSlide;Lcom/b44t/messenger/rpc/Rpc;)V

    .line 317
    iget-object p1, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$2;->this$0:Lorg/thoughtcrime/securesms/mms/AttachmentManager;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->access$900(Lorg/thoughtcrime/securesms/mms/AttachmentManager;)Lorg/thoughtcrime/securesms/components/RemovableEditableMediaView;

    move-result-object p1

    iget-object v1, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$2;->this$0:Lorg/thoughtcrime/securesms/mms/AttachmentManager;

    invoke-static {v1}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->access$1100(Lorg/thoughtcrime/securesms/mms/AttachmentManager;)Lorg/thoughtcrime/securesms/components/VcardView;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lorg/thoughtcrime/securesms/components/RemovableEditableMediaView;->display(Landroid/view/View;Z)V

    goto/16 :goto_2

    .line 318
    :cond_3
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/mms/Slide;->hasDocument()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 319
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/mms/Slide;->isWebxdcDocument()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 320
    iget-object v1, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$2;->val$msg:Lcom/b44t/messenger/DcMsg;

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$2;->this$0:Lorg/thoughtcrime/securesms/mms/AttachmentManager;

    invoke-static {v1}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->access$600(Lorg/thoughtcrime/securesms/mms/AttachmentManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object v1

    iget p1, p1, Lorg/thoughtcrime/securesms/mms/Slide;->dcMsgId:I

    invoke-virtual {v1, p1}, Lcom/b44t/messenger/DcContext;->getMsg(I)Lcom/b44t/messenger/DcMsg;

    move-result-object v1

    .line 321
    :goto_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$2;->this$0:Lorg/thoughtcrime/securesms/mms/AttachmentManager;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->access$1200(Lorg/thoughtcrime/securesms/mms/AttachmentManager;)Lorg/thoughtcrime/securesms/components/WebxdcView;

    move-result-object p1

    iget-object v2, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$2;->this$0:Lorg/thoughtcrime/securesms/mms/AttachmentManager;

    invoke-static {v2}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->access$600(Lorg/thoughtcrime/securesms/mms/AttachmentManager;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f120430

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/thoughtcrime/securesms/components/WebxdcView;->setWebxdc(Lcom/b44t/messenger/DcMsg;Ljava/lang/String;)V

    .line 322
    iget-object p1, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$2;->this$0:Lorg/thoughtcrime/securesms/mms/AttachmentManager;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->access$1200(Lorg/thoughtcrime/securesms/mms/AttachmentManager;)Lorg/thoughtcrime/securesms/components/WebxdcView;

    move-result-object p1

    new-instance v2, Lorg/thoughtcrime/securesms/mms/AttachmentManager$2$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1}, Lorg/thoughtcrime/securesms/mms/AttachmentManager$2$$ExternalSyntheticLambda0;-><init>(Lorg/thoughtcrime/securesms/mms/AttachmentManager$2;Lcom/b44t/messenger/DcMsg;)V

    invoke-virtual {p1, v2}, Lorg/thoughtcrime/securesms/components/WebxdcView;->setWebxdcClickListener(Lorg/thoughtcrime/securesms/mms/SlideClickListener;)V

    .line 325
    iget-object p1, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$2;->this$0:Lorg/thoughtcrime/securesms/mms/AttachmentManager;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->access$900(Lorg/thoughtcrime/securesms/mms/AttachmentManager;)Lorg/thoughtcrime/securesms/components/RemovableEditableMediaView;

    move-result-object p1

    iget-object v1, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$2;->this$0:Lorg/thoughtcrime/securesms/mms/AttachmentManager;

    invoke-static {v1}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->access$1200(Lorg/thoughtcrime/securesms/mms/AttachmentManager;)Lorg/thoughtcrime/securesms/components/WebxdcView;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lorg/thoughtcrime/securesms/components/RemovableEditableMediaView;->display(Landroid/view/View;Z)V

    goto :goto_1

    .line 327
    :cond_5
    iget-object v1, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$2;->this$0:Lorg/thoughtcrime/securesms/mms/AttachmentManager;

    invoke-static {v1}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->access$1300(Lorg/thoughtcrime/securesms/mms/AttachmentManager;)Lorg/thoughtcrime/securesms/components/DocumentView;

    move-result-object v1

    check-cast p1, Lorg/thoughtcrime/securesms/mms/DocumentSlide;

    invoke-virtual {v1, p1}, Lorg/thoughtcrime/securesms/components/DocumentView;->setDocument(Lorg/thoughtcrime/securesms/mms/DocumentSlide;)V

    .line 328
    iget-object p1, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$2;->this$0:Lorg/thoughtcrime/securesms/mms/AttachmentManager;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->access$900(Lorg/thoughtcrime/securesms/mms/AttachmentManager;)Lorg/thoughtcrime/securesms/components/RemovableEditableMediaView;

    move-result-object p1

    iget-object v1, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$2;->this$0:Lorg/thoughtcrime/securesms/mms/AttachmentManager;

    invoke-static {v1}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->access$1300(Lorg/thoughtcrime/securesms/mms/AttachmentManager;)Lorg/thoughtcrime/securesms/components/DocumentView;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lorg/thoughtcrime/securesms/components/RemovableEditableMediaView;->display(Landroid/view/View;Z)V

    .line 330
    :goto_1
    iget-object p1, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$2;->val$result:Lcom/b44t/messenger/util/concurrent/SettableFuture;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/b44t/messenger/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    goto :goto_2

    .line 332
    :cond_6
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/mms/Slide;->asAttachment()Lorg/thoughtcrime/securesms/attachments/Attachment;

    move-result-object v1

    .line 333
    iget-object v2, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$2;->val$result:Lcom/b44t/messenger/util/concurrent/SettableFuture;

    iget-object v3, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$2;->this$0:Lorg/thoughtcrime/securesms/mms/AttachmentManager;

    invoke-static {v3}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->access$300(Lorg/thoughtcrime/securesms/mms/AttachmentManager;)Lorg/thoughtcrime/securesms/components/ThumbnailView;

    move-result-object v3

    iget-object v4, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$2;->val$glideRequests:Lorg/thoughtcrime/securesms/mms/GlideRequests;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/attachments/Attachment;->getWidth()I

    move-result v5

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/attachments/Attachment;->getHeight()I

    move-result v1

    invoke-virtual {v3, v4, p1, v5, v1}, Lorg/thoughtcrime/securesms/components/ThumbnailView;->setImageResource(Lorg/thoughtcrime/securesms/mms/GlideRequests;Lorg/thoughtcrime/securesms/mms/Slide;II)Lcom/b44t/messenger/util/concurrent/ListenableFuture;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/b44t/messenger/util/concurrent/SettableFuture;->deferTo(Lcom/b44t/messenger/util/concurrent/ListenableFuture;)V

    .line 334
    iget-object p1, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$2;->this$0:Lorg/thoughtcrime/securesms/mms/AttachmentManager;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->access$900(Lorg/thoughtcrime/securesms/mms/AttachmentManager;)Lorg/thoughtcrime/securesms/components/RemovableEditableMediaView;

    move-result-object p1

    iget-object v1, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$2;->this$0:Lorg/thoughtcrime/securesms/mms/AttachmentManager;

    invoke-static {v1}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->access$300(Lorg/thoughtcrime/securesms/mms/AttachmentManager;)Lorg/thoughtcrime/securesms/components/ThumbnailView;

    move-result-object v1

    iget-object v2, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$2;->val$mediaType:Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;

    sget-object v3, Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;->IMAGE:Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;

    if-ne v2, v3, :cond_7

    const/4 v0, 0x1

    :cond_7
    invoke-virtual {p1, v1, v0}, Lorg/thoughtcrime/securesms/components/RemovableEditableMediaView;->display(Landroid/view/View;Z)V

    .line 337
    :goto_2
    iget-object p1, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$2;->this$0:Lorg/thoughtcrime/securesms/mms/AttachmentManager;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->access$500(Lorg/thoughtcrime/securesms/mms/AttachmentManager;)Lorg/thoughtcrime/securesms/mms/AttachmentManager$AttachmentListener;

    move-result-object p1

    invoke-interface {p1}, Lorg/thoughtcrime/securesms/mms/AttachmentManager$AttachmentListener;->onAttachmentChanged()V

    :goto_3
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 253
    iget-object v0, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$2;->this$0:Lorg/thoughtcrime/securesms/mms/AttachmentManager;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->access$300(Lorg/thoughtcrime/securesms/mms/AttachmentManager;)Lorg/thoughtcrime/securesms/components/ThumbnailView;

    move-result-object v0

    iget-object v1, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$2;->val$glideRequests:Lorg/thoughtcrime/securesms/mms/GlideRequests;

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/components/ThumbnailView;->clear(Lorg/thoughtcrime/securesms/mms/GlideRequests;)V

    .line 254
    iget-object v0, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$2;->this$0:Lorg/thoughtcrime/securesms/mms/AttachmentManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->access$400(Lorg/thoughtcrime/securesms/mms/AttachmentManager;Z)V

    return-void
.end method
