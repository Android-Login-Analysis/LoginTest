.class final Lmobi/upod/timedurationpicker/TimeDurationPicker$SavedState$1;
.super Ljava/lang/Object;
.source "TimeDurationPicker.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/upod/timedurationpicker/TimeDurationPicker$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lmobi/upod/timedurationpicker/TimeDurationPicker$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 601
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 601
    invoke-virtual {p0, p1}, Lmobi/upod/timedurationpicker/TimeDurationPicker$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lmobi/upod/timedurationpicker/TimeDurationPicker$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lmobi/upod/timedurationpicker/TimeDurationPicker$SavedState;
    .locals 1

    .line 603
    new-instance v0, Lmobi/upod/timedurationpicker/TimeDurationPicker$SavedState;

    invoke-direct {v0, p1}, Lmobi/upod/timedurationpicker/TimeDurationPicker$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 601
    invoke-virtual {p0, p1}, Lmobi/upod/timedurationpicker/TimeDurationPicker$SavedState$1;->newArray(I)[Lmobi/upod/timedurationpicker/TimeDurationPicker$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lmobi/upod/timedurationpicker/TimeDurationPicker$SavedState;
    .locals 0

    .line 607
    new-array p1, p1, [Lmobi/upod/timedurationpicker/TimeDurationPicker$SavedState;

    return-object p1
.end method
