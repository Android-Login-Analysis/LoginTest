.class Lorg/thoughtcrime/securesms/ConversationActivity$3;
.super Ljava/lang/Object;
.source "ConversationActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnActionExpandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/thoughtcrime/securesms/ConversationActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/ConversationActivity;

.field final synthetic val$menu:Landroid/view/Menu;


# direct methods
.method constructor <init>(Lorg/thoughtcrime/securesms/ConversationActivity;Landroid/view/Menu;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 482
    iput-object p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity$3;->this$0:Lorg/thoughtcrime/securesms/ConversationActivity;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/ConversationActivity$3;->val$menu:Landroid/view/Menu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 2

    .line 491
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity$3;->this$0:Lorg/thoughtcrime/securesms/ConversationActivity;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationActivity$3;->val$menu:Landroid/view/Menu;

    invoke-static {v0, v1, p1}, Lorg/thoughtcrime/securesms/ConversationActivity;->access$400(Lorg/thoughtcrime/securesms/ConversationActivity;Landroid/view/Menu;Landroid/view/MenuItem;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 2

    .line 485
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity$3;->this$0:Lorg/thoughtcrime/securesms/ConversationActivity;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationActivity$3;->val$menu:Landroid/view/Menu;

    invoke-static {v0, v1, p1}, Lorg/thoughtcrime/securesms/ConversationActivity;->access$300(Lorg/thoughtcrime/securesms/ConversationActivity;Landroid/view/Menu;Landroid/view/MenuItem;)V

    const/4 p1, 0x1

    return p1
.end method
