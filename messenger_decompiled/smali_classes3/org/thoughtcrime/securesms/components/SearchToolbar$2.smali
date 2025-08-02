.class Lorg/thoughtcrime/securesms/components/SearchToolbar$2;
.super Ljava/lang/Object;
.source "SearchToolbar.java"

# interfaces
.implements Landroid/view/MenuItem$OnActionExpandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/thoughtcrime/securesms/components/SearchToolbar;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/components/SearchToolbar;


# direct methods
.method constructor <init>(Lorg/thoughtcrime/securesms/components/SearchToolbar;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/SearchToolbar$2;->this$0:Lorg/thoughtcrime/securesms/components/SearchToolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 0

    .line 105
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/SearchToolbar$2;->this$0:Lorg/thoughtcrime/securesms/components/SearchToolbar;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/components/SearchToolbar;->access$100(Lorg/thoughtcrime/securesms/components/SearchToolbar;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
