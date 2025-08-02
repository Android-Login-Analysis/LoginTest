.class public Lmobi/upod/timedurationpicker/TimeDurationPickerPreference;
.super Landroid/preference/DialogPreference;
.source "TimeDurationPickerPreference.java"


# static fields
.field public static final PLACEHOLDER_HOURS_MINUTES_SECONDS:Ljava/lang/String; = "${h:mm:ss}"

.field public static final PLACEHOLDER_MINUTES_SECONDS:Ljava/lang/String; = "${m:ss}"

.field public static final PLACEHOLDER_SECONDS:Ljava/lang/String; = "${s}"


# instance fields
.field private duration:J

.field private picker:Lmobi/upod/timedurationpicker/TimeDurationPicker;

.field private summaryTemplate:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, v0}, Lmobi/upod/timedurationpicker/TimeDurationPickerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/16 p1, 0x0

    .line 33
    iput-wide p1, p0, Lmobi/upod/timedurationpicker/TimeDurationPickerPreference;->duration:J

    const/4 p1, 0x0

    .line 34
    iput-object p1, p0, Lmobi/upod/timedurationpicker/TimeDurationPickerPreference;->picker:Lmobi/upod/timedurationpicker/TimeDurationPicker;

    const p1, 0x104000a

    .line 43
    invoke-virtual {p0, p1}, Lmobi/upod/timedurationpicker/TimeDurationPickerPreference;->setPositiveButtonText(I)V

    const/high16 p1, 0x1040000

    .line 44
    invoke-virtual {p0, p1}, Lmobi/upod/timedurationpicker/TimeDurationPickerPreference;->setNegativeButtonText(I)V

    return-void
.end method

.method private updateDescription()V
    .locals 4

    .line 79
    iget-object v0, p0, Lmobi/upod/timedurationpicker/TimeDurationPickerPreference;->summaryTemplate:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 80
    invoke-virtual {p0}, Lmobi/upod/timedurationpicker/TimeDurationPickerPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobi/upod/timedurationpicker/TimeDurationPickerPreference;->summaryTemplate:Ljava/lang/String;

    .line 82
    :cond_0
    iget-object v0, p0, Lmobi/upod/timedurationpicker/TimeDurationPickerPreference;->summaryTemplate:Ljava/lang/String;

    iget-wide v1, p0, Lmobi/upod/timedurationpicker/TimeDurationPickerPreference;->duration:J

    .line 83
    invoke-static {v1, v2}, Lmobi/upod/timedurationpicker/TimeDurationUtil;->formatHoursMinutesSeconds(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "${h:mm:ss}"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lmobi/upod/timedurationpicker/TimeDurationPickerPreference;->duration:J

    .line 84
    invoke-static {v1, v2}, Lmobi/upod/timedurationpicker/TimeDurationUtil;->formatMinutesSeconds(J)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lmobi/upod/timedurationpicker/TimeDurationPickerPreference;->duration:J

    .line 85
    invoke-static {v2, v3}, Lmobi/upod/timedurationpicker/TimeDurationUtil;->formatSeconds(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "${s}"

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "${m:ss}"

    .line 84
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-virtual {p0, v0}, Lmobi/upod/timedurationpicker/TimeDurationPickerPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getDuration()J
    .locals 2

    .line 63
    iget-wide v0, p0, Lmobi/upod/timedurationpicker/TimeDurationPickerPreference;->duration:J

    return-wide v0
.end method

.method public getTimeDurationPicker()Lmobi/upod/timedurationpicker/TimeDurationPicker;
    .locals 1

    .line 71
    iget-object v0, p0, Lmobi/upod/timedurationpicker/TimeDurationPickerPreference;->picker:Lmobi/upod/timedurationpicker/TimeDurationPicker;

    return-object v0
.end method

.method protected initPicker(Lmobi/upod/timedurationpicker/TimeDurationPicker;)Lmobi/upod/timedurationpicker/TimeDurationPicker;
    .locals 0

    return-object p1
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 2

    .line 107
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 108
    iget-object p1, p0, Lmobi/upod/timedurationpicker/TimeDurationPickerPreference;->picker:Lmobi/upod/timedurationpicker/TimeDurationPicker;

    iget-wide v0, p0, Lmobi/upod/timedurationpicker/TimeDurationPickerPreference;->duration:J

    invoke-virtual {p1, v0, v1}, Lmobi/upod/timedurationpicker/TimeDurationPicker;->setDuration(J)V

    return-void
.end method

.method protected onCreateDialogView()Landroid/view/View;
    .locals 3

    .line 96
    invoke-virtual {p0}, Lmobi/upod/timedurationpicker/TimeDurationPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 97
    sget v1, Lmobi/upod/timedurationpicker/R$layout;->time_duration_picker_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmobi/upod/timedurationpicker/TimeDurationPicker;

    invoke-virtual {p0, v0}, Lmobi/upod/timedurationpicker/TimeDurationPickerPreference;->initPicker(Lmobi/upod/timedurationpicker/TimeDurationPicker;)Lmobi/upod/timedurationpicker/TimeDurationPicker;

    move-result-object v0

    iput-object v0, p0, Lmobi/upod/timedurationpicker/TimeDurationPickerPreference;->picker:Lmobi/upod/timedurationpicker/TimeDurationPicker;

    return-object v0
.end method

.method protected onDialogClosed(Z)V
    .locals 2

    .line 113
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    if-eqz p1, :cond_1

    .line 116
    iget-object p1, p0, Lmobi/upod/timedurationpicker/TimeDurationPickerPreference;->picker:Lmobi/upod/timedurationpicker/TimeDurationPicker;

    invoke-virtual {p1}, Lmobi/upod/timedurationpicker/TimeDurationPicker;->getDuration()J

    move-result-wide v0

    .line 118
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmobi/upod/timedurationpicker/TimeDurationPickerPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 123
    :cond_0
    invoke-virtual {p0, v0, v1}, Lmobi/upod/timedurationpicker/TimeDurationPickerPreference;->setDuration(J)V

    .line 124
    invoke-direct {p0}, Lmobi/upod/timedurationpicker/TimeDurationPickerPreference;->updateDescription()V

    :cond_1
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 130
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    int-to-long p1, p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 1

    const/4 v0, 0x0

    .line 91
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    return-void
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 0

    if-eqz p1, :cond_0

    const-wide/16 p1, 0x0

    .line 137
    invoke-virtual {p0, p1, p2}, Lmobi/upod/timedurationpicker/TimeDurationPickerPreference;->getPersistedLong(J)J

    move-result-wide p1

    goto :goto_0

    .line 139
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    .line 142
    :goto_0
    invoke-virtual {p0, p1, p2}, Lmobi/upod/timedurationpicker/TimeDurationPickerPreference;->setDuration(J)V

    .line 143
    invoke-direct {p0}, Lmobi/upod/timedurationpicker/TimeDurationPickerPreference;->updateDescription()V

    return-void
.end method

.method public setDuration(J)V
    .locals 0

    .line 52
    iput-wide p1, p0, Lmobi/upod/timedurationpicker/TimeDurationPickerPreference;->duration:J

    .line 53
    invoke-virtual {p0, p1, p2}, Lmobi/upod/timedurationpicker/TimeDurationPickerPreference;->persistLong(J)Z

    .line 54
    invoke-virtual {p0}, Lmobi/upod/timedurationpicker/TimeDurationPickerPreference;->shouldDisableDependents()Z

    move-result p1

    invoke-virtual {p0, p1}, Lmobi/upod/timedurationpicker/TimeDurationPickerPreference;->notifyDependencyChange(Z)V

    .line 55
    invoke-virtual {p0}, Lmobi/upod/timedurationpicker/TimeDurationPickerPreference;->notifyChanged()V

    return-void
.end method
