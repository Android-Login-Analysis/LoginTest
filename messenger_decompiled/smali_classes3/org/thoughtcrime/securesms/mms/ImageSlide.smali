.class public Lorg/thoughtcrime/securesms/mms/ImageSlide;
.super Lorg/thoughtcrime/securesms/mms/Slide;
.source "ImageSlide.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;JII)V
    .locals 10

    const-string v2, "image/jpeg"

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p1

    move-object v1, p2

    move-wide v3, p3

    move v5, p5

    move/from16 v6, p6

    move-object v7, p2

    .line 43
    invoke-static/range {v0 .. v9}, Lorg/thoughtcrime/securesms/mms/ImageSlide;->constructAttachmentFromUri(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;JIILandroid/net/Uri;Ljava/lang/String;Z)Lorg/thoughtcrime/securesms/attachments/Attachment;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    invoke-direct {p0, p1, v0}, Lorg/thoughtcrime/securesms/mms/Slide;-><init>(Landroid/content/Context;Lorg/thoughtcrime/securesms/attachments/Attachment;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/b44t/messenger/DcMsg;)V
    .locals 1

    .line 34
    new-instance v0, Lorg/thoughtcrime/securesms/attachments/DcAttachment;

    invoke-direct {v0, p2}, Lorg/thoughtcrime/securesms/attachments/DcAttachment;-><init>(Lcom/b44t/messenger/DcMsg;)V

    invoke-direct {p0, p1, v0}, Lorg/thoughtcrime/securesms/mms/Slide;-><init>(Landroid/content/Context;Lorg/thoughtcrime/securesms/attachments/Attachment;)V

    .line 35
    invoke-virtual {p2}, Lcom/b44t/messenger/DcMsg;->getId()I

    move-result p1

    iput p1, p0, Lorg/thoughtcrime/securesms/mms/ImageSlide;->dcMsgId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/thoughtcrime/securesms/attachments/Attachment;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lorg/thoughtcrime/securesms/mms/Slide;-><init>(Landroid/content/Context;Lorg/thoughtcrime/securesms/attachments/Attachment;)V

    return-void
.end method


# virtual methods
.method public getThumbnailUri()Landroid/net/Uri;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/mms/ImageSlide;->getUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public hasImage()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
