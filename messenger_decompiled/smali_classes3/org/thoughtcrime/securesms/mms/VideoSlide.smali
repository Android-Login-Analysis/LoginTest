.class public Lorg/thoughtcrime/securesms/mms/VideoSlide;
.super Lorg/thoughtcrime/securesms/mms/Slide;
.source "VideoSlide.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;J)V
    .locals 0

    .line 42
    invoke-static {p1, p2, p3, p4}, Lorg/thoughtcrime/securesms/mms/VideoSlide;->constructVideoAttachment(Landroid/content/Context;Landroid/net/Uri;J)Lorg/thoughtcrime/securesms/attachments/Attachment;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/thoughtcrime/securesms/mms/Slide;-><init>(Landroid/content/Context;Lorg/thoughtcrime/securesms/attachments/Attachment;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/b44t/messenger/DcMsg;)V
    .locals 1

    .line 46
    new-instance v0, Lorg/thoughtcrime/securesms/attachments/DcAttachment;

    invoke-direct {v0, p2}, Lorg/thoughtcrime/securesms/attachments/DcAttachment;-><init>(Lcom/b44t/messenger/DcMsg;)V

    invoke-direct {p0, p1, v0}, Lorg/thoughtcrime/securesms/mms/Slide;-><init>(Landroid/content/Context;Lorg/thoughtcrime/securesms/attachments/Attachment;)V

    .line 47
    invoke-virtual {p2}, Lcom/b44t/messenger/DcMsg;->getId()I

    move-result p1

    iput p1, p0, Lorg/thoughtcrime/securesms/mms/VideoSlide;->dcMsgId:I

    return-void
.end method

.method private static constructVideoAttachment(Landroid/content/Context;Landroid/net/Uri;J)Lorg/thoughtcrime/securesms/attachments/Attachment;
    .locals 12

    .line 35
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object v1

    const-string v2, "temp-preview.jpg"

    invoke-static {v1, v2}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getBlobdirFile(Lcom/b44t/messenger/DcContext;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v9

    .line 36
    new-instance v0, Lorg/thoughtcrime/securesms/util/MediaUtil$ThumbnailSize;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lorg/thoughtcrime/securesms/util/MediaUtil$ThumbnailSize;-><init>(II)V

    .line 37
    invoke-static {p0, p1, v9, v0}, Lorg/thoughtcrime/securesms/util/MediaUtil;->createVideoThumbnailIfNeeded(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Lorg/thoughtcrime/securesms/util/MediaUtil$ThumbnailSize;)Z

    const-string v4, "video/*"

    .line 38
    iget v7, v0, Lorg/thoughtcrime/securesms/util/MediaUtil$ThumbnailSize;->width:I

    iget v8, v0, Lorg/thoughtcrime/securesms/util/MediaUtil$ThumbnailSize;->height:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v2, p0

    move-object v3, p1

    move-wide v5, p2

    invoke-static/range {v2 .. v11}, Lorg/thoughtcrime/securesms/mms/VideoSlide;->constructAttachmentFromUri(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;JIILandroid/net/Uri;Ljava/lang/String;Z)Lorg/thoughtcrime/securesms/attachments/Attachment;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public hasImage()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public hasPlayOverlay()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public hasVideo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
