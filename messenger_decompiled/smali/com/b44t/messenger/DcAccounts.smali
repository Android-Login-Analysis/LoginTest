.class public Lcom/b44t/messenger/DcAccounts;
.super Ljava/lang/Object;
.source "DcAccounts.java"


# instance fields
.field private accountsCPtr:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-direct {p0, p1}, Lcom/b44t/messenger/DcAccounts;->createAccountsCPtr(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/b44t/messenger/DcAccounts;->accountsCPtr:J

    return-void
.end method

.method private native createAccountsCPtr(Ljava/lang/String;)J
.end method

.method private native getAccountCPtr(I)J
.end method

.method private native getEventEmitterCPtr()J
.end method

.method private native getJsonrpcInstanceCPtr()J
.end method

.method private native getSelectedAccountCPtr()J
.end method

.method private native unrefAccountsCPtr()V
.end method


# virtual methods
.method public native addAccount()I
.end method

.method public native addClosedAccount()I
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 11
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 12
    invoke-virtual {p0}, Lcom/b44t/messenger/DcAccounts;->unref()V

    return-void
.end method

.method public getAccount(I)Lcom/b44t/messenger/DcContext;
    .locals 3

    .line 34
    new-instance v0, Lcom/b44t/messenger/DcContext;

    invoke-direct {p0, p1}, Lcom/b44t/messenger/DcAccounts;->getAccountCPtr(I)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/b44t/messenger/DcContext;-><init>(J)V

    return-object v0
.end method

.method public native getAll()[I
.end method

.method public getEventEmitter()Lcom/b44t/messenger/DcEventEmitter;
    .locals 3

    .line 22
    new-instance v0, Lcom/b44t/messenger/DcEventEmitter;

    invoke-direct {p0}, Lcom/b44t/messenger/DcAccounts;->getEventEmitterCPtr()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/b44t/messenger/DcEventEmitter;-><init>(J)V

    return-object v0
.end method

.method public getJsonrpcInstance()Lcom/b44t/messenger/DcJsonrpcInstance;
    .locals 3

    .line 23
    new-instance v0, Lcom/b44t/messenger/DcJsonrpcInstance;

    invoke-direct {p0}, Lcom/b44t/messenger/DcAccounts;->getJsonrpcInstanceCPtr()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/b44t/messenger/DcJsonrpcInstance;-><init>(J)V

    return-object v0
.end method

.method public getSelectedAccount()Lcom/b44t/messenger/DcContext;
    .locals 3

    .line 35
    new-instance v0, Lcom/b44t/messenger/DcContext;

    invoke-direct {p0}, Lcom/b44t/messenger/DcAccounts;->getSelectedAccountCPtr()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/b44t/messenger/DcContext;-><init>(J)V

    return-object v0
.end method

.method public native maybeNetwork()V
.end method

.method public native migrateAccount(Ljava/lang/String;)I
.end method

.method public native removeAccount(I)Z
.end method

.method public native selectAccount(I)Z
.end method

.method public native setPushDeviceToken(Ljava/lang/String;)V
.end method

.method public native startIo()V
.end method

.method public native stopIo()V
.end method

.method public unref()V
    .locals 5

    .line 16
    iget-wide v0, p0, Lcom/b44t/messenger/DcAccounts;->accountsCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 17
    invoke-direct {p0}, Lcom/b44t/messenger/DcAccounts;->unrefAccountsCPtr()V

    .line 18
    iput-wide v2, p0, Lcom/b44t/messenger/DcAccounts;->accountsCPtr:J

    :cond_0
    return-void
.end method
