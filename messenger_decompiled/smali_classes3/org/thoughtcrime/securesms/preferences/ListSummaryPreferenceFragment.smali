.class public abstract Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;
.super Lorg/thoughtcrime/securesms/preferences/CorrectedPreferenceFragment;
.source "ListSummaryPreferenceFragment.java"

# interfaces
.implements Lorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment$ListSummaryListener;
    }
.end annotation


# static fields
.field protected static final REQUEST_CODE_CONFIRM_CREDENTIALS_ACCOUNT:I = 0x3ec

.field protected static final REQUEST_CODE_CONFIRM_CREDENTIALS_BACKUP:I = 0x3ea

.field protected static final REQUEST_CODE_CONFIRM_CREDENTIALS_KEYS:I = 0x3eb


# instance fields
.field protected accountsDone:I

.field protected dcContext:Lcom/b44t/messenger/DcContext;

.field protected imexAccounts:[I

.field private imexProgress:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private notificationController:Lorg/thoughtcrime/securesms/service/NotificationController;

.field protected pathAsDisplayedToUser:Ljava/lang/String;

.field protected progressDialog:Lorg/thoughtcrime/securesms/util/views/ProgressDialog;

.field protected progressWhat:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/preferences/CorrectedPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 135
    iput-object v0, p0, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;->progressDialog:Lorg/thoughtcrime/securesms/util/views/ProgressDialog;

    const/4 v0, 0x0

    .line 136
    iput v0, p0, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;->progressWhat:I

    const-string v0, ""

    .line 137
    iput-object v0, p0, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;->pathAsDisplayedToUser:Ljava/lang/String;

    return-void
.end method

.method private getTotalProgress()I
    .locals 3

    .line 173
    iget-object v0, p0, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;->imexProgress:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 174
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method private showProgressDialog()V
    .locals 4

    .line 154
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f12015d

    invoke-virtual {p0, v1}, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/thoughtcrime/securesms/service/GenericForegroundService;->startForegroundTask(Landroid/content/Context;Ljava/lang/String;)Lorg/thoughtcrime/securesms/service/NotificationController;

    move-result-object v0

    iput-object v0, p0, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;->notificationController:Lorg/thoughtcrime/securesms/service/NotificationController;

    .line 155
    iget-object v0, p0, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;->progressDialog:Lorg/thoughtcrime/securesms/util/views/ProgressDialog;

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    .line 157
    iput-object v0, p0, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;->progressDialog:Lorg/thoughtcrime/securesms/util/views/ProgressDialog;

    .line 159
    :cond_0
    new-instance v0, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;->progressDialog:Lorg/thoughtcrime/securesms/util/views/ProgressDialog;

    .line 160
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f1202dd

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v0, p0, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;->progressDialog:Lorg/thoughtcrime/securesms/util/views/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 162
    iget-object v0, p0, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;->progressDialog:Lorg/thoughtcrime/securesms/util/views/ProgressDialog;

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;->setCancelable(Z)V

    .line 163
    iget-object v0, p0, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;->progressDialog:Lorg/thoughtcrime/securesms/util/views/ProgressDialog;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment$$ExternalSyntheticLambda0;-><init>(Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;)V

    const/4 v3, -0x2

    invoke-virtual {v0, v3, v1, v2}, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 168
    iget-object v0, p0, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;->progressDialog:Lorg/thoughtcrime/securesms/util/views/ProgressDialog;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;->show()V

    return-void
.end method

.method private stopOngoingProcess()V
    .locals 5

    .line 148
    iget-object v0, p0, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;->imexAccounts:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    .line 149
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getAccounts(Landroid/content/Context;)Lcom/b44t/messenger/DcAccounts;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/b44t/messenger/DcAccounts;->getAccount(I)Lcom/b44t/messenger/DcContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/b44t/messenger/DcContext;->stopOngoingProcess()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected getSelectedSummary(Landroidx/preference/Preference;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 82
    check-cast p1, Landroidx/preference/ListPreference;

    .line 83
    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    if-ltz p2, :cond_0

    .line 84
    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    if-ge p2, v0, :cond_0

    .line 85
    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object p1

    aget-object p1, p1, p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const p1, 0x7f120411

    .line 86
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public handleEvent(Lcom/b44t/messenger/DcEvent;)V
    .locals 11

    .line 181
    invoke-virtual {p1}, Lcom/b44t/messenger/DcEvent;->getId()I

    move-result v0

    const/16 v1, 0x803

    if-ne v0, v1, :cond_6

    .line 182
    iget-object v2, p0, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;->notificationController:Lorg/thoughtcrime/securesms/service/NotificationController;

    if-nez v2, :cond_0

    return-void

    .line 185
    :cond_0
    invoke-virtual {p1}, Lcom/b44t/messenger/DcEvent;->getData1Int()I

    move-result v0

    int-to-long v0, v0

    .line 186
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const-wide/16 v4, 0x0

    const v6, 0x104000a

    const/4 v7, 0x0

    cmp-long v8, v0, v4

    if-nez v8, :cond_1

    .line 188
    invoke-virtual {v2}, Lorg/thoughtcrime/securesms/service/NotificationController;->close()V

    .line 189
    iput-object v7, p0, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;->notificationController:Lorg/thoughtcrime/securesms/service/NotificationController;

    .line 190
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;->stopOngoingProcess()V

    .line 191
    iget-object v0, p0, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;->progressDialog:Lorg/thoughtcrime/securesms/util/views/ProgressDialog;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;->dismiss()V

    .line 192
    iput-object v7, p0, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;->progressDialog:Lorg/thoughtcrime/securesms/util/views/ProgressDialog;

    .line 193
    invoke-static {v3}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getAccounts(Landroid/content/Context;)Lcom/b44t/messenger/DcAccounts;

    move-result-object v0

    invoke-virtual {p1}, Lcom/b44t/messenger/DcEvent;->getAccountId()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/b44t/messenger/DcAccounts;->getAccount(I)Lcom/b44t/messenger/DcContext;

    move-result-object p1

    .line 194
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 195
    invoke-virtual {p1}, Lcom/b44t/messenger/DcContext;->getLastError()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 196
    invoke-virtual {p1, v6, v7}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 197
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    goto/16 :goto_1

    :cond_1
    const-wide/16 v4, 0x3e8

    const/4 v8, 0x0

    const/4 v9, 0x1

    cmp-long v10, v0, v4

    if-gez v10, :cond_2

    .line 200
    iget-object v3, p0, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;->imexProgress:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/b44t/messenger/DcEvent;->getAccountId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    long-to-int v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;->getTotalProgress()I

    move-result p1

    .line 202
    iget-object v0, p0, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;->imexAccounts:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0xa

    div-int v0, p1, v0

    new-array v1, v9, [Ljava/lang/Object;

    .line 203
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v8

    const-string v0, " %d%%"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 204
    iget-object v0, p0, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;->progressDialog:Lorg/thoughtcrime/securesms/util/views/ProgressDialog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f1202dd

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v0, p0, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;->imexAccounts:[I

    array-length v0, v0

    int-to-long v0, v0

    mul-long v3, v0, v4

    int-to-long v5, p1

    invoke-virtual/range {v2 .. v7}, Lorg/thoughtcrime/securesms/service/NotificationController;->setProgress(JJLjava/lang/String;)V

    goto :goto_1

    :cond_2
    cmp-long p1, v0, v4

    if-nez p1, :cond_6

    .line 208
    iget p1, p0, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;->accountsDone:I

    add-int/2addr p1, v9

    iput p1, p0, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;->accountsDone:I

    .line 209
    iget-object v0, p0, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;->imexAccounts:[I

    array-length v0, v0

    if-ne p1, v0, :cond_6

    .line 210
    invoke-virtual {v2}, Lorg/thoughtcrime/securesms/service/NotificationController;->close()V

    .line 211
    iput-object v7, p0, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;->notificationController:Lorg/thoughtcrime/securesms/service/NotificationController;

    .line 212
    iget-object p1, p0, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;->progressDialog:Lorg/thoughtcrime/securesms/util/views/ProgressDialog;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/util/views/ProgressDialog;->dismiss()V

    .line 213
    iput-object v7, p0, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;->progressDialog:Lorg/thoughtcrime/securesms/util/views/ProgressDialog;

    .line 215
    iget p1, p0, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;->progressWhat:I

    const/16 v0, 0xb

    if-ne p1, v0, :cond_3

    new-array p1, v9, [Ljava/lang/Object;

    .line 216
    iget-object v0, p0, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;->pathAsDisplayedToUser:Ljava/lang/String;

    aput-object v0, p1, v8

    const v0, 0x7f12031a

    invoke-virtual {v3, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    if-ne p1, v9, :cond_4

    new-array p1, v9, [Ljava/lang/Object;

    .line 218
    iget-object v0, p0, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;->pathAsDisplayedToUser:Ljava/lang/String;

    aput-object v0, p1, v8

    const v0, 0x7f120337

    invoke-virtual {v3, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_4
    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    new-array p1, v9, [Ljava/lang/Object;

    .line 220
    iget-object v0, p0, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;->pathAsDisplayedToUser:Ljava/lang/String;

    aput-object v0, p1, v8

    const v0, 0x7f120338

    invoke-virtual {v3, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_5
    const-string p1, ""

    .line 222
    :goto_0
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 223
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 224
    invoke-virtual {p1, v6, v7}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 225
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    :cond_6
    :goto_1
    return-void
.end method

.method protected initializeListSummary(Landroidx/preference/ListPreference;)V
    .locals 1

    .line 103
    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method synthetic lambda$showProgressDialog$0$org-thoughtcrime-securesms-preferences-ListSummaryPreferenceFragment(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 164
    iget-object p1, p0, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;->notificationController:Lorg/thoughtcrime/securesms/service/NotificationController;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/service/NotificationController;->close()V

    const/4 p1, 0x0

    .line 165
    iput-object p1, p0, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;->notificationController:Lorg/thoughtcrime/securesms/service/NotificationController;

    .line 166
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;->stopOngoingProcess()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 38
    invoke-super {p0, p1}, Lorg/thoughtcrime/securesms/preferences/CorrectedPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;->dcContext:Lcom/b44t/messenger/DcContext;

    .line 40
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getEventCenter(Landroid/content/Context;)Lorg/thoughtcrime/securesms/connect/DcEventCenter;

    move-result-object p1

    const/16 v0, 0x803

    invoke-virtual {p1, v0, p0}, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->addObserver(ILorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 45
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getEventCenter(Landroid/content/Context;)Lorg/thoughtcrime/securesms/connect/DcEventCenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/thoughtcrime/securesms/connect/DcEventCenter;->removeObservers(Lorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)V

    .line 47
    iget-object v0, p0, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;->notificationController:Lorg/thoughtcrime/securesms/service/NotificationController;

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/service/NotificationController;->close()V

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;->notificationController:Lorg/thoughtcrime/securesms/service/NotificationController;

    .line 66
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;->stopOngoingProcess()V

    .line 67
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f12015c

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 70
    :cond_0
    invoke-super {p0}, Lorg/thoughtcrime/securesms/preferences/CorrectedPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public synthetic runOnMain()Z
    .locals 1

    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate$-CC;->$default$runOnMain(Lorg/thoughtcrime/securesms/connect/DcEventCenter$DcEventDelegate;)Z

    move-result v0

    return v0
.end method

.method protected startImexAll(I)V
    .locals 4

    .line 111
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getAccounts(Landroid/content/Context;)Lcom/b44t/messenger/DcAccounts;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b44t/messenger/DcAccounts;->getAll()[I

    move-result-object v0

    iput-object v0, p0, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;->imexAccounts:[I

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;->imexProgress:Ljava/util/Map;

    const/4 v0, 0x0

    .line 113
    iput v0, p0, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;->accountsDone:I

    .line 114
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;->showProgressDialog()V

    .line 115
    invoke-static {}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getImexDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 116
    :goto_0
    iget-object v2, p0, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;->imexAccounts:[I

    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 117
    aget v2, v2, v0

    invoke-virtual {p0, v2, p1, v1, v1}, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;->startImexInner(IILjava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected startImexInner(IILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 140
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getAccounts(Landroid/content/Context;)Lcom/b44t/messenger/DcAccounts;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b44t/messenger/DcAccounts;->getAccount(I)Lcom/b44t/messenger/DcContext;

    move-result-object p1

    .line 141
    invoke-virtual {p1}, Lcom/b44t/messenger/DcContext;->assumeMultiDevice()V

    .line 142
    iput-object p4, p0, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;->pathAsDisplayedToUser:Ljava/lang/String;

    .line 143
    iput p2, p0, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;->progressWhat:I

    .line 144
    invoke-virtual {p1, p2, p3}, Lcom/b44t/messenger/DcContext;->imex(ILjava/lang/String;)V

    return-void
.end method

.method protected startImexOne(I)V
    .locals 1

    .line 123
    invoke-static {}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getImexDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-virtual {p0, p1, v0, v0}, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;->startImexOne(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected startImexOne(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 128
    iget-object v0, p0, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {v0}, Lcom/b44t/messenger/DcContext;->getAccountId()I

    move-result v0

    filled-new-array {v0}, [I

    move-result-object v0

    iput-object v0, p0, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;->imexAccounts:[I

    .line 129
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;->imexProgress:Ljava/util/Map;

    const/4 v0, 0x0

    .line 130
    iput v0, p0, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;->accountsDone:I

    .line 131
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;->showProgressDialog()V

    .line 132
    iget-object v1, p0, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;->imexAccounts:[I

    aget v0, v1, v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;->startImexInner(IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected updateListSummary(Landroidx/preference/Preference;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 90
    invoke-virtual {p0, p1, p2, v0}, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;->updateListSummary(Landroidx/preference/Preference;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method protected updateListSummary(Landroidx/preference/Preference;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 94
    move-object v0, p1

    check-cast v0, Landroidx/preference/ListPreference;

    .line 95
    invoke-virtual {p0, p1, p2}, Lorg/thoughtcrime/securesms/preferences/ListSummaryPreferenceFragment;->getSelectedSummary(Landroidx/preference/Preference;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-eqz p3, :cond_0

    .line 97
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n\n"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 99
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
