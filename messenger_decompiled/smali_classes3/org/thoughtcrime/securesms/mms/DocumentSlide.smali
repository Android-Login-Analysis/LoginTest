.class public Lorg/thoughtcrime/securesms/mms/DocumentSlide;
.super Lorg/thoughtcrime/securesms/mms/Slide;
.source "DocumentSlide.java"


# instance fields
.field private dcMsgType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;)V
    .locals 11

    move-object v0, p0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 27
    invoke-static/range {p6 .. p6}, Lorg/thoughtcrime/securesms/util/StorageUtil;->getCleanFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v8, p2

    invoke-static/range {v1 .. v10}, Lorg/thoughtcrime/securesms/mms/DocumentSlide;->constructAttachmentFromUri(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;JIILandroid/net/Uri;Ljava/lang/String;Z)Lorg/thoughtcrime/securesms/attachments/Attachment;

    move-result-object v1

    move-object v2, p1

    invoke-direct {p0, p1, v1}, Lorg/thoughtcrime/securesms/mms/Slide;-><init>(Landroid/content/Context;Lorg/thoughtcrime/securesms/attachments/Attachment;)V

    const/4 v1, 0x0

    .line 15
    iput v1, v0, Lorg/thoughtcrime/securesms/mms/DocumentSlide;->dcMsgType:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/b44t/messenger/DcMsg;)V
    .locals 1

    .line 18
    new-instance v0, Lorg/thoughtcrime/securesms/attachments/DcAttachment;

    invoke-direct {v0, p2}, Lorg/thoughtcrime/securesms/attachments/DcAttachment;-><init>(Lcom/b44t/messenger/DcMsg;)V

    invoke-direct {p0, p1, v0}, Lorg/thoughtcrime/securesms/mms/Slide;-><init>(Landroid/content/Context;Lorg/thoughtcrime/securesms/attachments/Attachment;)V

    const/4 p1, 0x0

    .line 15
    iput p1, p0, Lorg/thoughtcrime/securesms/mms/DocumentSlide;->dcMsgType:I

    .line 19
    invoke-virtual {p2}, Lcom/b44t/messenger/DcMsg;->getId()I

    move-result p1

    iput p1, p0, Lorg/thoughtcrime/securesms/mms/DocumentSlide;->dcMsgId:I

    .line 20
    invoke-virtual {p2}, Lcom/b44t/messenger/DcMsg;->getType()I

    move-result p1

    iput p1, p0, Lorg/thoughtcrime/securesms/mms/DocumentSlide;->dcMsgType:I

    return-void
.end method


# virtual methods
.method public hasDocument()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isWebxdcDocument()Z
    .locals 2

    .line 37
    iget v0, p0, Lorg/thoughtcrime/securesms/mms/DocumentSlide;->dcMsgType:I

    const/16 v1, 0x50

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
