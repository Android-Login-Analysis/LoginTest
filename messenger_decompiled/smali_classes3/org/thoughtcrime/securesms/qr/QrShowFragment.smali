.class public Lorg/thoughtcrime/securesms/qr/QrShowFragment;
.super Landroidx/fragment/app/Fragment;
.source "QrShowFragment.java"

# interfaces
.implements Lorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;


# static fields
.field private static final BLACK:I = -0x1000000

.field private static final CHAT_ID:Ljava/lang/String; = "chat_id"

.field private static final HEIGHT:I = 0x190

.field private static final TAG:Ljava/lang/String; = "QrShowFragment"

.field public static final WHITE:I = -0x1

.field private static final WIDTH:I = 0x190


# instance fields
.field private chatId:I

.field private dcContext:Lcom/b44t/messenger/DcContext;

.field private dcEventCenter:Lorg/thoughtcrime/securesms/connect/DcEventCenter;

.field private numJoiners:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lorg/thoughtcrime/securesms/qr/QrShowFragment;->chatId:I

    return-void
.end method

.method public static fixSVG(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "y=\"281.136\""

    const-string v1, "y=\"296\""

    .line 96
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public copyQrData()V
    .locals 3

    .line 112
    iget-object v0, p0, Lorg/thoughtcrime/securesms/qr/QrShowFragment;->dcContext:Lcom/b44t/messenger/DcContext;

    iget v1, p0, Lorg/thoughtcrime/securesms/qr/QrShowFragment;->chatId:I

    invoke-virtual {v0, v1}, Lcom/b44t/messenger/DcContext;->getSecurejoinQr(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/thoughtcrime/securesms/util/Util;->QrDataToInviteURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/qr/QrShowFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/thoughtcrime/securesms/util/Util;->writeTextToClipboard(Landroid/content/Context;Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/qr/QrShowFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f1200d1

    invoke-virtual {p0, v1}, Lorg/thoughtcrime/securesms/qr/QrShowFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public handleEvent(Lcom/b44t/messenger/DcEvent;)V
    .locals 8

    .line 146
    invoke-virtual {p1}, Lcom/b44t/messenger/DcEvent;->getId()I

    move-result v0

    const/16 v1, 0x80c

    if-ne v0, v1, :cond_4

    .line 147
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/qr/QrShowFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object v0

    .line 148
    invoke-virtual {p1}, Lcom/b44t/messenger/DcEvent;->getData1Int()I

    move-result v1

    .line 149
    invoke-virtual {p1}, Lcom/b44t/messenger/DcEvent;->getData2Int()I

    move-result p1

    int-to-long v2, p1

    const-wide/16 v4, 0x12c

    const/4 p1, 0x0

    const/4 v6, 0x1

    cmp-long v7, v2, v4

    if-nez v7, :cond_0

    const v4, 0x7f120395

    .line 152
    invoke-virtual {p0, v4}, Lorg/thoughtcrime/securesms/qr/QrShowFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/b44t/messenger/DcContext;->getContact(I)Lcom/b44t/messenger/DcContact;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b44t/messenger/DcContact;->getNameNAddr()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, p1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 153
    iget v1, p0, Lorg/thoughtcrime/securesms/qr/QrShowFragment;->numJoiners:I

    add-int/2addr v1, v6

    iput v1, p0, Lorg/thoughtcrime/securesms/qr/QrShowFragment;->numJoiners:I

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x258

    cmp-long v7, v2, v4

    if-nez v7, :cond_1

    const v4, 0x7f120396

    .line 155
    invoke-virtual {p0, v4}, Lorg/thoughtcrime/securesms/qr/QrShowFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/b44t/messenger/DcContext;->getContact(I)Lcom/b44t/messenger/DcContact;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b44t/messenger/DcContact;->getNameNAddr()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, p1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-wide/16 v4, 0x320

    cmp-long v7, v2, v4

    if-nez v7, :cond_2

    const v4, 0x7f120394

    .line 157
    invoke-virtual {p0, v4}, Lorg/thoughtcrime/securesms/qr/QrShowFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/b44t/messenger/DcContext;->getContact(I)Lcom/b44t/messenger/DcContact;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b44t/messenger/DcContact;->getNameNAddr()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, p1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 161
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/qr/QrShowFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_3
    const-wide/16 v0, 0x3e8

    cmp-long p1, v2, v0

    if-nez p1, :cond_4

    .line 165
    iget p1, p0, Lorg/thoughtcrime/securesms/qr/QrShowFragment;->numJoiners:I

    sub-int/2addr p1, v6

    iput p1, p0, Lorg/thoughtcrime/securesms/qr/QrShowFragment;->numJoiners:I

    if-gtz p1, :cond_4

    .line 167
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/qr/QrShowFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/qr/QrShowFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    :cond_4
    return-void
.end method

.method synthetic lambda$withdrawQr$0$org-thoughtcrime-securesms-qr-QrShowFragment(Landroid/app/Activity;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 122
    invoke-static {p1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object p2

    .line 123
    iget p3, p0, Lorg/thoughtcrime/securesms/qr/QrShowFragment;->chatId:I

    invoke-virtual {p2, p3}, Lcom/b44t/messenger/DcContext;->getSecurejoinQr(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/b44t/messenger/DcContext;->setConfigFromQr(Ljava/lang/String;)Z

    .line 124
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 51
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/qr/QrShowFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c00ea

    const/4 v0, 0x0

    .line 58
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 60
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/qr/QrShowFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object p2

    iput-object p2, p0, Lorg/thoughtcrime/securesms/qr/QrShowFragment;->dcContext:Lcom/b44t/messenger/DcContext;

    .line 61
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/qr/QrShowFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getEventCenter(Landroid/content/Context;)Lorg/thoughtcrime/securesms/connect/DcEventCenter;

    move-result-object p2

    iput-object p2, p0, Lorg/thoughtcrime/securesms/qr/QrShowFragment;->dcEventCenter:Lorg/thoughtcrime/securesms/connect/DcEventCenter;

    .line 63
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/qr/QrShowFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string p3, "chat_id"

    .line 65
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lorg/thoughtcrime/securesms/qr/QrShowFragment;->chatId:I

    .line 68
    :cond_0
    iget-object p2, p0, Lorg/thoughtcrime/securesms/qr/QrShowFragment;->dcEventCenter:Lorg/thoughtcrime/securesms/connect/DcEventCenter;

    const/16 p3, 0x80c

    invoke-virtual {p2, p3, p0}, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->addObserver(ILorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)V

    .line 70
    iput v0, p0, Lorg/thoughtcrime/securesms/qr/QrShowFragment;->numJoiners:I

    const p2, 0x7f090076

    .line 72
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lorg/thoughtcrime/securesms/components/ScaleStableImageView;

    .line 74
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/qr/QrShowFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-static {p3}, Lorg/thoughtcrime/securesms/util/DynamicTheme;->isDarkTheme(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 75
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/qr/QrShowFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f08007e

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    goto :goto_0

    .line 77
    :cond_1
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/qr/QrShowFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f08007d

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 79
    :goto_0
    invoke-virtual {p2, p3}, Lorg/thoughtcrime/securesms/components/ScaleStableImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const p2, 0x7f0902ae

    .line 81
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/caverock/androidsvg/SVGImageView;

    .line 83
    :try_start_0
    iget-object p3, p0, Lorg/thoughtcrime/securesms/qr/QrShowFragment;->dcContext:Lcom/b44t/messenger/DcContext;

    iget v0, p0, Lorg/thoughtcrime/securesms/qr/QrShowFragment;->chatId:I

    invoke-virtual {p3, v0}, Lcom/b44t/messenger/DcContext;->getSecurejoinQrSvg(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lorg/thoughtcrime/securesms/qr/QrShowFragment;->fixSVG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/caverock/androidsvg/SVG;->getFromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG;

    move-result-object p3

    .line 84
    invoke-virtual {p2, p3}, Lcom/caverock/androidsvg/SVGImageView;->setSVG(Lcom/caverock/androidsvg/SVG;)V
    :try_end_0
    .catch Lcom/caverock/androidsvg/SVGParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 86
    invoke-virtual {p2}, Lcom/caverock/androidsvg/SVGParseException;->printStackTrace()V

    :goto_1
    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 140
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 141
    iget-object v0, p0, Lorg/thoughtcrime/securesms/qr/QrShowFragment;->dcEventCenter:Lorg/thoughtcrime/securesms/connect/DcEventCenter;

    invoke-virtual {v0, p0}, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->removeObservers(Lorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 132
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 133
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/qr/QrShowFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/qr/QrShowFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f12038f

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public synthetic runOnMain()Z
    .locals 1

    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate$-CC;->$default$runOnMain(Lorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)Z

    move-result v0

    return v0
.end method

.method public shareInviteURL()V
    .locals 3

    .line 101
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "text/plain"

    .line 102
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    iget-object v1, p0, Lorg/thoughtcrime/securesms/qr/QrShowFragment;->dcContext:Lcom/b44t/messenger/DcContext;

    iget v2, p0, Lorg/thoughtcrime/securesms/qr/QrShowFragment;->chatId:I

    invoke-virtual {v1, v2}, Lcom/b44t/messenger/DcContext;->getSecurejoinQr(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/thoughtcrime/securesms/util/Util;->QrDataToInviteURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.extra.TEXT"

    .line 104
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x7f1200b9

    .line 105
    invoke-virtual {p0, v1}, Lorg/thoughtcrime/securesms/qr/QrShowFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/qr/QrShowFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 107
    sget-object v1, Lorg/thoughtcrime/securesms/qr/QrShowFragment;->TAG:Ljava/lang/String;

    const-string v2, "failed to share invite URL"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public withdrawQr()V
    .locals 3

    .line 118
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/qr/QrShowFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 119
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f12043c

    .line 120
    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 121
    new-instance v2, Lorg/thoughtcrime/securesms/qr/QrShowFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lorg/thoughtcrime/securesms/qr/QrShowFragment$$ExternalSyntheticLambda0;-><init>(Lorg/thoughtcrime/securesms/qr/QrShowFragment;Landroid/app/Activity;)V

    const v0, 0x7f12043b

    invoke-virtual {v1, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const v0, 0x7f120097

    const/4 v2, 0x0

    .line 126
    invoke-virtual {v1, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 127
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method
