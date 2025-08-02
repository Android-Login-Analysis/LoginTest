.class public Lorg/thoughtcrime/securesms/database/model/ThreadRecord;
.super Ljava/lang/Object;
.source "ThreadRecord.java"


# instance fields
.field private final body:Ljava/lang/String;

.field private final dateReceived:J

.field private final dcSummary:Lcom/b44t/messenger/DcLot;

.field private final isContactRequest:Z

.field private final isMuted:Z

.field private final isProtected:Z

.field private final isSendingLocations:Z

.field private final recipient:Lorg/thoughtcrime/securesms/recipients/Recipient;

.field private final threadId:J

.field private final unreadCount:I

.field private final visibility:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/thoughtcrime/securesms/recipients/Recipient;JIJIZZZZLcom/b44t/messenger/DcLot;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-wide p6, p0, Lorg/thoughtcrime/securesms/database/model/ThreadRecord;->threadId:J

    .line 63
    iput-object p2, p0, Lorg/thoughtcrime/securesms/database/model/ThreadRecord;->recipient:Lorg/thoughtcrime/securesms/recipients/Recipient;

    .line 64
    iput-wide p3, p0, Lorg/thoughtcrime/securesms/database/model/ThreadRecord;->dateReceived:J

    .line 65
    iput-object p1, p0, Lorg/thoughtcrime/securesms/database/model/ThreadRecord;->body:Ljava/lang/String;

    .line 66
    iput p5, p0, Lorg/thoughtcrime/securesms/database/model/ThreadRecord;->unreadCount:I

    .line 67
    iput p8, p0, Lorg/thoughtcrime/securesms/database/model/ThreadRecord;->visibility:I

    .line 68
    iput-boolean p9, p0, Lorg/thoughtcrime/securesms/database/model/ThreadRecord;->isProtected:Z

    .line 69
    iput-boolean p10, p0, Lorg/thoughtcrime/securesms/database/model/ThreadRecord;->isSendingLocations:Z

    .line 70
    iput-boolean p11, p0, Lorg/thoughtcrime/securesms/database/model/ThreadRecord;->isMuted:Z

    .line 71
    iput-boolean p12, p0, Lorg/thoughtcrime/securesms/database/model/ThreadRecord;->isContactRequest:Z

    .line 72
    iput-object p13, p0, Lorg/thoughtcrime/securesms/database/model/ThreadRecord;->dcSummary:Lcom/b44t/messenger/DcLot;

    return-void
.end method

.method private emphasisAdded(Ljava/lang/String;II)Landroid/text/SpannableString;
    .locals 2

    .line 101
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 102
    new-instance p1, Landroid/text/style/StyleSpan;

    const/4 v1, 0x2

    invoke-direct {p1, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/16 v1, 0x21

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/thoughtcrime/securesms/database/model/ThreadRecord;->body:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getDate()J
    .locals 2

    .line 112
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/database/model/ThreadRecord;->getDateReceived()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDateReceived()J
    .locals 2

    .line 84
    iget-wide v0, p0, Lorg/thoughtcrime/securesms/database/model/ThreadRecord;->dateReceived:J

    return-wide v0
.end method

.method public getDisplayBody()Landroid/text/SpannableString;
    .locals 3

    .line 92
    iget-object v0, p0, Lorg/thoughtcrime/securesms/database/model/ThreadRecord;->dcSummary:Lcom/b44t/messenger/DcLot;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/b44t/messenger/DcLot;->getText1Meaning()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/thoughtcrime/securesms/database/model/ThreadRecord;->dcSummary:Lcom/b44t/messenger/DcLot;

    invoke-virtual {v1}, Lcom/b44t/messenger/DcLot;->getText1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/database/model/ThreadRecord;->dcSummary:Lcom/b44t/messenger/DcLot;

    invoke-virtual {v2}, Lcom/b44t/messenger/DcLot;->getText2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p0, v1, v2, v0}, Lorg/thoughtcrime/securesms/database/model/ThreadRecord;->emphasisAdded(Ljava/lang/String;II)Landroid/text/SpannableString;

    move-result-object v0

    return-object v0

    .line 96
    :cond_0
    new-instance v0, Landroid/text/SpannableString;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/database/model/ThreadRecord;->getBody()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public getRecipient()Lorg/thoughtcrime/securesms/recipients/Recipient;
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/thoughtcrime/securesms/database/model/ThreadRecord;->recipient:Lorg/thoughtcrime/securesms/recipients/Recipient;

    return-object v0
.end method

.method public getThreadId()J
    .locals 2

    .line 88
    iget-wide v0, p0, Lorg/thoughtcrime/securesms/database/model/ThreadRecord;->threadId:J

    return-wide v0
.end method

.method public getUnreadCount()I
    .locals 1

    .line 108
    iget v0, p0, Lorg/thoughtcrime/securesms/database/model/ThreadRecord;->unreadCount:I

    return v0
.end method

.method public getVisibility()I
    .locals 1

    .line 116
    iget v0, p0, Lorg/thoughtcrime/securesms/database/model/ThreadRecord;->visibility:I

    return v0
.end method

.method public isContactRequest()Z
    .locals 1

    .line 132
    iget-boolean v0, p0, Lorg/thoughtcrime/securesms/database/model/ThreadRecord;->isContactRequest:Z

    return v0
.end method

.method public isMuted()Z
    .locals 1

    .line 128
    iget-boolean v0, p0, Lorg/thoughtcrime/securesms/database/model/ThreadRecord;->isMuted:Z

    return v0
.end method

.method public isProtected()Z
    .locals 1

    .line 120
    iget-boolean v0, p0, Lorg/thoughtcrime/securesms/database/model/ThreadRecord;->isProtected:Z

    return v0
.end method

.method public isSendingLocations()Z
    .locals 1

    .line 124
    iget-boolean v0, p0, Lorg/thoughtcrime/securesms/database/model/ThreadRecord;->isSendingLocations:Z

    return v0
.end method
