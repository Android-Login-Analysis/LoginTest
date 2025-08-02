.class Lorg/thoughtcrime/securesms/ProfileDocumentsFragment$ActionModeCallback;
.super Ljava/lang/Object;
.source "ProfileDocumentsFragment.java"

# interfaces
.implements Landroidx/appcompat/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionModeCallback"
.end annotation


# instance fields
.field private originalStatusBarColor:I

.field final synthetic this$0:Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;


# direct methods
.method private constructor <init>(Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment$ActionModeCallback;->this$0:Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;Lorg/thoughtcrime/securesms/ProfileDocumentsFragment$1;)V
    .locals 0

    .line 228
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment$ActionModeCallback;-><init>(Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;)V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroidx/appcompat/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 3

    .line 253
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    const/4 v0, 0x1

    sparse-switch p2, :sswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 270
    :sswitch_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment$ActionModeCallback;->this$0:Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;->access$100(Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;)Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter;->getSelectedMedia()Ljava/util/Set;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;->getSelectedMessageRecord(Ljava/util/Set;)Lcom/b44t/messenger/DcMsg;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;->handleShowInChat(Lcom/b44t/messenger/DcMsg;)V

    return v0

    .line 263
    :sswitch_1
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment$ActionModeCallback;->this$0:Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;->access$100(Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;)Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter;->getSelectedMedia()Ljava/util/Set;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;->getSelectedMessageRecord(Ljava/util/Set;)Lcom/b44t/messenger/DcMsg;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;->handleShare(Lcom/b44t/messenger/DcMsg;)V

    return v0

    .line 273
    :sswitch_2
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment$ActionModeCallback;->this$0:Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;->access$100(Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;)Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter;->getSelectedMedia()Ljava/util/Set;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;->handleSaveAttachment(Ljava/util/Set;)V

    return v0

    .line 279
    :sswitch_3
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment$ActionModeCallback;->this$0:Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;->access$100(Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;)Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter;->selectAll()V

    .line 280
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment$ActionModeCallback;->this$0:Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;->access$200(Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;)V

    return v0

    .line 276
    :sswitch_4
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment$ActionModeCallback;->this$0:Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;->access$100(Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;)Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter;->getSelectedMedia()Ljava/util/Set;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;->handleResendMessage(Ljava/util/Set;)V

    return v0

    .line 266
    :sswitch_5
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment$ActionModeCallback;->this$0:Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    iget-object v1, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment$ActionModeCallback;->this$0:Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;

    invoke-static {v1}, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;->access$100(Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;)Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter;->getSelectedMedia()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;->getSelectedMessageRecord(Ljava/util/Set;)Lcom/b44t/messenger/DcMsg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b44t/messenger/DcMsg;->getId()I

    move-result v1

    invoke-static {p2, v1}, Lorg/thoughtcrime/securesms/WebxdcActivity;->addToHomeScreen(Landroid/app/Activity;I)V

    .line 267
    invoke-virtual {p1}, Landroidx/appcompat/view/ActionMode;->finish()V

    return v0

    .line 255
    :sswitch_6
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment$ActionModeCallback;->this$0:Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;

    invoke-static {p2}, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;->access$100(Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;)Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter;->getSelectedMedia()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;->getSelectedMessageRecord(Ljava/util/Set;)Lcom/b44t/messenger/DcMsg;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;->handleDisplayDetails(Lcom/b44t/messenger/DcMsg;)V

    .line 256
    invoke-virtual {p1}, Landroidx/appcompat/view/ActionMode;->finish()V

    return v0

    .line 259
    :sswitch_7
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment$ActionModeCallback;->this$0:Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;

    iget v1, p2, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;->chatId:I

    iget-object v2, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment$ActionModeCallback;->this$0:Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;

    invoke-static {v2}, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;->access$100(Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;)Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter;->getSelectedMedia()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;->handleDeleteMessages(ILjava/util/Set;)V

    .line 260
    invoke-virtual {p1}, Landroidx/appcompat/view/ActionMode;->finish()V

    return v0

    :sswitch_data_0
    .sparse-switch
        0x7f0900dd -> :sswitch_7
        0x7f0900e7 -> :sswitch_6
        0x7f0901ee -> :sswitch_5
        0x7f09020a -> :sswitch_4
        0x7f090210 -> :sswitch_3
        0x7f0902e7 -> :sswitch_2
        0x7f090330 -> :sswitch_1
        0x7f090339 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateActionMode(Landroidx/appcompat/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2

    .line 234
    invoke-virtual {p1}, Landroidx/appcompat/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0014

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const-string v0, "1"

    .line 235
    invoke-virtual {p1, v0}, Landroidx/appcompat/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 237
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    .line 238
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment$ActionModeCallback;->this$0:Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 239
    invoke-static {p1}, Lkotlinx/coroutines/time/TimeKt$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/Window;)I

    move-result v0

    iput v0, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment$ActionModeCallback;->originalStatusBarColor:I

    .line 240
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment$ActionModeCallback;->this$0:Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {p1, v0}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/Window;I)V

    .line 242
    :cond_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment$ActionModeCallback;->this$0:Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;

    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;->setCorrectMenuVisibility(Landroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onDestroyActionMode(Landroidx/appcompat/view/ActionMode;)V
    .locals 1

    .line 288
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment$ActionModeCallback;->this$0:Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;

    const/4 v0, 0x0

    iput-object v0, p1, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 289
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment$ActionModeCallback;->this$0:Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;->access$100(Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;)Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/ProfileDocumentsAdapter;->clearSelection()V

    .line 291
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    .line 292
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment$ActionModeCallback;->this$0:Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    iget v0, p0, Lorg/thoughtcrime/securesms/ProfileDocumentsFragment$ActionModeCallback;->originalStatusBarColor:I

    invoke-static {p1, v0}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/Window;I)V

    :cond_0
    return-void
.end method

.method public onPrepareActionMode(Landroidx/appcompat/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
