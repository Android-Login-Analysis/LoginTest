.class Lorg/thoughtcrime/securesms/ConversationActivity$2;
.super Lorg/thoughtcrime/securesms/util/concurrent/AssertedSuccessListener;
.source "ConversationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/thoughtcrime/securesms/ConversationActivity;->onNewIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/thoughtcrime/securesms/util/concurrent/AssertedSuccessListener<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/ConversationActivity;


# direct methods
.method constructor <init>(Lorg/thoughtcrime/securesms/ConversationActivity;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity$2;->this$0:Lorg/thoughtcrime/securesms/ConversationActivity;

    invoke-direct {p0}, Lorg/thoughtcrime/securesms/util/concurrent/AssertedSuccessListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Ljava/lang/Boolean;)V
    .locals 0

    .line 272
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity$2;->this$0:Lorg/thoughtcrime/securesms/ConversationActivity;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/ConversationActivity;->access$200(Lorg/thoughtcrime/securesms/ConversationActivity;)Lcom/b44t/messenger/util/concurrent/ListenableFuture;

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 269
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/ConversationActivity$2;->onSuccess(Ljava/lang/Boolean;)V

    return-void
.end method
