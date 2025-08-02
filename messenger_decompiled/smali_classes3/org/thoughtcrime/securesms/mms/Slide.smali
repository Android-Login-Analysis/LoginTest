.class public abstract Lorg/thoughtcrime/securesms/mms/Slide;
.super Ljava/lang/Object;
.source "Slide.java"


# instance fields
.field protected final attachment:Lorg/thoughtcrime/securesms/attachments/Attachment;

.field protected final context:Landroid/content/Context;

.field protected dcMsgId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/thoughtcrime/securesms/attachments/Attachment;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/thoughtcrime/securesms/mms/Slide;->context:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lorg/thoughtcrime/securesms/mms/Slide;->attachment:Lorg/thoughtcrime/securesms/attachments/Attachment;

    return-void
.end method

.method protected static constructAttachmentFromUri(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;JIILandroid/net/Uri;Ljava/lang/String;Z)Lorg/thoughtcrime/securesms/attachments/Attachment;
    .locals 13

    .line 132
    :try_start_0
    invoke-static {p0, p1}, Lorg/thoughtcrime/securesms/util/MediaUtil;->getMimeType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/thoughtcrime/securesms/util/guava/Optional;->fromNullable(Ljava/lang/Object;)Lorg/thoughtcrime/securesms/util/guava/Optional;

    move-result-object v0

    move-object v1, p2

    invoke-virtual {v0, p2}, Lorg/thoughtcrime/securesms/util/guava/Optional;->or(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    const-string v0, "SHA1PRNG"

    .line 133
    invoke-static {v0}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    .line 134
    new-instance v0, Lorg/thoughtcrime/securesms/attachments/UriAttachment;

    const/4 v5, 0x1

    move-object v1, v0

    move-object v2, p1

    move-object/from16 v3, p7

    move-wide/from16 v6, p3

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p8

    move/from16 v12, p9

    invoke-direct/range {v1 .. v12}, Lorg/thoughtcrime/securesms/attachments/UriAttachment;-><init>(Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;IJIILjava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 145
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method


# virtual methods
.method public asAttachment()Lorg/thoughtcrime/securesms/attachments/Attachment;
    .locals 1

    .line 110
    iget-object v0, p0, Lorg/thoughtcrime/securesms/mms/Slide;->attachment:Lorg/thoughtcrime/securesms/attachments/Attachment;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 152
    :cond_0
    instance-of v1, p1, Lorg/thoughtcrime/securesms/mms/Slide;

    if-nez v1, :cond_1

    return v0

    .line 154
    :cond_1
    check-cast p1, Lorg/thoughtcrime/securesms/mms/Slide;

    .line 156
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/mms/Slide;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/mms/Slide;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/thoughtcrime/securesms/util/Util;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 157
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/mms/Slide;->hasAudio()Z

    move-result v1

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/mms/Slide;->hasAudio()Z

    move-result v2

    if-ne v1, v2, :cond_2

    .line 158
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/mms/Slide;->hasImage()Z

    move-result v1

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/mms/Slide;->hasImage()Z

    move-result v2

    if-ne v1, v2, :cond_2

    .line 159
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/mms/Slide;->hasVideo()Z

    move-result v1

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/mms/Slide;->hasVideo()Z

    move-result v2

    if-ne v1, v2, :cond_2

    .line 160
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/mms/Slide;->getTransferState()J

    move-result-wide v1

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/mms/Slide;->getTransferState()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-nez v5, :cond_2

    .line 161
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/mms/Slide;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/mms/Slide;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/thoughtcrime/securesms/util/Util;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 162
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/mms/Slide;->getThumbnailUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/mms/Slide;->getThumbnailUri()Landroid/net/Uri;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/thoughtcrime/securesms/util/Util;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/thoughtcrime/securesms/mms/Slide;->attachment:Lorg/thoughtcrime/securesms/attachments/Attachment;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/attachments/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDcMsgId()I
    .locals 1

    .line 48
    iget v0, p0, Lorg/thoughtcrime/securesms/mms/Slide;->dcMsgId:I

    return v0
.end method

.method public getFastPreflightId()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/thoughtcrime/securesms/mms/Slide;->attachment:Lorg/thoughtcrime/securesms/attachments/Attachment;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/attachments/Attachment;->getFastPreflightId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileName()Lorg/thoughtcrime/securesms/util/guava/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/thoughtcrime/securesms/util/guava/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lorg/thoughtcrime/securesms/mms/Slide;->attachment:Lorg/thoughtcrime/securesms/attachments/Attachment;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/attachments/Attachment;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/thoughtcrime/securesms/util/guava/Optional;->fromNullable(Ljava/lang/Object;)Lorg/thoughtcrime/securesms/util/guava/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    .line 76
    iget-object v0, p0, Lorg/thoughtcrime/securesms/mms/Slide;->attachment:Lorg/thoughtcrime/securesms/attachments/Attachment;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/attachments/Attachment;->getSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getThumbnailUri()Landroid/net/Uri;
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/thoughtcrime/securesms/mms/Slide;->attachment:Lorg/thoughtcrime/securesms/attachments/Attachment;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/attachments/Attachment;->getThumbnailUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getTransferState()J
    .locals 2

    .line 114
    iget-object v0, p0, Lorg/thoughtcrime/securesms/mms/Slide;->attachment:Lorg/thoughtcrime/securesms/attachments/Attachment;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/attachments/Attachment;->getTransferState()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/thoughtcrime/securesms/mms/Slide;->attachment:Lorg/thoughtcrime/securesms/attachments/Attachment;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/attachments/Attachment;->getDataUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public hasAudio()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasDocument()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasImage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasLocation()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasPlayOverlay()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasSticker()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasVideo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 167
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/mms/Slide;->getContentType()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/mms/Slide;->hasAudio()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/mms/Slide;->hasImage()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 168
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/mms/Slide;->hasVideo()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/4 v1, 0x4

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/mms/Slide;->getUri()Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/mms/Slide;->getThumbnailUri()Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/mms/Slide;->getTransferState()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 167
    invoke-static {v0}, Lorg/thoughtcrime/securesms/util/Util;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isVcard()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isWebxdcDocument()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
