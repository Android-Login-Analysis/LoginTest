.class Lorg/thoughtcrime/securesms/service/GenericForegroundService$LocalBinder;
.super Landroid/os/Binder;
.source "GenericForegroundService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/service/GenericForegroundService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/service/GenericForegroundService;


# direct methods
.method constructor <init>(Lorg/thoughtcrime/securesms/service/GenericForegroundService;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lorg/thoughtcrime/securesms/service/GenericForegroundService$LocalBinder;->this$0:Lorg/thoughtcrime/securesms/service/GenericForegroundService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method getService()Lorg/thoughtcrime/securesms/service/GenericForegroundService;
    .locals 1

    .line 284
    iget-object v0, p0, Lorg/thoughtcrime/securesms/service/GenericForegroundService$LocalBinder;->this$0:Lorg/thoughtcrime/securesms/service/GenericForegroundService;

    return-object v0
.end method
