.class Lorg/thoughtcrime/securesms/ConversationActivity$AttachmentTypeListener;
.super Ljava/lang/Object;
.source "ConversationActivity.java"

# interfaces
.implements Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector$AttachmentClickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/ConversationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AttachmentTypeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/ConversationActivity;


# direct methods
.method private constructor <init>(Lorg/thoughtcrime/securesms/ConversationActivity;)V
    .locals 0

    .line 1335
    iput-object p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity$AttachmentTypeListener;->this$0:Lorg/thoughtcrime/securesms/ConversationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/thoughtcrime/securesms/ConversationActivity;Lorg/thoughtcrime/securesms/ConversationActivity$1;)V
    .locals 0

    .line 1335
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/ConversationActivity$AttachmentTypeListener;-><init>(Lorg/thoughtcrime/securesms/ConversationActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(I)V
    .locals 1

    .line 1338
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationActivity$AttachmentTypeListener;->this$0:Lorg/thoughtcrime/securesms/ConversationActivity;

    invoke-static {v0, p1}, Lorg/thoughtcrime/securesms/ConversationActivity;->access$1500(Lorg/thoughtcrime/securesms/ConversationActivity;I)V

    return-void
.end method

.method public onQuickAttachment(Landroid/net/Uri;)V
    .locals 3

    .line 1343
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1344
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1346
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationActivity$AttachmentTypeListener;->this$0:Lorg/thoughtcrime/securesms/ConversationActivity;

    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2, v0}, Lorg/thoughtcrime/securesms/ConversationActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method
