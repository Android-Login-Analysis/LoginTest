.class public abstract Lorg/thoughtcrime/securesms/attachments/Attachment;
.super Ljava/lang/Object;
.source "Attachment.java"


# instance fields
.field private final contentType:Ljava/lang/String;

.field private final fastPreflightId:Ljava/lang/String;

.field private final fileName:Ljava/lang/String;

.field private final height:I

.field private final location:Ljava/lang/String;

.field private final size:J

.field private transferState:I

.field private final voiceNote:Z

.field private final width:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/thoughtcrime/securesms/attachments/Attachment;->contentType:Ljava/lang/String;

    .line 44
    iput p2, p0, Lorg/thoughtcrime/securesms/attachments/Attachment;->transferState:I

    .line 45
    iput-wide p3, p0, Lorg/thoughtcrime/securesms/attachments/Attachment;->size:J

    .line 46
    iput-object p5, p0, Lorg/thoughtcrime/securesms/attachments/Attachment;->fileName:Ljava/lang/String;

    .line 47
    iput-object p6, p0, Lorg/thoughtcrime/securesms/attachments/Attachment;->location:Ljava/lang/String;

    .line 48
    iput-object p7, p0, Lorg/thoughtcrime/securesms/attachments/Attachment;->fastPreflightId:Ljava/lang/String;

    .line 49
    iput-boolean p8, p0, Lorg/thoughtcrime/securesms/attachments/Attachment;->voiceNote:Z

    .line 50
    iput p9, p0, Lorg/thoughtcrime/securesms/attachments/Attachment;->width:I

    .line 51
    iput p10, p0, Lorg/thoughtcrime/securesms/attachments/Attachment;->height:I

    return-void
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/thoughtcrime/securesms/attachments/Attachment;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getDataUri()Landroid/net/Uri;
.end method

.method public getFastPreflightId()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/thoughtcrime/securesms/attachments/Attachment;->fastPreflightId:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/thoughtcrime/securesms/attachments/Attachment;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 101
    iget v0, p0, Lorg/thoughtcrime/securesms/attachments/Attachment;->height:I

    return v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/thoughtcrime/securesms/attachments/Attachment;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getRealPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 107
    :try_start_0
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/attachments/Attachment;->getFileName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "."

    if-nez v0, :cond_0

    .line 110
    :try_start_1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd-HH-mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/attachments/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/thoughtcrime/securesms/util/MediaUtil;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 114
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_1

    .line 116
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    .line 117
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 120
    :cond_1
    :goto_0
    invoke-static {p1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getBlobdirFile(Lcom/b44t/messenger/DcContext;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/attachments/Attachment;->getDataUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/thoughtcrime/securesms/mms/PartAuthority;->getAttachmentStream(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    .line 124
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 125
    invoke-static {p1, v1}, Lorg/thoughtcrime/securesms/util/Util;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 130
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getSize()J
    .locals 2

    .line 69
    iget-wide v0, p0, Lorg/thoughtcrime/securesms/attachments/Attachment;->size:J

    return-wide v0
.end method

.method public abstract getThumbnailUri()Landroid/net/Uri;
.end method

.method public getTransferState()I
    .locals 1

    .line 65
    iget v0, p0, Lorg/thoughtcrime/securesms/attachments/Attachment;->transferState:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 97
    iget v0, p0, Lorg/thoughtcrime/securesms/attachments/Attachment;->width:I

    return v0
.end method

.method public isVoiceNote()Z
    .locals 1

    .line 93
    iget-boolean v0, p0, Lorg/thoughtcrime/securesms/attachments/Attachment;->voiceNote:Z

    return v0
.end method

.method public setTransferState(I)V
    .locals 0

    .line 61
    iput p1, p0, Lorg/thoughtcrime/securesms/attachments/Attachment;->transferState:I

    return-void
.end method
