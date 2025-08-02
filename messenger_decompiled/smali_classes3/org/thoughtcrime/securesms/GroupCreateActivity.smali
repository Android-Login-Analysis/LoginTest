.class public Lorg/thoughtcrime/securesms/GroupCreateActivity;
.super Lorg/thoughtcrime/securesms/PassphraseRequiredActionBarActivity;
.source "GroupCreateActivity.java"

# interfaces
.implements Lorg/thoughtcrime/securesms/util/SelectedContactsAdapter$ItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/GroupCreateActivity$AvatarSelectedListener;
    }
.end annotation


# static fields
.field public static final AVATAR_SIZE:I = 0xd2

.field public static final CLONE_CHAT_EXTRA:Ljava/lang/String; = "clone_chat"

.field public static final CREATE_BROADCAST:Ljava/lang/String; = "group_create_broadcast"

.field public static final EDIT_GROUP_CHAT_ID:Ljava/lang/String; = "edit_group_chat_id"

.field private static final PICK_CONTACT:I = 0x1

.field private static final REQUEST_CODE_AVATAR:I = 0xac7


# instance fields
.field private attachmentManager:Lorg/thoughtcrime/securesms/mms/AttachmentManager;

.field private avatar:Landroid/widget/ImageView;

.field private avatarBmp:Landroid/graphics/Bitmap;

.field private avatarChanged:Z

.field private broadcast:Z

.field private dcContext:Lcom/b44t/messenger/DcContext;

.field private groupChatId:I

.field private groupName:Landroid/widget/EditText;

.field private imageLoaded:Z

.field private isEdit:Z

.field private lv:Landroid/widget/ListView;

.field private verified:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/PassphraseRequiredActionBarActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/thoughtcrime/securesms/GroupCreateActivity;Ljava/lang/Object;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lorg/thoughtcrime/securesms/GroupCreateActivity;->setAvatar(Ljava/lang/Object;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$102(Lorg/thoughtcrime/securesms/GroupCreateActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 46
    iput-object p1, p0, Lorg/thoughtcrime/securesms/GroupCreateActivity;->avatarBmp:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$202(Lorg/thoughtcrime/securesms/GroupCreateActivity;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Lorg/thoughtcrime/securesms/GroupCreateActivity;->imageLoaded:Z

    return p1
.end method

.method static synthetic access$302(Lorg/thoughtcrime/securesms/GroupCreateActivity;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Lorg/thoughtcrime/securesms/GroupCreateActivity;->avatarChanged:Z

    return p1
.end method

.method static synthetic access$400(Lorg/thoughtcrime/securesms/GroupCreateActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 46
    iget-object p0, p0, Lorg/thoughtcrime/securesms/GroupCreateActivity;->avatar:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$500(Lorg/thoughtcrime/securesms/GroupCreateActivity;)Lorg/thoughtcrime/securesms/mms/AttachmentManager;
    .locals 0

    .line 46
    iget-object p0, p0, Lorg/thoughtcrime/securesms/GroupCreateActivity;->attachmentManager:Lorg/thoughtcrime/securesms/mms/AttachmentManager;

    return-object p0
.end method

.method static synthetic access$600(Lorg/thoughtcrime/securesms/GroupCreateActivity;Landroid/net/Uri;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/GroupCreateActivity;->onFileSelected(Landroid/net/Uri;)V

    return-void
.end method

.method private allMembersVerified()Z
    .locals 3

    .line 233
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/GroupCreateActivity;->getAdapter()Lorg/thoughtcrime/securesms/util/SelectedContactsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/util/SelectedContactsAdapter;->getContacts()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 234
    iget-object v2, p0, Lorg/thoughtcrime/securesms/GroupCreateActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {v2, v1}, Lcom/b44t/messenger/DcContext;->getContact(I)Lcom/b44t/messenger/DcContact;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 235
    invoke-virtual {v1}, Lcom/b44t/messenger/DcContact;->isVerified()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private createGroup(Ljava/lang/String;)V
    .locals 3

    .line 262
    iget-boolean v0, p0, Lorg/thoughtcrime/securesms/GroupCreateActivity;->broadcast:Z

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lorg/thoughtcrime/securesms/GroupCreateActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {v0}, Lcom/b44t/messenger/DcContext;->createBroadcastList()I

    move-result v0

    iput v0, p0, Lorg/thoughtcrime/securesms/GroupCreateActivity;->groupChatId:I

    .line 264
    iget-object v1, p0, Lorg/thoughtcrime/securesms/GroupCreateActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {v1, v0, p1}, Lcom/b44t/messenger/DcContext;->setChatName(ILjava/lang/String;)I

    goto :goto_0

    .line 266
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/GroupCreateActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    iget-boolean v1, p0, Lorg/thoughtcrime/securesms/GroupCreateActivity;->verified:Z

    invoke-virtual {v0, v1, p1}, Lcom/b44t/messenger/DcContext;->createGroupChat(ZLjava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/thoughtcrime/securesms/GroupCreateActivity;->groupChatId:I

    .line 269
    :goto_0
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/GroupCreateActivity;->getAdapter()Lorg/thoughtcrime/securesms/util/SelectedContactsAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/util/SelectedContactsAdapter;->getContacts()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 270
    iget-object v1, p0, Lorg/thoughtcrime/securesms/GroupCreateActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    iget v2, p0, Lorg/thoughtcrime/securesms/GroupCreateActivity;->groupChatId:I

    invoke-virtual {v1, v2, v0}, Lcom/b44t/messenger/DcContext;->addContactToChat(II)I

    goto :goto_1

    .line 272
    :cond_1
    iget-object p1, p0, Lorg/thoughtcrime/securesms/GroupCreateActivity;->avatarBmp:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_2

    .line 273
    iget v0, p0, Lorg/thoughtcrime/securesms/GroupCreateActivity;->groupChatId:I

    invoke-static {p0, v0, p1}, Lorg/thoughtcrime/securesms/profiles/AvatarHelper;->setGroupAvatar(Landroid/content/Context;ILandroid/graphics/Bitmap;)V

    .line 276
    :cond_2
    iget-object p1, p0, Lorg/thoughtcrime/securesms/GroupCreateActivity;->attachmentManager:Lorg/thoughtcrime/securesms/mms/AttachmentManager;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->cleanup()V

    .line 277
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lorg/thoughtcrime/securesms/ConversationActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "chat_id"

    .line 278
    iget v1, p0, Lorg/thoughtcrime/securesms/GroupCreateActivity;->groupChatId:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 279
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/GroupCreateActivity;->startActivity(Landroid/content/Intent;)V

    .line 280
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/GroupCreateActivity;->finish()V

    return-void
.end method

.method private getAdapter()Lorg/thoughtcrime/securesms/util/SelectedContactsAdapter;
    .locals 1

    .line 307
    iget-object v0, p0, Lorg/thoughtcrime/securesms/GroupCreateActivity;->lv:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/util/SelectedContactsAdapter;

    return-object v0
.end method

.method private getGroupName()Ljava/lang/String;
    .locals 3

    .line 311
    iget-object v0, p0, Lorg/thoughtcrime/securesms/GroupCreateActivity;->groupName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/thoughtcrime/securesms/GroupCreateActivity;->groupName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 313
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 314
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    return-object v1
.end method

.method private initializeAvatarView()V
    .locals 3

    const/4 v0, 0x0

    .line 177
    iput-boolean v0, p0, Lorg/thoughtcrime/securesms/GroupCreateActivity;->imageLoaded:Z

    .line 178
    iget v0, p0, Lorg/thoughtcrime/securesms/GroupCreateActivity;->groupChatId:I

    if-eqz v0, :cond_0

    .line 179
    iget-object v1, p0, Lorg/thoughtcrime/securesms/GroupCreateActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {v1, v0}, Lcom/b44t/messenger/DcContext;->getChat(I)Lcom/b44t/messenger/DcChat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b44t/messenger/DcChat;->getProfileImage()Ljava/lang/String;

    move-result-object v0

    .line 180
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 182
    iput-boolean v0, p0, Lorg/thoughtcrime/securesms/GroupCreateActivity;->imageLoaded:Z

    .line 183
    invoke-static {p0}, Lorg/thoughtcrime/securesms/mms/GlideApp;->with(Landroidx/fragment/app/FragmentActivity;)Lorg/thoughtcrime/securesms/mms/GlideRequests;

    move-result-object v0

    .line 184
    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/mms/GlideRequests;->load(Ljava/io/File;)Lorg/thoughtcrime/securesms/mms/GlideRequest;

    move-result-object v0

    .line 185
    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/mms/GlideRequest;->circleCrop()Lorg/thoughtcrime/securesms/mms/GlideRequest;

    move-result-object v0

    iget-object v1, p0, Lorg/thoughtcrime/securesms/GroupCreateActivity;->avatar:Landroid/widget/ImageView;

    .line 186
    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/mms/GlideRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 189
    :cond_0
    iget-boolean v0, p0, Lorg/thoughtcrime/securesms/GroupCreateActivity;->imageLoaded:Z

    if-nez v0, :cond_1

    .line 190
    iget-object v0, p0, Lorg/thoughtcrime/securesms/GroupCreateActivity;->avatar:Landroid/widget/ImageView;

    new-instance v1, Lorg/thoughtcrime/securesms/contacts/avatars/ResourceContactPhoto;

    const v2, 0x7f080120

    invoke-direct {v1, v2}, Lorg/thoughtcrime/securesms/contacts/avatars/ResourceContactPhoto;-><init>(I)V

    invoke-static {p0}, Lorg/thoughtcrime/securesms/util/ThemeUtil;->getDummyContactColor(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, p0, v2}, Lorg/thoughtcrime/securesms/contacts/avatars/ResourceContactPhoto;->asDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 192
    :cond_1
    iget-object v0, p0, Lorg/thoughtcrime/securesms/GroupCreateActivity;->avatar:Landroid/widget/ImageView;

    new-instance v1, Lorg/thoughtcrime/securesms/GroupCreateActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/thoughtcrime/securesms/GroupCreateActivity$$ExternalSyntheticLambda0;-><init>(Lorg/thoughtcrime/securesms/GroupCreateActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initializeResources()V
    .locals 8

    const v0, 0x7f09031f

    .line 132
    invoke-static {p0, v0}, Lorg/thoughtcrime/securesms/util/ViewUtil;->findById(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/GroupCreateActivity;->lv:Landroid/widget/ListView;

    const v0, 0x7f090074

    .line 133
    invoke-static {p0, v0}, Lorg/thoughtcrime/securesms/util/ViewUtil;->findById(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/GroupCreateActivity;->avatar:Landroid/widget/ImageView;

    const v0, 0x7f09016c

    .line 134
    invoke-static {p0, v0}, Lorg/thoughtcrime/securesms/util/ViewUtil;->findById(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/GroupCreateActivity;->groupName:Landroid/widget/EditText;

    const v0, 0x7f0900a2

    .line 135
    invoke-static {p0, v0}, Lorg/thoughtcrime/securesms/util/ViewUtil;->findById(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 137
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/GroupCreateActivity;->initializeAvatarView()V

    .line 139
    new-instance v1, Lorg/thoughtcrime/securesms/util/SelectedContactsAdapter;

    invoke-static {p0}, Lorg/thoughtcrime/securesms/mms/GlideApp;->with(Landroidx/fragment/app/FragmentActivity;)Lorg/thoughtcrime/securesms/mms/GlideRequests;

    move-result-object v2

    iget-boolean v3, p0, Lorg/thoughtcrime/securesms/GroupCreateActivity;->broadcast:Z

    invoke-direct {v1, p0, v2, v3}, Lorg/thoughtcrime/securesms/util/SelectedContactsAdapter;-><init>(Landroid/content/Context;Lorg/thoughtcrime/securesms/mms/GlideRequests;Z)V

    .line 140
    invoke-virtual {v1, p0}, Lorg/thoughtcrime/securesms/util/SelectedContactsAdapter;->setItemClickListener(Lorg/thoughtcrime/securesms/util/SelectedContactsAdapter$ItemClickListener;)V

    .line 141
    iget-object v2, p0, Lorg/thoughtcrime/securesms/GroupCreateActivity;->lv:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 143
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/GroupCreateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "clone_chat"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    .line 145
    iget-object v3, p0, Lorg/thoughtcrime/securesms/GroupCreateActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {v3, v2}, Lcom/b44t/messenger/DcContext;->getChat(I)Lcom/b44t/messenger/DcChat;

    move-result-object v3

    .line 146
    iget-object v5, p0, Lorg/thoughtcrime/securesms/GroupCreateActivity;->groupName:Landroid/widget/EditText;

    invoke-virtual {v3}, Lcom/b44t/messenger/DcChat;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 147
    new-instance v5, Ljava/io/File;

    invoke-virtual {v3}, Lcom/b44t/messenger/DcChat;->getProfileImage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 149
    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/thoughtcrime/securesms/GroupCreateActivity;->setAvatarView(Landroid/net/Uri;)V

    .line 152
    :cond_0
    iget-object v3, p0, Lorg/thoughtcrime/securesms/GroupCreateActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {v3, v2}, Lcom/b44t/messenger/DcContext;->getChatContacts(I)[I

    move-result-object v2

    .line 153
    new-instance v3, Ljava/util/ArrayList;

    array-length v5, v2

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 154
    array-length v5, v2

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_1

    aget v7, v2, v6

    .line 155
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 157
    :cond_1
    invoke-virtual {v1, v3}, Lorg/thoughtcrime/securesms/util/SelectedContactsAdapter;->changeData(Ljava/util/Collection;)V

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 159
    invoke-virtual {v1, v2}, Lorg/thoughtcrime/securesms/util/SelectedContactsAdapter;->changeData(Ljava/util/Collection;)V

    .line 162
    :goto_1
    iget-boolean v1, p0, Lorg/thoughtcrime/securesms/GroupCreateActivity;->broadcast:Z

    const/16 v2, 0x8

    if-eqz v1, :cond_4

    .line 163
    iget-object v1, p0, Lorg/thoughtcrime/securesms/GroupCreateActivity;->avatar:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 164
    iget-object v1, p0, Lorg/thoughtcrime/securesms/GroupCreateActivity;->groupName:Landroid/widget/EditText;

    const v3, 0x7f120094

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setHint(I)V

    .line 165
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/GroupCreateActivity;->isEdit()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v4, 0x8

    :cond_3
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 167
    :cond_4
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 170
    :goto_2
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/GroupCreateActivity;->isEdit()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 171
    iget-object v0, p0, Lorg/thoughtcrime/securesms/GroupCreateActivity;->groupName:Landroid/widget/EditText;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/GroupCreateActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    iget v3, p0, Lorg/thoughtcrime/securesms/GroupCreateActivity;->groupChatId:I

    invoke-virtual {v1, v3}, Lcom/b44t/messenger/DcContext;->getChat(I)Lcom/b44t/messenger/DcChat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b44t/messenger/DcChat;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v0, p0, Lorg/thoughtcrime/securesms/GroupCreateActivity;->lv:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    :cond_5
    return-void
.end method

.method private isEdit()Z
    .locals 1

    .line 383
    iget-boolean v0, p0, Lorg/thoughtcrime/securesms/GroupCreateActivity;->isEdit:Z

    return v0
.end method

.method static synthetic lambda$onCreate$0()V
    .locals 0

    return-void
.end method

.method private onFileSelected(Landroid/net/Uri;)V
    .locals 0

    if-nez p1, :cond_0

    .line 414
    iget-object p1, p0, Lorg/thoughtcrime/securesms/GroupCreateActivity;->attachmentManager:Lorg/thoughtcrime/securesms/mms/AttachmentManager;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->getImageCaptureUri()Landroid/net/Uri;

    move-result-object p1

    .line 417
    :cond_0
    invoke-static {p0, p1}, Lorg/thoughtcrime/securesms/profiles/AvatarHelper;->cropAvatar(Landroid/app/Activity;Landroid/net/Uri;)V

    return-void
.end method

.method private setAvatar(Ljava/lang/Object;Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .line 371
    iput-object p2, p0, Lorg/thoughtcrime/securesms/GroupCreateActivity;->avatarBmp:Landroid/graphics/Bitmap;

    const/4 p2, 0x1

    .line 372
    iput-boolean p2, p0, Lorg/thoughtcrime/securesms/GroupCreateActivity;->avatarChanged:Z

    .line 373
    iput-boolean p2, p0, Lorg/thoughtcrime/securesms/GroupCreateActivity;->imageLoaded:Z

    .line 374
    invoke-static {p0}, Lorg/thoughtcrime/securesms/mms/GlideApp;->with(Landroidx/fragment/app/FragmentActivity;)Lorg/thoughtcrime/securesms/mms/GlideRequests;

    move-result-object v0

    .line 375
    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/mms/GlideRequests;->load(Ljava/lang/Object;)Lorg/thoughtcrime/securesms/mms/GlideRequest;

    move-result-object p1

    .line 376
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/mms/GlideRequest;->circleCrop()Lorg/thoughtcrime/securesms/mms/GlideRequest;

    move-result-object p1

    .line 377
    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/mms/GlideRequest;->skipMemoryCache(Z)Lorg/thoughtcrime/securesms/mms/GlideRequest;

    move-result-object p1

    sget-object p2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 378
    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/mms/GlideRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lorg/thoughtcrime/securesms/mms/GlideRequest;

    move-result-object p1

    iget-object p2, p0, Lorg/thoughtcrime/securesms/GroupCreateActivity;->avatar:Landroid/widget/ImageView;

    .line 379
    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/mms/GlideRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method private setAvatarView(Landroid/net/Uri;)V
    .locals 2

    .line 355
    invoke-static {p0}, Lorg/thoughtcrime/securesms/mms/GlideApp;->with(Landroidx/fragment/app/FragmentActivity;)Lorg/thoughtcrime/securesms/mms/GlideRequests;

    move-result-object v0

    .line 356
    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/mms/GlideRequests;->asBitmap()Lorg/thoughtcrime/securesms/mms/GlideRequest;

    move-result-object v0

    .line 357
    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/mms/GlideRequest;->load(Landroid/net/Uri;)Lorg/thoughtcrime/securesms/mms/GlideRequest;

    move-result-object v0

    const/4 v1, 0x1

    .line 358
    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/mms/GlideRequest;->skipMemoryCache(Z)Lorg/thoughtcrime/securesms/mms/GlideRequest;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 359
    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/mms/GlideRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lorg/thoughtcrime/securesms/mms/GlideRequest;

    move-result-object v0

    .line 360
    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/mms/GlideRequest;->centerCrop()Lorg/thoughtcrime/securesms/mms/GlideRequest;

    move-result-object v0

    const/16 v1, 0xd2

    .line 361
    invoke-virtual {v0, v1, v1}, Lorg/thoughtcrime/securesms/mms/GlideRequest;->override(II)Lorg/thoughtcrime/securesms/mms/GlideRequest;

    move-result-object v0

    new-instance v1, Lorg/thoughtcrime/securesms/GroupCreateActivity$1;

    invoke-direct {v1, p0, p1}, Lorg/thoughtcrime/securesms/GroupCreateActivity$1;-><init>(Lorg/thoughtcrime/securesms/GroupCreateActivity;Landroid/net/Uri;)V

    .line 362
    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/mms/GlideRequest;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    return-void
.end method

.method private showGroupNameEmptyToast(Ljava/lang/String;)Z
    .locals 1

    if-nez p1, :cond_0

    const p1, 0x7f12019a

    .line 285
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/GroupCreateActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private updateGroup(Ljava/lang/String;)V
    .locals 2

    .line 292
    iget v0, p0, Lorg/thoughtcrime/securesms/GroupCreateActivity;->groupChatId:I

    if-nez v0, :cond_0

    return-void

    .line 295
    :cond_0
    iget-object v1, p0, Lorg/thoughtcrime/securesms/GroupCreateActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {v1, v0, p1}, Lcom/b44t/messenger/DcContext;->setChatName(ILjava/lang/String;)I

    .line 297
    iget-boolean p1, p0, Lorg/thoughtcrime/securesms/GroupCreateActivity;->avatarChanged:Z

    if-eqz p1, :cond_1

    iget p1, p0, Lorg/thoughtcrime/securesms/GroupCreateActivity;->groupChatId:I

    iget-object v0, p0, Lorg/thoughtcrime/securesms/GroupCreateActivity;->avatarBmp:Landroid/graphics/Bitmap;

    invoke-static {p0, p1, v0}, Lorg/thoughtcrime/securesms/profiles/AvatarHelper;->setGroupAvatar(Landroid/content/Context;ILandroid/graphics/Bitmap;)V

    .line 299
    :cond_1
    iget-object p1, p0, Lorg/thoughtcrime/securesms/GroupCreateActivity;->attachmentManager:Lorg/thoughtcrime/securesms/mms/AttachmentManager;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->cleanup()V

    .line 300
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "edit_group_chat_id"

    .line 301
    iget v1, p0, Lorg/thoughtcrime/securesms/GroupCreateActivity;->groupChatId:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v0, -0x1

    .line 302
    invoke-virtual {p0, v0, p1}, Lorg/thoughtcrime/securesms/GroupCreateActivity;->setResult(ILandroid/content/Intent;)V

    .line 303
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/GroupCreateActivity;->finish()V

    return-void
.end method

.method private updateViewState()V
    .locals 2

    .line 115
    iget-object v0, p0, Lorg/thoughtcrime/securesms/GroupCreateActivity;->avatar:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 116
    iget-object v0, p0, Lorg/thoughtcrime/securesms/GroupCreateActivity;->groupName:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 119
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/GroupCreateActivity;->isEdit()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f120177

    .line 120
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/GroupCreateActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 122
    :cond_0
    iget-boolean v0, p0, Lorg/thoughtcrime/securesms/GroupCreateActivity;->broadcast:Z

    if-eqz v0, :cond_1

    const v0, 0x7f1202ba

    .line 123
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/GroupCreateActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const v0, 0x7f12024c

    .line 126
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/GroupCreateActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 128
    :goto_0
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/GroupCreateActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$initializeAvatarView$1$org-thoughtcrime-securesms-GroupCreateActivity(Landroid/view/View;)V
    .locals 3

    .line 193
    new-instance p1, Lorg/thoughtcrime/securesms/components/AvatarSelector;

    invoke-static {p0}, Landroidx/loader/app/LoaderManager;->getInstance(Landroidx/lifecycle/LifecycleOwner;)Landroidx/loader/app/LoaderManager;

    move-result-object v0

    new-instance v1, Lorg/thoughtcrime/securesms/GroupCreateActivity$AvatarSelectedListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/thoughtcrime/securesms/GroupCreateActivity$AvatarSelectedListener;-><init>(Lorg/thoughtcrime/securesms/GroupCreateActivity;Lorg/thoughtcrime/securesms/GroupCreateActivity$1;)V

    iget-boolean v2, p0, Lorg/thoughtcrime/securesms/GroupCreateActivity;->imageLoaded:Z

    invoke-direct {p1, p0, v0, v1, v2}, Lorg/thoughtcrime/securesms/components/AvatarSelector;-><init>(Landroid/content/Context;Landroidx/loader/app/LoaderManager;Lorg/thoughtcrime/securesms/components/AvatarSelector$AttachmentClickedListener;Z)V

    iget-object v0, p0, Lorg/thoughtcrime/securesms/GroupCreateActivity;->avatar:Landroid/widget/ImageView;

    .line 194
    invoke-virtual {p1, p0, v0}, Lorg/thoughtcrime/securesms/components/AvatarSelector;->show(Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 323
    invoke-super {p0, p1, p2, p3}, Lorg/thoughtcrime/securesms/PassphraseRequiredActionBarActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eq p1, p2, :cond_5

    const/16 p2, 0xac7

    if-eq p1, p2, :cond_3

    const/16 p2, 0x1a35

    if-eq p1, p2, :cond_2

    const/16 p2, 0x7ac0

    if-eq p1, p2, :cond_1

    goto :goto_1

    .line 345
    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/GroupCreateActivity;->setAvatarView(Landroid/net/Uri;)V

    goto :goto_1

    .line 349
    :cond_2
    invoke-static {p3}, Lcom/soundcloud/android/crop/Crop;->getOutput(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/GroupCreateActivity;->setAvatarView(Landroid/net/Uri;)V

    goto :goto_1

    :cond_3
    if-eqz p3, :cond_4

    .line 330
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 331
    :cond_4
    invoke-direct {p0, v0}, Lorg/thoughtcrime/securesms/GroupCreateActivity;->onFileSelected(Landroid/net/Uri;)V

    goto :goto_1

    .line 335
    :cond_5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string p2, "contacts"

    .line 336
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object p3, p2

    check-cast p3, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_6
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    if-eqz p3, :cond_6

    .line 338
    iget-object v1, p0, Lorg/thoughtcrime/securesms/GroupCreateActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {v1, v0, p3}, Lcom/b44t/messenger/DcContext;->createContact(Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 341
    :cond_7
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/GroupCreateActivity;->getAdapter()Lorg/thoughtcrime/securesms/util/SelectedContactsAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/thoughtcrime/securesms/util/SelectedContactsAdapter;->changeData(Ljava/util/Collection;)V

    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;Z)V
    .locals 2

    .line 74
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/GroupCreateActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    const p1, 0x7f0c0075

    .line 75
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/GroupCreateActivity;->setContentView(I)V

    const/4 p1, 0x0

    .line 76
    iput-boolean p1, p0, Lorg/thoughtcrime/securesms/GroupCreateActivity;->verified:Z

    .line 77
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/GroupCreateActivity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    const-string v0, "group_create_broadcast"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lorg/thoughtcrime/securesms/GroupCreateActivity;->broadcast:Z

    .line 78
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/GroupCreateActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 79
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/GroupCreateActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p2

    const v1, 0x7f0800fc

    invoke-virtual {p2, v1}, Landroidx/appcompat/app/ActionBar;->setHomeAsUpIndicator(I)V

    .line 81
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/GroupCreateActivity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    const-string v1, "edit_group_chat_id"

    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lorg/thoughtcrime/securesms/GroupCreateActivity;->groupChatId:I

    .line 82
    new-instance p2, Lorg/thoughtcrime/securesms/mms/AttachmentManager;

    new-instance v1, Lorg/thoughtcrime/securesms/GroupCreateActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/thoughtcrime/securesms/GroupCreateActivity$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {p2, p0, v1}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;-><init>(Landroid/app/Activity;Lorg/thoughtcrime/securesms/mms/AttachmentManager$AttachmentListener;)V

    iput-object p2, p0, Lorg/thoughtcrime/securesms/GroupCreateActivity;->attachmentManager:Lorg/thoughtcrime/securesms/mms/AttachmentManager;

    .line 83
    iput-boolean p1, p0, Lorg/thoughtcrime/securesms/GroupCreateActivity;->avatarChanged:Z

    .line 87
    iget p2, p0, Lorg/thoughtcrime/securesms/GroupCreateActivity;->groupChatId:I

    if-eqz p2, :cond_0

    .line 88
    iput-boolean v0, p0, Lorg/thoughtcrime/securesms/GroupCreateActivity;->isEdit:Z

    .line 89
    iget-object v0, p0, Lorg/thoughtcrime/securesms/GroupCreateActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {v0, p2}, Lcom/b44t/messenger/DcContext;->getChat(I)Lcom/b44t/messenger/DcChat;

    move-result-object p2

    .line 90
    invoke-virtual {p2}, Lcom/b44t/messenger/DcChat;->isProtected()Z

    move-result v0

    iput-boolean v0, p0, Lorg/thoughtcrime/securesms/GroupCreateActivity;->verified:Z

    .line 91
    invoke-virtual {p2}, Lcom/b44t/messenger/DcChat;->isBroadcast()Z

    move-result p2

    iput-boolean p2, p0, Lorg/thoughtcrime/securesms/GroupCreateActivity;->broadcast:Z

    .line 94
    :cond_0
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/GroupCreateActivity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    const-string v0, "clone_chat"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_1

    .line 96
    iget-object p2, p0, Lorg/thoughtcrime/securesms/GroupCreateActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {p2, p1}, Lcom/b44t/messenger/DcContext;->getChat(I)Lcom/b44t/messenger/DcChat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/b44t/messenger/DcChat;->isBroadcast()Z

    move-result p1

    iput-boolean p1, p0, Lorg/thoughtcrime/securesms/GroupCreateActivity;->broadcast:Z

    .line 99
    :cond_1
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/GroupCreateActivity;->initializeResources()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 110
    invoke-super {p0}, Lorg/thoughtcrime/securesms/PassphraseRequiredActionBarActivity;->onDestroy()V

    return-void
.end method

.method public onItemClick(I)V
    .locals 4

    const/4 v0, -0x3

    if-ne p1, v0, :cond_1

    .line 245
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lorg/thoughtcrime/securesms/ContactMultiSelectionActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "select_verified"

    .line 246
    iget-boolean v1, p0, Lorg/thoughtcrime/securesms/GroupCreateActivity;->verified:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 247
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 248
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/GroupCreateActivity;->getAdapter()Lorg/thoughtcrime/securesms/util/SelectedContactsAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/util/SelectedContactsAdapter;->getContacts()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 249
    iget-object v3, p0, Lorg/thoughtcrime/securesms/GroupCreateActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {v3, v2}, Lcom/b44t/messenger/DcContext;->getContact(I)Lcom/b44t/messenger/DcContact;

    move-result-object v2

    invoke-virtual {v2}, Lcom/b44t/messenger/DcContact;->getAddr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v1, "preselected_contacts"

    .line 251
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 252
    invoke-virtual {p0, p1, v0}, Lorg/thoughtcrime/securesms/GroupCreateActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    return-void
.end method

.method public onItemDeleteClick(I)V
    .locals 1

    .line 258
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/GroupCreateActivity;->getAdapter()Lorg/thoughtcrime/securesms/util/SelectedContactsAdapter;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/util/SelectedContactsAdapter;->remove(Ljava/lang/Integer;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 210
    invoke-super {p0, p1}, Lorg/thoughtcrime/securesms/PassphraseRequiredActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 211
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    const/4 v1, 0x1

    if-eq p1, v0, :cond_4

    const v0, 0x7f0901fd

    const/4 v2, 0x0

    if-eq p1, v0, :cond_0

    return v2

    .line 216
    :cond_0
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/GroupCreateActivity;->getGroupName()Ljava/lang/String;

    move-result-object p1

    .line 217
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/GroupCreateActivity;->showGroupNameEmptyToast(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 219
    :cond_1
    iget v0, p0, Lorg/thoughtcrime/securesms/GroupCreateActivity;->groupChatId:I

    if-eqz v0, :cond_2

    .line 220
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/GroupCreateActivity;->updateGroup(Ljava/lang/String;)V

    goto :goto_0

    .line 222
    :cond_2
    iget-boolean v0, p0, Lorg/thoughtcrime/securesms/GroupCreateActivity;->broadcast:Z

    if-nez v0, :cond_3

    invoke-direct {p0}, Lorg/thoughtcrime/securesms/GroupCreateActivity;->allMembersVerified()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    :cond_3
    iput-boolean v2, p0, Lorg/thoughtcrime/securesms/GroupCreateActivity;->verified:Z

    .line 223
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/GroupCreateActivity;->createGroup(Ljava/lang/String;)V

    :goto_0
    return v1

    .line 213
    :cond_4
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/GroupCreateActivity;->finish()V

    return v1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 200
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/GroupCreateActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 201
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    const v1, 0x7f0e000e

    .line 203
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 204
    invoke-super {p0, p1}, Lorg/thoughtcrime/securesms/PassphraseRequiredActionBarActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onResume()V
    .locals 0

    .line 104
    invoke-super {p0}, Lorg/thoughtcrime/securesms/PassphraseRequiredActionBarActivity;->onResume()V

    .line 105
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/GroupCreateActivity;->updateViewState()V

    return-void
.end method
