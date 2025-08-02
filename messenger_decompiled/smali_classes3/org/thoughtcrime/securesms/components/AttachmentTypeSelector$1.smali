.class Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector$1;
.super Ljava/lang/Object;
.source "AttachmentTypeSelector.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;->show(Landroid/app/Activity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;

.field final synthetic val$anchor:Landroid/view/View;


# direct methods
.method constructor <init>(Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 123
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector$1;->this$0:Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector$1;->val$anchor:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 126
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector$1;->this$0:Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 128
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 129
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector$1;->this$0:Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector$1;->val$anchor:Landroid/view/View;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;->getContentView()Landroid/view/View;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;->access$300(Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;Landroid/view/View;Landroid/view/View;)V

    goto :goto_0

    .line 131
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector$1;->this$0:Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;->access$400(Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;Landroid/view/View;)V

    :goto_0
    return-void
.end method
