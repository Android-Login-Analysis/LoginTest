.class public Lmobi/upod/timedurationpicker/TimeDurationPickerDialog;
.super Landroidx/appcompat/app/AlertDialog;
.source "TimeDurationPickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/upod/timedurationpicker/TimeDurationPickerDialog$OnDurationSetListener;
    }
.end annotation


# static fields
.field private static final DURATION:Ljava/lang/String; = "duration"


# instance fields
.field private final durationInputView:Lmobi/upod/timedurationpicker/TimeDurationPicker;

.field private final durationSetListener:Lmobi/upod/timedurationpicker/TimeDurationPickerDialog$OnDurationSetListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmobi/upod/timedurationpicker/TimeDurationPickerDialog$OnDurationSetListener;J)V
    .locals 2

    .line 43
    invoke-direct {p0, p1}, Landroidx/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 44
    iput-object p2, p0, Lmobi/upod/timedurationpicker/TimeDurationPickerDialog;->durationSetListener:Lmobi/upod/timedurationpicker/TimeDurationPickerDialog$OnDurationSetListener;

    .line 46
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 47
    sget v0, Lmobi/upod/timedurationpicker/R$layout;->time_duration_picker_dialog:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 48
    invoke-virtual {p0, p2}, Lmobi/upod/timedurationpicker/TimeDurationPickerDialog;->setView(Landroid/view/View;)V

    const v0, 0x104000a

    .line 49
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0, p0}, Lmobi/upod/timedurationpicker/TimeDurationPickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/high16 v0, 0x1040000

    .line 50
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x2

    invoke-virtual {p0, v0, p1, p0}, Lmobi/upod/timedurationpicker/TimeDurationPickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 52
    check-cast p2, Lmobi/upod/timedurationpicker/TimeDurationPicker;

    iput-object p2, p0, Lmobi/upod/timedurationpicker/TimeDurationPickerDialog;->durationInputView:Lmobi/upod/timedurationpicker/TimeDurationPicker;

    .line 53
    invoke-virtual {p2, p3, p4}, Lmobi/upod/timedurationpicker/TimeDurationPicker;->setDuration(J)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmobi/upod/timedurationpicker/TimeDurationPickerDialog$OnDurationSetListener;JI)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2, p3, p4}, Lmobi/upod/timedurationpicker/TimeDurationPickerDialog;-><init>(Landroid/content/Context;Lmobi/upod/timedurationpicker/TimeDurationPickerDialog$OnDurationSetListener;J)V

    .line 66
    iget-object p1, p0, Lmobi/upod/timedurationpicker/TimeDurationPickerDialog;->durationInputView:Lmobi/upod/timedurationpicker/TimeDurationPicker;

    invoke-virtual {p1, p5}, Lmobi/upod/timedurationpicker/TimeDurationPicker;->setTimeUnits(I)V

    return-void
.end method


# virtual methods
.method public getDurationInput()Lmobi/upod/timedurationpicker/TimeDurationPicker;
    .locals 1

    .line 74
    iget-object v0, p0, Lmobi/upod/timedurationpicker/TimeDurationPickerDialog;->durationInputView:Lmobi/upod/timedurationpicker/TimeDurationPicker;

    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 p1, -0x2

    if-eq p2, p1, :cond_1

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    iget-object p1, p0, Lmobi/upod/timedurationpicker/TimeDurationPickerDialog;->durationSetListener:Lmobi/upod/timedurationpicker/TimeDurationPickerDialog$OnDurationSetListener;

    if-eqz p1, :cond_2

    .line 94
    iget-object p2, p0, Lmobi/upod/timedurationpicker/TimeDurationPickerDialog;->durationInputView:Lmobi/upod/timedurationpicker/TimeDurationPicker;

    invoke-virtual {p2}, Lmobi/upod/timedurationpicker/TimeDurationPicker;->getDuration()J

    move-result-wide v0

    invoke-interface {p1, p2, v0, v1}, Lmobi/upod/timedurationpicker/TimeDurationPickerDialog$OnDurationSetListener;->onDurationSet(Lmobi/upod/timedurationpicker/TimeDurationPicker;J)V

    goto :goto_0

    .line 98
    :cond_1
    invoke-virtual {p0}, Lmobi/upod/timedurationpicker/TimeDurationPickerDialog;->cancel()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 112
    invoke-super {p0, p1}, Landroidx/appcompat/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "duration"

    .line 113
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 114
    iget-object p1, p0, Lmobi/upod/timedurationpicker/TimeDurationPickerDialog;->durationInputView:Lmobi/upod/timedurationpicker/TimeDurationPicker;

    invoke-virtual {p1, v0, v1}, Lmobi/upod/timedurationpicker/TimeDurationPicker;->setDuration(J)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 4

    .line 105
    invoke-super {p0}, Landroidx/appcompat/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 106
    iget-object v1, p0, Lmobi/upod/timedurationpicker/TimeDurationPickerDialog;->durationInputView:Lmobi/upod/timedurationpicker/TimeDurationPicker;

    invoke-virtual {v1}, Lmobi/upod/timedurationpicker/TimeDurationPicker;->getDuration()J

    move-result-wide v1

    const-string v3, "duration"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object v0
.end method

.method public setDuration(J)V
    .locals 1

    .line 82
    iget-object v0, p0, Lmobi/upod/timedurationpicker/TimeDurationPickerDialog;->durationInputView:Lmobi/upod/timedurationpicker/TimeDurationPicker;

    invoke-virtual {v0, p1, p2}, Lmobi/upod/timedurationpicker/TimeDurationPicker;->setDuration(J)V

    return-void
.end method
