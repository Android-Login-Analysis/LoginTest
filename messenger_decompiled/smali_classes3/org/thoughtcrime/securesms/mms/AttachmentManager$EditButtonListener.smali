.class Lorg/thoughtcrime/securesms/mms/AttachmentManager$EditButtonListener;
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
    name = "EditButtonListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/mms/AttachmentManager;


# direct methods
.method private constructor <init>(Lorg/thoughtcrime/securesms/mms/AttachmentManager;)V
    .locals 0

    .line 649
    iput-object p1, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$EditButtonListener;->this$0:Lorg/thoughtcrime/securesms/mms/AttachmentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/thoughtcrime/securesms/mms/AttachmentManager;Lorg/thoughtcrime/securesms/mms/AttachmentManager$1;)V
    .locals 0

    .line 649
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/mms/AttachmentManager$EditButtonListener;-><init>(Lorg/thoughtcrime/securesms/mms/AttachmentManager;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 652
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p1, v0, :cond_0

    .line 653
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$EditButtonListener;->this$0:Lorg/thoughtcrime/securesms/mms/AttachmentManager;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->access$600(Lorg/thoughtcrime/securesms/mms/AttachmentManager;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lorg/thoughtcrime/securesms/scribbles/ScribbleActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 654
    iget-object v0, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$EditButtonListener;->this$0:Lorg/thoughtcrime/securesms/mms/AttachmentManager;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->access$1600(Lorg/thoughtcrime/securesms/mms/AttachmentManager;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 655
    iget-object v0, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$EditButtonListener;->this$0:Lorg/thoughtcrime/securesms/mms/AttachmentManager;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->access$600(Lorg/thoughtcrime/securesms/mms/AttachmentManager;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/16 v1, 0x7ac0

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 658
    :cond_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$EditButtonListener;->this$0:Lorg/thoughtcrime/securesms/mms/AttachmentManager;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->access$600(Lorg/thoughtcrime/securesms/mms/AttachmentManager;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "Image editing requires Android 4.4 KitKat or newer."

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
