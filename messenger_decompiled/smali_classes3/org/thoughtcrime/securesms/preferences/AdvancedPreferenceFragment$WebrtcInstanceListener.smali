.class Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment$WebrtcInstanceListener;
.super Ljava/lang/Object;
.source "AdvancedPreferenceFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebrtcInstanceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;


# direct methods
.method private constructor <init>(Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;)V
    .locals 0

    .line 321
    iput-object p1, p0, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment$WebrtcInstanceListener;->this$0:Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment$1;)V
    .locals 0

    .line 321
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment$WebrtcInstanceListener;-><init>(Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$onPreferenceClick$0$org-thoughtcrime-securesms-preferences-AdvancedPreferenceFragment$WebrtcInstanceListener(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 336
    iget-object p2, p0, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment$WebrtcInstanceListener;->this$0:Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;

    iget-object p2, p2, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "webrtc_instance"

    invoke-virtual {p2, p3, p1}, Lcom/b44t/messenger/DcContext;->setConfig(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    iget-object p1, p0, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment$WebrtcInstanceListener;->this$0:Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->access$600(Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;)V

    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 6

    .line 324
    iget-object p1, p0, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment$WebrtcInstanceListener;->this$0:Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f0c0103

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f090198

    .line 325
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const v2, 0x7f12042a

    .line 326
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(I)V

    .line 327
    iget-object v2, p0, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment$WebrtcInstanceListener;->this$0:Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;

    iget-object v2, v2, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->dcContext:Lcom/b44t/messenger/DcContext;

    const-string v3, "webrtc_instance"

    invoke-virtual {v2, v3}, Lcom/b44t/messenger/DcContext;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 328
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelection(I)V

    const/16 v2, 0x10

    .line 329
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 330
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v3, p0, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment$WebrtcInstanceListener;->this$0:Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;

    invoke-virtual {v3}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f120426

    .line 331
    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment$WebrtcInstanceListener;->this$0:Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;

    const v5, 0x7f120428

    .line 332
    invoke-virtual {v4, v5}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment$WebrtcInstanceListener;->this$0:Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;

    const v5, 0x7f120427

    invoke-virtual {v4, v5}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    .line 333
    invoke-virtual {v2, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v2, 0x1040000

    .line 334
    invoke-virtual {p1, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment$WebrtcInstanceListener$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment$WebrtcInstanceListener$$ExternalSyntheticLambda0;-><init>(Lorg/thoughtcrime/securesms/preferences/AdvancedPreferenceFragment$WebrtcInstanceListener;Landroid/widget/EditText;)V

    const v0, 0x104000a

    .line 335
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 339
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    const/4 p1, 0x1

    return p1
.end method
