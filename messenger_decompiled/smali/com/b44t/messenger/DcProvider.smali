.class public Lcom/b44t/messenger/DcProvider;
.super Ljava/lang/Object;
.source "DcProvider.java"


# static fields
.field public static final DC_PROVIDER_STATUS_BROKEN:I = 0x3

.field public static final DC_PROVIDER_STATUS_OK:I = 0x1

.field public static final DC_PROVIDER_STATUS_PREPARATION:I = 0x2


# instance fields
.field private providerCPtr:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-wide p1, p0, Lcom/b44t/messenger/DcProvider;->providerCPtr:J

    return-void
.end method

.method private native unrefProviderCPtr()V
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
    invoke-direct {p0}, Lcom/b44t/messenger/DcProvider;->unrefProviderCPtr()V

    const-wide/16 v0, 0x0

    .line 16
    iput-wide v0, p0, Lcom/b44t/messenger/DcProvider;->providerCPtr:J

    return-void
.end method

.method public native getBeforeLoginHint()Ljava/lang/String;
.end method

.method public native getOverviewPage()Ljava/lang/String;
.end method

.method public native getStatus()I
.end method
