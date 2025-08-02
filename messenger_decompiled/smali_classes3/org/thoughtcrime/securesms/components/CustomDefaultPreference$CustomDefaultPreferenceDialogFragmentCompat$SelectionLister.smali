.class Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$CustomDefaultPreferenceDialogFragmentCompat$SelectionLister;
.super Ljava/lang/Object;
.source "CustomDefaultPreference.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$CustomDefaultPreferenceDialogFragmentCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionLister"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$CustomDefaultPreferenceDialogFragmentCompat;


# direct methods
.method private constructor <init>(Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$CustomDefaultPreferenceDialogFragmentCompat;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$CustomDefaultPreferenceDialogFragmentCompat$SelectionLister;->this$0:Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$CustomDefaultPreferenceDialogFragmentCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$CustomDefaultPreferenceDialogFragmentCompat;Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$1;)V
    .locals 0

    .line 187
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$CustomDefaultPreferenceDialogFragmentCompat$SelectionLister;-><init>(Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$CustomDefaultPreferenceDialogFragmentCompat;)V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 191
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$CustomDefaultPreferenceDialogFragmentCompat$SelectionLister;->this$0:Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$CustomDefaultPreferenceDialogFragmentCompat;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$CustomDefaultPreferenceDialogFragmentCompat;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object p1

    check-cast p1, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference;

    .line 192
    iget-object p2, p0, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$CustomDefaultPreferenceDialogFragmentCompat$SelectionLister;->this$0:Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$CustomDefaultPreferenceDialogFragmentCompat;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$CustomDefaultPreferenceDialogFragmentCompat;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/app/AlertDialog;

    const/4 p4, -0x1

    invoke-virtual {p2, p4}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p2

    .line 194
    iget-object p4, p0, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$CustomDefaultPreferenceDialogFragmentCompat$SelectionLister;->this$0:Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$CustomDefaultPreferenceDialogFragmentCompat;

    invoke-static {p4}, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$CustomDefaultPreferenceDialogFragmentCompat;->access$1300(Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$CustomDefaultPreferenceDialogFragmentCompat;)Landroid/widget/TextView;

    move-result-object p4

    const/16 p5, 0x8

    const/4 v0, 0x0

    if-nez p3, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {p4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 195
    iget-object p4, p0, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$CustomDefaultPreferenceDialogFragmentCompat$SelectionLister;->this$0:Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$CustomDefaultPreferenceDialogFragmentCompat;

    invoke-static {p4}, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$CustomDefaultPreferenceDialogFragmentCompat;->access$1400(Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$CustomDefaultPreferenceDialogFragmentCompat;)Landroid/widget/EditText;

    move-result-object p4

    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    const/4 p5, 0x0

    :goto_1
    invoke-virtual {p4, p5}, Landroid/widget/EditText;->setVisibility(I)V

    if-eqz p3, :cond_2

    .line 196
    invoke-static {p1}, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference;->access$1200(Lorg/thoughtcrime/securesms/components/CustomDefaultPreference;)Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$CustomDefaultPreferenceDialogFragmentCompat$CustomPreferenceValidator;

    move-result-object p1

    iget-object p3, p0, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$CustomDefaultPreferenceDialogFragmentCompat$SelectionLister;->this$0:Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$CustomDefaultPreferenceDialogFragmentCompat;

    invoke-static {p3}, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$CustomDefaultPreferenceDialogFragmentCompat;->access$1400(Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$CustomDefaultPreferenceDialogFragmentCompat;)Landroid/widget/EditText;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$CustomDefaultPreferenceDialogFragmentCompat$CustomPreferenceValidator;->isValid(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    invoke-virtual {p2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 201
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$CustomDefaultPreferenceDialogFragmentCompat$SelectionLister;->this$0:Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$CustomDefaultPreferenceDialogFragmentCompat;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$CustomDefaultPreferenceDialogFragmentCompat;->access$1300(Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$CustomDefaultPreferenceDialogFragmentCompat;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 202
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$CustomDefaultPreferenceDialogFragmentCompat$SelectionLister;->this$0:Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$CustomDefaultPreferenceDialogFragmentCompat;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$CustomDefaultPreferenceDialogFragmentCompat;->access$1400(Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$CustomDefaultPreferenceDialogFragmentCompat;)Landroid/widget/EditText;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setVisibility(I)V

    return-void
.end method
