.class Lorg/thoughtcrime/securesms/CreateProfileActivity$1;
.super Lcom/bumptech/glide/request/target/SimpleTarget;
.source "CreateProfileActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/thoughtcrime/securesms/CreateProfileActivity;->setAvatarView(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/target/SimpleTarget<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/CreateProfileActivity;


# direct methods
.method constructor <init>(Lorg/thoughtcrime/securesms/CreateProfileActivity;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lorg/thoughtcrime/securesms/CreateProfileActivity$1;->this$0:Lorg/thoughtcrime/securesms/CreateProfileActivity;

    invoke-direct {p0}, Lcom/bumptech/glide/request/target/SimpleTarget;-><init>()V

    return-void
.end method


# virtual methods
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

    .line 179
    iget-object p2, p0, Lorg/thoughtcrime/securesms/CreateProfileActivity$1;->this$0:Lorg/thoughtcrime/securesms/CreateProfileActivity;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lorg/thoughtcrime/securesms/CreateProfileActivity;->access$002(Lorg/thoughtcrime/securesms/CreateProfileActivity;Z)Z

    .line 180
    iget-object p2, p0, Lorg/thoughtcrime/securesms/CreateProfileActivity$1;->this$0:Lorg/thoughtcrime/securesms/CreateProfileActivity;

    invoke-static {p2, v0}, Lorg/thoughtcrime/securesms/CreateProfileActivity;->access$102(Lorg/thoughtcrime/securesms/CreateProfileActivity;Z)Z

    .line 181
    iget-object p2, p0, Lorg/thoughtcrime/securesms/CreateProfileActivity$1;->this$0:Lorg/thoughtcrime/securesms/CreateProfileActivity;

    invoke-static {p2, p1}, Lorg/thoughtcrime/securesms/CreateProfileActivity;->access$202(Lorg/thoughtcrime/securesms/CreateProfileActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 0

    .line 176
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lorg/thoughtcrime/securesms/CreateProfileActivity$1;->onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V

    return-void
.end method
