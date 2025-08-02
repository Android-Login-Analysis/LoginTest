.class Lorg/thoughtcrime/securesms/WebViewActivity$2;
.super Ljava/lang/Object;
.source "WebViewActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnActionExpandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/thoughtcrime/securesms/WebViewActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/WebViewActivity;

.field final synthetic val$menu:Landroid/view/Menu;

.field final synthetic val$searchItem:Landroid/view/MenuItem;


# direct methods
.method constructor <init>(Lorg/thoughtcrime/securesms/WebViewActivity;Landroid/view/Menu;Landroid/view/MenuItem;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 158
    iput-object p1, p0, Lorg/thoughtcrime/securesms/WebViewActivity$2;->this$0:Lorg/thoughtcrime/securesms/WebViewActivity;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/WebViewActivity$2;->val$menu:Landroid/view/Menu;

    iput-object p3, p0, Lorg/thoughtcrime/securesms/WebViewActivity$2;->val$searchItem:Landroid/view/MenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 3

    .line 169
    iget-object p1, p0, Lorg/thoughtcrime/securesms/WebViewActivity$2;->this$0:Lorg/thoughtcrime/securesms/WebViewActivity;

    iget-object v0, p0, Lorg/thoughtcrime/securesms/WebViewActivity$2;->val$menu:Landroid/view/Menu;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/WebViewActivity$2;->val$searchItem:Landroid/view/MenuItem;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/thoughtcrime/securesms/WebViewActivity;->makeSearchMenuVisible(Landroid/view/Menu;Landroid/view/MenuItem;Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 3

    .line 161
    iget-object p1, p0, Lorg/thoughtcrime/securesms/WebViewActivity$2;->this$0:Lorg/thoughtcrime/securesms/WebViewActivity;

    iget-object v0, p0, Lorg/thoughtcrime/securesms/WebViewActivity$2;->val$menu:Landroid/view/Menu;

    invoke-static {p1, v0}, Lorg/thoughtcrime/securesms/WebViewActivity;->access$002(Lorg/thoughtcrime/securesms/WebViewActivity;Landroid/view/Menu;)Landroid/view/Menu;

    .line 162
    iget-object p1, p0, Lorg/thoughtcrime/securesms/WebViewActivity$2;->this$0:Lorg/thoughtcrime/securesms/WebViewActivity;

    const-string v0, ""

    invoke-static {p1, v0}, Lorg/thoughtcrime/securesms/WebViewActivity;->access$102(Lorg/thoughtcrime/securesms/WebViewActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 163
    iget-object p1, p0, Lorg/thoughtcrime/securesms/WebViewActivity$2;->this$0:Lorg/thoughtcrime/securesms/WebViewActivity;

    iget-object v0, p0, Lorg/thoughtcrime/securesms/WebViewActivity$2;->val$menu:Landroid/view/Menu;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/WebViewActivity$2;->val$searchItem:Landroid/view/MenuItem;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lorg/thoughtcrime/securesms/WebViewActivity;->makeSearchMenuVisible(Landroid/view/Menu;Landroid/view/MenuItem;Z)V

    return v2
.end method
