.class public Lorg/thoughtcrime/securesms/ProfileSettingsFragment;
.super Landroidx/fragment/app/Fragment;
.source "ProfileSettingsFragment.java"

# interfaces
.implements Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$ItemClickListener;
.implements Lorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/ProfileSettingsFragment$ActionModeCallback;
    }
.end annotation


# static fields
.field public static final CHAT_ID_EXTRA:Ljava/lang/String; = "chat_id"

.field public static final CONTACT_ID_EXTRA:Ljava/lang/String; = "contact_id"

.field public static final LOCALE_EXTRA:Ljava/lang/String; = "locale_extra"

.field private static final REQUEST_CODE_PICK_CONTACT:I = 0x2


# instance fields
.field private actionMode:Landroidx/appcompat/view/ActionMode;

.field private final actionModeCallback:Lorg/thoughtcrime/securesms/ProfileSettingsFragment$ActionModeCallback;

.field private adapter:Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;

.field protected chatId:I

.field private contactId:I

.field private dcContext:Lcom/b44t/messenger/DcContext;

.field private list:Landroidx/recyclerview/widget/RecyclerView;

.field private listDecoration:Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration;

.field private locale:Ljava/util/Locale;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 44
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 57
    new-instance v0, Lorg/thoughtcrime/securesms/ProfileSettingsFragment$ActionModeCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/thoughtcrime/securesms/ProfileSettingsFragment$ActionModeCallback;-><init>(Lorg/thoughtcrime/securesms/ProfileSettingsFragment;Lorg/thoughtcrime/securesms/ProfileSettingsFragment$1;)V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;->actionModeCallback:Lorg/thoughtcrime/securesms/ProfileSettingsFragment$ActionModeCallback;

    return-void
.end method

.method static synthetic access$100(Lorg/thoughtcrime/securesms/ProfileSettingsFragment;)Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;
    .locals 0

    .line 44
    iget-object p0, p0, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;->adapter:Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lorg/thoughtcrime/securesms/ProfileSettingsFragment;)Lcom/b44t/messenger/DcContext;
    .locals 0

    .line 44
    iget-object p0, p0, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;->dcContext:Lcom/b44t/messenger/DcContext;

    return-object p0
.end method

.method static synthetic access$302(Lorg/thoughtcrime/securesms/ProfileSettingsFragment;Landroidx/appcompat/view/ActionMode;)Landroidx/appcompat/view/ActionMode;
    .locals 0

    .line 44
    iput-object p1, p0, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    return-object p1
.end method

.method private onSendMessage()V
    .locals 4

    .line 250
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;->dcContext:Lcom/b44t/messenger/DcContext;

    iget v1, p0, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;->contactId:I

    invoke-virtual {v0, v1}, Lcom/b44t/messenger/DcContext;->getContact(I)Lcom/b44t/messenger/DcContact;

    move-result-object v0

    .line 251
    iget-object v1, p0, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {v0}, Lcom/b44t/messenger/DcContact;->getId()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/b44t/messenger/DcContext;->createChatByContactId(I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lorg/thoughtcrime/securesms/ConversationActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "chat_id"

    .line 254
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 255
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 256
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    :cond_0
    return-void
.end method

.method private onVerifiedByClicked()V
    .locals 4

    .line 240
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;->dcContext:Lcom/b44t/messenger/DcContext;

    iget v1, p0, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;->contactId:I

    invoke-virtual {v0, v1}, Lcom/b44t/messenger/DcContext;->getContact(I)Lcom/b44t/messenger/DcContact;

    move-result-object v0

    .line 241
    invoke-virtual {v0}, Lcom/b44t/messenger/DcContact;->getVerifierId()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 243
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lorg/thoughtcrime/securesms/ProfileActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "contact_id"

    .line 244
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 245
    invoke-virtual {p0, v1}, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private update()V
    .locals 7

    .line 125
    iget v0, p0, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;->contactId:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget-object v2, p0, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {v2, v0}, Lcom/b44t/messenger/DcContext;->getContact(I)Lcom/b44t/messenger/DcContact;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 126
    :goto_0
    iget v2, p0, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;->chatId:I

    if-lez v2, :cond_1

    iget-object v3, p0, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {v3, v2}, Lcom/b44t/messenger/DcContext;->getChat(I)Lcom/b44t/messenger/DcChat;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_2

    .line 128
    invoke-virtual {v2}, Lcom/b44t/messenger/DcChat;->isMultiUser()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 129
    iget-object v3, p0, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;->dcContext:Lcom/b44t/messenger/DcContext;

    iget v4, p0, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;->chatId:I

    invoke-virtual {v3, v4}, Lcom/b44t/messenger/DcContext;->getChatContacts(I)[I

    move-result-object v3

    move-object v6, v3

    move-object v3, v1

    move-object v1, v6

    goto :goto_2

    .line 131
    :cond_2
    iget v3, p0, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;->contactId:I

    if-lez v3, :cond_3

    .line 132
    iget-object v4, p0, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;->dcContext:Lcom/b44t/messenger/DcContext;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v1, v3}, Lcom/b44t/messenger/DcContext;->getChatlist(ILjava/lang/String;I)Lcom/b44t/messenger/DcChatlist;

    move-result-object v3

    goto :goto_2

    :cond_3
    move-object v3, v1

    .line 135
    :goto_2
    iget-object v4, p0, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;->adapter:Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;

    invoke-virtual {v4, v1, v0, v3, v2}, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->changeData([ILcom/b44t/messenger/DcContact;Lcom/b44t/messenger/DcChatlist;Lcom/b44t/messenger/DcChat;)V

    .line 136
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;->listDecoration:Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration;->invalidateLayouts()V

    return-void
.end method


# virtual methods
.method protected getActionMode()Landroidx/appcompat/view/ActionMode;
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    return-object v0
.end method

.method public handleEvent(Lcom/b44t/messenger/DcEvent;)V
    .locals 0

    .line 115
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;->update()V

    return-void
.end method

.method synthetic lambda$onStatusLongClicked$0$org-thoughtcrime-securesms-ProfileSettingsFragment(Landroid/content/Context;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 164
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;->adapter:Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->getStatusText()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/thoughtcrime/securesms/util/Util;->writeTextToClipboard(Landroid/content/Context;Ljava/lang/String;)V

    const p2, 0x7f1200d1

    .line 165
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 329
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    if-eqz p3, :cond_1

    const-string p1, "contacts"

    .line 331
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 332
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 334
    iget-object p3, p0, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;->dcContext:Lcom/b44t/messenger/DcContext;

    const/4 v0, 0x0

    invoke-virtual {p3, v0, p2}, Lcom/b44t/messenger/DcContext;->createContact(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 335
    iget-object p3, p0, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;->dcContext:Lcom/b44t/messenger/DcContext;

    iget v0, p0, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;->chatId:I

    invoke-virtual {p3, v0, p2}, Lcom/b44t/messenger/DcContext;->addContactToChat(II)I

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onAddMember()V
    .locals 7

    .line 213
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;->dcContext:Lcom/b44t/messenger/DcContext;

    iget v1, p0, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;->chatId:I

    invoke-virtual {v0, v1}, Lcom/b44t/messenger/DcContext;->getChat(I)Lcom/b44t/messenger/DcChat;

    move-result-object v0

    .line 214
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lorg/thoughtcrime/securesms/ContactMultiSelectionActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "select_verified"

    .line 215
    invoke-virtual {v0}, Lcom/b44t/messenger/DcChat;->isProtected()Z

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 217
    iget-object v2, p0, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;->dcContext:Lcom/b44t/messenger/DcContext;

    iget v3, p0, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;->chatId:I

    invoke-virtual {v2, v3}, Lcom/b44t/messenger/DcContext;->getChatContacts(I)[I

    move-result-object v2

    .line 218
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget v5, v2, v4

    .line 219
    iget-object v6, p0, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {v6, v5}, Lcom/b44t/messenger/DcContext;->getContact(I)Lcom/b44t/messenger/DcContact;

    move-result-object v5

    invoke-virtual {v5}, Lcom/b44t/messenger/DcContact;->getAddr()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-string v2, "preselected_contacts"

    .line 221
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 v0, 0x2

    .line 222
    invoke-virtual {p0, v1, v0}, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 109
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 110
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;->listDecoration:Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration;

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 71
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "locale_extra"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/Locale;

    iput-object p1, p0, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;->locale:Ljava/util/Locale;

    if-eqz p1, :cond_0

    .line 75
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "chat_id"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;->chatId:I

    .line 76
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "contact_id"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;->contactId:I

    .line 77
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;->dcContext:Lcom/b44t/messenger/DcContext;

    return-void

    .line 74
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const p3, 0x7f0c00e5

    const/4 v0, 0x0

    .line 82
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 83
    new-instance p2, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p0}, Lorg/thoughtcrime/securesms/mms/GlideApp;->with(Landroidx/fragment/app/Fragment;)Lorg/thoughtcrime/securesms/mms/GlideRequests;

    move-result-object v1

    iget-object v2, p0, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;->locale:Ljava/util/Locale;

    invoke-direct {p2, p3, v1, v2, p0}, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;-><init>(Landroid/content/Context;Lorg/thoughtcrime/securesms/mms/GlideRequests;Ljava/util/Locale;Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$ItemClickListener;)V

    iput-object p2, p0, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;->adapter:Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;

    const p2, 0x7f0902d5

    .line 85
    invoke-static {p1, p2}, Lorg/thoughtcrime/securesms/util/ViewUtil;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;->list:Landroidx/recyclerview/widget/RecyclerView;

    .line 86
    iget-object p3, p0, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;->adapter:Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 87
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;->list:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p3, v1, v2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 88
    new-instance p2, Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration;

    iget-object p3, p0, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;->adapter:Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;

    invoke-direct {p2, p3, v0, v2}, Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration;-><init>(Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration$StickyHeaderAdapter;ZZ)V

    iput-object p2, p0, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;->listDecoration:Lorg/thoughtcrime/securesms/util/StickyHeaderDecoration;

    .line 89
    iget-object p3, p0, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;->list:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 91
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;->update()V

    .line 93
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getEventCenter(Landroid/content/Context;)Lorg/thoughtcrime/securesms/connect/DcEventCenter;

    move-result-object p2

    const/16 p3, 0x7e4

    .line 94
    invoke-virtual {p2, p3, p0}, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->addObserver(ILorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)V

    const/16 p3, 0x7ee

    .line 95
    invoke-virtual {p2, p3, p0}, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->addObserver(ILorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)V

    const/16 p3, 0x7d0

    .line 96
    invoke-virtual {p2, p3, p0}, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->addObserver(ILorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)V

    const/16 p3, 0x7d5

    .line 97
    invoke-virtual {p2, p3, p0}, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->addObserver(ILorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 103
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getEventCenter(Landroid/content/Context;)Lorg/thoughtcrime/securesms/connect/DcEventCenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->removeObservers(Lorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)V

    .line 104
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onMemberClicked(I)V
    .locals 3

    .line 188
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    const/16 v1, 0x9

    if-eqz v0, :cond_2

    if-gt p1, v1, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    .line 190
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;->adapter:Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->toggleMemberSelection(I)V

    .line 191
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;->adapter:Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->getSelectedMembersCount()I

    move-result p1

    if-nez p1, :cond_1

    .line 192
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    invoke-virtual {p1}, Landroidx/appcompat/view/ActionMode;->finish()V

    const/4 p1, 0x0

    .line 193
    iput-object p1, p0, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    goto :goto_0

    .line 195
    :cond_1
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;->adapter:Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->getSelectedMembersCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const/4 v0, -0x3

    if-ne p1, v0, :cond_3

    .line 200
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;->onAddMember()V

    goto :goto_0

    :cond_3
    const/4 v0, -0x4

    if-ne p1, v0, :cond_4

    .line 203
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;->onQrInvite()V

    goto :goto_0

    :cond_4
    if-le p1, v1, :cond_5

    .line 206
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lorg/thoughtcrime/securesms/ProfileActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "contact_id"

    .line 207
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 208
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;->startActivity(Landroid/content/Intent;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onMemberLongClicked(I)V
    .locals 2

    const/16 v0, 0x9

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 174
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    if-nez v0, :cond_1

    .line 175
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;->dcContext:Lcom/b44t/messenger/DcContext;

    iget v1, p0, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;->chatId:I

    invoke-virtual {v0, v1}, Lcom/b44t/messenger/DcContext;->getChat(I)Lcom/b44t/messenger/DcChat;

    move-result-object v0

    .line 176
    invoke-virtual {v0}, Lcom/b44t/messenger/DcChat;->canSend()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 177
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;->adapter:Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;->toggleMemberSelection(I)V

    .line 178
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;->actionModeCallback:Lorg/thoughtcrime/securesms/ProfileSettingsFragment$ActionModeCallback;

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatActivity;->startSupportActionMode(Landroidx/appcompat/view/ActionMode$Callback;)Landroidx/appcompat/view/ActionMode;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    goto :goto_0

    .line 181
    :cond_1
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;->onMemberClicked(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onQrInvite()V
    .locals 3

    .line 226
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lorg/thoughtcrime/securesms/qr/QrShowActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "chat_id"

    .line 227
    iget v2, p0, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;->chatId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 228
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onSettingsClicked(I)V
    .locals 1

    const/16 v0, 0x76

    if-eq p1, v0, :cond_1

    const/16 v0, 0x78

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 147
    :cond_0
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;->onSendMessage()V

    goto :goto_0

    .line 150
    :cond_1
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;->onVerifiedByClicked()V

    :goto_0
    return-void
.end method

.method public onSharedChatClicked(I)V
    .locals 3

    .line 233
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lorg/thoughtcrime/securesms/ConversationActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "chat_id"

    .line 234
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 235
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 236
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return-void
.end method

.method public onStatusLongClicked()V
    .locals 5

    .line 157
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ProfileSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 158
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f12031f

    .line 159
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/CharSequence;

    const v3, 0x7f120239

    .line 161
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Lorg/thoughtcrime/securesms/ProfileSettingsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0}, Lorg/thoughtcrime/securesms/ProfileSettingsFragment$$ExternalSyntheticLambda0;-><init>(Lorg/thoughtcrime/securesms/ProfileSettingsFragment;Landroid/content/Context;)V

    .line 160
    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120097

    const/4 v2, 0x0

    .line 167
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 168
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method public synthetic runOnMain()Z
    .locals 1

    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate$-CC;->$default$runOnMain(Lorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)Z

    move-result v0

    return v0
.end method
