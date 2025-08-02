.class public Lcom/b44t/messenger/DcBackupProvider;
.super Ljava/lang/Object;
.source "DcBackupProvider.java"


# instance fields
.field private backupProviderCPtr:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-wide p1, p0, Lcom/b44t/messenger/DcBackupProvider;->backupProviderCPtr:J

    return-void
.end method

.method private native unrefBackupProviderCPtr()V
.end method


# virtual methods
.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 14
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 15
    invoke-virtual {p0}, Lcom/b44t/messenger/DcBackupProvider;->unref()V

    return-void
.end method

.method public native getQr()Ljava/lang/String;
.end method

.method public native getQrSvg()Ljava/lang/String;
.end method

.method public isOk()Z
    .locals 5

    .line 10
    iget-wide v0, p0, Lcom/b44t/messenger/DcBackupProvider;->backupProviderCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public unref()V
    .locals 5

    .line 19
    iget-wide v0, p0, Lcom/b44t/messenger/DcBackupProvider;->backupProviderCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 20
    invoke-direct {p0}, Lcom/b44t/messenger/DcBackupProvider;->unrefBackupProviderCPtr()V

    .line 21
    iput-wide v2, p0, Lcom/b44t/messenger/DcBackupProvider;->backupProviderCPtr:J

    :cond_0
    return-void
.end method

.method public native waitForReceiver()V
.end method
