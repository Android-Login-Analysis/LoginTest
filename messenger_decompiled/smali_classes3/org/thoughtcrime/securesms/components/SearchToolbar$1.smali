.class Lorg/thoughtcrime/securesms/components/SearchToolbar$1;
.super Ljava/lang/Object;
.source "SearchToolbar.java"

# interfaces
.implements Landroidx/appcompat/widget/SearchView$OnQueryTextListener;


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

    .line 84
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/SearchToolbar$1;->this$0:Lorg/thoughtcrime/securesms/components/SearchToolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 0

    .line 93
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/components/SearchToolbar$1;->onQueryTextSubmit(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/SearchToolbar$1;->this$0:Lorg/thoughtcrime/securesms/components/SearchToolbar;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/components/SearchToolbar;->access$000(Lorg/thoughtcrime/securesms/components/SearchToolbar;)Lorg/thoughtcrime/securesms/components/SearchToolbar$SearchListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/SearchToolbar$1;->this$0:Lorg/thoughtcrime/securesms/components/SearchToolbar;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/components/SearchToolbar;->access$000(Lorg/thoughtcrime/securesms/components/SearchToolbar;)Lorg/thoughtcrime/securesms/components/SearchToolbar$SearchListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/thoughtcrime/securesms/components/SearchToolbar$SearchListener;->onSearchTextChange(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
