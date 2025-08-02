.class Lorg/thoughtcrime/securesms/ProfileSettingsFragment$ActionModeCallback;
.super Ljava/lang/Object;
.source "ProfileSettingsFragment.java"

# interfaces
.implements Landroidx/appcompat/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/ProfileSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionModeCallback"
.end annotation


# instance fields
.field private originalStatusBarColor:I

.field final synthetic this$0:Lorg/thoughtcrime/securesms/ProfileSettingsFragment;


# direct methods
.method private constructor <init>(Lorg/thoughtcrime/securesms/ProfileSettingsFragment;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lorg/thoughtcrime/securesms/ProfileSettingsFragment$ActionModeCallback;->this$0:Lorg/thoughtcrime/securesms/ProfileSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/thoughtcrime/securesms/ProfileSettingsFragment;Lorg/thoughtcrime/securesms/ProfileSettingsFragment$1;)V
    .locals 0

    .line 260
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/ProfileSettingsFragment$ActionModeCallback;-><init>(Lorg/thoughtcrime/securesms/ProfileSettingsFragment;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$onActionItemClicked$0$org-thoughtcrime-securesms-ProfileSettingsFragment$ActionModeCallback(Ljava/util/Collection;Landroidx/appcompat/view/ActionMode;Landroid/content/DialogInterface;I)V
    .locals 1

    .line 304
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    .line 305
    iget-object p4, p0, Lorg/thoughtcrime/securesms/ProfileSettingsFragment$ActionModeCallback;->this$0:Lorg/thoughtcrime/securesms/ProfileSettingsFragment;

    invoke-static {p4}, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;->access$200(Lorg/thoughtcrime/securesms/ProfileSettingsFragment;)Lcom/b44t/messenger/DcContext;

    move-result-object p4

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileSettingsFragment$ActionModeCallback;->this$0:Lorg/thoughtcrime/securesms/ProfileSettingsFragment;

    iget v0, v0, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;->chatId:I

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p4, v0, p3}, Lcom/b44t/messenger/DcContext;->removeContactFromChat(II)I

    goto :goto_0

    .line 307
    :cond_0
    invoke-virtual {p2}, Landroidx/appcompat/view/ActionMode;->finish()V

    return-void
.end method

.method public onActionItemClicked(Landroidx/appcompat/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 5

    .line 291
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    const v0, 0x7f0900dd

    const/4 v1, 0x0

    if-eq p2, v0, :cond_0

    return v1

    .line 293
    :cond_0
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ProfileSettingsFragment$ActionModeCallback;->this$0:Lorg/thoughtcrime/securesms/ProfileSettingsFragment;

    invoke-static {p2}, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;->access$100(Lorg/thoughtcrime/securesms/ProfileSettingsFragment;)Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->getSelectedMembers()Ljava/util/Collection;

    move-result-object p2

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 295
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 296
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1

    const-string v4, ", "

    .line 297
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    :cond_1
    iget-object v4, p0, Lorg/thoughtcrime/securesms/ProfileSettingsFragment$ActionModeCallback;->this$0:Lorg/thoughtcrime/securesms/ProfileSettingsFragment;

    invoke-static {v4}, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;->access$200(Lorg/thoughtcrime/securesms/ProfileSettingsFragment;)Lcom/b44t/messenger/DcContext;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/b44t/messenger/DcContext;->getContact(I)Lcom/b44t/messenger/DcContact;

    move-result-object v3

    invoke-virtual {v3}, Lcom/b44t/messenger/DcContact;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 301
    :cond_2
    iget-object v2, p0, Lorg/thoughtcrime/securesms/ProfileSettingsFragment$ActionModeCallback;->this$0:Lorg/thoughtcrime/securesms/ProfileSettingsFragment;

    invoke-static {v2}, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;->access$200(Lorg/thoughtcrime/securesms/ProfileSettingsFragment;)Lcom/b44t/messenger/DcContext;

    move-result-object v2

    iget-object v3, p0, Lorg/thoughtcrime/securesms/ProfileSettingsFragment$ActionModeCallback;->this$0:Lorg/thoughtcrime/securesms/ProfileSettingsFragment;

    iget v3, v3, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;->chatId:I

    invoke-virtual {v2, v3}, Lcom/b44t/messenger/DcContext;->getChat(I)Lcom/b44t/messenger/DcChat;

    move-result-object v2

    .line 302
    new-instance v3, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v4, p0, Lorg/thoughtcrime/securesms/ProfileSettingsFragment$ActionModeCallback;->this$0:Lorg/thoughtcrime/securesms/ProfileSettingsFragment;

    invoke-virtual {v4}, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v4, Lorg/thoughtcrime/securesms/ProfileSettingsFragment$ActionModeCallback$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, p2, p1}, Lorg/thoughtcrime/securesms/ProfileSettingsFragment$ActionModeCallback$$ExternalSyntheticLambda0;-><init>(Lorg/thoughtcrime/securesms/ProfileSettingsFragment$ActionModeCallback;Ljava/util/Collection;Landroidx/appcompat/view/ActionMode;)V

    const p1, 0x104000a

    .line 303
    invoke-virtual {v3, p1, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 p2, 0x1040000

    const/4 v3, 0x0

    .line 309
    invoke-virtual {p1, p2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    iget-object p2, p0, Lorg/thoughtcrime/securesms/ProfileSettingsFragment$ActionModeCallback;->this$0:Lorg/thoughtcrime/securesms/ProfileSettingsFragment;

    .line 310
    invoke-virtual {v2}, Lcom/b44t/messenger/DcChat;->isBroadcast()Z

    move-result v2

    if-eqz v2, :cond_3

    const v2, 0x7f12005f

    goto :goto_1

    :cond_3
    const v2, 0x7f120060

    :goto_1
    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    aput-object v0, v4, v1

    invoke-virtual {p2, v2, v4}, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 311
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return v3
.end method

.method public onCreateActionMode(Landroidx/appcompat/view/ActionMode;Landroid/view/Menu;)Z
    .locals 3

    .line 266
    invoke-virtual {p1}, Landroidx/appcompat/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0014

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f0900dd

    .line 267
    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f0900e7

    .line 268
    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f090339

    .line 269
    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f0902e7

    .line 270
    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f090330

    .line 271
    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f09020a

    .line 272
    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f090210

    .line 273
    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    invoke-interface {p2, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const-string p2, "1"

    .line 274
    invoke-virtual {p1, p2}, Landroidx/appcompat/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 276
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x15

    if-lt p1, p2, :cond_0

    .line 277
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ProfileSettingsFragment$ActionModeCallback;->this$0:Lorg/thoughtcrime/securesms/ProfileSettingsFragment;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 278
    invoke-static {p1}, Lkotlinx/coroutines/time/TimeKt$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/Window;)I

    move-result p2

    iput p2, p0, Lorg/thoughtcrime/securesms/ProfileSettingsFragment$ActionModeCallback;->originalStatusBarColor:I

    .line 279
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ProfileSettingsFragment$ActionModeCallback;->this$0:Lorg/thoughtcrime/securesms/ProfileSettingsFragment;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f06001c

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-static {p1, p2}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/Window;I)V

    :cond_0
    return v1
.end method

.method public onDestroyActionMode(Landroidx/appcompat/view/ActionMode;)V
    .locals 1

    .line 319
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ProfileSettingsFragment$ActionModeCallback;->this$0:Lorg/thoughtcrime/securesms/ProfileSettingsFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;->access$302(Lorg/thoughtcrime/securesms/ProfileSettingsFragment;Landroidx/appcompat/view/ActionMode;)Landroidx/appcompat/view/ActionMode;

    .line 320
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ProfileSettingsFragment$ActionModeCallback;->this$0:Lorg/thoughtcrime/securesms/ProfileSettingsFragment;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;->access$100(Lorg/thoughtcrime/securesms/ProfileSettingsFragment;)Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->clearSelection()V

    .line 321
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    .line 322
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ProfileSettingsFragment$ActionModeCallback;->this$0:Lorg/thoughtcrime/securesms/ProfileSettingsFragment;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    iget v0, p0, Lorg/thoughtcrime/securesms/ProfileSettingsFragment$ActionModeCallback;->originalStatusBarColor:I

    invoke-static {p1, v0}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/Window;I)V

    :cond_0
    return-void
.end method

.method public onPrepareActionMode(Landroidx/appcompat/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
