.class Lorg/thoughtcrime/securesms/ConversationFragment$1;
.super Ljava/util/TimerTask;
.source "ConversationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/thoughtcrime/securesms/ConversationFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/ConversationFragment;


# direct methods
.method constructor <init>(Lorg/thoughtcrime/securesms/ConversationFragment;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lorg/thoughtcrime/securesms/ConversationFragment$1;->this$0:Lorg/thoughtcrime/securesms/ConversationFragment;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method static synthetic lambda$run$0(Lorg/thoughtcrime/securesms/ConversationFragment;)V
    .locals 0

    .line 135
    invoke-static {p0}, Lorg/thoughtcrime/securesms/ConversationFragment;->access$200(Lorg/thoughtcrime/securesms/ConversationFragment;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 135
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationFragment$1;->this$0:Lorg/thoughtcrime/securesms/ConversationFragment;

    new-instance v1, Lorg/thoughtcrime/securesms/ConversationFragment$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lorg/thoughtcrime/securesms/ConversationFragment$1$$ExternalSyntheticLambda0;-><init>(Lorg/thoughtcrime/securesms/ConversationFragment;)V

    invoke-static {v1}, Lorg/thoughtcrime/securesms/util/Util;->runOnMain(Ljava/lang/Runnable;)V

    return-void
.end method
