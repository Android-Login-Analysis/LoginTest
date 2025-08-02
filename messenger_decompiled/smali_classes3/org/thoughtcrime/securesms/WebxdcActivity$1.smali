.class Lorg/thoughtcrime/securesms/WebxdcActivity$1;
.super Landroid/webkit/WebChromeClient;
.source "WebxdcActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/thoughtcrime/securesms/WebxdcActivity;->onCreate(Landroid/os/Bundle;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/WebxdcActivity;


# direct methods
.method constructor <init>(Lorg/thoughtcrime/securesms/WebxdcActivity;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lorg/thoughtcrime/securesms/WebxdcActivity$1;->this$0:Lorg/thoughtcrime/securesms/WebxdcActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    .line 155
    iget-object p1, p0, Lorg/thoughtcrime/securesms/WebxdcActivity$1;->this$0:Lorg/thoughtcrime/securesms/WebxdcActivity;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/WebxdcActivity;->access$000(Lorg/thoughtcrime/securesms/WebxdcActivity;)Landroid/webkit/ValueCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 156
    iget-object p1, p0, Lorg/thoughtcrime/securesms/WebxdcActivity$1;->this$0:Lorg/thoughtcrime/securesms/WebxdcActivity;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/WebxdcActivity;->access$000(Lorg/thoughtcrime/securesms/WebxdcActivity;)Landroid/webkit/ValueCallback;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 158
    :cond_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/WebxdcActivity$1;->this$0:Lorg/thoughtcrime/securesms/WebxdcActivity;

    invoke-static {p1, p2}, Lorg/thoughtcrime/securesms/WebxdcActivity;->access$002(Lorg/thoughtcrime/securesms/WebxdcActivity;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    .line 159
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.GET_CONTENT"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "android.intent.category.OPENABLE"

    .line 160
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "*/*"

    .line 161
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    invoke-static {p3}, Lkotlinx/coroutines/time/TimeKt$$ExternalSyntheticApiModelOutline0;->m(Landroid/webkit/WebChromeClient$FileChooserParams;)I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    const-string v0, "android.intent.extra.ALLOW_MULTIPLE"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 163
    iget-object p2, p0, Lorg/thoughtcrime/securesms/WebxdcActivity$1;->this$0:Lorg/thoughtcrime/securesms/WebxdcActivity;

    const v0, 0x7f1203c0

    invoke-virtual {p2, v0}, Lorg/thoughtcrime/securesms/WebxdcActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    const v0, 0xc8e2

    invoke-virtual {p2, p1, v0}, Lorg/thoughtcrime/securesms/WebxdcActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return p3
.end method
