.class Lorg/thoughtcrime/securesms/components/AvatarSelector$1;
.super Ljava/lang/Object;
.source "AvatarSelector.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/thoughtcrime/securesms/components/AvatarSelector;->show(Landroid/app/Activity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/components/AvatarSelector;


# direct methods
.method constructor <init>(Lorg/thoughtcrime/securesms/components/AvatarSelector;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/AvatarSelector$1;->this$0:Lorg/thoughtcrime/securesms/components/AvatarSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 91
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/AvatarSelector$1;->this$0:Lorg/thoughtcrime/securesms/components/AvatarSelector;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/AvatarSelector;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 93
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/AvatarSelector$1;->this$0:Lorg/thoughtcrime/securesms/components/AvatarSelector;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/AvatarSelector;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/thoughtcrime/securesms/components/AvatarSelector;->access$300(Lorg/thoughtcrime/securesms/components/AvatarSelector;Landroid/view/View;)V

    return-void
.end method
