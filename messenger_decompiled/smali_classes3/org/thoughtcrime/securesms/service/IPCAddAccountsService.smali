.class public Lorg/thoughtcrime/securesms/service/IPCAddAccountsService;
.super Landroid/app/Service;
.source "IPCAddAccountsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/service/IPCAddAccountsService$IncomingHandler;
    }
.end annotation


# static fields
.field public static final ACCOUNT_DATA:Ljava/lang/String; = "ACCOUNT_DATA"

.field public static final ADD_ACCOUNT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "IPCAddAccountsService"


# instance fields
.field private final messenger:Landroid/os/Messenger;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 82
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lorg/thoughtcrime/securesms/service/IPCAddAccountsService$IncomingHandler;

    invoke-direct {v1, p0}, Lorg/thoughtcrime/securesms/service/IPCAddAccountsService$IncomingHandler;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/service/IPCAddAccountsService;->messenger:Landroid/os/Messenger;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 36
    sget-object v0, Lorg/thoughtcrime/securesms/service/IPCAddAccountsService;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 87
    iget-object p1, p0, Lorg/thoughtcrime/securesms/service/IPCAddAccountsService;->messenger:Landroid/os/Messenger;

    invoke-virtual {p1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const/4 p1, 0x2

    return p1
.end method
