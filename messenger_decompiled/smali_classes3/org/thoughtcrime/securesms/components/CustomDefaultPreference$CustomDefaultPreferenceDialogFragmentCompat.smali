.class public Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$CustomDefaultPreferenceDialogFragmentCompat;
.super Landroidx/preference/PreferenceDialogFragmentCompat;
.source "CustomDefaultPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/components/CustomDefaultPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomDefaultPreferenceDialogFragmentCompat"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$CustomDefaultPreferenceDialogFragmentCompat$TextValidator;,
        Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$CustomDefaultPreferenceDialogFragmentCompat$SelectionLister;,
        Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$CustomDefaultPreferenceDialogFragmentCompat$NullValidator;,
        Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$CustomDefaultPreferenceDialogFragmentCompat$CustomPreferenceValidator;
    }
.end annotation


# static fields
.field private static final INPUT_TYPE:Ljava/lang/String; = "input_type"


# instance fields
.field private customText:Landroid/widget/EditText;

.field private defaultLabel:Landroid/widget/TextView;

.field private spinner:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 98
    invoke-direct {p0}, Landroidx/preference/PreferenceDialogFragmentCompat;-><init>()V

    return-void
.end method

.method static synthetic access$1100(Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$CustomDefaultPreferenceDialogFragmentCompat;)Landroid/widget/Spinner;
    .locals 0

    .line 98
    iget-object p0, p0, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$CustomDefaultPreferenceDialogFragmentCompat;->spinner:Landroid/widget/Spinner;

    return-object p0
.end method

.method static synthetic access$1300(Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$CustomDefaultPreferenceDialogFragmentCompat;)Landroid/widget/TextView;
    .locals 0

    .line 98
    iget-object p0, p0, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$CustomDefaultPreferenceDialogFragmentCompat;->defaultLabel:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1400(Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$CustomDefaultPreferenceDialogFragmentCompat;)Landroid/widget/EditText;
    .locals 0

    .line 98
    iget-object p0, p0, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$CustomDefaultPreferenceDialogFragmentCompat;->customText:Landroid/widget/EditText;

    return-object p0
.end method

.method public static newInstance(Ljava/lang/String;)Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$CustomDefaultPreferenceDialogFragmentCompat;
    .locals 3

    .line 107
    new-instance v0, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$CustomDefaultPreferenceDialogFragmentCompat;

    invoke-direct {v0}, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$CustomDefaultPreferenceDialogFragmentCompat;-><init>()V

    .line 108
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    const-string v2, "key"

    .line 109
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$CustomDefaultPreferenceDialogFragmentCompat;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 3

    .line 116
    invoke-static {}, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onBindDialogView"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-super {p0, p1}, Landroidx/preference/PreferenceDialogFragmentCompat;->onBindDialogView(Landroid/view/View;)V

    .line 119
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$CustomDefaultPreferenceDialogFragmentCompat;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference;

    const v1, 0x7f0900dc

    .line 121
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$CustomDefaultPreferenceDialogFragmentCompat;->spinner:Landroid/widget/Spinner;

    const v1, 0x7f0900db

    .line 122
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$CustomDefaultPreferenceDialogFragmentCompat;->defaultLabel:Landroid/widget/TextView;

    const v1, 0x7f0900d3

    .line 123
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$CustomDefaultPreferenceDialogFragmentCompat;->customText:Landroid/widget/EditText;

    .line 125
    invoke-static {v0}, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference;->access$200(Lorg/thoughtcrime/securesms/components/CustomDefaultPreference;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 126
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$CustomDefaultPreferenceDialogFragmentCompat;->customText:Landroid/widget/EditText;

    new-instance v1, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$CustomDefaultPreferenceDialogFragmentCompat$TextValidator;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$CustomDefaultPreferenceDialogFragmentCompat$TextValidator;-><init>(Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$CustomDefaultPreferenceDialogFragmentCompat;Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$1;)V

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 127
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$CustomDefaultPreferenceDialogFragmentCompat;->customText:Landroid/widget/EditText;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference;->access$400(Lorg/thoughtcrime/securesms/components/CustomDefaultPreference;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$CustomDefaultPreferenceDialogFragmentCompat;->spinner:Landroid/widget/Spinner;

    new-instance v1, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$CustomDefaultPreferenceDialogFragmentCompat$SelectionLister;

    invoke-direct {v1, p0, v2}, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$CustomDefaultPreferenceDialogFragmentCompat$SelectionLister;-><init>(Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$CustomDefaultPreferenceDialogFragmentCompat;Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$1;)V

    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 129
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$CustomDefaultPreferenceDialogFragmentCompat;->defaultLabel:Landroid/widget/TextView;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference;->access$600(Lorg/thoughtcrime/securesms/components/CustomDefaultPreference;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference;->access$700(Lorg/thoughtcrime/securesms/components/CustomDefaultPreference;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 135
    invoke-super {p0, p1}, Landroidx/preference/PreferenceDialogFragmentCompat;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    .line 137
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$CustomDefaultPreferenceDialogFragmentCompat;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference;

    .line 139
    invoke-static {v0}, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference;->access$800(Lorg/thoughtcrime/securesms/components/CustomDefaultPreference;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$CustomDefaultPreferenceDialogFragmentCompat;->spinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1, v1}, Landroid/widget/Spinner;->setSelection(IZ)V

    goto :goto_0

    .line 140
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$CustomDefaultPreferenceDialogFragmentCompat;->spinner:Landroid/widget/Spinner;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/Spinner;->setSelection(IZ)V

    :goto_0
    return-object p1
.end method

.method public onDialogClosed(Z)V
    .locals 2

    .line 147
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$CustomDefaultPreferenceDialogFragmentCompat;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference;

    if-eqz p1, :cond_3

    .line 150
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$CustomDefaultPreferenceDialogFragmentCompat;->spinner:Landroid/widget/Spinner;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference;->access$900(Lorg/thoughtcrime/securesms/components/CustomDefaultPreference;Z)V

    .line 151
    :cond_1
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$CustomDefaultPreferenceDialogFragmentCompat;->customText:Landroid/widget/EditText;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference;->access$1000(Lorg/thoughtcrime/securesms/components/CustomDefaultPreference;Ljava/lang/String;)V

    .line 153
    :cond_2
    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference;->getSummary()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method
