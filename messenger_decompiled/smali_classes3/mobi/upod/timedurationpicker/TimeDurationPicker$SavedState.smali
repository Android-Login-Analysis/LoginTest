.class public Lmobi/upod/timedurationpicker/TimeDurationPicker$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "TimeDurationPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/upod/timedurationpicker/TimeDurationPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmobi/upod/timedurationpicker/TimeDurationPicker$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final durationInput:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 600
    new-instance v0, Lmobi/upod/timedurationpicker/TimeDurationPicker$SavedState$1;

    invoke-direct {v0}, Lmobi/upod/timedurationpicker/TimeDurationPicker$SavedState$1;-><init>()V

    sput-object v0, Lmobi/upod/timedurationpicker/TimeDurationPicker$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 590
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 591
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker$SavedState;->durationInput:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;Ljava/lang/String;)V
    .locals 0

    .line 584
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 585
    iput-object p2, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker$SavedState;->durationInput:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 596
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 597
    iget-object p2, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker$SavedState;->durationInput:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
