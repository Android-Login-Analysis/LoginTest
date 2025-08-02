.class public Lcom/b44t/messenger/DcLot;
.super Ljava/lang/Object;
.source "DcLot.java"


# static fields
.field public static final DC_TEXT1_DRAFT:I = 0x1

.field public static final DC_TEXT1_SELF:I = 0x3

.field public static final DC_TEXT1_USERNAME:I = 0x2


# instance fields
.field private lotCPtr:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-wide p1, p0, Lcom/b44t/messenger/DcLot;->lotCPtr:J

    return-void
.end method

.method private native unrefLotCPtr()V
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 14
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 15
    invoke-direct {p0}, Lcom/b44t/messenger/DcLot;->unrefLotCPtr()V

    const-wide/16 v0, 0x0

    .line 16
    iput-wide v0, p0, Lcom/b44t/messenger/DcLot;->lotCPtr:J

    return-void
.end method

.method public native getId()I
.end method

.method public native getState()I
.end method

.method public native getText1()Ljava/lang/String;
.end method

.method public native getText1Meaning()I
.end method

.method public native getText2()Ljava/lang/String;
.end method

.method public native getTimestamp()J
.end method
