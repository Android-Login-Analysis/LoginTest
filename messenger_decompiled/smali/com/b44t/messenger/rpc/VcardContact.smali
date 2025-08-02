.class public Lcom/b44t/messenger/rpc/VcardContact;
.super Ljava/lang/Object;
.source "VcardContact.java"


# instance fields
.field private final addr:Ljava/lang/String;

.field private final color:Ljava/lang/String;

.field private final displayName:Ljava/lang/String;

.field private final key:Ljava/lang/String;

.field private final profileImage:Ljava/lang/String;

.field private final timestamp:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/b44t/messenger/rpc/VcardContact;->addr:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/b44t/messenger/rpc/VcardContact;->displayName:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/b44t/messenger/rpc/VcardContact;->key:Ljava/lang/String;

    .line 28
    iput-object p4, p0, Lcom/b44t/messenger/rpc/VcardContact;->profileImage:Ljava/lang/String;

    .line 29
    iput-object p5, p0, Lcom/b44t/messenger/rpc/VcardContact;->color:Ljava/lang/String;

    .line 30
    iput p6, p0, Lcom/b44t/messenger/rpc/VcardContact;->timestamp:I

    return-void
.end method


# virtual methods
.method public getAddr()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/b44t/messenger/rpc/VcardContact;->addr:Ljava/lang/String;

    return-object v0
.end method

.method public getColor()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/b44t/messenger/rpc/VcardContact;->color:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/b44t/messenger/rpc/VcardContact;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()[B
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/b44t/messenger/rpc/VcardContact;->key:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getProfileImage()[B
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/b44t/messenger/rpc/VcardContact;->profileImage:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getTimestamp()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/b44t/messenger/rpc/VcardContact;->timestamp:I

    return v0
.end method

.method public hasProfileImage()Z
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/b44t/messenger/rpc/VcardContact;->profileImage:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
