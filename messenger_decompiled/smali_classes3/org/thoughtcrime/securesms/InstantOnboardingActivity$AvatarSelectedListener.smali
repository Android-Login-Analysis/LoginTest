.class Lorg/thoughtcrime/securesms/InstantOnboardingActivity$AvatarSelectedListener;
.super Ljava/lang/Object;
.source "InstantOnboardingActivity.java"

# interfaces
.implements Lorg/thoughtcrime/securesms/components/AvatarSelector$AttachmentClickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/InstantOnboardingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AvatarSelectedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/InstantOnboardingActivity;


# direct methods
.method private constructor <init>(Lorg/thoughtcrime/securesms/InstantOnboardingActivity;)V
    .locals 0

    .line 489
    iput-object p1, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity$AvatarSelectedListener;->this$0:Lorg/thoughtcrime/securesms/InstantOnboardingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/thoughtcrime/securesms/InstantOnboardingActivity;Lorg/thoughtcrime/securesms/InstantOnboardingActivity$1;)V
    .locals 0

    .line 489
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/InstantOnboardingActivity$AvatarSelectedListener;-><init>(Lorg/thoughtcrime/securesms/InstantOnboardingActivity;)V

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

    .line 497
    :cond_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity$AvatarSelectedListener;->this$0:Lorg/thoughtcrime/securesms/InstantOnboardingActivity;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->access$202(Lorg/thoughtcrime/securesms/InstantOnboardingActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 498
    iget-object p1, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity$AvatarSelectedListener;->this$0:Lorg/thoughtcrime/securesms/InstantOnboardingActivity;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->access$102(Lorg/thoughtcrime/securesms/InstantOnboardingActivity;Z)Z

    .line 499
    iget-object p1, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity$AvatarSelectedListener;->this$0:Lorg/thoughtcrime/securesms/InstantOnboardingActivity;

    invoke-static {p1, v0}, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->access$002(Lorg/thoughtcrime/securesms/InstantOnboardingActivity;Z)Z

    .line 500
    iget-object p1, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity$AvatarSelectedListener;->this$0:Lorg/thoughtcrime/securesms/InstantOnboardingActivity;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->access$700(Lorg/thoughtcrime/securesms/InstantOnboardingActivity;)Landroid/widget/ImageView;

    move-result-object p1

    new-instance v0, Lorg/thoughtcrime/securesms/contacts/avatars/ResourceContactPhoto;

    const v1, 0x7f0800ef

    invoke-direct {v0, v1}, Lorg/thoughtcrime/securesms/contacts/avatars/ResourceContactPhoto;-><init>(I)V

    iget-object v1, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity$AvatarSelectedListener;->this$0:Lorg/thoughtcrime/securesms/InstantOnboardingActivity;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0600a0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/thoughtcrime/securesms/contacts/avatars/ResourceContactPhoto;->asDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 503
    :cond_1
    iget-object p1, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity$AvatarSelectedListener;->this$0:Lorg/thoughtcrime/securesms/InstantOnboardingActivity;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->access$400(Lorg/thoughtcrime/securesms/InstantOnboardingActivity;)Lorg/thoughtcrime/securesms/mms/AttachmentManager;

    move-result-object p1

    iget-object v1, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity$AvatarSelectedListener;->this$0:Lorg/thoughtcrime/securesms/InstantOnboardingActivity;

    invoke-virtual {p1, v1, v0}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->capturePhoto(Landroid/app/Activity;I)V

    goto :goto_0

    .line 494
    :cond_2
    iget-object p1, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity$AvatarSelectedListener;->this$0:Lorg/thoughtcrime/securesms/InstantOnboardingActivity;

    invoke-static {p1, v0}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->selectImage(Landroid/app/Activity;I)V

    :goto_0
    return-void
.end method

.method public onQuickAttachment(Landroid/net/Uri;)V
    .locals 1

    .line 510
    iget-object v0, p0, Lorg/thoughtcrime/securesms/InstantOnboardingActivity$AvatarSelectedListener;->this$0:Lorg/thoughtcrime/securesms/InstantOnboardingActivity;

    invoke-static {v0, p1}, Lorg/thoughtcrime/securesms/InstantOnboardingActivity;->access$800(Lorg/thoughtcrime/securesms/InstantOnboardingActivity;Landroid/net/Uri;)V

    return-void
.end method
