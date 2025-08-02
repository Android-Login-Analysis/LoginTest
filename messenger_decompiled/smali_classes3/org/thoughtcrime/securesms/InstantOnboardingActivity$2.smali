.class Lorg/thoughtcrime/securesms/InstantOnboardingActivity$2;
.super Lcom/bumptech/glide/request/target/CustomTarget;
.source "InstantOnboardingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->setAvatarView(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/target/CustomTarget<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/InstantOnboardingActivity;


# direct methods
.method constructor <init>(Lorg/thoughtcrime/securesms/InstantOnboardingActivity;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity$2;->this$0:Lorg/thoughtcrime/securesms/InstantOnboardingActivity;

    invoke-direct {p0}, Lcom/bumptech/glide/request/target/CustomTarget;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/bumptech/glide/request/transition/Transition<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 255
    iget-object p2, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity$2;->this$0:Lorg/thoughtcrime/securesms/InstantOnboardingActivity;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->access$002(Lorg/thoughtcrime/securesms/InstantOnboardingActivity;Z)Z

    .line 256
    iget-object p2, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity$2;->this$0:Lorg/thoughtcrime/securesms/InstantOnboardingActivity;

    invoke-static {p2, v0}, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->access$102(Lorg/thoughtcrime/securesms/InstantOnboardingActivity;Z)Z

    .line 257
    iget-object p2, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity$2;->this$0:Lorg/thoughtcrime/securesms/InstantOnboardingActivity;

    invoke-static {p2, p1}, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->access$202(Lorg/thoughtcrime/securesms/InstantOnboardingActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 0

    .line 252
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lorg/thoughtcrime/securesms/InstantOnboardingActivity$2;->onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V

    return-void
.end method
