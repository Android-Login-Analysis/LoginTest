.class public final synthetic Lorg/thoughtcrime/securesms/search/SearchFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/b44t/messenger/DcContext;

.field public final synthetic f$1:Lcom/b44t/messenger/DcContact;

.field public final synthetic f$2:Lorg/thoughtcrime/securesms/ConversationListActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/b44t/messenger/DcContext;Lcom/b44t/messenger/DcContact;Lorg/thoughtcrime/securesms/ConversationListActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/search/SearchFragment$$ExternalSyntheticLambda1;->f$0:Lcom/b44t/messenger/DcContext;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/search/SearchFragment$$ExternalSyntheticLambda1;->f$1:Lcom/b44t/messenger/DcContact;

    iput-object p3, p0, Lorg/thoughtcrime/securesms/search/SearchFragment$$ExternalSyntheticLambda1;->f$2:Lorg/thoughtcrime/securesms/ConversationListActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lorg/thoughtcrime/securesms/search/SearchFragment$$ExternalSyntheticLambda1;->f$0:Lcom/b44t/messenger/DcContext;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/search/SearchFragment$$ExternalSyntheticLambda1;->f$1:Lcom/b44t/messenger/DcContact;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/search/SearchFragment$$ExternalSyntheticLambda1;->f$2:Lorg/thoughtcrime/securesms/ConversationListActivity;

    invoke-static {v0, v1, v2, p1, p2}, Lorg/thoughtcrime/securesms/search/SearchFragment;->lambda$onContactClicked$1(Lcom/b44t/messenger/DcContext;Lcom/b44t/messenger/DcContact;Lorg/thoughtcrime/securesms/ConversationListActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method
