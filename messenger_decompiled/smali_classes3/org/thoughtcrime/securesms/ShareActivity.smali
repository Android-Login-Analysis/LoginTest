.class public Lorg/thoughtcrime/securesms/ShareActivity;
.super Lorg/thoughtcrime/securesms/PassphraseRequiredActionBarActivity;
.source "ShareActivity.java"

# interfaces
.implements Lorg/thoughtcrime/securesms/ResolveMediaTask$OnMediaResolvedListener;


# static fields
.field public static final EXTRA_CHAT_ID:Ljava/lang/String; = "chat_id"

.field public static final EXTRA_TITLE:Ljava/lang/String; = "extra_title"

.field private static final TAG:Ljava/lang/String; = "ShareActivity"


# instance fields
.field private dcContext:Lcom/b44t/messenger/DcContext;

.field private isResolvingUrisOnMainThread:Z

.field private resolvedExtras:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$y_inJmSuoLUsMmUk7Qi2LCWdNzM(Lorg/thoughtcrime/securesms/ShareActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ShareActivity;->abortShare()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/PassphraseRequiredActionBarActivity;-><init>()V

    return-void
.end method

.method private abortShare()V
    .locals 2

    const v0, 0x7f1203cc

    const/4 v1, 0x1

    .line 168
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 169
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ShareActivity;->finish()V

    return-void
.end method

.method private getBaseShareIntent(Ljava/lang/Class;)Landroid/content/Intent;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 279
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 281
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "extra_title"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 283
    invoke-static {v0, p1}, Lorg/thoughtcrime/securesms/util/RelayUtil;->setSharedTitle(Landroid/content/Intent;Ljava/lang/String;)V

    .line 286
    :cond_0
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    .line 288
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 290
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    if-eqz p1, :cond_2

    .line 295
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/thoughtcrime/securesms/util/RelayUtil;->setSharedText(Landroid/content/Intent;Ljava/lang/String;)V

    .line 297
    :cond_2
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ShareActivity;->resolvedExtras:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 298
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ShareActivity;->resolvedExtras:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    if-eqz p1, :cond_3

    .line 300
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/ShareActivity;->getMimeType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 301
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    return-object v0
.end method

.method private getMimeType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    .line 309
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ShareActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/thoughtcrime/securesms/util/MediaUtil;->getMimeType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 312
    :cond_0
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/thoughtcrime/securesms/util/MediaUtil;->getCorrectedMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private handleResolvedMedia(Landroid/content/Intent;)V
    .locals 4

    const-string v0, "chat_id"

    const/4 v1, -0x1

    .line 209
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "android.intent.extra.shortcut.ID"

    .line 211
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-ne v2, v1, :cond_0

    if-eqz p1, :cond_0

    .line 213
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 216
    :cond_0
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v3, "android.intent.extra.EMAIL"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-ne v2, v1, :cond_2

    if-eqz p1, :cond_2

    .line 254
    array-length v3, p1

    if-lez v3, :cond_2

    const/4 v2, 0x0

    .line 255
    aget-object p1, p1, v2

    .line 256
    iget-object v2, p0, Lorg/thoughtcrime/securesms/ShareActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {v2, p1}, Lcom/b44t/messenger/DcContext;->lookupContactIdByAddr(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 259
    iget-object v2, p0, Lorg/thoughtcrime/securesms/ShareActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1}, Lcom/b44t/messenger/DcContext;->createContact(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 262
    :cond_1
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ShareActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {p1, v2}, Lcom/b44t/messenger/DcContext;->createChatByContactId(I)I

    move-result v2

    :cond_2
    if-eq v2, v1, :cond_3

    .line 266
    const-class p1, Lorg/thoughtcrime/securesms/ConversationActivity;

    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/ShareActivity;->getBaseShareIntent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 267
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 268
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ShareActivity;->resolvedExtras:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/thoughtcrime/securesms/util/RelayUtil;->setSharedUris(Landroid/content/Intent;Ljava/util/ArrayList;)V

    .line 269
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/ShareActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 271
    :cond_3
    const-class p1, Lorg/thoughtcrime/securesms/ConversationListRelayingActivity;

    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/ShareActivity;->getBaseShareIntent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 272
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ShareActivity;->resolvedExtras:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/thoughtcrime/securesms/util/RelayUtil;->setSharedUris(Landroid/content/Intent;Ljava/util/ArrayList;)V

    .line 273
    invoke-static {p0, p1}, Lorg/thoughtcrime/securesms/ConversationListRelayingActivity;->start(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 275
    :goto_0
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ShareActivity;->finish()V

    return-void
.end method

.method private hasFileScheme(Landroid/net/Uri;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string v0, "file"

    .line 319
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private initializeMedia()V
    .locals 5

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/ShareActivity;->resolvedExtras:Ljava/util/ArrayList;

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 110
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "android.intent.extra.STREAM"

    if-eqz v1, :cond_0

    .line 111
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 112
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 113
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 114
    :cond_0
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 115
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 117
    :cond_1
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 118
    invoke-static {v1}, Lorg/thoughtcrime/securesms/util/MailtoUtil;->isMailto(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 119
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.intent.extra.EMAIL"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 120
    array-length v2, v2

    if-nez v2, :cond_3

    .line 121
    :cond_2
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v1}, Lorg/thoughtcrime/securesms/util/MailtoUtil;->getRecipients(Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    :cond_3
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 124
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 125
    :cond_4
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v1}, Lorg/thoughtcrime/securesms/util/MailtoUtil;->getText(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    :cond_5
    :goto_0
    invoke-direct {p0, v0}, Lorg/thoughtcrime/securesms/ShareActivity;->needsFilePermission(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v3, v1, v2

    .line 131
    invoke-static {p0, v1}, Lorg/thoughtcrime/securesms/permissions/Permissions;->hasAll(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 132
    invoke-direct {p0, v0}, Lorg/thoughtcrime/securesms/ShareActivity;->resolveUris(Ljava/util/List;)V

    goto :goto_1

    .line 134
    :cond_6
    invoke-direct {p0, v0}, Lorg/thoughtcrime/securesms/ShareActivity;->requestPermissionForFiles(Ljava/util/List;)V

    goto :goto_1

    .line 137
    :cond_7
    invoke-direct {p0, v0}, Lorg/thoughtcrime/securesms/ShareActivity;->resolveUris(Ljava/util/List;)V

    :goto_1
    return-void
.end method

.method private initializeToolbar()V
    .locals 2

    const v0, 0x7f0903b4

    .line 97
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 98
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/ShareActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 99
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ShareActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 102
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    return-void
.end method

.method private needsFilePermission(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)Z"
        }
    .end annotation

    .line 142
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 144
    invoke-direct {p0, v0}, Lorg/thoughtcrime/securesms/ShareActivity;->hasFileScheme(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private requestPermissionForFiles(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 152
    invoke-static {p0}, Lorg/thoughtcrime/securesms/permissions/Permissions;->with(Landroid/app/Activity;)Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v3, v1, v2

    .line 153
    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->request([Ljava/lang/String;)Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->alwaysGrantOnSdk33()Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->ifNecessary()Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object v0

    const v1, 0x7f1202f8

    .line 156
    invoke-virtual {p0, v1}, Lorg/thoughtcrime/securesms/ShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->withPermanentDenialDialog(Ljava/lang/String;)Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object v0

    new-instance v1, Lorg/thoughtcrime/securesms/ShareActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lorg/thoughtcrime/securesms/ShareActivity$$ExternalSyntheticLambda0;-><init>(Lorg/thoughtcrime/securesms/ShareActivity;Ljava/util/List;)V

    .line 157
    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->onAllGranted(Ljava/lang/Runnable;)Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object p1

    new-instance v0, Lorg/thoughtcrime/securesms/ShareActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/ShareActivity$$ExternalSyntheticLambda1;-><init>(Lorg/thoughtcrime/securesms/ShareActivity;)V

    .line 158
    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->onAnyDenied(Ljava/lang/Runnable;)Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object p1

    .line 159
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->execute()V

    return-void
.end method

.method private resolveUris(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 173
    iput-boolean v0, p0, Lorg/thoughtcrime/securesms/ShareActivity;->isResolvingUrisOnMainThread:Z

    .line 174
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 175
    invoke-static {v1}, Lorg/thoughtcrime/securesms/mms/PartAuthority;->isLocalUri(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 176
    iget-object v2, p0, Lorg/thoughtcrime/securesms/ShareActivity;->resolvedExtras:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 178
    :cond_0
    new-instance v3, Lorg/thoughtcrime/securesms/ResolveMediaTask;

    invoke-direct {v3, p0, p0}, Lorg/thoughtcrime/securesms/ResolveMediaTask;-><init>(Landroid/app/Activity;Lorg/thoughtcrime/securesms/ResolveMediaTask$OnMediaResolvedListener;)V

    new-array v4, v0, [Landroid/net/Uri;

    aput-object v1, v4, v2

    invoke-virtual {v3, v4}, Lorg/thoughtcrime/securesms/ResolveMediaTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 182
    :cond_1
    invoke-static {}, Lorg/thoughtcrime/securesms/ResolveMediaTask;->isExecuting()Z

    move-result p1

    if-nez p1, :cond_2

    .line 183
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/ShareActivity;->handleResolvedMedia(Landroid/content/Intent;)V

    .line 185
    :cond_2
    iput-boolean v2, p0, Lorg/thoughtcrime/securesms/ShareActivity;->isResolvingUrisOnMainThread:Z

    return-void
.end method


# virtual methods
.method synthetic lambda$requestPermissionForFiles$0$org-thoughtcrime-securesms-ShareActivity(Ljava/util/List;)V
    .locals 0

    .line 157
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/ShareActivity;->resolveUris(Ljava/util/List;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;Z)V
    .locals 0

    .line 74
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/ShareActivity;->dcContext:Lcom/b44t/messenger/DcContext;

    const p1, 0x7f0c0101

    .line 76
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/ShareActivity;->setContentView(I)V

    .line 78
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ShareActivity;->initializeToolbar()V

    .line 79
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ShareActivity;->initializeMedia()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 92
    invoke-super {p0}, Lorg/thoughtcrime/securesms/PassphraseRequiredActionBarActivity;->onDestroy()V

    .line 93
    invoke-static {}, Lorg/thoughtcrime/securesms/ResolveMediaTask;->cancelTasks()V

    return-void
.end method

.method public onMediaResolved(Landroid/net/Uri;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 200
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ShareActivity;->resolvedExtras:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    :cond_0
    invoke-static {}, Lorg/thoughtcrime/securesms/ResolveMediaTask;->isExecuting()Z

    move-result p1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lorg/thoughtcrime/securesms/ShareActivity;->isResolvingUrisOnMainThread:Z

    if-nez p1, :cond_1

    .line 204
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/ShareActivity;->handleResolvedMedia(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 84
    sget-object v0, Lorg/thoughtcrime/securesms/ShareActivity;->TAG:Ljava/lang/String;

    const-string v1, "onNewIntent()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-super {p0, p1}, Lorg/thoughtcrime/securesms/PassphraseRequiredActionBarActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 86
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/ShareActivity;->setIntent(Landroid/content/Intent;)V

    .line 87
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ShareActivity;->initializeMedia()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 190
    invoke-super {p0, p1}, Lorg/thoughtcrime/securesms/PassphraseRequiredActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 191
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 192
    :cond_0
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ShareActivity;->finish()V

    const/4 p1, 0x1

    return p1
.end method

.method protected onPreCreate()V
    .locals 1

    .line 68
    new-instance v0, Lorg/thoughtcrime/securesms/util/DynamicNoActionBarTheme;

    invoke-direct {v0}, Lorg/thoughtcrime/securesms/util/DynamicNoActionBarTheme;-><init>()V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/ShareActivity;->dynamicTheme:Lorg/thoughtcrime/securesms/util/DynamicTheme;

    .line 69
    invoke-super {p0}, Lorg/thoughtcrime/securesms/PassphraseRequiredActionBarActivity;->onPreCreate()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 164
    invoke-static {p0, p1, p2, p3}, Lorg/thoughtcrime/securesms/permissions/Permissions;->onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V

    return-void
.end method
