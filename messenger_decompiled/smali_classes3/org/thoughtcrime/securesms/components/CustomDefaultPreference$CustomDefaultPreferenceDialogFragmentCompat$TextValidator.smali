.class Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$CustomDefaultPreferenceDialogFragmentCompat$TextValidator;
.super Ljava/lang/Object;
.source "CustomDefaultPreference.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$CustomDefaultPreferenceDialogFragmentCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextValidator"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$CustomDefaultPreferenceDialogFragmentCompat;


# direct methods
.method private constructor <init>(Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$CustomDefaultPreferenceDialogFragmentCompat;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$CustomDefaultPreferenceDialogFragmentCompat$TextValidator;->this$0:Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$CustomDefaultPreferenceDialogFragmentCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$CustomDefaultPreferenceDialogFragmentCompat;Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$1;)V
    .locals 0

    .line 168
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$CustomDefaultPreferenceDialogFragmentCompat$TextValidator;-><init>(Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$CustomDefaultPreferenceDialogFragmentCompat;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .line 178
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$CustomDefaultPreferenceDialogFragmentCompat$TextValidator;->this$0:Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$CustomDefaultPreferenceDialogFragmentCompat;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$CustomDefaultPreferenceDialogFragmentCompat;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference;

    .line 180
    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$CustomDefaultPreferenceDialogFragmentCompat$TextValidator;->this$0:Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$CustomDefaultPreferenceDialogFragmentCompat;

    invoke-static {v1}, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$CustomDefaultPreferenceDialogFragmentCompat;->access$1100(Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$CustomDefaultPreferenceDialogFragmentCompat;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 181
    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$CustomDefaultPreferenceDialogFragmentCompat$TextValidator;->this$0:Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$CustomDefaultPreferenceDialogFragmentCompat;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$CustomDefaultPreferenceDialogFragmentCompat;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 182
    invoke-static {v0}, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference;->access$1200(Lorg/thoughtcrime/securesms/components/CustomDefaultPreference;)Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$CustomDefaultPreferenceDialogFragmentCompat$CustomPreferenceValidator;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$CustomDefaultPreferenceDialogFragmentCompat$CustomPreferenceValidator;->isValid(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
