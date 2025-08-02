.class Lorg/thoughtcrime/securesms/ContactSelectionListFragment$3;
.super Ljava/lang/Thread;
.source "ContactSelectionListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->loadSystemContacts()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/ContactSelectionListFragment;


# direct methods
.method constructor <init>(Lorg/thoughtcrime/securesms/ContactSelectionListFragment;)V
    .locals 0

    .line 319
    iput-object p1, p0, Lorg/thoughtcrime/securesms/ContactSelectionListFragment$3;->this$0:Lorg/thoughtcrime/securesms/ContactSelectionListFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 323
    :try_start_0
    invoke-static {}, Lorg/thoughtcrime/securesms/contacts/ContactAccessor;->getInstance()Lorg/thoughtcrime/securesms/contacts/ContactAccessor;

    move-result-object v0

    .line 324
    iget-object v1, p0, Lorg/thoughtcrime/securesms/ContactSelectionListFragment$3;->this$0:Lorg/thoughtcrime/securesms/ContactSelectionListFragment;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/contacts/ContactAccessor;->getAllSystemContactsAsString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 325
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 326
    iget-object v1, p0, Lorg/thoughtcrime/securesms/ContactSelectionListFragment$3;->this$0:Lorg/thoughtcrime/securesms/ContactSelectionListFragment;

    invoke-static {v1}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->access$800(Lorg/thoughtcrime/securesms/ContactSelectionListFragment;)Lcom/b44t/messenger/DcContext;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/b44t/messenger/DcContext;->addAddressBook(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 329
    invoke-static {}, Lorg/thoughtcrime/securesms/ContactSelectionListFragment;->access$900()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Caught a weird bug in the Android OS https://github.com/deltachat/deltachat-android/issues/1639: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
