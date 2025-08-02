.class public Lorg/thoughtcrime/securesms/attachments/DcAttachment;
.super Lorg/thoughtcrime/securesms/attachments/Attachment;
.source "DcAttachment.java"


# instance fields
.field private final dcMsg:Lcom/b44t/messenger/DcMsg;


# direct methods
.method public constructor <init>(Lcom/b44t/messenger/DcMsg;)V
    .locals 11

    .line 18
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getFilemime()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getFilebytes()J

    move-result-wide v3

    .line 19
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getFilename()Ljava/lang/String;

    move-result-object v5

    new-instance v0, Ljava/io/File;

    .line 20
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getFile()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 21
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getType()I

    move-result v0

    const/16 v8, 0x29

    if-ne v0, v8, :cond_0

    const/4 v0, 0x1

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v8, 0x0

    :goto_0
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    .line 18
    invoke-direct/range {v0 .. v10}, Lorg/thoughtcrime/securesms/attachments/Attachment;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)V

    .line 23
    iput-object p1, p0, Lorg/thoughtcrime/securesms/attachments/DcAttachment;->dcMsg:Lcom/b44t/messenger/DcMsg;

    return-void
.end method


# virtual methods
.method public getDataUri()Landroid/net/Uri;
    .locals 2

    .line 29
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/attachments/DcAttachment;->dcMsg:Lcom/b44t/messenger/DcMsg;

    invoke-virtual {v1}, Lcom/b44t/messenger/DcMsg;->getFile()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getRealPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 43
    iget-object p1, p0, Lorg/thoughtcrime/securesms/attachments/DcAttachment;->dcMsg:Lcom/b44t/messenger/DcMsg;

    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getFile()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getThumbnailUri()Landroid/net/Uri;
    .locals 3

    .line 35
    iget-object v0, p0, Lorg/thoughtcrime/securesms/attachments/DcAttachment;->dcMsg:Lcom/b44t/messenger/DcMsg;

    invoke-virtual {v0}, Lcom/b44t/messenger/DcMsg;->getType()I

    move-result v0

    const/16 v1, 0x32

    if-ne v0, v1, :cond_0

    .line 36
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/thoughtcrime/securesms/attachments/DcAttachment;->dcMsg:Lcom/b44t/messenger/DcMsg;

    invoke-virtual {v2}, Lcom/b44t/messenger/DcMsg;->getFile()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-preview.jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 38
    :cond_0
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/attachments/DcAttachment;->getDataUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
