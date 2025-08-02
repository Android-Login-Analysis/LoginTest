.class public Lorg/thoughtcrime/securesms/ConversationListRelayingActivity;
.super Lorg/thoughtcrime/securesms/ConversationListActivity;
.source "ConversationListRelayingActivity.java"


# static fields
.field static INSTANCE:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lorg/thoughtcrime/securesms/ConversationListRelayingActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ConversationListActivity;-><init>()V

    return-void
.end method

.method public static finishActivity()V
    .locals 1

    .line 55
    sget-object v0, Lorg/thoughtcrime/securesms/ConversationListRelayingActivity;->INSTANCE:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56
    sget-object v0, Lorg/thoughtcrime/securesms/ConversationListRelayingActivity;->INSTANCE:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/ConversationListRelayingActivity;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/ConversationListRelayingActivity;->finish()V

    :cond_0
    return-void
.end method

.method public static start(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 2

    .line 50
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lorg/thoughtcrime/securesms/ConversationListRelayingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 51
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static start(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V
    .locals 3

    .line 45
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lorg/thoughtcrime/securesms/ConversationListRelayingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 46
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;Z)V
    .locals 0

    .line 33
    invoke-super {p0, p1, p2}, Lorg/thoughtcrime/securesms/ConversationListActivity;->onCreate(Landroid/os/Bundle;Z)V

    .line 34
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object p1, Lorg/thoughtcrime/securesms/ConversationListRelayingActivity;->INSTANCE:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 39
    invoke-super {p0}, Lorg/thoughtcrime/securesms/ConversationListActivity;->onDestroy()V

    const/4 v0, 0x0

    .line 40
    sput-object v0, Lorg/thoughtcrime/securesms/ConversationListRelayingActivity;->INSTANCE:Ljava/lang/ref/WeakReference;

    return-void
.end method
