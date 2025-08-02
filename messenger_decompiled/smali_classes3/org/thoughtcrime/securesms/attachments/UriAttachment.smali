.class public Lorg/thoughtcrime/securesms/attachments/UriAttachment;
.super Lorg/thoughtcrime/securesms/attachments/Attachment;
.source "UriAttachment.java"


# instance fields
.field private final dataUri:Landroid/net/Uri;

.field private final thumbnailUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;IJIILjava/lang/String;Ljava/lang/String;Z)V
    .locals 12

    move-object v11, p0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p3

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p9

    move-object/from16 v7, p10

    move/from16 v8, p11

    move/from16 v9, p7

    move/from16 v10, p8

    .line 17
    invoke-direct/range {v0 .. v10}, Lorg/thoughtcrime/securesms/attachments/Attachment;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)V

    move-object v0, p1

    .line 18
    iput-object v0, v11, Lorg/thoughtcrime/securesms/attachments/UriAttachment;->dataUri:Landroid/net/Uri;

    move-object v0, p2

    .line 19
    iput-object v0, v11, Lorg/thoughtcrime/securesms/attachments/UriAttachment;->thumbnailUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 36
    instance-of v0, p1, Lorg/thoughtcrime/securesms/attachments/UriAttachment;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/thoughtcrime/securesms/attachments/UriAttachment;

    iget-object p1, p1, Lorg/thoughtcrime/securesms/attachments/UriAttachment;->dataUri:Landroid/net/Uri;

    iget-object v0, p0, Lorg/thoughtcrime/securesms/attachments/UriAttachment;->dataUri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getDataUri()Landroid/net/Uri;
    .locals 1

    .line 25
    iget-object v0, p0, Lorg/thoughtcrime/securesms/attachments/UriAttachment;->dataUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getThumbnailUri()Landroid/net/Uri;
    .locals 1

    .line 31
    iget-object v0, p0, Lorg/thoughtcrime/securesms/attachments/UriAttachment;->thumbnailUri:Landroid/net/Uri;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/thoughtcrime/securesms/attachments/UriAttachment;->dataUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    return v0
.end method
