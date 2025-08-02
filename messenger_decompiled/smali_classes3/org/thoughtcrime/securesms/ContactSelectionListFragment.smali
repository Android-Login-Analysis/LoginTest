.class public Lorg/thoughtcrime/securesms/ContactSelectionListFragment;
.super Landroidx/fragment/app/Fragment;
.source "ContactSelectionListFragment.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;
.implements Lorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/ContactSelectionListFragment$OnContactSelectedListener;,
        Lorg/thoughtcrime/securesms/ContactSelectionListFragment$ListClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/fragment/app/Fragment;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Lorg/thoughtcrime/securesms/connect/DcContactsLoader$Ret;",
        ">;",
        "Lorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;"
    }
.end annotation


# static fields
.field public static final ALLOW_CREATION:Ljava/lang/String; = "allow_creation"

.field public static final CONTACT_ADDR_RESULT_CODE:I = 0xeec3

.field public static final MULTI_SELECT:Ljava/lang/String; = "multi_select"

.field public static final PRESELECTED_CONTACTS:Ljava/lang/String; = "preselected_contacts"

.field public static final SELECT_VERIFIED_EXTRA:Ljava/lang/String; = "select_verified"

.field private static final TAG:Ljava/lang/String; = "ContactSelectionListFragment"


# instance fields
.field private actionMode:Landroidx/appcompat/view/ActionMode;

.field private actionModeCallback:Landroidx/appcompat/view/ActionMode$Callback;

.field private cursorFilter:Ljava/lang/String;

.field private dcContext:Lcom/b44t/messenger/DcContext;

.field private onContactSelectedListener:Lorg/thoughtcrime/securesms/ContactSelectionListFragment$OnContactSelectedListener;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private selectedContacts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$a1dUHzqZ20aZaWw23H69uSWluQA(Lorg/thoughtcrime/securesms/ContactSelectionListFragment;)V
    .locals 0

    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->handleContactPermissionGranted()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 79
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/thoughtcrime/securesms/ContactSelectionListFragment;Landroid/view/Menu;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->setCorrectMenuVisibility(Landroid/view/Menu;)V

    return-void
.end method

.method static synthetic access$100(Lorg/thoughtcrime/securesms/ContactSelectionListFragment;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->handleSelectAll()V

    return-void
.end method

.method static synthetic access$1000(Lorg/thoughtcrime/securesms/ContactSelectionListFragment;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->updateActionModeTitle()V

    return-void
.end method

.method static synthetic access$1100(Lorg/thoughtcrime/securesms/ContactSelectionListFragment;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->finishActionModeIfSelectionIsEmpty()V

    return-void
.end method

.method static synthetic access$1200(Lorg/thoughtcrime/securesms/ContactSelectionListFragment;)Z
    .locals 0

    .line 79
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->isMulti()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lorg/thoughtcrime/securesms/ContactSelectionListFragment;)Ljava/util/Set;
    .locals 0

    .line 79
    iget-object p0, p0, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->selectedContacts:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$1400(Lorg/thoughtcrime/securesms/ContactSelectionListFragment;)Ljava/lang/String;
    .locals 0

    .line 79
    iget-object p0, p0, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->cursorFilter:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/thoughtcrime/securesms/ContactSelectionListFragment;)Z
    .locals 0

    .line 79
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->isSelectVerfied()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1600(Lorg/thoughtcrime/securesms/ContactSelectionListFragment;)Lorg/thoughtcrime/securesms/ContactSelectionListFragment$OnContactSelectedListener;
    .locals 0

    .line 79
    iget-object p0, p0, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->onContactSelectedListener:Lorg/thoughtcrime/securesms/ContactSelectionListFragment$OnContactSelectedListener;

    return-object p0
.end method

.method static synthetic access$1700(Lorg/thoughtcrime/securesms/ContactSelectionListFragment;)Landroidx/appcompat/view/ActionMode$Callback;
    .locals 0

    .line 79
    iget-object p0, p0, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->actionModeCallback:Landroidx/appcompat/view/ActionMode$Callback;

    return-object p0
.end method

.method static synthetic access$200(Lorg/thoughtcrime/securesms/ContactSelectionListFragment;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->handleViewProfile()V

    return-void
.end method

.method static synthetic access$300(Lorg/thoughtcrime/securesms/ContactSelectionListFragment;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->handleDeleteSelected()V

    return-void
.end method

.method static synthetic access$400(Lorg/thoughtcrime/securesms/ContactSelectionListFragment;)Landroidx/appcompat/view/ActionMode;
    .locals 0

    .line 79
    iget-object p0, p0, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    return-object p0
.end method

.method static synthetic access$402(Lorg/thoughtcrime/securesms/ContactSelectionListFragment;Landroidx/appcompat/view/ActionMode;)Landroidx/appcompat/view/ActionMode;
    .locals 0

    .line 79
    iput-object p1, p0, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$500(Lorg/thoughtcrime/securesms/ContactSelectionListFragment;)Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;
    .locals 0

    .line 79
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->getContactSelectionListAdapter()Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lorg/thoughtcrime/securesms/ContactSelectionListFragment;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->loadSystemContacts()V

    return-void
.end method

.method static synthetic access$800(Lorg/thoughtcrime/securesms/ContactSelectionListFragment;)Lcom/b44t/messenger/DcContext;
    .locals 0

    .line 79
    iget-object p0, p0, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->dcContext:Lcom/b44t/messenger/DcContext;

    return-object p0
.end method

.method static synthetic access$900()Ljava/lang/String;
    .locals 1

    .line 79
    sget-object v0, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private finishActionModeIfSelectionIsEmpty()V
    .locals 1

    .line 402
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->getContactSelectionListAdapter()Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;->getActionModeSelection()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 403
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    invoke-virtual {v0}, Landroidx/appcompat/view/ActionMode;->finish()V

    :cond_0
    return-void
.end method

.method private getContactSelectionListAdapter()Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;
    .locals 1

    .line 240
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;

    return-object v0
.end method

.method private handleContactPermissionGranted()V
    .locals 2

    .line 307
    new-instance v0, Lorg/thoughtcrime/securesms/ContactSelectionListFragment$2;

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment$2;-><init>(Lorg/thoughtcrime/securesms/ContactSelectionListFragment;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 315
    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private handleDeleteSelected()V
    .locals 3

    .line 214
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120057

    .line 215
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lorg/thoughtcrime/securesms/ContactSelectionListFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment$$ExternalSyntheticLambda1;-><init>(Lorg/thoughtcrime/securesms/ContactSelectionListFragment;)V

    const v2, 0x7f1200e4

    .line 216
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120097

    const/4 v2, 0x0

    .line 235
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 236
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private handleSelectAll()V
    .locals 1

    .line 185
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->getContactSelectionListAdapter()Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;->selectAll()V

    .line 186
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->updateActionModeTitle()V

    return-void
.end method

.method private handleViewProfile()V
    .locals 4

    .line 203
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->getContactSelectionListAdapter()Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;

    move-result-object v0

    .line 204
    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;->getActionModeSelection()Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 205
    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;->getActionModeSelection()Landroid/util/SparseIntArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v0

    .line 207
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lorg/thoughtcrime/securesms/ProfileActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "contact_id"

    .line 208
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 209
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private initializeCursor()V
    .locals 7

    .line 266
    new-instance v6, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 267
    invoke-static {p0}, Lorg/thoughtcrime/securesms/mms/GlideApp;->with(Landroidx/fragment/app/Fragment;)Lorg/thoughtcrime/securesms/mms/GlideRequests;

    move-result-object v2

    new-instance v3, Lorg/thoughtcrime/securesms/ContactSelectionListFragment$ListClickListener;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment$ListClickListener;-><init>(Lorg/thoughtcrime/securesms/ContactSelectionListFragment;Lorg/thoughtcrime/securesms/ContactSelectionListFragment$1;)V

    .line 269
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->isMulti()Z

    move-result v4

    const/4 v5, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;-><init>(Landroid/content/Context;Lorg/thoughtcrime/securesms/mms/GlideRequests;Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter$ItemClickListener;ZZ)V

    .line 271
    invoke-virtual {v6}, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;->getSelectedContacts()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->selectedContacts:Ljava/util/Set;

    .line 272
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "preselected_contacts"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 274
    iget-object v1, p0, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->selectedContacts:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 276
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v6}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private isMulti()Z
    .locals 3

    .line 258
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "multi_select"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isSelectVerfied()Z
    .locals 3

    .line 262
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "select_verified"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private loadSystemContacts()V
    .locals 1

    .line 319
    new-instance v0, Lorg/thoughtcrime/securesms/ContactSelectionListFragment$3;

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment$3;-><init>(Lorg/thoughtcrime/securesms/ContactSelectionListFragment;)V

    .line 334
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private setCorrectMenuVisibility(Landroid/view/Menu;)V
    .locals 3

    .line 194
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->getContactSelectionListAdapter()Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;

    move-result-object v0

    .line 195
    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;->getActionModeSelection()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    const v1, 0x7f090217

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 196
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 198
    :cond_0
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_0
    return-void
.end method

.method private updateActionModeTitle()V
    .locals 2

    .line 190
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->getContactSelectionListAdapter()Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;->getActionModeSelection()Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getSelectedContacts()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 249
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 250
    iget-object v1, p0, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->selectedContacts:Ljava/util/Set;

    if-eqz v1, :cond_0

    .line 251
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v0
.end method

.method public handleEvent(Lcom/b44t/messenger/DcEvent;)V
    .locals 2

    .line 418
    invoke-virtual {p1}, Lcom/b44t/messenger/DcEvent;->getId()I

    move-result p1

    const/16 v0, 0x7ee

    if-ne p1, v0, :cond_0

    .line 419
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    :cond_0
    return-void
.end method

.method synthetic lambda$handleDeleteSelected$0$org-thoughtcrime-securesms-ContactSelectionListFragment()V
    .locals 3

    .line 228
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f120098

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method synthetic lambda$handleDeleteSelected$1$org-thoughtcrime-securesms-ContactSelectionListFragment(Landroid/util/SparseIntArray;)V
    .locals 5

    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 221
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 222
    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    .line 223
    iget-object v4, p0, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {v4, v3}, Lcom/b44t/messenger/DcContext;->deleteContact(I)Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    if-nez v3, :cond_1

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v2, 0x1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    .line 227
    new-instance p1, Lorg/thoughtcrime/securesms/ContactSelectionListFragment$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment$$ExternalSyntheticLambda2;-><init>(Lorg/thoughtcrime/securesms/ContactSelectionListFragment;)V

    invoke-static {p1}, Lorg/thoughtcrime/securesms/util/Util;->runOnMain(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method

.method synthetic lambda$handleDeleteSelected$2$org-thoughtcrime-securesms-ContactSelectionListFragment(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 217
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->getContactSelectionListAdapter()Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;

    move-result-object p1

    .line 218
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;->getActionModeSelection()Landroid/util/SparseIntArray;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object p2

    .line 219
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/thoughtcrime/securesms/ContactSelectionListFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment$$ExternalSyntheticLambda0;-><init>(Lorg/thoughtcrime/securesms/ContactSelectionListFragment;Landroid/util/SparseIntArray;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 231
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 232
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;->resetActionModeSelection()V

    .line 233
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    invoke-virtual {p1}, Landroidx/appcompat/view/ActionMode;->finish()V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 102
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 104
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->dcContext:Lcom/b44t/messenger/DcContext;

    .line 105
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getEventCenter(Landroid/content/Context;)Lorg/thoughtcrime/securesms/connect/DcEventCenter;

    move-result-object p1

    const/16 v0, 0x7ee

    invoke-virtual {p1, v0, p0}, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->addObserver(ILorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)V

    .line 106
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->initializeCursor()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 425
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const p2, 0xeec3

    if-ne p1, p2, :cond_0

    .line 427
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->selectedContacts:Ljava/util/Set;

    const-string p2, "contact_addr"

    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 428
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object p1

    const/4 p2, 0x0

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3, p0}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    :cond_0
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/loader/content/Loader<",
            "Lorg/thoughtcrime/securesms/connect/DcContactsLoader$Ret;",
            ">;"
        }
    .end annotation

    .line 286
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string p2, "allow_creation"

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 287
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->isSelectVerfied()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 288
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lorg/thoughtcrime/securesms/util/RelayUtil;->isRelayingMessageContent(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->isMulti()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    if-eqz p1, :cond_2

    .line 289
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->isMulti()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 v8, 0x1

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    .line 292
    :goto_2
    new-instance p1, Lorg/thoughtcrime/securesms/connect/DcContactsLoader;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const/4 v4, 0x2

    iget-object v5, p0, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->cursorFilter:Ljava/lang/String;

    const/4 v9, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v9}, Lorg/thoughtcrime/securesms/connect/DcContactsLoader;-><init>(Landroid/content/Context;ILjava/lang/String;ZZZZ)V

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c002e

    const/4 v0, 0x0

    .line 130
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0902d5

    .line 132
    invoke-static {p1, p2}, Lorg/thoughtcrime/securesms/util/ViewUtil;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 133
    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 134
    new-instance p2, Lorg/thoughtcrime/securesms/ContactSelectionListFragment$1;

    invoke-direct {p2, p0}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment$1;-><init>(Lorg/thoughtcrime/securesms/ContactSelectionListFragment;)V

    iput-object p2, p0, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->actionModeCallback:Landroidx/appcompat/view/ActionMode$Callback;

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 111
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getEventCenter(Landroid/content/Context;)Lorg/thoughtcrime/securesms/connect/DcEventCenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->removeObservers(Lorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)V

    .line 112
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 79
    check-cast p2, Lorg/thoughtcrime/securesms/connect/DcContactsLoader$Ret;

    invoke-virtual {p0, p1, p2}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->onLoadFinished(Landroidx/loader/content/Loader;Lorg/thoughtcrime/securesms/connect/DcContactsLoader$Ret;)V

    return-void
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Lorg/thoughtcrime/securesms/connect/DcContactsLoader$Ret;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Lorg/thoughtcrime/securesms/connect/DcContactsLoader$Ret;",
            ">;",
            "Lorg/thoughtcrime/securesms/connect/DcContactsLoader$Ret;",
            ")V"
        }
    .end annotation

    .line 297
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    check-cast p1, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;

    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;->changeData(Lorg/thoughtcrime/securesms/connect/DcContactsLoader$Ret;)V

    return-void
.end method

.method public onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Lorg/thoughtcrime/securesms/connect/DcContactsLoader$Ret;",
            ">;)V"
        }
    .end annotation

    .line 302
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    check-cast p1, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter;->changeData(Lorg/thoughtcrime/securesms/connect/DcContactsLoader$Ret;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 245
    invoke-static {p0, p1, p2, p3}, Lorg/thoughtcrime/securesms/permissions/Permissions;->onRequestPermissionsResult(Landroidx/fragment/app/Fragment;I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onStart()V
    .locals 4

    .line 117
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 118
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, p0}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    .line 119
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->dcContext:Lcom/b44t/messenger/DcContext;

    const-string v1, "ui.android.show_system_contacts"

    invoke-virtual {v0, v1}, Lcom/b44t/messenger/DcContext;->getConfigInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {v0}, Lcom/b44t/messenger/DcContext;->isChatmail()Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    invoke-static {p0}, Lorg/thoughtcrime/securesms/permissions/Permissions;->with(Landroidx/fragment/app/Fragment;)Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v3, "android.permission.READ_CONTACTS"

    aput-object v3, v1, v2

    .line 121
    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->request([Ljava/lang/String;)Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object v0

    .line 122
    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->ifNecessary()Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object v0

    new-instance v1, Lorg/thoughtcrime/securesms/ContactSelectionListFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment$$ExternalSyntheticLambda3;-><init>(Lorg/thoughtcrime/securesms/ContactSelectionListFragment;)V

    .line 123
    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->onAllGranted(Ljava/lang/Runnable;)Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object v0

    .line 124
    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->execute()V

    :cond_0
    return-void
.end method

.method public synthetic runOnMain()Z
    .locals 1

    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate$-CC;->$default$runOnMain(Lorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)Z

    move-result v0

    return v0
.end method

.method public setOnContactSelectedListener(Lorg/thoughtcrime/securesms/ContactSelectionListFragment$OnContactSelectedListener;)V
    .locals 0

    .line 408
    iput-object p1, p0, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->onContactSelectedListener:Lorg/thoughtcrime/securesms/ContactSelectionListFragment$OnContactSelectedListener;

    return-void
.end method

.method public setQueryFilter(Ljava/lang/String;)V
    .locals 2

    .line 280
    iput-object p1, p0, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->cursorFilter:Ljava/lang/String;

    .line 281
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void
.end method
