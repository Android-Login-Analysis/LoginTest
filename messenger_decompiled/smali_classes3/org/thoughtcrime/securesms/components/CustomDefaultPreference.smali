.class public Lorg/thoughtcrime/securesms/components/CustomDefaultPreference;
.super Landroidx/preference/DialogPreference;
.source "CustomDefaultPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$CustomDefaultPreferenceDialogFragmentCompat;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CustomDefaultPreference"


# instance fields
.field private final customPreference:Ljava/lang/String;

.field private final customToggle:Ljava/lang/String;

.field private defaultValue:Ljava/lang/String;

.field private final inputType:I

.field private final validator:Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$CustomDefaultPreferenceDialogFragmentCompat$CustomPreferenceValidator;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 39
    invoke-direct {p0, p1, p2}, Landroidx/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x1010220

    const v1, 0x7f0401be

    .line 41
    filled-new-array {v0, v1}, [I

    move-result-object v0

    .line 42
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 44
    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference;->inputType:I

    .line 45
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference;->customPreference:Ljava/lang/String;

    const/4 v0, 0x1

    .line 46
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference;->customToggle:Ljava/lang/String;

    .line 47
    new-instance v0, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$CustomDefaultPreferenceDialogFragmentCompat$NullValidator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$CustomDefaultPreferenceDialogFragmentCompat$NullValidator;-><init>(Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$1;)V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference;->validator:Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$CustomDefaultPreferenceDialogFragmentCompat$CustomPreferenceValidator;

    .line 49
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 51
    invoke-virtual {p0, p2}, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference;->setPersistent(Z)V

    const p1, 0x7f0c004d

    .line 52
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference;->setDialogLayoutResource(I)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 27
    sget-object v0, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/thoughtcrime/securesms/components/CustomDefaultPreference;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference;->setCustomValue(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lorg/thoughtcrime/securesms/components/CustomDefaultPreference;)Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$CustomDefaultPreferenceDialogFragmentCompat$CustomPreferenceValidator;
    .locals 0

    .line 27
    iget-object p0, p0, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference;->validator:Lorg/thoughtcrime/securesms/components/CustomDefaultPreference$CustomDefaultPreferenceDialogFragmentCompat$CustomPreferenceValidator;

    return-object p0
.end method

.method static synthetic access$200(Lorg/thoughtcrime/securesms/components/CustomDefaultPreference;)I
    .locals 0

    .line 27
    iget p0, p0, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference;->inputType:I

    return p0
.end method

.method static synthetic access$400(Lorg/thoughtcrime/securesms/components/CustomDefaultPreference;)Ljava/lang/String;
    .locals 0

    .line 27
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference;->getCustomValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lorg/thoughtcrime/securesms/components/CustomDefaultPreference;)Ljava/lang/String;
    .locals 0

    .line 27
    iget-object p0, p0, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference;->defaultValue:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lorg/thoughtcrime/securesms/components/CustomDefaultPreference;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference;->getPrettyPrintValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lorg/thoughtcrime/securesms/components/CustomDefaultPreference;)Z
    .locals 0

    .line 27
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference;->isCustom()Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lorg/thoughtcrime/securesms/components/CustomDefaultPreference;Z)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference;->setCustom(Z)V

    return-void
.end method

.method private getCustomValue()Ljava/lang/String;
    .locals 3

    .line 86
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference;->customPreference:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lorg/thoughtcrime/securesms/util/Prefs;->getStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDefaultValue()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference;->defaultValue:Ljava/lang/String;

    return-object v0
.end method

.method private getPrettyPrintValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 73
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f1202c4

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private isCustom()Z
    .locals 3

    .line 78
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference;->customToggle:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/thoughtcrime/securesms/util/Prefs;->getBooleanPreference(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private setCustom(Z)V
    .locals 2

    .line 82
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference;->customToggle:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lorg/thoughtcrime/securesms/util/Prefs;->setBooleanPreference(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method private setCustomValue(Ljava/lang/String;)V
    .locals 2

    .line 90
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference;->customPreference:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lorg/thoughtcrime/securesms/util/Prefs;->setStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getSummary()Ljava/lang/CharSequence;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference;->getSummary()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 4

    .line 63
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference;->isCustom()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    .line 65
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference;->getCustomValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference;->getPrettyPrintValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const v1, 0x7f120369

    .line 64
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 67
    :cond_0
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    .line 68
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference;->getDefaultValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference;->getPrettyPrintValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const v1, 0x7f12036a

    .line 67
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setDefaultValue(Ljava/lang/String;)Lorg/thoughtcrime/securesms/components/CustomDefaultPreference;
    .locals 0

    .line 56
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference;->defaultValue:Ljava/lang/String;

    .line 57
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference;->getSummary()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/components/CustomDefaultPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-object p0
.end method
