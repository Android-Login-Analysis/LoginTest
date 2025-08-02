.class public abstract Lmobi/upod/timedurationpicker/TimeDurationPickerDialogFragment;
.super Landroid/app/DialogFragment;
.source "TimeDurationPickerDialogFragment.java"

# interfaces
.implements Lmobi/upod/timedurationpicker/TimeDurationPickerDialog$OnDurationSetListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getInitialDuration()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    .line 23
    new-instance p1, Lmobi/upod/timedurationpicker/TimeDurationPickerDialog;

    invoke-virtual {p0}, Lmobi/upod/timedurationpicker/TimeDurationPickerDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lmobi/upod/timedurationpicker/TimeDurationPickerDialogFragment;->getInitialDuration()J

    move-result-wide v3

    invoke-virtual {p0}, Lmobi/upod/timedurationpicker/TimeDurationPickerDialogFragment;->setTimeUnits()I

    move-result v5

    move-object v0, p1

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lmobi/upod/timedurationpicker/TimeDurationPickerDialog;-><init>(Landroid/content/Context;Lmobi/upod/timedurationpicker/TimeDurationPickerDialog$OnDurationSetListener;JI)V

    return-object p1
.end method

.method protected setTimeUnits()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
