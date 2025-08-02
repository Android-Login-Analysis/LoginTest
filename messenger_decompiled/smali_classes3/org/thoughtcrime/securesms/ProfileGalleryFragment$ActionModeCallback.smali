.class Lorg/thoughtcrime/securesms/ProfileGalleryFragment$ActionModeCallback;
.super Ljava/lang/Object;
.source "ProfileGalleryFragment.java"

# interfaces
.implements Landroidx/appcompat/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/ProfileGalleryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionModeCallback"
.end annotation


# instance fields
.field private originalStatusBarColor:I

.field final synthetic this$0:Lorg/thoughtcrime/securesms/ProfileGalleryFragment;


# direct methods
.method private constructor <init>(Lorg/thoughtcrime/securesms/ProfileGalleryFragment;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lorg/thoughtcrime/securesms/ProfileGalleryFragment$ActionModeCallback;->this$0:Lorg/thoughtcrime/securesms/ProfileGalleryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/thoughtcrime/securesms/ProfileGalleryFragment;Lorg/thoughtcrime/securesms/ProfileGalleryFragment$1;)V
    .locals 0

    .line 219
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/ProfileGalleryFragment$ActionModeCallback;-><init>(Lorg/thoughtcrime/securesms/ProfileGalleryFragment;)V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroidx/appcompat/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 3

    .line 244
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    const/4 v0, 0x1

    sparse-switch p2, :sswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 257
    :sswitch_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ProfileGalleryFragment$ActionModeCallback;->this$0:Lorg/thoughtcrime/securesms/ProfileGalleryFragment;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/ProfileGalleryFragment;->access$100(Lorg/thoughtcrime/securesms/ProfileGalleryFragment;)Lorg/thoughtcrime/securesms/ProfileGalleryAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/ProfileGalleryAdapter;->getSelectedMedia()Ljava/util/Set;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/ProfileGalleryFragment;->getSelectedMessageRecord(Ljava/util/Set;)Lcom/b44t/messenger/DcMsg;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/ProfileGalleryFragment;->handleShowInChat(Lcom/b44t/messenger/DcMsg;)V

    return v0

    .line 254
    :sswitch_1
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ProfileGalleryFragment$ActionModeCallback;->this$0:Lorg/thoughtcrime/securesms/ProfileGalleryFragment;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/ProfileGalleryFragment;->access$100(Lorg/thoughtcrime/securesms/ProfileGalleryFragment;)Lorg/thoughtcrime/securesms/ProfileGalleryAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/ProfileGalleryAdapter;->getSelectedMedia()Ljava/util/Set;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/ProfileGalleryFragment;->getSelectedMessageRecord(Ljava/util/Set;)Lcom/b44t/messenger/DcMsg;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/ProfileGalleryFragment;->handleShare(Lcom/b44t/messenger/DcMsg;)V

    return v0

    .line 260
    :sswitch_2
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ProfileGalleryFragment$ActionModeCallback;->this$0:Lorg/thoughtcrime/securesms/ProfileGalleryFragment;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/ProfileGalleryFragment;->access$100(Lorg/thoughtcrime/securesms/ProfileGalleryFragment;)Lorg/thoughtcrime/securesms/ProfileGalleryAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/ProfileGalleryAdapter;->getSelectedMedia()Ljava/util/Set;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/ProfileGalleryFragment;->handleSaveAttachment(Ljava/util/Set;)V

    return v0

    .line 266
    :sswitch_3
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ProfileGalleryFragment$ActionModeCallback;->this$0:Lorg/thoughtcrime/securesms/ProfileGalleryFragment;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/ProfileGalleryFragment;->access$100(Lorg/thoughtcrime/securesms/ProfileGalleryFragment;)Lorg/thoughtcrime/securesms/ProfileGalleryAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/ProfileGalleryAdapter;->selectAll()V

    .line 267
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ProfileGalleryFragment$ActionModeCallback;->this$0:Lorg/thoughtcrime/securesms/ProfileGalleryFragment;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/ProfileGalleryFragment;->access$300(Lorg/thoughtcrime/securesms/ProfileGalleryFragment;)V

    return v0

    .line 263
    :sswitch_4
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ProfileGalleryFragment$ActionModeCallback;->this$0:Lorg/thoughtcrime/securesms/ProfileGalleryFragment;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/ProfileGalleryFragment;->access$100(Lorg/thoughtcrime/securesms/ProfileGalleryFragment;)Lorg/thoughtcrime/securesms/ProfileGalleryAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/ProfileGalleryAdapter;->getSelectedMedia()Ljava/util/Set;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/ProfileGalleryFragment;->handleResendMessage(Ljava/util/Set;)V

    return v0

    .line 246
    :sswitch_5
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ProfileGalleryFragment$ActionModeCallback;->this$0:Lorg/thoughtcrime/securesms/ProfileGalleryFragment;

    invoke-static {p2}, Lorg/thoughtcrime/securesms/ProfileGalleryFragment;->access$100(Lorg/thoughtcrime/securesms/ProfileGalleryFragment;)Lorg/thoughtcrime/securesms/ProfileGalleryAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/ProfileGalleryAdapter;->getSelectedMedia()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/thoughtcrime/securesms/ProfileGalleryFragment;->getSelectedMessageRecord(Ljava/util/Set;)Lcom/b44t/messenger/DcMsg;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/thoughtcrime/securesms/ProfileGalleryFragment;->handleDisplayDetails(Lcom/b44t/messenger/DcMsg;)V

    .line 247
    invoke-virtual {p1}, Landroidx/appcompat/view/ActionMode;->finish()V

    return v0

    .line 250
    :sswitch_6
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ProfileGalleryFragment$ActionModeCallback;->this$0:Lorg/thoughtcrime/securesms/ProfileGalleryFragment;

    invoke-static {p2}, Lorg/thoughtcrime/securesms/ProfileGalleryFragment;->access$200(Lorg/thoughtcrime/securesms/ProfileGalleryFragment;)I

    move-result v1

    iget-object v2, p0, Lorg/thoughtcrime/securesms/ProfileGalleryFragment$ActionModeCallback;->this$0:Lorg/thoughtcrime/securesms/ProfileGalleryFragment;

    invoke-static {v2}, Lorg/thoughtcrime/securesms/ProfileGalleryFragment;->access$100(Lorg/thoughtcrime/securesms/ProfileGalleryFragment;)Lorg/thoughtcrime/securesms/ProfileGalleryAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/thoughtcrime/securesms/ProfileGalleryAdapter;->getSelectedMedia()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lorg/thoughtcrime/securesms/ProfileGalleryFragment;->handleDeleteMessages(ILjava/util/Set;)V

    .line 251
    invoke-virtual {p1}, Landroidx/appcompat/view/ActionMode;->finish()V

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0900dd -> :sswitch_6
        0x7f0900e7 -> :sswitch_5
        0x7f09020a -> :sswitch_4
        0x7f090210 -> :sswitch_3
        0x7f0902e7 -> :sswitch_2
        0x7f090330 -> :sswitch_1
        0x7f090339 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateActionMode(Landroidx/appcompat/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2

    .line 225
    invoke-virtual {p1}, Landroidx/appcompat/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0014

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const-string v0, "1"

    .line 226
    invoke-virtual {p1, v0}, Landroidx/appcompat/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 228
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    .line 229
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ProfileGalleryFragment$ActionModeCallback;->this$0:Lorg/thoughtcrime/securesms/ProfileGalleryFragment;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/ProfileGalleryFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 230
    invoke-static {p1}, Lkotlinx/coroutines/time/TimeKt$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/Window;)I

    move-result v0

    iput v0, p0, Lorg/thoughtcrime/securesms/ProfileGalleryFragment$ActionModeCallback;->originalStatusBarColor:I

    .line 231
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileGalleryFragment$ActionModeCallback;->this$0:Lorg/thoughtcrime/securesms/ProfileGalleryFragment;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/ProfileGalleryFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {p1, v0}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/Window;I)V

    .line 233
    :cond_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ProfileGalleryFragment$ActionModeCallback;->this$0:Lorg/thoughtcrime/securesms/ProfileGalleryFragment;

    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/ProfileGalleryFragment;->setCorrectMenuVisibility(Landroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onDestroyActionMode(Landroidx/appcompat/view/ActionMode;)V
    .locals 1

    .line 275
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ProfileGalleryFragment$ActionModeCallback;->this$0:Lorg/thoughtcrime/securesms/ProfileGalleryFragment;

    const/4 v0, 0x0

    iput-object v0, p1, Lorg/thoughtcrime/securesms/ProfileGalleryFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 276
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ProfileGalleryFragment$ActionModeCallback;->this$0:Lorg/thoughtcrime/securesms/ProfileGalleryFragment;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/ProfileGalleryFragment;->access$100(Lorg/thoughtcrime/securesms/ProfileGalleryFragment;)Lorg/thoughtcrime/securesms/ProfileGalleryAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/ProfileGalleryAdapter;->clearSelection()V

    .line 278
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    .line 279
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ProfileGalleryFragment$ActionModeCallback;->this$0:Lorg/thoughtcrime/securesms/ProfileGalleryFragment;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/ProfileGalleryFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    iget v0, p0, Lorg/thoughtcrime/securesms/ProfileGalleryFragment$ActionModeCallback;->originalStatusBarColor:I

    invoke-static {p1, v0}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/Window;I)V

    :cond_0
    return-void
.end method

.method public onPrepareActionMode(Landroidx/appcompat/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
