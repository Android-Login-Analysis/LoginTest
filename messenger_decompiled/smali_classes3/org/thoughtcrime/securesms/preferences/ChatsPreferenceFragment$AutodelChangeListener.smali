.class Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$AutodelChangeListener;
.super Ljava/lang/Object;
.source "ChatsPreferenceFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutodelChangeListener"
.end annotation


# instance fields
.field private final coreKey:Ljava/lang/String;

.field final synthetic this$0:Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;


# direct methods
.method constructor <init>(Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;Ljava/lang/String;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$AutodelChangeListener;->this$0:Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    iput-object p2, p0, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$AutodelChangeListener;->coreKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method synthetic lambda$onPreferenceChange$0$org-thoughtcrime-securesms-preferences-ChatsPreferenceFragment$AutodelChangeListener(Landroid/widget/CheckBox;ILandroidx/preference/Preference;Ljava/lang/Object;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 210
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 211
    iget-object p1, p0, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$AutodelChangeListener;->this$0:Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;

    iget-object p1, p1, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;->dcContext:Lcom/b44t/messenger/DcContext;

    iget-object p3, p0, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$AutodelChangeListener;->coreKey:Ljava/lang/String;

    invoke-virtual {p1, p3, p2}, Lcom/b44t/messenger/DcContext;->setConfigInt(Ljava/lang/String;I)V

    .line 212
    iget-object p1, p0, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$AutodelChangeListener;->this$0:Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;->access$300(Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;)V

    goto :goto_0

    .line 214
    :cond_0
    invoke-virtual {p0, p3, p4}, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$AutodelChangeListener;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method synthetic lambda$onPreferenceChange$1$org-thoughtcrime-securesms-preferences-ChatsPreferenceFragment$AutodelChangeListener(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 217
    iget-object p1, p0, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$AutodelChangeListener;->this$0:Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;->access$300(Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;)V

    return-void
.end method

.method synthetic lambda$onPreferenceChange$2$org-thoughtcrime-securesms-preferences-ChatsPreferenceFragment$AutodelChangeListener(Landroid/content/DialogInterface;)V
    .locals 0

    .line 219
    iget-object p1, p0, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$AutodelChangeListener;->this$0:Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;->access$300(Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;)V

    return-void
.end method

.method synthetic lambda$onPreferenceChange$3$org-thoughtcrime-securesms-preferences-ChatsPreferenceFragment$AutodelChangeListener(ILandroid/content/DialogInterface;I)V
    .locals 0

    .line 226
    iget-object p2, p0, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$AutodelChangeListener;->this$0:Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;

    iget-object p2, p2, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;->dcContext:Lcom/b44t/messenger/DcContext;

    iget-object p3, p0, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$AutodelChangeListener;->coreKey:Ljava/lang/String;

    invoke-virtual {p2, p3, p1}, Lcom/b44t/messenger/DcContext;->setConfigInt(Ljava/lang/String;I)V

    .line 227
    iget-object p1, p0, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$AutodelChangeListener;->this$0:Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;->access$300(Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;)V

    return-void
.end method

.method synthetic lambda$onPreferenceChange$4$org-thoughtcrime-securesms-preferences-ChatsPreferenceFragment$AutodelChangeListener(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 229
    iget-object p1, p0, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$AutodelChangeListener;->this$0:Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;->access$300(Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;)V

    return-void
.end method

.method synthetic lambda$onPreferenceChange$5$org-thoughtcrime-securesms-preferences-ChatsPreferenceFragment$AutodelChangeListener(Landroid/content/DialogInterface;)V
    .locals 0

    .line 231
    iget-object p1, p0, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$AutodelChangeListener;->this$0:Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;->access$300(Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 12

    .line 189
    invoke-static {p2}, Lorg/thoughtcrime/securesms/util/Util;->objectToInt(Ljava/lang/Object;)I

    move-result v3

    .line 190
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 191
    iget-object v1, p0, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$AutodelChangeListener;->coreKey:Ljava/lang/String;

    const-string v2, "delete_server_after"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/high16 v6, 0x1040000

    const v7, 0x104000a

    const/4 v8, 0x1

    if-lez v3, :cond_2

    if-eqz v1, :cond_0

    .line 192
    iget-object v2, p0, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$AutodelChangeListener;->this$0:Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;

    iget-object v2, v2, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {v2}, Lcom/b44t/messenger/DcContext;->isChatmail()Z

    move-result v2

    if-nez v2, :cond_2

    .line 193
    :cond_0
    invoke-static {v0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object v2

    int-to-long v4, v3

    invoke-virtual {v2, v1, v4, v5}, Lcom/b44t/messenger/DcContext;->estimateDeletionCount(ZJ)I

    move-result v2

    .line 195
    iget-object v4, p0, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$AutodelChangeListener;->this$0:Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;

    invoke-virtual {v4}, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f0c0060

    const/4 v9, 0x0

    invoke-static {v4, v5, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0900ea

    .line 196
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    const v9, 0x7f0900eb

    .line 197
    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    const v1, 0x7f120081

    goto :goto_0

    :cond_1
    const v1, 0x7f12007f

    .line 201
    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    .line 203
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v10, v11

    iget-object v2, p0, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$AutodelChangeListener;->this$0:Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;

    invoke-virtual {v2, p1, p2}, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;->getSelectedSummary(Landroidx/preference/Preference;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v10, v8

    .line 201
    invoke-static {v1, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f12007e

    .line 204
    invoke-virtual {v5, v1}, Landroid/widget/CheckBox;->setText(I)V

    .line 206
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 207
    invoke-virtual {p1}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 208
    invoke-virtual {v0, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v9

    new-instance v10, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$AutodelChangeListener$$ExternalSyntheticLambda0;

    move-object v0, v10

    move-object v1, p0

    move-object v2, v5

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$AutodelChangeListener$$ExternalSyntheticLambda0;-><init>(Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$AutodelChangeListener;Landroid/widget/CheckBox;ILandroidx/preference/Preference;Ljava/lang/Object;)V

    .line 209
    invoke-virtual {v9, v7, v10}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$AutodelChangeListener$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$AutodelChangeListener$$ExternalSyntheticLambda1;-><init>(Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$AutodelChangeListener;)V

    .line 217
    invoke-virtual {p1, v6, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 218
    invoke-virtual {p1, v8}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$AutodelChangeListener$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$AutodelChangeListener$$ExternalSyntheticLambda2;-><init>(Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$AutodelChangeListener;)V

    .line 219
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 220
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    if-ne v3, v8, :cond_3

    .line 222
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p2, 0x7f120085

    .line 223
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f120084

    .line 224
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$AutodelChangeListener$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0, v3}, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$AutodelChangeListener$$ExternalSyntheticLambda3;-><init>(Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$AutodelChangeListener;I)V

    .line 225
    invoke-virtual {p1, v7, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$AutodelChangeListener$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$AutodelChangeListener$$ExternalSyntheticLambda4;-><init>(Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$AutodelChangeListener;)V

    .line 229
    invoke-virtual {p1, v6, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 230
    invoke-virtual {p1, v8}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$AutodelChangeListener$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0}, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$AutodelChangeListener$$ExternalSyntheticLambda5;-><init>(Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$AutodelChangeListener;)V

    .line 231
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 232
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    goto :goto_1

    .line 234
    :cond_3
    iget-object v0, p0, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$AutodelChangeListener;->this$0:Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;

    invoke-virtual {v0, p1, p2}, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;->updateListSummary(Landroidx/preference/Preference;Ljava/lang/Object;)V

    .line 235
    iget-object p1, p0, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$AutodelChangeListener;->this$0:Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;

    iget-object p1, p1, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment;->dcContext:Lcom/b44t/messenger/DcContext;

    iget-object p2, p0, Lorg/thoughtcrime/securesms/preferences/ChatsPreferenceFragment$AutodelChangeListener;->coreKey:Ljava/lang/String;

    invoke-virtual {p1, p2, v3}, Lcom/b44t/messenger/DcContext;->setConfigInt(Ljava/lang/String;I)V

    :goto_1
    return v8
.end method
