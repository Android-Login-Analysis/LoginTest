.class Lorg/thoughtcrime/securesms/ApplicationContext$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
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

    .line 158
    iput-object p1, p0, Lorg/thoughtcrime/securesms/ApplicationContext$1;->this$0:Lorg/thoughtcrime/securesms/ApplicationContext;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 1

    .line 161
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "++++++++++++++++++ NetworkCallback.onAvailable() #"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ApplicationContext$1;->this$0:Lorg/thoughtcrime/securesms/ApplicationContext;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/ApplicationContext;->access$008(Lorg/thoughtcrime/securesms/ApplicationContext;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DeltaChat"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    sget-object p1, Lorg/thoughtcrime/securesms/ApplicationContext;->dcAccounts:Lcom/b44t/messenger/DcAccounts;

    invoke-virtual {p1}, Lcom/b44t/messenger/DcAccounts;->maybeNetwork()V

    return-void
.end method

.method public onBlockedStatusChanged(Landroid/net/Network;Z)V
    .locals 0

    .line 167
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "++++++++++++++++++ NetworkCallback.onBlockedStatusChanged() #"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lorg/thoughtcrime/securesms/ApplicationContext$1;->this$0:Lorg/thoughtcrime/securesms/ApplicationContext;

    invoke-static {p2}, Lorg/thoughtcrime/securesms/ApplicationContext;->access$108(Lorg/thoughtcrime/securesms/ApplicationContext;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DeltaChat"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 0

    .line 173
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "++++++++++++++++++ NetworkCallback.onCapabilitiesChanged() #"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lorg/thoughtcrime/securesms/ApplicationContext$1;->this$0:Lorg/thoughtcrime/securesms/ApplicationContext;

    invoke-static {p2}, Lorg/thoughtcrime/securesms/ApplicationContext;->access$208(Lorg/thoughtcrime/securesms/ApplicationContext;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DeltaChat"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 0

    .line 178
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "++++++++++++++++++ NetworkCallback.onLinkPropertiesChanged() #"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lorg/thoughtcrime/securesms/ApplicationContext$1;->this$0:Lorg/thoughtcrime/securesms/ApplicationContext;

    invoke-static {p2}, Lorg/thoughtcrime/securesms/ApplicationContext;->access$308(Lorg/thoughtcrime/securesms/ApplicationContext;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DeltaChat"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
