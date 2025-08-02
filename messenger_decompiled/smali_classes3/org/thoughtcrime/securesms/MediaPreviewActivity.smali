.class public Lorg/thoughtcrime/securesms/MediaPreviewActivity;
.super Lorg/thoughtcrime/securesms/PassphraseRequiredActionBarActivity;
.source "MediaPreviewActivity.java"

# interfaces
.implements Lorg/thoughtcrime/securesms/recipients/RecipientModifiedListener;
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;,
        Lorg/thoughtcrime/securesms/MediaPreviewActivity$ViewPagerListener;,
        Lorg/thoughtcrime/securesms/MediaPreviewActivity$SingleItemPagerAdapter;,
        Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItemAdapter;,
        Lorg/thoughtcrime/securesms/MediaPreviewActivity$DcMediaPagerAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/thoughtcrime/securesms/PassphraseRequiredActionBarActivity;",
        "Lorg/thoughtcrime/securesms/recipients/RecipientModifiedListener;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Lcom/b44t/messenger/DcMediaGalleryElement;",
        ">;"
    }
.end annotation


# static fields
.field public static final ACTIVITY_TITLE_EXTRA:Ljava/lang/String; = "activity_title"

.field public static final ADDRESS_EXTRA:Ljava/lang/String; = "address"

.field public static final DATE_EXTRA:Ljava/lang/String; = "date"

.field public static final DC_MSG_ID:Ljava/lang/String; = "dc_msg_id"

.field public static final EDIT_AVATAR_CHAT_ID:Ljava/lang/String; = "avatar_for_chat_id"

.field public static final LEFT_IS_RECENT_EXTRA:Ljava/lang/String; = "left_is_recent"

.field public static final OPENED_FROM_PROFILE:Ljava/lang/String; = "opened_from_profile"

.field public static final OUTGOING_EXTRA:Ljava/lang/String; = "outgoing"

.field public static final SIZE_EXTRA:Ljava/lang/String; = "size"

.field private static final TAG:Ljava/lang/String; = "MediaPreviewActivity"


# instance fields
.field private conversationRecipient:Lorg/thoughtcrime/securesms/recipients/Recipient;

.field private dcContext:Lcom/b44t/messenger/DcContext;

.field private editAvatarChatId:I

.field private initialMedia:Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;

.field private leftIsRecent:Z

.field private mediaPager:Landroidx/viewpager/widget/ViewPager;

.field private messageRecord:Lcom/b44t/messenger/DcMsg;

.field private restartItem:I


# direct methods
.method public static synthetic $r8$lambda$C7tyBPHOQduRhMsh70v-ZvPqhS8(Lorg/thoughtcrime/securesms/MediaPreviewActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->initializeActionBar()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 75
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/PassphraseRequiredActionBarActivity;-><init>()V

    const/4 v0, -0x1

    .line 102
    iput v0, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->restartItem:I

    const/4 v0, 0x0

    .line 104
    iput v0, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->editAvatarChatId:I

    return-void
.end method

.method static synthetic access$1000(Lorg/thoughtcrime/securesms/MediaPreviewActivity;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->initializeActionBar()V

    return-void
.end method

.method static synthetic access$1100()Ljava/lang/String;
    .locals 1

    .line 75
    sget-object v0, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/thoughtcrime/securesms/MediaPreviewActivity;)Lcom/b44t/messenger/DcContext;
    .locals 0

    .line 75
    iget-object p0, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    return-object p0
.end method

.method static synthetic access$800(Lorg/thoughtcrime/securesms/MediaPreviewActivity;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    .line 75
    iget-object p0, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->mediaPager:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method private cleanupMedia()I
    .locals 3

    .line 245
    iget-object v0, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->mediaPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    .line 247
    iget-object v1, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->mediaPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->removeAllViews()V

    .line 248
    iget-object v1, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->mediaPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    return v0
.end method

.method private deleteMedia()V
    .locals 7

    .line 340
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->getCurrentMediaItem()Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 341
    invoke-static {v0}, Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;->access$200(Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;)I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 345
    :cond_0
    iget-object v1, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;->access$200(Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/b44t/messenger/DcContext;->getMsg(I)Lcom/b44t/messenger/DcMsg;

    move-result-object v1

    .line 346
    iget-object v2, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {v1}, Lcom/b44t/messenger/DcMsg;->getChatId()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/b44t/messenger/DcContext;->getChat(I)Lcom/b44t/messenger/DcChat;

    move-result-object v1

    .line 348
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 349
    invoke-virtual {v1}, Lcom/b44t/messenger/DcChat;->isDeviceTalk()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f100002

    goto :goto_0

    :cond_1
    const v1, 0x7f100001

    :goto_0
    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 350
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 348
    invoke-virtual {v2, v1, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 352
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 353
    invoke-virtual {v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 354
    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 356
    new-instance v1, Lorg/thoughtcrime/securesms/MediaPreviewActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lorg/thoughtcrime/securesms/MediaPreviewActivity$$ExternalSyntheticLambda0;-><init>(Lorg/thoughtcrime/securesms/MediaPreviewActivity;Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;)V

    const v0, 0x7f1200e4

    invoke-virtual {v2, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/high16 v0, 0x1040000

    const/4 v1, 0x0

    .line 367
    invoke-virtual {v2, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 368
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    :cond_2
    :goto_1
    return-void
.end method

.method private editAvatar()V
    .locals 3

    .line 254
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/thoughtcrime/securesms/GroupCreateActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "edit_group_chat_id"

    .line 255
    iget v2, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->editAvatarChatId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 256
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->startActivity(Landroid/content/Intent;)V

    .line 257
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->finish()V

    return-void
.end method

.method private getCurrentMediaItem()Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;
    .locals 2

    .line 415
    iget-object v0, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->mediaPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItemAdapter;

    if-eqz v0, :cond_0

    .line 418
    iget-object v1, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->mediaPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItemAdapter;->getMediaItemFor(I)Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private initializeActionBar()V
    .locals 6

    .line 153
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->getCurrentMediaItem()Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 158
    invoke-static {v0}, Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;->access$000(Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    .line 159
    iget-object v1, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->dynamicLanguage:Lorg/thoughtcrime/securesms/util/DynamicLanguage;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/util/DynamicLanguage;->getCurrentLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v0}, Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;->access$000(Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;)J

    move-result-wide v2

    invoke-static {p0, v1, v2, v3}, Lorg/thoughtcrime/securesms/util/DateUtils;->getExtendedRelativeTimeSpanString(Landroid/content/Context;Ljava/util/Locale;J)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const v1, 0x7f1200fe

    .line 161
    invoke-virtual {p0, v1}, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 164
    :goto_0
    invoke-static {v0}, Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;->access$100(Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const v2, 0x7f1203c5

    invoke-virtual {p0, v2}, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 166
    :cond_1
    iget-object v2, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;->access$200(Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/b44t/messenger/DcContext;->getMsg(I)Lcom/b44t/messenger/DcMsg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b44t/messenger/DcMsg;->getFromId()I

    move-result v0

    .line 167
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v2

    iget-object v3, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {v3, v0}, Lcom/b44t/messenger/DcContext;->getContact(I)Lcom/b44t/messenger/DcContact;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b44t/messenger/DcContact;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 170
    :goto_1
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method private initializeMedia()V
    .locals 10

    .line 234
    sget-object v0, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Loading Part URI: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->initialMedia:Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v0, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->messageRecord:Lcom/b44t/messenger/DcMsg;

    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->getSupportLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    goto :goto_0

    .line 239
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->mediaPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v9, Lorg/thoughtcrime/securesms/MediaPreviewActivity$SingleItemPagerAdapter;

    invoke-static {p0}, Lorg/thoughtcrime/securesms/mms/GlideApp;->with(Landroidx/fragment/app/FragmentActivity;)Lorg/thoughtcrime/securesms/mms/GlideRequests;

    move-result-object v3

    .line 240
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    iget-object v1, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->initialMedia:Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;

    invoke-static {v1}, Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;->access$500(Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;)Landroid/net/Uri;

    move-result-object v5

    iget-object v1, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->initialMedia:Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;

    invoke-static {v1}, Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;->access$600(Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;)Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->initialMedia:Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;

    invoke-static {v1}, Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;->access$700(Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;)J

    move-result-wide v7

    move-object v1, v9

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lorg/thoughtcrime/securesms/MediaPreviewActivity$SingleItemPagerAdapter;-><init>(Landroid/content/Context;Lorg/thoughtcrime/securesms/mms/GlideRequests;Landroid/view/Window;Landroid/net/Uri;Ljava/lang/String;J)V

    .line 239
    invoke-virtual {v0, v9}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    :goto_0
    return-void
.end method

.method private initializeResources()V
    .locals 20

    move-object/from16 v0, p0

    .line 200
    invoke-virtual/range {p0 .. p0}, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "address"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lorg/thoughtcrime/securesms/database/Address;

    .line 202
    invoke-virtual/range {p0 .. p0}, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 203
    invoke-static {v2}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object v3

    iput-object v3, v0, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    .line 204
    invoke-virtual/range {p0 .. p0}, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "dc_msg_id"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x0

    .line 207
    iput-object v3, v0, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->messageRecord:Lcom/b44t/messenger/DcMsg;

    .line 208
    invoke-virtual/range {p0 .. p0}, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v6, "date"

    const-wide/16 v7, 0x0

    invoke-virtual {v4, v6, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v14

    .line 209
    invoke-virtual/range {p0 .. p0}, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v6, "size"

    invoke-virtual {v4, v6, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v16

    .line 210
    new-instance v4, Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;

    const/4 v10, 0x0

    invoke-virtual/range {p0 .. p0}, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v9, v4

    invoke-direct/range {v9 .. v19}, Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;-><init>(Lorg/thoughtcrime/securesms/recipients/Recipient;Landroid/net/Uri;Ljava/lang/String;IJJZLorg/thoughtcrime/securesms/MediaPreviewActivity$1;)V

    iput-object v4, v0, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->initialMedia:Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;

    if-eqz v1, :cond_0

    .line 214
    invoke-static {v2, v1}, Lorg/thoughtcrime/securesms/recipients/Recipient;->from(Landroid/content/Context;Lorg/thoughtcrime/securesms/database/Address;)Lorg/thoughtcrime/securesms/recipients/Recipient;

    move-result-object v1

    iput-object v1, v0, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->conversationRecipient:Lorg/thoughtcrime/securesms/recipients/Recipient;

    goto :goto_0

    .line 216
    :cond_0
    iput-object v3, v0, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->conversationRecipient:Lorg/thoughtcrime/securesms/recipients/Recipient;

    goto :goto_0

    .line 219
    :cond_1
    iget-object v1, v0, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {v1, v3}, Lcom/b44t/messenger/DcContext;->getMsg(I)Lcom/b44t/messenger/DcMsg;

    move-result-object v1

    iput-object v1, v0, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->messageRecord:Lcom/b44t/messenger/DcMsg;

    .line 220
    new-instance v1, Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;

    invoke-static {v2, v3}, Lorg/thoughtcrime/securesms/recipients/Recipient;->fromChat(Landroid/content/Context;I)Lorg/thoughtcrime/securesms/recipients/Recipient;

    move-result-object v7

    iget-object v4, v0, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->messageRecord:Lcom/b44t/messenger/DcMsg;

    invoke-virtual {v4}, Lcom/b44t/messenger/DcMsg;->getFileAsFile()Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    iget-object v4, v0, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->messageRecord:Lcom/b44t/messenger/DcMsg;

    .line 221
    invoke-virtual {v4}, Lcom/b44t/messenger/DcMsg;->getFilemime()Ljava/lang/String;

    move-result-object v9

    iget-object v4, v0, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->messageRecord:Lcom/b44t/messenger/DcMsg;

    invoke-virtual {v4}, Lcom/b44t/messenger/DcMsg;->getId()I

    move-result v10

    iget-object v4, v0, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->messageRecord:Lcom/b44t/messenger/DcMsg;

    invoke-virtual {v4}, Lcom/b44t/messenger/DcMsg;->getDateReceived()J

    move-result-wide v11

    iget-object v4, v0, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->messageRecord:Lcom/b44t/messenger/DcMsg;

    .line 222
    invoke-virtual {v4}, Lcom/b44t/messenger/DcMsg;->getFilebytes()J

    move-result-wide v13

    iget-object v4, v0, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->messageRecord:Lcom/b44t/messenger/DcMsg;

    invoke-virtual {v4}, Lcom/b44t/messenger/DcMsg;->isOutgoing()Z

    move-result v15

    const/16 v16, 0x0

    move-object v6, v1

    invoke-direct/range {v6 .. v16}, Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;-><init>(Lorg/thoughtcrime/securesms/recipients/Recipient;Landroid/net/Uri;Ljava/lang/String;IJJZLorg/thoughtcrime/securesms/MediaPreviewActivity$1;)V

    iput-object v1, v0, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->initialMedia:Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;

    .line 223
    invoke-static {v2, v3}, Lorg/thoughtcrime/securesms/recipients/Recipient;->fromChat(Landroid/content/Context;I)Lorg/thoughtcrime/securesms/recipients/Recipient;

    move-result-object v1

    iput-object v1, v0, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->conversationRecipient:Lorg/thoughtcrime/securesms/recipients/Recipient;

    .line 225
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "left_is_recent"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->leftIsRecent:Z

    const/4 v1, -0x1

    .line 226
    iput v1, v0, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->restartItem:I

    return-void
.end method

.method private initializeViews()V
    .locals 3

    const v0, 0x7f0901e7

    .line 194
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->mediaPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x1

    .line 195
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 196
    iget-object v0, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->mediaPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Lorg/thoughtcrime/securesms/MediaPreviewActivity$ViewPagerListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/thoughtcrime/securesms/MediaPreviewActivity$ViewPagerListener;-><init>(Lorg/thoughtcrime/securesms/MediaPreviewActivity;Lorg/thoughtcrime/securesms/MediaPreviewActivity$1;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method private isMediaInDb()Z
    .locals 1

    .line 411
    iget-object v0, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->conversationRecipient:Lorg/thoughtcrime/securesms/recipients/Recipient;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isTypeSupported(Lorg/thoughtcrime/securesms/mms/Slide;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 425
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/mms/Slide;->hasVideo()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/mms/Slide;->hasImage()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private performSavetoDisk(Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;)V
    .locals 10

    .line 314
    new-instance v0, Lorg/thoughtcrime/securesms/util/SaveAttachmentTask;

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/util/SaveAttachmentTask;-><init>(Landroid/content/Context;)V

    .line 315
    invoke-static {p1}, Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;->access$000(Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    invoke-static {p1}, Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;->access$000(Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;)J

    move-result-wide v1

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    :goto_0
    move-wide v6, v1

    .line 316
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/thoughtcrime/securesms/util/SaveAttachmentTask$Attachment;

    new-instance v9, Lorg/thoughtcrime/securesms/util/SaveAttachmentTask$Attachment;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;->access$500(Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {p1}, Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;->access$600(Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lorg/thoughtcrime/securesms/util/SaveAttachmentTask$Attachment;-><init>(Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;)V

    const/4 p1, 0x0

    aput-object v9, v2, p1

    invoke-virtual {v0, v1, v2}, Lorg/thoughtcrime/securesms/util/SaveAttachmentTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private saveToDisk()V
    .locals 2

    .line 291
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->getCurrentMediaItem()Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 294
    new-instance v1, Lorg/thoughtcrime/securesms/MediaPreviewActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, v0}, Lorg/thoughtcrime/securesms/MediaPreviewActivity$$ExternalSyntheticLambda3;-><init>(Lorg/thoughtcrime/securesms/MediaPreviewActivity;Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;)V

    invoke-static {p0, v1}, Lorg/thoughtcrime/securesms/util/SaveAttachmentTask;->showWarningDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private setFullscreenIfPossible()V
    .locals 2

    .line 143
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method private share()V
    .locals 2

    .line 282
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->getCurrentMediaItem()Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 284
    invoke-static {v0}, Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;->access$200(Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;)I

    move-result v0

    const-string v1, "android.intent.action.SEND"

    invoke-static {p0, v0, v1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->openForViewOrShare(Landroid/content/Context;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private showInChat()V
    .locals 4

    .line 320
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->getCurrentMediaItem()Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 321
    invoke-static {v0}, Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;->access$200(Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;)I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 326
    :cond_0
    iget-object v1, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;->access$200(Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/b44t/messenger/DcContext;->getMsg(I)Lcom/b44t/messenger/DcMsg;

    move-result-object v0

    .line 327
    invoke-virtual {v0}, Lcom/b44t/messenger/DcMsg;->getId()I

    move-result v1

    if-nez v1, :cond_1

    .line 328
    sget-object v0, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->TAG:Ljava/lang/String;

    const-string v1, "cannot get message object."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 332
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lorg/thoughtcrime/securesms/ConversationActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "chat_id"

    .line 333
    invoke-virtual {v0}, Lcom/b44t/messenger/DcMsg;->getChatId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 334
    iget-object v2, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-static {v0, v2}, Lcom/b44t/messenger/DcMsg;->getMessagePosition(Lcom/b44t/messenger/DcMsg;Lcom/b44t/messenger/DcContext;)I

    move-result v0

    const-string v2, "starting_position"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 335
    invoke-virtual {p0, v1}, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 322
    :cond_2
    :goto_0
    sget-object v0, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->TAG:Ljava/lang/String;

    const-string v1, "mediaItem missing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private showOverview()V
    .locals 5

    .line 262
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "opened_from_profile"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->finish()V

    goto :goto_0

    .line 265
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->conversationRecipient:Lorg/thoughtcrime/securesms/recipients/Recipient;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/recipients/Recipient;->getAddress()Lorg/thoughtcrime/securesms/database/Address;

    move-result-object v0

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/database/Address;->isDcChat()Z

    move-result v0

    const/16 v1, 0x14

    const-string v2, "force_tab"

    if-eqz v0, :cond_1

    .line 266
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lorg/thoughtcrime/securesms/ProfileActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 267
    iget-object v3, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->conversationRecipient:Lorg/thoughtcrime/securesms/recipients/Recipient;

    invoke-virtual {v3}, Lorg/thoughtcrime/securesms/recipients/Recipient;->getAddress()Lorg/thoughtcrime/securesms/database/Address;

    move-result-object v3

    invoke-virtual {v3}, Lorg/thoughtcrime/securesms/database/Address;->getDcChatId()I

    move-result v3

    const-string v4, "chat_id"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 268
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 269
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->startActivity(Landroid/content/Intent;)V

    .line 270
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->finish()V

    goto :goto_0

    .line 272
    :cond_1
    iget-object v0, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->conversationRecipient:Lorg/thoughtcrime/securesms/recipients/Recipient;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/recipients/Recipient;->getAddress()Lorg/thoughtcrime/securesms/database/Address;

    move-result-object v0

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/database/Address;->isDcContact()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 273
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lorg/thoughtcrime/securesms/ProfileActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 274
    iget-object v3, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->conversationRecipient:Lorg/thoughtcrime/securesms/recipients/Recipient;

    invoke-virtual {v3}, Lorg/thoughtcrime/securesms/recipients/Recipient;->getAddress()Lorg/thoughtcrime/securesms/database/Address;

    move-result-object v3

    invoke-virtual {v3}, Lorg/thoughtcrime/securesms/database/Address;->getDcContactId()I

    move-result v3

    const-string v4, "contact_id"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 275
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 276
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->startActivity(Landroid/content/Intent;)V

    .line 277
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->finish()V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method synthetic lambda$deleteMedia$2$org-thoughtcrime-securesms-MediaPreviewActivity(Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 357
    new-instance p2, Lorg/thoughtcrime/securesms/MediaPreviewActivity$2;

    invoke-direct {p2, p0, p1}, Lorg/thoughtcrime/securesms/MediaPreviewActivity$2;-><init>(Lorg/thoughtcrime/securesms/MediaPreviewActivity;Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    .line 363
    invoke-virtual {p2, p1}, Lorg/thoughtcrime/securesms/MediaPreviewActivity$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 365
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->finish()V

    return-void
.end method

.method synthetic lambda$saveToDisk$0$org-thoughtcrime-securesms-MediaPreviewActivity(Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;)V
    .locals 0

    .line 306
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->performSavetoDisk(Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;)V

    return-void
.end method

.method synthetic lambda$saveToDisk$1$org-thoughtcrime-securesms-MediaPreviewActivity(Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;Landroid/content/DialogInterface;I)V
    .locals 2

    .line 295
    invoke-static {p0}, Lorg/thoughtcrime/securesms/util/StorageUtil;->canWriteToMediaStore(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 296
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->performSavetoDisk(Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;)V

    return-void

    .line 300
    :cond_0
    invoke-static {p0}, Lorg/thoughtcrime/securesms/permissions/Permissions;->with(Landroid/app/Activity;)Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object p2

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v1, p3, v0

    .line 301
    invoke-virtual {p2, p3}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->request([Ljava/lang/String;)Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object p2

    .line 302
    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->alwaysGrantOnSdk30()Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object p2

    .line 303
    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->ifNecessary()Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object p2

    const p3, 0x7f1202f8

    .line 304
    invoke-virtual {p0, p3}, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->withPermanentDenialDialog(Ljava/lang/String;)Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object p2

    new-instance p3, Lorg/thoughtcrime/securesms/MediaPreviewActivity$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0, p1}, Lorg/thoughtcrime/securesms/MediaPreviewActivity$$ExternalSyntheticLambda1;-><init>(Lorg/thoughtcrime/securesms/MediaPreviewActivity;Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;)V

    .line 305
    invoke-virtual {p2, p3}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->onAllGranted(Ljava/lang/Runnable;)Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object p1

    .line 308
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->execute()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;Z)V
    .locals 1

    .line 120
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->setFullscreenIfPossible()V

    .line 121
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x400

    invoke-virtual {p1, p2, p2}, Landroid/view/Window;->setFlags(II)V

    .line 124
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const p1, 0x7f0c0093

    .line 125
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->setContentView(I)V

    .line 127
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string p2, "avatar_for_chat_id"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->editAvatarChatId:I

    .line 128
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string p2, "activity_title"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 130
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 133
    :cond_0
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->initializeViews()V

    .line 134
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->initializeResources()V

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/loader/content/Loader<",
            "Lcom/b44t/messenger/DcMediaGalleryElement;",
            ">;"
        }
    .end annotation

    .line 430
    new-instance p1, Lorg/thoughtcrime/securesms/database/loaders/PagingMediaLoader;

    iget-object p2, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->messageRecord:Lcom/b44t/messenger/DcMsg;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p2, v0}, Lorg/thoughtcrime/securesms/database/loaders/PagingMediaLoader;-><init>(Landroid/content/Context;Lcom/b44t/messenger/DcMsg;Z)V

    return-object p1
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Lcom/b44t/messenger/DcMediaGalleryElement;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Lcom/b44t/messenger/DcMediaGalleryElement;",
            ">;",
            "Lcom/b44t/messenger/DcMediaGalleryElement;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 437
    new-instance p1, Lorg/thoughtcrime/securesms/MediaPreviewActivity$DcMediaPagerAdapter;

    invoke-static {p0}, Lorg/thoughtcrime/securesms/mms/GlideApp;->with(Landroidx/fragment/app/FragmentActivity;)Lorg/thoughtcrime/securesms/mms/GlideRequests;

    move-result-object v2

    .line 438
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    iget-boolean v5, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->leftIsRecent:Z

    move-object v0, p1

    move-object v1, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/thoughtcrime/securesms/MediaPreviewActivity$DcMediaPagerAdapter;-><init>(Landroid/content/Context;Lorg/thoughtcrime/securesms/mms/GlideRequests;Landroid/view/Window;Lcom/b44t/messenger/DcMediaGalleryElement;Z)V

    .line 439
    iget-object v0, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->mediaPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    const/4 v0, 0x1

    .line 440
    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/MediaPreviewActivity$DcMediaPagerAdapter;->setActive(Z)V

    .line 442
    iget p1, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->restartItem:I

    if-gez p1, :cond_0

    iget-object p1, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->mediaPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p2}, Lcom/b44t/messenger/DcMediaGalleryElement;->getPosition()I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 443
    :cond_0
    iget-object p2, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->mediaPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p2, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 75
    check-cast p2, Lcom/b44t/messenger/DcMediaGalleryElement;

    invoke-virtual {p0, p1, p2}, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->onLoadFinished(Landroidx/loader/content/Loader;Lcom/b44t/messenger/DcMediaGalleryElement;)V

    return-void
.end method

.method public onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Lcom/b44t/messenger/DcMediaGalleryElement;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onModified(Lorg/thoughtcrime/securesms/recipients/Recipient;)V
    .locals 0

    .line 148
    new-instance p1, Lorg/thoughtcrime/securesms/MediaPreviewActivity$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lorg/thoughtcrime/securesms/MediaPreviewActivity$$ExternalSyntheticLambda2;-><init>(Lorg/thoughtcrime/securesms/MediaPreviewActivity;)V

    invoke-static {p1}, Lorg/thoughtcrime/securesms/util/Util;->runOnMain(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 188
    invoke-super {p0, p1}, Lorg/thoughtcrime/securesms/PassphraseRequiredActionBarActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 189
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->setIntent(Landroid/content/Intent;)V

    .line 190
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->initializeResources()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 395
    invoke-super {p0, p1}, Lorg/thoughtcrime/securesms/PassphraseRequiredActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 397
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 403
    :sswitch_0
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->showInChat()V

    return v0

    .line 401
    :sswitch_1
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->saveToDisk()V

    return v0

    .line 400
    :sswitch_2
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->share()V

    return v0

    .line 399
    :sswitch_3
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->showOverview()V

    return v0

    .line 398
    :sswitch_4
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->editAvatar()V

    return v0

    .line 402
    :sswitch_5
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->deleteMedia()V

    return v0

    .line 404
    :sswitch_6
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->finish()V

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_6
        0x7f0900dd -> :sswitch_5
        0x7f0901e8 -> :sswitch_4
        0x7f0901e9 -> :sswitch_3
        0x7f0901ea -> :sswitch_2
        0x7f0902e7 -> :sswitch_1
        0x7f090339 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 1

    .line 182
    invoke-super {p0}, Lorg/thoughtcrime/securesms/PassphraseRequiredActionBarActivity;->onPause()V

    .line 183
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->cleanupMedia()I

    move-result v0

    iput v0, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->restartItem:I

    return-void
.end method

.method protected onPreCreate()V
    .locals 1

    .line 108
    new-instance v0, Lorg/thoughtcrime/securesms/MediaPreviewActivity$1;

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/MediaPreviewActivity$1;-><init>(Lorg/thoughtcrime/securesms/MediaPreviewActivity;)V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->dynamicTheme:Lorg/thoughtcrime/securesms/util/DynamicTheme;

    .line 114
    invoke-super {p0}, Lorg/thoughtcrime/securesms/PassphraseRequiredActionBarActivity;->onPreCreate()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 373
    invoke-super {p0, p1}, Lorg/thoughtcrime/securesms/PassphraseRequiredActionBarActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 375
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 376
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0010

    .line 377
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 379
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->isMediaInDb()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const v0, 0x7f0901e9

    .line 380
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f0901ea

    .line 381
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f0900dd

    .line 382
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f090339

    .line 383
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 386
    :cond_0
    iget v0, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->editAvatarChatId:I

    if-nez v0, :cond_1

    const v0, 0x7f0901e8

    .line 387
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 139
    invoke-static {p0, p1, p2, p3}, Lorg/thoughtcrime/securesms/permissions/Permissions;->onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 176
    invoke-super {p0}, Lorg/thoughtcrime/securesms/PassphraseRequiredActionBarActivity;->onResume()V

    .line 177
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->initializeMedia()V

    return-void
.end method
