.class Lorg/thoughtcrime/securesms/ConversationActivity$AttachButtonListener;
.super Ljava/lang/Object;
.source "ConversationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/ConversationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AttachButtonListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/ConversationActivity;


# direct methods
.method private constructor <init>(Lorg/thoughtcrime/securesms/ConversationActivity;)V
    .locals 0

    .line 1404
    iput-object p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity$AttachButtonListener;->this$0:Lorg/thoughtcrime/securesms/ConversationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/thoughtcrime/securesms/ConversationActivity;Lorg/thoughtcrime/securesms/ConversationActivity$1;)V
    .locals 0

    .line 1404
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/ConversationActivity$AttachButtonListener;-><init>(Lorg/thoughtcrime/securesms/ConversationActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1407
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity$AttachButtonListener;->this$0:Lorg/thoughtcrime/securesms/ConversationActivity;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/ConversationActivity;->access$000(Lorg/thoughtcrime/securesms/ConversationActivity;)Lorg/thoughtcrime/securesms/ConversationFragment;

    move-result-object p1

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/ConversationFragment;->hideAddReactionView()V

    .line 1408
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity$AttachButtonListener;->this$0:Lorg/thoughtcrime/securesms/ConversationActivity;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/ConversationActivity;->access$2100(Lorg/thoughtcrime/securesms/ConversationActivity;)V

    return-void
.end method
