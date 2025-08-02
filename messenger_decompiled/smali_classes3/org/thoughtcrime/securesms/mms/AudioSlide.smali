.class public Lorg/thoughtcrime/securesms/mms/AudioSlide;
.super Lorg/thoughtcrime/securesms/mms/Slide;
.source "AudioSlide.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;JLjava/lang/String;Z)V
    .locals 13

    .line 45
    new-instance v12, Lorg/thoughtcrime/securesms/attachments/UriAttachment;

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, v12

    move-object v1, p2

    move-object/from16 v3, p5

    move-wide/from16 v5, p3

    move/from16 v11, p6

    invoke-direct/range {v0 .. v11}, Lorg/thoughtcrime/securesms/attachments/UriAttachment;-><init>(Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;IJIILjava/lang/String;Ljava/lang/String;Z)V

    move-object v0, p0

    move-object v1, p1

    invoke-direct {p0, p1, v12}, Lorg/thoughtcrime/securesms/mms/Slide;-><init>(Landroid/content/Context;Lorg/thoughtcrime/securesms/attachments/Attachment;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;JZLjava/lang/String;)V
    .locals 10

    const-string v2, "audio/*"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 41
    invoke-static/range {p6 .. p6}, Lorg/thoughtcrime/securesms/util/StorageUtil;->getCleanFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v0, p1

    move-object v1, p2

    move-wide v3, p3

    move v9, p5

    invoke-static/range {v0 .. v9}, Lorg/thoughtcrime/securesms/mms/AudioSlide;->constructAttachmentFromUri(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;JIILandroid/net/Uri;Ljava/lang/String;Z)Lorg/thoughtcrime/securesms/attachments/Attachment;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    invoke-direct {p0, p1, v0}, Lorg/thoughtcrime/securesms/mms/Slide;-><init>(Landroid/content/Context;Lorg/thoughtcrime/securesms/attachments/Attachment;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/b44t/messenger/DcMsg;)V
    .locals 1

    .line 36
    new-instance v0, Lorg/thoughtcrime/securesms/attachments/DcAttachment;

    invoke-direct {v0, p2}, Lorg/thoughtcrime/securesms/attachments/DcAttachment;-><init>(Lcom/b44t/messenger/DcMsg;)V

    invoke-direct {p0, p1, v0}, Lorg/thoughtcrime/securesms/mms/Slide;-><init>(Landroid/content/Context;Lorg/thoughtcrime/securesms/attachments/Attachment;)V

    .line 37
    invoke-virtual {p2}, Lcom/b44t/messenger/DcMsg;->getId()I

    move-result p1

    iput p1, p0, Lorg/thoughtcrime/securesms/mms/AudioSlide;->dcMsgId:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 51
    :cond_0
    instance-of v1, p1, Lorg/thoughtcrime/securesms/mms/AudioSlide;

    if-nez v1, :cond_1

    return v0

    .line 52
    :cond_1
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/mms/AudioSlide;->getDcMsgId()I

    move-result v1

    check-cast p1, Lorg/thoughtcrime/securesms/mms/AudioSlide;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/mms/AudioSlide;->getDcMsgId()I

    move-result p1

    if-ne v1, p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public getThumbnailUri()Landroid/net/Uri;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public hasAudio()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public hasImage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
