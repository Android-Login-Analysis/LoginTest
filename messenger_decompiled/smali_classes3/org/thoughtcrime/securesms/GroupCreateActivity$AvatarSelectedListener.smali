.class Lorg/thoughtcrime/securesms/GroupCreateActivity$AvatarSelectedListener;
.super Ljava/lang/Object;
.source "GroupCreateActivity.java"

# interfaces
.implements Lorg/thoughtcrime/securesms/components/AvatarSelector$AttachmentClickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/GroupCreateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AvatarSelectedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/GroupCreateActivity;


# direct methods
.method private constructor <init>(Lorg/thoughtcrime/securesms/GroupCreateActivity;)V
    .locals 0

    .line 387
    iput-object p1, p0, Lorg/thoughtcrime/securesms/GroupCreateActivity$AvatarSelectedListener;->this$0:Lorg/thoughtcrime/securesms/GroupCreateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/thoughtcrime/securesms/GroupCreateActivity;Lorg/thoughtcrime/securesms/GroupCreateActivity$1;)V
    .locals 0

    .line 387
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/GroupCreateActivity$AvatarSelectedListener;-><init>(Lorg/thoughtcrime/securesms/GroupCreateActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(I)V
    .locals 3

    const/16 v0, 0xac7

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 395
    :cond_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/GroupCreateActivity$AvatarSelectedListener;->this$0:Lorg/thoughtcrime/securesms/GroupCreateActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/thoughtcrime/securesms/GroupCreateActivity;->access$102(Lorg/thoughtcrime/securesms/GroupCreateActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 396
    iget-object p1, p0, Lorg/thoughtcrime/securesms/GroupCreateActivity$AvatarSelectedListener;->this$0:Lorg/thoughtcrime/securesms/GroupCreateActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/thoughtcrime/securesms/GroupCreateActivity;->access$202(Lorg/thoughtcrime/securesms/GroupCreateActivity;Z)Z

    .line 397
    iget-object p1, p0, Lorg/thoughtcrime/securesms/GroupCreateActivity$AvatarSelectedListener;->this$0:Lorg/thoughtcrime/securesms/GroupCreateActivity;

    invoke-static {p1, v1}, Lorg/thoughtcrime/securesms/GroupCreateActivity;->access$302(Lorg/thoughtcrime/securesms/GroupCreateActivity;Z)Z

    .line 398
    iget-object p1, p0, Lorg/thoughtcrime/securesms/GroupCreateActivity$AvatarSelectedListener;->this$0:Lorg/thoughtcrime/securesms/GroupCreateActivity;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/GroupCreateActivity;->access$400(Lorg/thoughtcrime/securesms/GroupCreateActivity;)Landroid/widget/ImageView;

    move-result-object p1

    new-instance v0, Lorg/thoughtcrime/securesms/contacts/avatars/ResourceContactPhoto;

    const v1, 0x7f080120

    invoke-direct {v0, v1}, Lorg/thoughtcrime/securesms/contacts/avatars/ResourceContactPhoto;-><init>(I)V

    iget-object v1, p0, Lorg/thoughtcrime/securesms/GroupCreateActivity$AvatarSelectedListener;->this$0:Lorg/thoughtcrime/securesms/GroupCreateActivity;

    invoke-static {v1}, Lorg/thoughtcrime/securesms/util/ThemeUtil;->getDummyContactColor(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/thoughtcrime/securesms/contacts/avatars/ResourceContactPhoto;->asDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 401
    :cond_1
    iget-object p1, p0, Lorg/thoughtcrime/securesms/GroupCreateActivity$AvatarSelectedListener;->this$0:Lorg/thoughtcrime/securesms/GroupCreateActivity;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/GroupCreateActivity;->access$500(Lorg/thoughtcrime/securesms/GroupCreateActivity;)Lorg/thoughtcrime/securesms/mms/AttachmentManager;

    move-result-object p1

    iget-object v1, p0, Lorg/thoughtcrime/securesms/GroupCreateActivity$AvatarSelectedListener;->this$0:Lorg/thoughtcrime/securesms/GroupCreateActivity;

    invoke-virtual {p1, v1, v0}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->capturePhoto(Landroid/app/Activity;I)V

    goto :goto_0

    .line 392
    :cond_2
    iget-object p1, p0, Lorg/thoughtcrime/securesms/GroupCreateActivity$AvatarSelectedListener;->this$0:Lorg/thoughtcrime/securesms/GroupCreateActivity;

    invoke-static {p1, v0}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->selectImage(Landroid/app/Activity;I)V

    :goto_0
    return-void
.end method

.method public onQuickAttachment(Landroid/net/Uri;)V
    .locals 1

    .line 408
    iget-object v0, p0, Lorg/thoughtcrime/securesms/GroupCreateActivity$AvatarSelectedListener;->this$0:Lorg/thoughtcrime/securesms/GroupCreateActivity;

    invoke-static {v0, p1}, Lorg/thoughtcrime/securesms/GroupCreateActivity;->access$600(Lorg/thoughtcrime/securesms/GroupCreateActivity;Landroid/net/Uri;)V

    return-void
.end method
