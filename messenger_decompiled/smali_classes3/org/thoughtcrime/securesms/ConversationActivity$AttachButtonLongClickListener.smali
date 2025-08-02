.class Lorg/thoughtcrime/securesms/ConversationActivity$AttachButtonLongClickListener;
.super Ljava/lang/Object;
.source "ConversationActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/ConversationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AttachButtonLongClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/ConversationActivity;


# direct methods
.method private constructor <init>(Lorg/thoughtcrime/securesms/ConversationActivity;)V
    .locals 0

    .line 1412
    iput-object p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity$AttachButtonLongClickListener;->this$0:Lorg/thoughtcrime/securesms/ConversationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/thoughtcrime/securesms/ConversationActivity;Lorg/thoughtcrime/securesms/ConversationActivity$1;)V
    .locals 0

    .line 1412
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/ConversationActivity$AttachButtonLongClickListener;-><init>(Lorg/thoughtcrime/securesms/ConversationActivity;)V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 0

    .line 1415
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity$AttachButtonLongClickListener;->this$0:Lorg/thoughtcrime/securesms/ConversationActivity;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/ConversationActivity;->access$2000(Lorg/thoughtcrime/securesms/ConversationActivity;)Lorg/thoughtcrime/securesms/components/SendButton;

    move-result-object p1

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/components/SendButton;->performLongClick()Z

    move-result p1

    return p1
.end method
