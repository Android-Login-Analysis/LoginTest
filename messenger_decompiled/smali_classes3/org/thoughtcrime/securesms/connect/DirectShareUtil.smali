.class public Lorg/thoughtcrime/securesms/connect/DirectShareUtil;
.super Ljava/lang/Object;
.source "DirectShareUtil.java"


# static fields
.field private static final SHORTCUT_CATEGORY:Ljava/lang/String; = "android.shortcut.conversation"

.field private static final TAG:Ljava/lang/String; = "DirectShareUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearShortcut(Landroid/content/Context;I)V
    .locals 2

    .line 51
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 52
    new-instance v0, Lorg/thoughtcrime/securesms/connect/DirectShareUtil$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lorg/thoughtcrime/securesms/connect/DirectShareUtil$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;I)V

    invoke-static {v0}, Lorg/thoughtcrime/securesms/util/Util;->runOnAnyBackgroundThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private static getChooserTargets(Landroid/content/Context;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroidx/core/content/pm/ShortcutInfoCompat;",
            ">;"
        }
    .end annotation

    .line 108
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 109
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object v1

    const/16 v2, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 111
    invoke-virtual {v1, v2, v3, v4}, Lcom/b44t/messenger/DcContext;->getChatlist(ILjava/lang/String;I)Lcom/b44t/messenger/DcChatlist;

    move-result-object v1

    .line 117
    invoke-virtual {v1}, Lcom/b44t/messenger/DcChatlist;->getCnt()I

    move-result v2

    const/4 v3, 0x5

    if-ge v2, v3, :cond_0

    .line 118
    invoke-virtual {v1}, Lcom/b44t/messenger/DcChatlist;->getCnt()I

    move-result v3

    :cond_0
    :goto_0
    if-ge v4, v3, :cond_2

    .line 121
    invoke-virtual {v1, v4}, Lcom/b44t/messenger/DcChatlist;->getChat(I)Lcom/b44t/messenger/DcChat;

    move-result-object v2

    .line 122
    invoke-virtual {v2}, Lcom/b44t/messenger/DcChat;->canSend()Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    .line 126
    :cond_1
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lorg/thoughtcrime/securesms/ShareActivity;

    invoke-direct {v5, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v6, "android.intent.action.SEND"

    .line 127
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "chat_id"

    .line 128
    invoke-virtual {v2}, Lcom/b44t/messenger/DcChat;->getId()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 130
    new-instance v6, Lorg/thoughtcrime/securesms/recipients/Recipient;

    invoke-direct {v6, p0, v2}, Lorg/thoughtcrime/securesms/recipients/Recipient;-><init>(Landroid/content/Context;Lcom/b44t/messenger/DcChat;)V

    .line 131
    invoke-static {p0, v6}, Lorg/thoughtcrime/securesms/connect/DirectShareUtil;->getIconForShortcut(Landroid/content/Context;Lorg/thoughtcrime/securesms/recipients/Recipient;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 132
    new-instance v7, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    invoke-virtual {v2}, Lcom/b44t/messenger/DcChat;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, p0, v8}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 133
    invoke-virtual {v2}, Lcom/b44t/messenger/DcChat;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->setShortLabel(Ljava/lang/CharSequence;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    move-result-object v2

    const/4 v7, 0x1

    .line 134
    invoke-virtual {v2, v7}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->setLongLived(Z)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    move-result-object v2

    add-int/lit8 v7, v4, 0x1

    .line 135
    invoke-virtual {v2, v7}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->setRank(I)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    move-result-object v2

    .line 136
    invoke-static {v6}, Landroidx/core/graphics/drawable/IconCompat;->createWithAdaptiveBitmap(Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->setIcon(Landroidx/core/graphics/drawable/IconCompat;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    move-result-object v2

    const-string v6, "android.shortcut.conversation"

    .line 137
    invoke-static {v6}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->setCategories(Ljava/util/Set;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    move-result-object v2

    .line 138
    invoke-virtual {v2, v5}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->setIntent(Landroid/content/Intent;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    move-result-object v2

    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "org.thoughtcrime.securesms.RoutingActivity"

    invoke-direct {v5, p0, v6}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 139
    invoke-virtual {v2, v5}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->setActivity(Landroid/content/ComponentName;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    move-result-object v2

    .line 140
    invoke-virtual {v2}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->build()Landroidx/core/content/pm/ShortcutInfoCompat;

    move-result-object v2

    .line 132
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static getFallbackDrawable(Landroid/content/Context;Lorg/thoughtcrime/securesms/recipients/Recipient;)Landroid/graphics/Bitmap;
    .locals 2

    .line 159
    invoke-virtual {p1, p0}, Lorg/thoughtcrime/securesms/recipients/Recipient;->getFallbackAvatarDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 160
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 161
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x1050006

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 159
    invoke-static {p1, v0, p0}, Lorg/thoughtcrime/securesms/util/BitmapUtil;->createFromDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static getIconForShortcut(Landroid/content/Context;Lorg/thoughtcrime/securesms/recipients/Recipient;)Landroid/graphics/Bitmap;
    .locals 0

    .line 148
    :try_start_0
    invoke-static {p0, p1}, Lorg/thoughtcrime/securesms/connect/DirectShareUtil;->getShortcutInfoBitmap(Landroid/content/Context;Lorg/thoughtcrime/securesms/recipients/Recipient;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 150
    :catch_0
    invoke-static {p0, p1}, Lorg/thoughtcrime/securesms/connect/DirectShareUtil;->getFallbackDrawable(Landroid/content/Context;Lorg/thoughtcrime/securesms/recipients/Recipient;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static getShortcutInfoBitmap(Landroid/content/Context;Lorg/thoughtcrime/securesms/recipients/Recipient;)Landroid/graphics/Bitmap;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 155
    invoke-static {p0}, Lorg/thoughtcrime/securesms/mms/GlideApp;->with(Landroid/content/Context;)Lorg/thoughtcrime/securesms/mms/GlideRequests;

    move-result-object v0

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/mms/GlideRequests;->asBitmap()Lorg/thoughtcrime/securesms/mms/GlideRequest;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lorg/thoughtcrime/securesms/connect/DirectShareUtil;->request(Lorg/thoughtcrime/securesms/mms/GlideRequest;Landroid/content/Context;Lorg/thoughtcrime/securesms/recipients/Recipient;Z)Lorg/thoughtcrime/securesms/mms/GlideRequest;

    move-result-object p0

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/mms/GlideRequest;->circleCrop()Lorg/thoughtcrime/securesms/mms/GlideRequest;

    move-result-object p0

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/mms/GlideRequest;->submit()Lcom/bumptech/glide/request/FutureTarget;

    move-result-object p0

    invoke-interface {p0}, Lcom/bumptech/glide/request/FutureTarget;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    invoke-static {p0}, Lorg/thoughtcrime/securesms/util/DrawableUtil;->wrapBitmapForShortcutInfo(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$clearShortcut$0(Landroid/content/Context;I)V
    .locals 2

    .line 54
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/core/content/pm/ShortcutManagerCompat;->removeDynamicShortcuts(Landroid/content/Context;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 56
    sget-object p1, Lorg/thoughtcrime/securesms/connect/DirectShareUtil;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Clearing shortcut failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic lambda$resetAllShortcuts$1(Landroid/content/Context;)V
    .locals 3

    .line 66
    :try_start_0
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->removeAllDynamicShortcuts(Landroid/content/Context;)V

    .line 67
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DirectShareUtil;->triggerRefreshDirectShare(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 69
    sget-object v0, Lorg/thoughtcrime/securesms/connect/DirectShareUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Resetting shortcuts failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic lambda$triggerRefreshDirectShare$2(Landroid/content/Context;)V
    .locals 5

    const-string v0, "Updated dynamic shortcuts, success: "

    .line 80
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x19

    if-lt v1, v2, :cond_0

    invoke-static {}, Landroidx/core/content/pm/PackageInfoCompat$$ExternalSyntheticApiModelOutline0;->m$16()Ljava/lang/Class;

    move-result-object v1

    .line 81
    invoke-static {p0, v1}, Landroidx/core/content/pm/PackageInfoCompat$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/content/pm/PackageInfoCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/content/pm/ShortcutManager;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/content/pm/PackageInfoCompat$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/pm/ShortcutManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 85
    :cond_0
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getMaxShortcutCountPerActivity(Landroid/content/Context;)I

    move-result v1

    .line 86
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getDynamicShortcuts(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 87
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DirectShareUtil;->getChooserTargets(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    if-lez v1, :cond_1

    .line 90
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v2, v4

    if-le v2, v1, :cond_1

    .line 91
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->removeAllDynamicShortcuts(Landroid/content/Context;)V

    .line 94
    :cond_1
    invoke-static {p0, v3}, Landroidx/core/content/pm/ShortcutManagerCompat;->addDynamicShortcuts(Landroid/content/Context;Ljava/util/List;)Z

    move-result p0

    .line 95
    sget-object v1, Lorg/thoughtcrime/securesms/connect/DirectShareUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 97
    sget-object v0, Lorg/thoughtcrime/securesms/connect/DirectShareUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Updating dynamic shortcuts failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static request(Lorg/thoughtcrime/securesms/mms/GlideRequest;Landroid/content/Context;Lorg/thoughtcrime/securesms/recipients/Recipient;Z)Lorg/thoughtcrime/securesms/mms/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/thoughtcrime/securesms/mms/GlideRequest<",
            "TT;>;",
            "Landroid/content/Context;",
            "Lorg/thoughtcrime/securesms/recipients/Recipient;",
            "Z)",
            "Lorg/thoughtcrime/securesms/mms/GlideRequest<",
            "TT;>;"
        }
    .end annotation

    .line 166
    invoke-virtual {p2, p1}, Lorg/thoughtcrime/securesms/recipients/Recipient;->getContactPhoto(Landroid/content/Context;)Lorg/thoughtcrime/securesms/contacts/avatars/ContactPhoto;

    move-result-object p3

    .line 168
    invoke-virtual {p0, p3}, Lorg/thoughtcrime/securesms/mms/GlideRequest;->load(Ljava/lang/Object;)Lorg/thoughtcrime/securesms/mms/GlideRequest;

    move-result-object p0

    .line 169
    invoke-static {p1, p2}, Lorg/thoughtcrime/securesms/connect/DirectShareUtil;->getFallbackDrawable(Landroid/content/Context;Lorg/thoughtcrime/securesms/recipients/Recipient;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/mms/GlideRequest;->error(Ljava/lang/Object;)Lorg/thoughtcrime/securesms/mms/GlideRequest;

    move-result-object p0

    sget-object p1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 170
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/mms/GlideRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lorg/thoughtcrime/securesms/mms/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public static resetAllShortcuts(Landroid/content/Context;)V
    .locals 1

    .line 64
    new-instance v0, Lorg/thoughtcrime/securesms/connect/DirectShareUtil$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/connect/DirectShareUtil$$ExternalSyntheticLambda2;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lorg/thoughtcrime/securesms/util/Util;->runOnBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static triggerRefreshDirectShare(Landroid/content/Context;)V
    .locals 3

    .line 76
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 78
    new-instance v0, Lorg/thoughtcrime/securesms/connect/DirectShareUtil$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/connect/DirectShareUtil$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    const-wide/16 v1, 0x5dc

    invoke-static {v0, v1, v2}, Lorg/thoughtcrime/securesms/util/Util;->runOnBackgroundDelayed(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method
