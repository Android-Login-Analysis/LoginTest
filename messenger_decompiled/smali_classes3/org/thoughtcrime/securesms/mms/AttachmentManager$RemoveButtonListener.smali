.class Lorg/thoughtcrime/securesms/mms/AttachmentManager$RemoveButtonListener;
.super Ljava/lang/Object;
.source "AttachmentManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/mms/AttachmentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoveButtonListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/mms/AttachmentManager;


# direct methods
.method private constructor <init>(Lorg/thoughtcrime/securesms/mms/AttachmentManager;)V
    .locals 0

    .line 641
    iput-object p1, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$RemoveButtonListener;->this$0:Lorg/thoughtcrime/securesms/mms/AttachmentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/thoughtcrime/securesms/mms/AttachmentManager;Lorg/thoughtcrime/securesms/mms/AttachmentManager$1;)V
    .locals 0

    .line 641
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/mms/AttachmentManager$RemoveButtonListener;-><init>(Lorg/thoughtcrime/securesms/mms/AttachmentManager;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 644
    iget-object p1, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$RemoveButtonListener;->this$0:Lorg/thoughtcrime/securesms/mms/AttachmentManager;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->cleanup()V

    .line 645
    iget-object p1, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$RemoveButtonListener;->this$0:Lorg/thoughtcrime/securesms/mms/AttachmentManager;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->access$600(Lorg/thoughtcrime/securesms/mms/AttachmentManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/thoughtcrime/securesms/mms/GlideApp;->with(Landroid/content/Context;)Lorg/thoughtcrime/securesms/mms/GlideRequests;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->clear(Lorg/thoughtcrime/securesms/mms/GlideRequests;Z)V

    return-void
.end method
