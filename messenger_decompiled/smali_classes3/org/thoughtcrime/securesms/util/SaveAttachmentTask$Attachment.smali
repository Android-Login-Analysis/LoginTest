.class public Lorg/thoughtcrime/securesms/util/SaveAttachmentTask$Attachment;
.super Ljava/lang/Object;
.source "SaveAttachmentTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/util/SaveAttachmentTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Attachment"
.end annotation


# instance fields
.field public contentType:Ljava/lang/String;

.field public date:J

.field public fileName:Ljava/lang/String;

.field public uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;)V
    .locals 3

    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-ltz v2, :cond_0

    .line 360
    iput-object p1, p0, Lorg/thoughtcrime/securesms/util/SaveAttachmentTask$Attachment;->uri:Landroid/net/Uri;

    .line 361
    iput-object p5, p0, Lorg/thoughtcrime/securesms/util/SaveAttachmentTask$Attachment;->fileName:Ljava/lang/String;

    .line 362
    iput-object p2, p0, Lorg/thoughtcrime/securesms/util/SaveAttachmentTask$Attachment;->contentType:Ljava/lang/String;

    .line 363
    iput-wide p3, p0, Lorg/thoughtcrime/securesms/util/SaveAttachmentTask$Attachment;->date:J

    return-void

    .line 358
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "uri, content type, and date must all be specified"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method
