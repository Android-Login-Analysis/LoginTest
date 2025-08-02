.class Lorg/thoughtcrime/securesms/GroupCreateActivity$1;
.super Lcom/bumptech/glide/request/target/SimpleTarget;
.source "GroupCreateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/thoughtcrime/securesms/GroupCreateActivity;->setAvatarView(Landroid/net/Uri;)V
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
.field final synthetic this$0:Lorg/thoughtcrime/securesms/GroupCreateActivity;

.field final synthetic val$output:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lorg/thoughtcrime/securesms/GroupCreateActivity;Landroid/net/Uri;)V
    .locals 0

    .line 362
    iput-object p1, p0, Lorg/thoughtcrime/securesms/GroupCreateActivity$1;->this$0:Lorg/thoughtcrime/securesms/GroupCreateActivity;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/GroupCreateActivity$1;->val$output:Landroid/net/Uri;

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

    .line 365
    iget-object p2, p0, Lorg/thoughtcrime/securesms/GroupCreateActivity$1;->this$0:Lorg/thoughtcrime/securesms/GroupCreateActivity;

    iget-object v0, p0, Lorg/thoughtcrime/securesms/GroupCreateActivity$1;->val$output:Landroid/net/Uri;

    invoke-static {p2, v0, p1}, Lorg/thoughtcrime/securesms/GroupCreateActivity;->access$000(Lorg/thoughtcrime/securesms/GroupCreateActivity;Ljava/lang/Object;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 0

    .line 362
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lorg/thoughtcrime/securesms/GroupCreateActivity$1;->onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V

    return-void
.end method
