.class Lorg/thoughtcrime/securesms/ApplicationContext$2;
.super Landroid/content/BroadcastReceiver;
.source "ApplicationContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/thoughtcrime/securesms/ApplicationContext;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/ApplicationContext;


# direct methods
.method constructor <init>(Lorg/thoughtcrime/securesms/ApplicationContext;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lorg/thoughtcrime/securesms/ApplicationContext$2;->this$0:Lorg/thoughtcrime/securesms/ApplicationContext;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 206
    invoke-static {p1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->setStockTranslations(Landroid/content/Context;)V

    return-void
.end method
