.class public Lorg/thoughtcrime/securesms/preferences/widgets/ProfilePreference;
.super Landroidx/preference/Preference;
.source "ProfilePreference.java"


# instance fields
.field private avatarView:Landroid/widget/ImageView;

.field private profileAddressView:Landroid/widget/TextView;

.field private profileNameView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 47
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/preferences/widgets/ProfilePreference;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/preferences/widgets/ProfilePreference;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/preferences/widgets/ProfilePreference;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 32
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/preferences/widgets/ProfilePreference;->initialize()V

    return-void
.end method

.method private initialize()V
    .locals 1

    const v0, 0x7f0c00e4

    .line 51
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/preferences/widgets/ProfilePreference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 56
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f090074

    .line 57
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/preferences/widgets/ProfilePreference;->avatarView:Landroid/widget/ImageView;

    const v0, 0x7f0902a4

    .line 58
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/preferences/widgets/ProfilePreference;->profileNameView:Landroid/widget/TextView;

    const v0, 0x7f090269

    .line 59
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/thoughtcrime/securesms/preferences/widgets/ProfilePreference;->profileAddressView:Landroid/widget/TextView;

    .line 61
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/preferences/widgets/ProfilePreference;->refresh()V

    return-void
.end method

.method public refresh()V
    .locals 7

    .line 65
    iget-object v0, p0, Lorg/thoughtcrime/securesms/preferences/widgets/ProfilePreference;->profileAddressView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 67
    :cond_0
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/preferences/widgets/ProfilePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "configured_addr"

    invoke-static {v0, v1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/preferences/widgets/ProfilePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "displayname"

    invoke-static {v1, v2}, Lorg/thoughtcrime/securesms/connect/DcHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 70
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 71
    :cond_1
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/preferences/widgets/ProfilePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120347

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 74
    :cond_2
    new-instance v2, Lorg/thoughtcrime/securesms/contacts/avatars/MyProfileContactPhoto;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/preferences/widgets/ProfilePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lorg/thoughtcrime/securesms/util/Prefs;->getProfileAvatarId(Landroid/content/Context;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lorg/thoughtcrime/securesms/contacts/avatars/MyProfileContactPhoto;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/preferences/widgets/ProfilePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lorg/thoughtcrime/securesms/mms/GlideApp;->with(Landroid/content/Context;)Lorg/thoughtcrime/securesms/mms/GlideRequests;

    move-result-object v3

    .line 77
    invoke-virtual {v3, v2}, Lorg/thoughtcrime/securesms/mms/GlideRequests;->load(Ljava/lang/Object;)Lorg/thoughtcrime/securesms/mms/GlideRequest;

    move-result-object v2

    new-instance v3, Lorg/thoughtcrime/securesms/contacts/avatars/ResourceContactPhoto;

    const v4, 0x7f0800ef

    invoke-direct {v3, v4}, Lorg/thoughtcrime/securesms/contacts/avatars/ResourceContactPhoto;-><init>(I)V

    .line 78
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/preferences/widgets/ProfilePreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/preferences/widgets/ProfilePreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0600a0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/thoughtcrime/securesms/contacts/avatars/ResourceContactPhoto;->asDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/thoughtcrime/securesms/mms/GlideRequest;->error(Landroid/graphics/drawable/Drawable;)Lorg/thoughtcrime/securesms/mms/GlideRequest;

    move-result-object v2

    .line 79
    invoke-virtual {v2}, Lorg/thoughtcrime/securesms/mms/GlideRequest;->circleCrop()Lorg/thoughtcrime/securesms/mms/GlideRequest;

    move-result-object v2

    sget-object v3, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 80
    invoke-virtual {v2, v3}, Lorg/thoughtcrime/securesms/mms/GlideRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lorg/thoughtcrime/securesms/mms/GlideRequest;

    move-result-object v2

    iget-object v3, p0, Lorg/thoughtcrime/securesms/preferences/widgets/ProfilePreference;->avatarView:Landroid/widget/ImageView;

    .line 81
    invoke-virtual {v2, v3}, Lorg/thoughtcrime/securesms/mms/GlideRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 83
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 84
    iget-object v2, p0, Lorg/thoughtcrime/securesms/preferences/widgets/ProfilePreference;->profileNameView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    :cond_3
    iget-object v1, p0, Lorg/thoughtcrime/securesms/preferences/widgets/ProfilePreference;->profileAddressView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
