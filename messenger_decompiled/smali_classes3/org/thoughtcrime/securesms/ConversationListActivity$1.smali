.class Lorg/thoughtcrime/securesms/ConversationListActivity$1;
.super Ljava/lang/Object;
.source "ConversationListActivity.java"

# interfaces
.implements Lorg/thoughtcrime/securesms/components/SearchToolbar$SearchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/thoughtcrime/securesms/ConversationListActivity;->initializeSearchListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/ConversationListActivity;


# direct methods
.method constructor <init>(Lorg/thoughtcrime/securesms/ConversationListActivity;)V
    .locals 0

    .line 342
    iput-object p1, p0, Lorg/thoughtcrime/securesms/ConversationListActivity$1;->this$0:Lorg/thoughtcrime/securesms/ConversationListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSearchClosed()V
    .locals 2

    .line 365
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationListActivity$1;->this$0:Lorg/thoughtcrime/securesms/ConversationListActivity;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/ConversationListActivity;->access$000(Lorg/thoughtcrime/securesms/ConversationListActivity;)Lorg/thoughtcrime/securesms/search/SearchFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationListActivity$1;->this$0:Lorg/thoughtcrime/securesms/ConversationListActivity;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/ConversationListActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationListActivity$1;->this$0:Lorg/thoughtcrime/securesms/ConversationListActivity;

    .line 367
    invoke-static {v1}, Lorg/thoughtcrime/securesms/ConversationListActivity;->access$000(Lorg/thoughtcrime/securesms/ConversationListActivity;)Lorg/thoughtcrime/securesms/search/SearchFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 368
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 369
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationListActivity$1;->this$0:Lorg/thoughtcrime/securesms/ConversationListActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/thoughtcrime/securesms/ConversationListActivity;->access$002(Lorg/thoughtcrime/securesms/ConversationListActivity;Lorg/thoughtcrime/securesms/search/SearchFragment;)Lorg/thoughtcrime/securesms/search/SearchFragment;

    :cond_0
    return-void
.end method

.method public onSearchTextChange(Ljava/lang/String;)V
    .locals 4

    .line 345
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 347
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 348
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationListActivity$1;->this$0:Lorg/thoughtcrime/securesms/ConversationListActivity;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/ConversationListActivity;->access$000(Lorg/thoughtcrime/securesms/ConversationListActivity;)Lorg/thoughtcrime/securesms/search/SearchFragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 349
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationListActivity$1;->this$0:Lorg/thoughtcrime/securesms/ConversationListActivity;

    iget-object v2, v0, Lorg/thoughtcrime/securesms/ConversationListActivity;->dynamicLanguage:Lorg/thoughtcrime/securesms/util/DynamicLanguage;

    invoke-virtual {v2}, Lorg/thoughtcrime/securesms/util/DynamicLanguage;->getCurrentLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Lorg/thoughtcrime/securesms/search/SearchFragment;->newInstance(Ljava/util/Locale;)Lorg/thoughtcrime/securesms/search/SearchFragment;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/thoughtcrime/securesms/ConversationListActivity;->access$002(Lorg/thoughtcrime/securesms/ConversationListActivity;Lorg/thoughtcrime/securesms/search/SearchFragment;)Lorg/thoughtcrime/securesms/search/SearchFragment;

    .line 350
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationListActivity$1;->this$0:Lorg/thoughtcrime/securesms/ConversationListActivity;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/ConversationListActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v2, p0, Lorg/thoughtcrime/securesms/ConversationListActivity$1;->this$0:Lorg/thoughtcrime/securesms/ConversationListActivity;

    .line 351
    invoke-static {v2}, Lorg/thoughtcrime/securesms/ConversationListActivity;->access$000(Lorg/thoughtcrime/securesms/ConversationListActivity;)Lorg/thoughtcrime/securesms/search/SearchFragment;

    move-result-object v2

    const v3, 0x7f09015a

    invoke-virtual {v0, v3, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 352
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 354
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationListActivity$1;->this$0:Lorg/thoughtcrime/securesms/ConversationListActivity;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/ConversationListActivity;->access$000(Lorg/thoughtcrime/securesms/ConversationListActivity;)Lorg/thoughtcrime/securesms/search/SearchFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/search/SearchFragment;->updateSearchQuery(Ljava/lang/String;)V

    goto :goto_0

    .line 355
    :cond_1
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationListActivity$1;->this$0:Lorg/thoughtcrime/securesms/ConversationListActivity;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/ConversationListActivity;->access$000(Lorg/thoughtcrime/securesms/ConversationListActivity;)Lorg/thoughtcrime/securesms/search/SearchFragment;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 356
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationListActivity$1;->this$0:Lorg/thoughtcrime/securesms/ConversationListActivity;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/ConversationListActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationListActivity$1;->this$0:Lorg/thoughtcrime/securesms/ConversationListActivity;

    .line 357
    invoke-static {v0}, Lorg/thoughtcrime/securesms/ConversationListActivity;->access$000(Lorg/thoughtcrime/securesms/ConversationListActivity;)Lorg/thoughtcrime/securesms/search/SearchFragment;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 358
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 359
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationListActivity$1;->this$0:Lorg/thoughtcrime/securesms/ConversationListActivity;

    invoke-static {p1, v1}, Lorg/thoughtcrime/securesms/ConversationListActivity;->access$002(Lorg/thoughtcrime/securesms/ConversationListActivity;Lorg/thoughtcrime/securesms/search/SearchFragment;)Lorg/thoughtcrime/securesms/search/SearchFragment;

    :cond_2
    :goto_0
    return-void
.end method
