.class public Lorg/thoughtcrime/securesms/components/AvatarView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "AvatarView.java"


# instance fields
.field private avatarImage:Lorg/thoughtcrime/securesms/components/AvatarImageView;

.field private seenRecentlyIndicator:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/AvatarView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/AvatarView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/AvatarView;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    .line 38
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/AvatarView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0026

    invoke-static {v0, v1, p0}, Lorg/thoughtcrime/securesms/components/AvatarView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f090075

    .line 40
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/components/AvatarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/components/AvatarImageView;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/components/AvatarView;->avatarImage:Lorg/thoughtcrime/securesms/components/AvatarImageView;

    const v0, 0x7f090373

    .line 41
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/components/AvatarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/components/AvatarView;->seenRecentlyIndicator:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public clear(Lorg/thoughtcrime/securesms/mms/GlideRequests;)V
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/AvatarView;->avatarImage:Lorg/thoughtcrime/securesms/components/AvatarImageView;

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/components/AvatarImageView;->clear(Lorg/thoughtcrime/securesms/mms/GlideRequests;)V

    return-void
.end method

.method public setAvatar(Lorg/thoughtcrime/securesms/mms/GlideRequests;Lorg/thoughtcrime/securesms/recipients/Recipient;Z)V
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/AvatarView;->avatarImage:Lorg/thoughtcrime/securesms/components/AvatarImageView;

    invoke-virtual {v0, p1, p2, p3}, Lorg/thoughtcrime/securesms/components/AvatarImageView;->setAvatar(Lorg/thoughtcrime/securesms/mms/GlideRequests;Lorg/thoughtcrime/securesms/recipients/Recipient;Z)V

    return-void
.end method

.method public setAvatarClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/AvatarView;->avatarImage:Lorg/thoughtcrime/securesms/components/AvatarImageView;

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/components/AvatarImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setAvatarLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/AvatarView;->avatarImage:Lorg/thoughtcrime/securesms/components/AvatarImageView;

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/components/AvatarImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/AvatarView;->avatarImage:Lorg/thoughtcrime/securesms/components/AvatarImageView;

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/components/AvatarImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setSeenRecently(Z)V
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/AvatarView;->seenRecentlyIndicator:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
