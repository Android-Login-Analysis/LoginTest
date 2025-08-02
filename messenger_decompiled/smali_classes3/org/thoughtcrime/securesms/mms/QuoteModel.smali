.class public Lorg/thoughtcrime/securesms/mms/QuoteModel;
.super Ljava/lang/Object;
.source "QuoteModel.java"


# instance fields
.field private final attachments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/thoughtcrime/securesms/attachments/Attachment;",
            ">;"
        }
    .end annotation
.end field

.field private final author:Lcom/b44t/messenger/DcContact;

.field private final quotedMsg:Lcom/b44t/messenger/DcMsg;

.field private final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/b44t/messenger/DcContact;Ljava/lang/String;ZLjava/util/List;Lcom/b44t/messenger/DcMsg;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b44t/messenger/DcContact;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Lorg/thoughtcrime/securesms/attachments/Attachment;",
            ">;",
            "Lcom/b44t/messenger/DcMsg;",
            ")V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/thoughtcrime/securesms/mms/QuoteModel;->author:Lcom/b44t/messenger/DcContact;

    .line 22
    iput-object p2, p0, Lorg/thoughtcrime/securesms/mms/QuoteModel;->text:Ljava/lang/String;

    .line 23
    iput-object p4, p0, Lorg/thoughtcrime/securesms/mms/QuoteModel;->attachments:Ljava/util/List;

    .line 24
    iput-object p5, p0, Lorg/thoughtcrime/securesms/mms/QuoteModel;->quotedMsg:Lcom/b44t/messenger/DcMsg;

    return-void
.end method


# virtual methods
.method public getAttachments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/thoughtcrime/securesms/attachments/Attachment;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lorg/thoughtcrime/securesms/mms/QuoteModel;->attachments:Ljava/util/List;

    return-object v0
.end method

.method public getAuthor()Lcom/b44t/messenger/DcContact;
    .locals 1

    .line 28
    iget-object v0, p0, Lorg/thoughtcrime/securesms/mms/QuoteModel;->author:Lcom/b44t/messenger/DcContact;

    return-object v0
.end method

.method public getQuotedMsg()Lcom/b44t/messenger/DcMsg;
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/thoughtcrime/securesms/mms/QuoteModel;->quotedMsg:Lcom/b44t/messenger/DcMsg;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/thoughtcrime/securesms/mms/QuoteModel;->text:Ljava/lang/String;

    return-object v0
.end method
