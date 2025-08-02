.class Lorg/thoughtcrime/securesms/ConversationActivity$6$1;
.super Lorg/thoughtcrime/securesms/util/concurrent/AssertedSuccessListener;
.source "ConversationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/thoughtcrime/securesms/ConversationActivity$6;->onSuccess(Landroid/util/Pair;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/thoughtcrime/securesms/util/concurrent/AssertedSuccessListener<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/thoughtcrime/securesms/ConversationActivity$6;

.field final synthetic val$result:Landroid/util/Pair;


# direct methods
.method constructor <init>(Lorg/thoughtcrime/securesms/ConversationActivity$6;Landroid/util/Pair;)V
    .locals 0

    .line 1237
    iput-object p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity$6$1;->this$1:Lorg/thoughtcrime/securesms/ConversationActivity$6;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/ConversationActivity$6$1;->val$result:Landroid/util/Pair;

    invoke-direct {p0}, Lorg/thoughtcrime/securesms/util/concurrent/AssertedSuccessListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Ljava/lang/Integer;)V
    .locals 2

    .line 1240
    new-instance p1, Lorg/thoughtcrime/securesms/ConversationActivity$6$1$1;

    invoke-direct {p1, p0}, Lorg/thoughtcrime/securesms/ConversationActivity$6$1$1;-><init>(Lorg/thoughtcrime/securesms/ConversationActivity$6$1;)V

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 1246
    invoke-virtual {p1, v0, v1}, Lorg/thoughtcrime/securesms/ConversationActivity$6$1$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1237
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/ConversationActivity$6$1;->onSuccess(Ljava/lang/Integer;)V

    return-void
.end method
