.class Lorg/thoughtcrime/securesms/CreateProfileActivity$AvatarSelectedListener;
.super Ljava/lang/Object;
.source "CreateProfileActivity.java"

# interfaces
.implements Lorg/thoughtcrime/securesms/components/AvatarSelector$AttachmentClickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/CreateProfileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AvatarSelectedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/CreateProfileActivity;


# direct methods
.method private constructor <init>(Lorg/thoughtcrime/securesms/CreateProfileActivity;)V
    .locals 0

    .line 327
    iput-object p1, p0, Lorg/thoughtcrime/securesms/CreateProfileActivity$AvatarSelectedListener;->this$0:Lorg/thoughtcrime/securesms/CreateProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/thoughtcrime/securesms/CreateProfileActivity;Lorg/thoughtcrime/securesms/CreateProfileActivity$1;)V
    .locals 0

    .line 327
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/CreateProfileActivity$AvatarSelectedListener;-><init>(Lorg/thoughtcrime/securesms/CreateProfileActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(I)V
    .locals 4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x5

    if-eq p1, v1, :cond_1

    const/16 v1, 0x8

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 335
    :cond_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/CreateProfileActivity$AvatarSelectedListener;->this$0:Lorg/thoughtcrime/securesms/CreateProfileActivity;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lorg/thoughtcrime/securesms/CreateProfileActivity;->access$202(Lorg/thoughtcrime/securesms/CreateProfileActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 336
    iget-object p1, p0, Lorg/thoughtcrime/securesms/CreateProfileActivity$AvatarSelectedListener;->this$0:Lorg/thoughtcrime/securesms/CreateProfileActivity;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lorg/thoughtcrime/securesms/CreateProfileActivity;->access$102(Lorg/thoughtcrime/securesms/CreateProfileActivity;Z)Z

    .line 337
    iget-object p1, p0, Lorg/thoughtcrime/securesms/CreateProfileActivity$AvatarSelectedListener;->this$0:Lorg/thoughtcrime/securesms/CreateProfileActivity;

    invoke-static {p1, v0}, Lorg/thoughtcrime/securesms/CreateProfileActivity;->access$002(Lorg/thoughtcrime/securesms/CreateProfileActivity;Z)Z

    .line 338
    iget-object p1, p0, Lorg/thoughtcrime/securesms/CreateProfileActivity$AvatarSelectedListener;->this$0:Lorg/thoughtcrime/securesms/CreateProfileActivity;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/CreateProfileActivity;->access$700(Lorg/thoughtcrime/securesms/CreateProfileActivity;)Landroid/widget/ImageView;

    move-result-object p1

    new-instance v0, Lorg/thoughtcrime/securesms/contacts/avatars/ResourceContactPhoto;

    const v1, 0x7f0800ef

    invoke-direct {v0, v1}, Lorg/thoughtcrime/securesms/contacts/avatars/ResourceContactPhoto;-><init>(I)V

    iget-object v1, p0, Lorg/thoughtcrime/securesms/CreateProfileActivity$AvatarSelectedListener;->this$0:Lorg/thoughtcrime/securesms/CreateProfileActivity;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/CreateProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0600a0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/thoughtcrime/securesms/contacts/avatars/ResourceContactPhoto;->asDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 341
    :cond_1
    iget-object p1, p0, Lorg/thoughtcrime/securesms/CreateProfileActivity$AvatarSelectedListener;->this$0:Lorg/thoughtcrime/securesms/CreateProfileActivity;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/CreateProfileActivity;->access$500(Lorg/thoughtcrime/securesms/CreateProfileActivity;)Lorg/thoughtcrime/securesms/mms/AttachmentManager;

    move-result-object p1

    iget-object v1, p0, Lorg/thoughtcrime/securesms/CreateProfileActivity$AvatarSelectedListener;->this$0:Lorg/thoughtcrime/securesms/CreateProfileActivity;

    invoke-virtual {p1, v1, v0}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->capturePhoto(Landroid/app/Activity;I)V

    goto :goto_0

    .line 332
    :cond_2
    iget-object p1, p0, Lorg/thoughtcrime/securesms/CreateProfileActivity$AvatarSelectedListener;->this$0:Lorg/thoughtcrime/securesms/CreateProfileActivity;

    invoke-static {p1, v0}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->selectImage(Landroid/app/Activity;I)V

    :goto_0
    return-void
.end method

.method public onQuickAttachment(Landroid/net/Uri;)V
    .locals 1

    .line 348
    iget-object v0, p0, Lorg/thoughtcrime/securesms/CreateProfileActivity$AvatarSelectedListener;->this$0:Lorg/thoughtcrime/securesms/CreateProfileActivity;

    invoke-static {v0, p1}, Lorg/thoughtcrime/securesms/CreateProfileActivity;->access$800(Lorg/thoughtcrime/securesms/CreateProfileActivity;Landroid/net/Uri;)V

    return-void
.end method
