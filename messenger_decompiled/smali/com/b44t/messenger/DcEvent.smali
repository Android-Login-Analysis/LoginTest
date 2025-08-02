.class public Lcom/b44t/messenger/DcEvent;
.super Ljava/lang/Object;
.source "DcEvent.java"


# instance fields
.field private eventCPtr:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-wide p1, p0, Lcom/b44t/messenger/DcEvent;->eventCPtr:J

    return-void
.end method

.method private native unrefEventCPtr()V
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 10
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 11
    invoke-direct {p0}, Lcom/b44t/messenger/DcEvent;->unrefEventCPtr()V

    const-wide/16 v0, 0x0

    .line 12
    iput-wide v0, p0, Lcom/b44t/messenger/DcEvent;->eventCPtr:J

    return-void
.end method

.method public native getAccountId()I
.end method

.method public native getData1Int()I
.end method

.method public native getData2Blob()[B
.end method

.method public native getData2Int()I
.end method

.method public native getData2Str()Ljava/lang/String;
.end method

.method public native getId()I
.end method
