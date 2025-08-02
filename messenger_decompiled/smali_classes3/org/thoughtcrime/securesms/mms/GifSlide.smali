.class public Lorg/thoughtcrime/securesms/mms/GifSlide;
.super Lorg/thoughtcrime/securesms/mms/ImageSlide;
.source "GifSlide.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;JII)V
    .locals 10

    const-string v2, "image/gif"

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p1

    move-object v1, p2

    move-wide v3, p3

    move v5, p5

    move/from16 v6, p6

    move-object v7, p2

    .line 18
    invoke-static/range {v0 .. v9}, Lorg/thoughtcrime/securesms/mms/GifSlide;->constructAttachmentFromUri(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;JIILandroid/net/Uri;Ljava/lang/String;Z)Lorg/thoughtcrime/securesms/attachments/Attachment;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    invoke-direct {p0, p1, v0}, Lorg/thoughtcrime/securesms/mms/ImageSlide;-><init>(Landroid/content/Context;Lorg/thoughtcrime/securesms/attachments/Attachment;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/b44t/messenger/DcMsg;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Lorg/thoughtcrime/securesms/mms/ImageSlide;-><init>(Landroid/content/Context;Lcom/b44t/messenger/DcMsg;)V

    return-void
.end method


# virtual methods
.method public getThumbnailUri()Landroid/net/Uri;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/mms/GifSlide;->getUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
