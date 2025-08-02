.class Lmobi/upod/timedurationpicker/TimeDurationPicker$3;
.super Ljava/lang/Object;
.source "TimeDurationPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/upod/timedurationpicker/TimeDurationPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/upod/timedurationpicker/TimeDurationPicker;


# direct methods
.method constructor <init>(Lmobi/upod/timedurationpicker/TimeDurationPicker;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker$3;->this$0:Lmobi/upod/timedurationpicker/TimeDurationPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 150
    iget-object v0, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker$3;->this$0:Lmobi/upod/timedurationpicker/TimeDurationPicker;

    check-cast p1, Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {v0, p1}, Lmobi/upod/timedurationpicker/TimeDurationPicker;->access$200(Lmobi/upod/timedurationpicker/TimeDurationPicker;Ljava/lang/CharSequence;)V

    return-void
.end method
