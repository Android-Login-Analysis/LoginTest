.class public Lorg/thoughtcrime/securesms/mms/StickerSlide;
.super Lorg/thoughtcrime/securesms/mms/Slide;
.source "StickerSlide.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/b44t/messenger/DcMsg;)V
    .locals 1

    .line 15
    new-instance v0, Lorg/thoughtcrime/securesms/attachments/DcAttachment;

    invoke-direct {v0, p2}, Lorg/thoughtcrime/securesms/attachments/DcAttachment;-><init>(Lcom/b44t/messenger/DcMsg;)V

    invoke-direct {p0, p1, v0}, Lorg/thoughtcrime/securesms/mms/Slide;-><init>(Landroid/content/Context;Lorg/thoughtcrime/securesms/attachments/Attachment;)V

    return-void
.end method


# virtual methods
.method public hasSticker()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
