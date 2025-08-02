.class public Lorg/thoughtcrime/securesms/components/AvatarImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "AvatarImageView.java"


# instance fields
.field private listener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 23
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/AvatarImageView;->listener:Landroid/view/View$OnClickListener;

    .line 27
    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/components/AvatarImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 31
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lorg/thoughtcrime/securesms/components/AvatarImageView;->listener:Landroid/view/View$OnClickListener;

    .line 32
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/components/AvatarImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    if-eqz p2, :cond_0

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lorg/thoughtcrime/securesms/R$styleable;->AvatarImageView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 36
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method

.method private setAvatarClickHandler(Lorg/thoughtcrime/securesms/recipients/Recipient;Z)V
    .locals 1

    .line 68
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/recipients/Recipient;->isMultiUserRecipient()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 69
    new-instance p2, Lorg/thoughtcrime/securesms/components/AvatarImageView$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p1}, Lorg/thoughtcrime/securesms/components/AvatarImageView$$ExternalSyntheticLambda0;-><init>(Lorg/thoughtcrime/securesms/components/AvatarImageView;Lorg/thoughtcrime/securesms/recipients/Recipient;)V

    invoke-super {p0, p2}, Landroidx/appcompat/widget/AppCompatImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 77
    :cond_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/AvatarImageView;->listener:Landroid/view/View$OnClickListener;

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public clear(Lorg/thoughtcrime/securesms/mms/GlideRequests;)V
    .locals 0

    .line 64
    invoke-virtual {p1, p0}, Lorg/thoughtcrime/securesms/mms/GlideRequests;->clear(Landroid/view/View;)V

    return-void
.end method

.method synthetic lambda$setAvatarClickHandler$0$org-thoughtcrime-securesms-components-AvatarImageView(Lorg/thoughtcrime/securesms/recipients/Recipient;Landroid/view/View;)V
    .locals 2

    .line 70
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/recipients/Recipient;->getAddress()Lorg/thoughtcrime/securesms/database/Address;

    move-result-object p2

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/database/Address;->isDcContact()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 71
    new-instance p2, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/AvatarImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lorg/thoughtcrime/securesms/ProfileActivity;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 72
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/recipients/Recipient;->getAddress()Lorg/thoughtcrime/securesms/database/Address;

    move-result-object p1

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/database/Address;->getDcContactId()I

    move-result p1

    const-string v0, "contact_id"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 73
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/AvatarImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public setAvatar(Lorg/thoughtcrime/securesms/mms/GlideRequests;Lorg/thoughtcrime/securesms/recipients/Recipient;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 48
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/AvatarImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/thoughtcrime/securesms/recipients/Recipient;->getContactPhoto(Landroid/content/Context;)Lorg/thoughtcrime/securesms/contacts/avatars/ContactPhoto;

    move-result-object v0

    .line 49
    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/mms/GlideRequests;->load(Ljava/lang/Object;)Lorg/thoughtcrime/securesms/mms/GlideRequest;

    move-result-object p1

    .line 50
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/AvatarImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/thoughtcrime/securesms/recipients/Recipient;->getFallbackAvatarDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/mms/GlideRequest;->error(Landroid/graphics/drawable/Drawable;)Lorg/thoughtcrime/securesms/mms/GlideRequest;

    move-result-object p1

    sget-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 51
    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/mms/GlideRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lorg/thoughtcrime/securesms/mms/GlideRequest;

    move-result-object p1

    .line 52
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/mms/GlideRequest;->circleCrop()Lorg/thoughtcrime/securesms/mms/GlideRequest;

    move-result-object p1

    .line 53
    invoke-virtual {p1, p0}, Lorg/thoughtcrime/securesms/mms/GlideRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    if-eqz p3, :cond_1

    .line 55
    invoke-direct {p0, p2, p3}, Lorg/thoughtcrime/securesms/components/AvatarImageView;->setAvatarClickHandler(Lorg/thoughtcrime/securesms/recipients/Recipient;Z)V

    goto :goto_0

    .line 58
    :cond_0
    new-instance p1, Lorg/thoughtcrime/securesms/contacts/avatars/GeneratedContactPhoto;

    const-string p2, "+"

    invoke-direct {p1, p2}, Lorg/thoughtcrime/securesms/contacts/avatars/GeneratedContactPhoto;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/AvatarImageView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/AvatarImageView;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lorg/thoughtcrime/securesms/util/ThemeUtil;->getDummyContactColor(Landroid/content/Context;)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lorg/thoughtcrime/securesms/contacts/avatars/GeneratedContactPhoto;->asDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/components/AvatarImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 59
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/AvatarImageView;->listener:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_1

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/AvatarImageView;->listener:Landroid/view/View$OnClickListener;

    .line 43
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
