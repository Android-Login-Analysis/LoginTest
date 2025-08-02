.class Lorg/thoughtcrime/securesms/ContactSelectionListFragment$ListClickListener;
.super Ljava/lang/Object;
.source "ContactSelectionListFragment.java"

# interfaces
.implements Lorg/thoughtcrime/securesms/contacts/ContactSelectionListAdapter$ItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/ContactSelectionListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/ContactSelectionListFragment;


# direct methods
.method private constructor <init>(Lorg/thoughtcrime/securesms/ContactSelectionListFragment;)V
    .locals 0

    .line 337
    iput-object p1, p0, Lorg/thoughtcrime/securesms/ContactSelectionListFragment$ListClickListener;->this$0:Lorg/thoughtcrime/securesms/ContactSelectionListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/thoughtcrime/securesms/ContactSelectionListFragment;Lorg/thoughtcrime/securesms/ContactSelectionListFragment$1;)V
    .locals 0

    .line 337
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment$ListClickListener;-><init>(Lorg/thoughtcrime/securesms/ContactSelectionListFragment;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$onItemClick$0$org-thoughtcrime-securesms-ContactSelectionListFragment$ListClickListener(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 369
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ContactSelectionListFragment$ListClickListener;->this$0:Lorg/thoughtcrime/securesms/ContactSelectionListFragment;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string p2, "#howtoe2ee"

    invoke-static {p1, p2}, Lorg/thoughtcrime/securesms/connect/DcHelper;->openHelp(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$onItemClick$1$org-thoughtcrime-securesms-ContactSelectionListFragment$ListClickListener(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 370
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ContactSelectionListFragment$ListClickListener;->this$0:Lorg/thoughtcrime/securesms/ContactSelectionListFragment;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ContactSelectionListFragment$ListClickListener;->this$0:Lorg/thoughtcrime/securesms/ContactSelectionListFragment;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lorg/thoughtcrime/securesms/qr/QrActivity;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onItemClick(Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;Z)V
    .locals 3

    if-eqz p2, :cond_1

    .line 342
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ContactSelectionListFragment$ListClickListener;->this$0:Lorg/thoughtcrime/securesms/ContactSelectionListFragment;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->access$400(Lorg/thoughtcrime/securesms/ContactSelectionListFragment;)Landroidx/appcompat/view/ActionMode;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 343
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ContactSelectionListFragment$ListClickListener;->this$0:Lorg/thoughtcrime/securesms/ContactSelectionListFragment;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->access$400(Lorg/thoughtcrime/securesms/ContactSelectionListFragment;)Landroidx/appcompat/view/ActionMode;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object p1

    .line 344
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ContactSelectionListFragment$ListClickListener;->this$0:Lorg/thoughtcrime/securesms/ContactSelectionListFragment;

    invoke-static {p2, p1}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->access$000(Lorg/thoughtcrime/securesms/ContactSelectionListFragment;Landroid/view/Menu;)V

    .line 345
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ContactSelectionListFragment$ListClickListener;->this$0:Lorg/thoughtcrime/securesms/ContactSelectionListFragment;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->access$1000(Lorg/thoughtcrime/securesms/ContactSelectionListFragment;)V

    .line 346
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ContactSelectionListFragment$ListClickListener;->this$0:Lorg/thoughtcrime/securesms/ContactSelectionListFragment;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->access$1100(Lorg/thoughtcrime/securesms/ContactSelectionListFragment;)V

    :cond_0
    return-void

    .line 350
    :cond_1
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;->getSpecialId()I

    move-result p2

    .line 351
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;->getNumber()Ljava/lang/String;

    move-result-object v0

    .line 352
    iget-object v1, p0, Lorg/thoughtcrime/securesms/ContactSelectionListFragment$ListClickListener;->this$0:Lorg/thoughtcrime/securesms/ContactSelectionListFragment;

    invoke-static {v1}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->access$1200(Lorg/thoughtcrime/securesms/ContactSelectionListFragment;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/thoughtcrime/securesms/ContactSelectionListFragment$ListClickListener;->this$0:Lorg/thoughtcrime/securesms/ContactSelectionListFragment;

    invoke-static {v1}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->access$1300(Lorg/thoughtcrime/securesms/ContactSelectionListFragment;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 383
    :cond_2
    iget-object v1, p0, Lorg/thoughtcrime/securesms/ContactSelectionListFragment$ListClickListener;->this$0:Lorg/thoughtcrime/securesms/ContactSelectionListFragment;

    invoke-static {v1}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->access$1300(Lorg/thoughtcrime/securesms/ContactSelectionListFragment;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 384
    invoke-virtual {p1, v1}, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;->setChecked(Z)V

    .line 385
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ContactSelectionListFragment$ListClickListener;->this$0:Lorg/thoughtcrime/securesms/ContactSelectionListFragment;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->access$1600(Lorg/thoughtcrime/securesms/ContactSelectionListFragment;)Lorg/thoughtcrime/securesms/ContactSelectionListFragment$OnContactSelectedListener;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 386
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ContactSelectionListFragment$ListClickListener;->this$0:Lorg/thoughtcrime/securesms/ContactSelectionListFragment;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->access$1600(Lorg/thoughtcrime/securesms/ContactSelectionListFragment;)Lorg/thoughtcrime/securesms/ContactSelectionListFragment$OnContactSelectedListener;

    move-result-object p1

    invoke-interface {p1, p2, v0}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment$OnContactSelectedListener;->onContactDeselected(ILjava/lang/String;)V

    goto/16 :goto_2

    :cond_3
    :goto_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_6

    .line 354
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lorg/thoughtcrime/securesms/ContactSelectionListFragment$ListClickListener;->this$0:Lorg/thoughtcrime/securesms/ContactSelectionListFragment;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const-class v0, Lorg/thoughtcrime/securesms/contacts/NewContactActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 355
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ContactSelectionListFragment$ListClickListener;->this$0:Lorg/thoughtcrime/securesms/ContactSelectionListFragment;

    invoke-static {p2}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->access$800(Lorg/thoughtcrime/securesms/ContactSelectionListFragment;)Lcom/b44t/messenger/DcContext;

    move-result-object p2

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ContactSelectionListFragment$ListClickListener;->this$0:Lorg/thoughtcrime/securesms/ContactSelectionListFragment;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->access$1400(Lorg/thoughtcrime/securesms/ContactSelectionListFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/b44t/messenger/DcContext;->mayBeValidAddr(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 356
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ContactSelectionListFragment$ListClickListener;->this$0:Lorg/thoughtcrime/securesms/ContactSelectionListFragment;

    invoke-static {p2}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->access$1400(Lorg/thoughtcrime/securesms/ContactSelectionListFragment;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "contact_addr"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 358
    :cond_4
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ContactSelectionListFragment$ListClickListener;->this$0:Lorg/thoughtcrime/securesms/ContactSelectionListFragment;

    invoke-static {p2}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->access$1200(Lorg/thoughtcrime/securesms/ContactSelectionListFragment;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 359
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ContactSelectionListFragment$ListClickListener;->this$0:Lorg/thoughtcrime/securesms/ContactSelectionListFragment;

    const v0, 0xeec3

    invoke-virtual {p2, p1, v0}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 361
    :cond_5
    iget-object p2, p0, Lorg/thoughtcrime/securesms/ContactSelectionListFragment$ListClickListener;->this$0:Lorg/thoughtcrime/securesms/ContactSelectionListFragment;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_1
    return-void

    .line 366
    :cond_6
    iget-object v1, p0, Lorg/thoughtcrime/securesms/ContactSelectionListFragment$ListClickListener;->this$0:Lorg/thoughtcrime/securesms/ContactSelectionListFragment;

    invoke-static {v1}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->access$1500(Lorg/thoughtcrime/securesms/ContactSelectionListFragment;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;->getDcContact()Lcom/b44t/messenger/DcContact;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b44t/messenger/DcContact;->isVerified()Z

    move-result v1

    if-nez v1, :cond_7

    .line 367
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object p2, p0, Lorg/thoughtcrime/securesms/ContactSelectionListFragment$ListClickListener;->this$0:Lorg/thoughtcrime/securesms/ContactSelectionListFragment;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p2, 0x7f120422

    .line 368
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lorg/thoughtcrime/securesms/ContactSelectionListFragment$ListClickListener$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment$ListClickListener$$ExternalSyntheticLambda0;-><init>(Lorg/thoughtcrime/securesms/ContactSelectionListFragment$ListClickListener;)V

    const v0, 0x7f1201c5

    .line 369
    invoke-virtual {p1, v0, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lorg/thoughtcrime/securesms/ContactSelectionListFragment$ListClickListener$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment$ListClickListener$$ExternalSyntheticLambda1;-><init>(Lorg/thoughtcrime/securesms/ContactSelectionListFragment$ListClickListener;)V

    const v0, 0x7f12038d

    .line 370
    invoke-virtual {p1, v0, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f1202d8

    const/4 v0, 0x0

    .line 371
    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 372
    invoke-virtual {p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 373
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void

    .line 377
    :cond_7
    iget-object v1, p0, Lorg/thoughtcrime/securesms/ContactSelectionListFragment$ListClickListener;->this$0:Lorg/thoughtcrime/securesms/ContactSelectionListFragment;

    invoke-static {v1}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->access$1300(Lorg/thoughtcrime/securesms/ContactSelectionListFragment;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 378
    invoke-virtual {p1, v2}, Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;->setChecked(Z)V

    .line 379
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ContactSelectionListFragment$ListClickListener;->this$0:Lorg/thoughtcrime/securesms/ContactSelectionListFragment;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->access$1600(Lorg/thoughtcrime/securesms/ContactSelectionListFragment;)Lorg/thoughtcrime/securesms/ContactSelectionListFragment$OnContactSelectedListener;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 380
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ContactSelectionListFragment$ListClickListener;->this$0:Lorg/thoughtcrime/securesms/ContactSelectionListFragment;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->access$1600(Lorg/thoughtcrime/securesms/ContactSelectionListFragment;)Lorg/thoughtcrime/securesms/ContactSelectionListFragment$OnContactSelectedListener;

    move-result-object p1

    invoke-interface {p1, p2, v0}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment$OnContactSelectedListener;->onContactSelected(ILjava/lang/String;)V

    :cond_8
    :goto_2
    return-void
.end method

.method public onItemLongClick(Lorg/thoughtcrime/securesms/contacts/ContactSelectionListItem;)V
    .locals 2

    .line 393
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ContactSelectionListFragment$ListClickListener;->this$0:Lorg/thoughtcrime/securesms/ContactSelectionListFragment;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->access$400(Lorg/thoughtcrime/securesms/ContactSelectionListFragment;)Landroidx/appcompat/view/ActionMode;

    move-result-object p1

    if-nez p1, :cond_0

    .line 394
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ContactSelectionListFragment$ListClickListener;->this$0:Lorg/thoughtcrime/securesms/ContactSelectionListFragment;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/ContactSelectionListFragment$ListClickListener;->this$0:Lorg/thoughtcrime/securesms/ContactSelectionListFragment;

    invoke-static {v1}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->access$1700(Lorg/thoughtcrime/securesms/ContactSelectionListFragment;)Landroidx/appcompat/view/ActionMode$Callback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->startSupportActionMode(Landroidx/appcompat/view/ActionMode$Callback;)Landroidx/appcompat/view/ActionMode;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->access$402(Lorg/thoughtcrime/securesms/ContactSelectionListFragment;Landroidx/appcompat/view/ActionMode;)Landroidx/appcompat/view/ActionMode;

    goto :goto_0

    .line 396
    :cond_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ContactSelectionListFragment$ListClickListener;->this$0:Lorg/thoughtcrime/securesms/ContactSelectionListFragment;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->access$1100(Lorg/thoughtcrime/securesms/ContactSelectionListFragment;)V

    :goto_0
    return-void
.end method
