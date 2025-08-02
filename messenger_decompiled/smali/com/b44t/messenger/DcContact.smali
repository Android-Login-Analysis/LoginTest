.class public Lcom/b44t/messenger/DcContact;
.super Ljava/lang/Object;
.source "DcContact.java"


# static fields
.field public static final DC_CONTACT_ID_ADD_ACCOUNT:I = -0x6

.field public static final DC_CONTACT_ID_ADD_MEMBER:I = -0x3

.field public static final DC_CONTACT_ID_DEVICE:I = 0x5

.field public static final DC_CONTACT_ID_INFO:I = 0x2

.field public static final DC_CONTACT_ID_LAST_SPECIAL:I = 0x9

.field public static final DC_CONTACT_ID_NEW_BROADCAST_LIST:I = -0x5

.field public static final DC_CONTACT_ID_NEW_CLASSIC_CONTACT:I = -0x1

.field public static final DC_CONTACT_ID_NEW_GROUP:I = -0x2

.field public static final DC_CONTACT_ID_QR_INVITE:I = -0x4

.field public static final DC_CONTACT_ID_SELF:I = 0x1


# instance fields
.field private contactCPtr:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-wide p1, p0, Lcom/b44t/messenger/DcContact;->contactCPtr:J

    return-void
.end method

.method private native unrefContactCPtr()V
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 30
    instance-of v1, p1, Lcom/b44t/messenger/DcContact;

    if-nez v1, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    check-cast p1, Lcom/b44t/messenger/DcContact;

    .line 35
    invoke-virtual {p0}, Lcom/b44t/messenger/DcContact;->getId()I

    move-result v1

    invoke-virtual {p1}, Lcom/b44t/messenger/DcContact;->getId()I

    move-result p1

    if-ne v1, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 22
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 23
    invoke-direct {p0}, Lcom/b44t/messenger/DcContact;->unrefContactCPtr()V

    const-wide/16 v0, 0x0

    .line 24
    iput-wide v0, p0, Lcom/b44t/messenger/DcContact;->contactCPtr:J

    return-void
.end method

.method public native getAddr()Ljava/lang/String;
.end method

.method public native getColor()I
.end method

.method public native getDisplayName()Ljava/lang/String;
.end method

.method public native getId()I
.end method

.method public native getLastSeen()J
.end method

.method public native getName()Ljava/lang/String;
.end method

.method public native getNameNAddr()Ljava/lang/String;
.end method

.method public native getProfileImage()Ljava/lang/String;
.end method

.method public native getStatus()Ljava/lang/String;
.end method

.method public native getVerifierId()I
.end method

.method public hashCode()I
    .locals 1

    .line 40
    invoke-virtual {p0}, Lcom/b44t/messenger/DcContact;->getId()I

    move-result v0

    return v0
.end method

.method public native isBlocked()Z
.end method

.method public native isVerified()Z
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lcom/b44t/messenger/DcContact;->getAddr()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public native wasSeenRecently()Z
.end method
