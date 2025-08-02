.class public Lmobi/upod/timedurationpicker/TimeDurationPicker;
.super Landroid/widget/FrameLayout;
.source "TimeDurationPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/upod/timedurationpicker/TimeDurationPicker$SavedState;,
        Lmobi/upod/timedurationpicker/TimeDurationPicker$TimeDurationString;,
        Lmobi/upod/timedurationpicker/TimeDurationPicker$OnDurationChangedListener;
    }
.end annotation


# static fields
.field public static final HH_MM:I = 0x1

.field public static final HH_MM_SS:I = 0x0

.field public static final MM_SS:I = 0x2


# instance fields
.field private final backspaceButton:Landroid/widget/ImageButton;

.field private changeListener:Lmobi/upod/timedurationpicker/TimeDurationPicker$OnDurationChangedListener;

.field private final clearButton:Landroid/widget/ImageButton;

.field private final displayRow:Landroid/view/View;

.field private final displayViews:[Landroid/widget/TextView;

.field private final durationView:Landroid/view/View;

.field private hoursLabel:Landroid/widget/TextView;

.field private final hoursView:Landroid/widget/TextView;

.field private final input:Lmobi/upod/timedurationpicker/TimeDurationPicker$TimeDurationString;

.field private minutesLabel:Landroid/widget/TextView;

.field private final minutesView:Landroid/widget/TextView;

.field private final numPad:Landroid/view/View;

.field private final numPadButtons:[Landroid/widget/Button;

.field private final numPadMeasureButton:Landroid/widget/Button;

.field private secondsLabel:Landroid/widget/TextView;

.field private final secondsView:Landroid/widget/TextView;

.field private final separatorView:Landroid/view/View;

.field private timeUnits:I

.field private final unitLabelViews:[Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1, v0}, Lmobi/upod/timedurationpicker/TimeDurationPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 70
    sget v0, Lmobi/upod/timedurationpicker/R$attr;->timeDurationPickerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmobi/upod/timedurationpicker/TimeDurationPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12

    .line 74
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker;->timeUnits:I

    .line 34
    new-instance v1, Lmobi/upod/timedurationpicker/TimeDurationPicker$TimeDurationString;

    invoke-direct {v1}, Lmobi/upod/timedurationpicker/TimeDurationPicker$TimeDurationString;-><init>()V

    iput-object v1, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker;->input:Lmobi/upod/timedurationpicker/TimeDurationPicker$TimeDurationString;

    const/4 v1, 0x0

    .line 48
    iput-object v1, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker;->changeListener:Lmobi/upod/timedurationpicker/TimeDurationPicker$OnDurationChangedListener;

    .line 75
    sget v1, Lmobi/upod/timedurationpicker/R$layout;->time_duration_picker:I

    invoke-static {p1, v1, p0}, Lmobi/upod/timedurationpicker/TimeDurationPicker;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 80
    sget v1, Lmobi/upod/timedurationpicker/R$id;->displayRow:I

    invoke-virtual {p0, v1}, Lmobi/upod/timedurationpicker/TimeDurationPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker;->displayRow:Landroid/view/View;

    .line 81
    sget v2, Lmobi/upod/timedurationpicker/R$id;->duration:I

    invoke-virtual {p0, v2}, Lmobi/upod/timedurationpicker/TimeDurationPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker;->durationView:Landroid/view/View;

    .line 82
    sget v2, Lmobi/upod/timedurationpicker/R$id;->hours:I

    invoke-virtual {p0, v2}, Lmobi/upod/timedurationpicker/TimeDurationPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker;->hoursView:Landroid/widget/TextView;

    .line 83
    sget v3, Lmobi/upod/timedurationpicker/R$id;->minutes:I

    invoke-virtual {p0, v3}, Lmobi/upod/timedurationpicker/TimeDurationPicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker;->minutesView:Landroid/widget/TextView;

    .line 84
    sget v4, Lmobi/upod/timedurationpicker/R$id;->seconds:I

    invoke-virtual {p0, v4}, Lmobi/upod/timedurationpicker/TimeDurationPicker;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker;->secondsView:Landroid/widget/TextView;

    const/4 v5, 0x3

    new-array v6, v5, [Landroid/widget/TextView;

    aput-object v2, v6, v0

    const/4 v2, 0x1

    aput-object v3, v6, v2

    const/4 v3, 0x2

    aput-object v4, v6, v3

    .line 85
    iput-object v6, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker;->displayViews:[Landroid/widget/TextView;

    .line 87
    sget v4, Lmobi/upod/timedurationpicker/R$id;->hoursLabel:I

    invoke-virtual {p0, v4}, Lmobi/upod/timedurationpicker/TimeDurationPicker;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker;->hoursLabel:Landroid/widget/TextView;

    .line 88
    sget v4, Lmobi/upod/timedurationpicker/R$id;->minutesLabel:I

    invoke-virtual {p0, v4}, Lmobi/upod/timedurationpicker/TimeDurationPicker;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker;->minutesLabel:Landroid/widget/TextView;

    .line 89
    sget v4, Lmobi/upod/timedurationpicker/R$id;->secondsLabel:I

    invoke-virtual {p0, v4}, Lmobi/upod/timedurationpicker/TimeDurationPicker;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker;->secondsLabel:Landroid/widget/TextView;

    new-array v7, v5, [Landroid/widget/TextView;

    .line 90
    iget-object v8, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker;->hoursLabel:Landroid/widget/TextView;

    aput-object v8, v7, v0

    iget-object v8, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker;->minutesLabel:Landroid/widget/TextView;

    aput-object v8, v7, v2

    aput-object v4, v7, v3

    iput-object v7, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker;->unitLabelViews:[Landroid/widget/TextView;

    .line 92
    sget v4, Lmobi/upod/timedurationpicker/R$id;->backspace:I

    invoke-virtual {p0, v4}, Lmobi/upod/timedurationpicker/TimeDurationPicker;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker;->backspaceButton:Landroid/widget/ImageButton;

    .line 93
    sget v8, Lmobi/upod/timedurationpicker/R$id;->clear:I

    invoke-virtual {p0, v8}, Lmobi/upod/timedurationpicker/TimeDurationPicker;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageButton;

    iput-object v8, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker;->clearButton:Landroid/widget/ImageButton;

    .line 95
    sget v9, Lmobi/upod/timedurationpicker/R$id;->separator:I

    invoke-virtual {p0, v9}, Lmobi/upod/timedurationpicker/TimeDurationPicker;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker;->separatorView:Landroid/view/View;

    .line 97
    sget v10, Lmobi/upod/timedurationpicker/R$id;->numPad:I

    invoke-virtual {p0, v10}, Lmobi/upod/timedurationpicker/TimeDurationPicker;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker;->numPad:Landroid/view/View;

    .line 98
    sget v10, Lmobi/upod/timedurationpicker/R$id;->numPadMeasure:I

    invoke-virtual {p0, v10}, Lmobi/upod/timedurationpicker/TimeDurationPicker;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    iput-object v10, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker;->numPadMeasureButton:Landroid/widget/Button;

    const/16 v10, 0xb

    new-array v10, v10, [Landroid/widget/Button;

    .line 99
    sget v11, Lmobi/upod/timedurationpicker/R$id;->numPad1:I

    .line 100
    invoke-virtual {p0, v11}, Lmobi/upod/timedurationpicker/TimeDurationPicker;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    aput-object v11, v10, v0

    sget v11, Lmobi/upod/timedurationpicker/R$id;->numPad2:I

    invoke-virtual {p0, v11}, Lmobi/upod/timedurationpicker/TimeDurationPicker;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    aput-object v11, v10, v2

    sget v2, Lmobi/upod/timedurationpicker/R$id;->numPad3:I

    invoke-virtual {p0, v2}, Lmobi/upod/timedurationpicker/TimeDurationPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    aput-object v2, v10, v3

    sget v2, Lmobi/upod/timedurationpicker/R$id;->numPad4:I

    .line 101
    invoke-virtual {p0, v2}, Lmobi/upod/timedurationpicker/TimeDurationPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    aput-object v2, v10, v5

    sget v2, Lmobi/upod/timedurationpicker/R$id;->numPad5:I

    invoke-virtual {p0, v2}, Lmobi/upod/timedurationpicker/TimeDurationPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const/4 v3, 0x4

    aput-object v2, v10, v3

    sget v2, Lmobi/upod/timedurationpicker/R$id;->numPad6:I

    invoke-virtual {p0, v2}, Lmobi/upod/timedurationpicker/TimeDurationPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const/4 v3, 0x5

    aput-object v2, v10, v3

    sget v2, Lmobi/upod/timedurationpicker/R$id;->numPad7:I

    .line 102
    invoke-virtual {p0, v2}, Lmobi/upod/timedurationpicker/TimeDurationPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const/4 v3, 0x6

    aput-object v2, v10, v3

    sget v2, Lmobi/upod/timedurationpicker/R$id;->numPad8:I

    invoke-virtual {p0, v2}, Lmobi/upod/timedurationpicker/TimeDurationPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const/4 v3, 0x7

    aput-object v2, v10, v3

    sget v2, Lmobi/upod/timedurationpicker/R$id;->numPad9:I

    invoke-virtual {p0, v2}, Lmobi/upod/timedurationpicker/TimeDurationPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const/16 v3, 0x8

    aput-object v2, v10, v3

    sget v2, Lmobi/upod/timedurationpicker/R$id;->numPad0:I

    .line 103
    invoke-virtual {p0, v2}, Lmobi/upod/timedurationpicker/TimeDurationPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const/16 v3, 0x9

    aput-object v2, v10, v3

    sget v2, Lmobi/upod/timedurationpicker/R$id;->numPad00:I

    invoke-virtual {p0, v2}, Lmobi/upod/timedurationpicker/TimeDurationPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const/16 v3, 0xa

    aput-object v2, v10, v3

    iput-object v10, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker;->numPadButtons:[Landroid/widget/Button;

    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget-object v3, Lmobi/upod/timedurationpicker/R$styleable;->TimeDurationPicker:[I

    invoke-virtual {v2, p2, v3, p3, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 111
    :try_start_0
    sget p3, Lmobi/upod/timedurationpicker/R$styleable;->TimeDurationPicker_numPadButtonPadding:I

    invoke-direct {p0, p2, p3, v10}, Lmobi/upod/timedurationpicker/TimeDurationPicker;->applyPadding(Landroid/content/res/TypedArray;I[Landroid/view/View;)V

    .line 113
    sget p3, Lmobi/upod/timedurationpicker/R$styleable;->TimeDurationPicker_textAppearanceDisplay:I

    invoke-direct {p0, p1, p2, p3, v6}, Lmobi/upod/timedurationpicker/TimeDurationPicker;->applyTextAppearance(Landroid/content/Context;Landroid/content/res/TypedArray;I[Landroid/widget/TextView;)V

    .line 114
    sget p3, Lmobi/upod/timedurationpicker/R$styleable;->TimeDurationPicker_textAppearanceButton:I

    invoke-direct {p0, p1, p2, p3, v10}, Lmobi/upod/timedurationpicker/TimeDurationPicker;->applyTextAppearance(Landroid/content/Context;Landroid/content/res/TypedArray;I[Landroid/widget/TextView;)V

    .line 115
    sget p3, Lmobi/upod/timedurationpicker/R$styleable;->TimeDurationPicker_textAppearanceUnit:I

    invoke-direct {p0, p1, p2, p3, v7}, Lmobi/upod/timedurationpicker/TimeDurationPicker;->applyTextAppearance(Landroid/content/Context;Landroid/content/res/TypedArray;I[Landroid/widget/TextView;)V

    .line 117
    sget p1, Lmobi/upod/timedurationpicker/R$styleable;->TimeDurationPicker_backspaceIcon:I

    invoke-direct {p0, p2, p1, v4}, Lmobi/upod/timedurationpicker/TimeDurationPicker;->applyIcon(Landroid/content/res/TypedArray;ILandroid/widget/ImageView;)V

    .line 118
    sget p1, Lmobi/upod/timedurationpicker/R$styleable;->TimeDurationPicker_clearIcon:I

    invoke-direct {p0, p2, p1, v8}, Lmobi/upod/timedurationpicker/TimeDurationPicker;->applyIcon(Landroid/content/res/TypedArray;ILandroid/widget/ImageView;)V

    .line 120
    sget p1, Lmobi/upod/timedurationpicker/R$styleable;->TimeDurationPicker_separatorColor:I

    invoke-direct {p0, p2, p1, v9}, Lmobi/upod/timedurationpicker/TimeDurationPicker;->applyBackgroundColor(Landroid/content/res/TypedArray;ILandroid/view/View;)V

    .line 121
    sget p1, Lmobi/upod/timedurationpicker/R$styleable;->TimeDurationPicker_durationDisplayBackground:I

    invoke-direct {p0, p2, p1, v1}, Lmobi/upod/timedurationpicker/TimeDurationPicker;->applyBackgroundColor(Landroid/content/res/TypedArray;ILandroid/view/View;)V

    .line 123
    sget p1, Lmobi/upod/timedurationpicker/R$styleable;->TimeDurationPicker_timeUnits:I

    invoke-direct {p0, p2, p1}, Lmobi/upod/timedurationpicker/TimeDurationPicker;->applyUnits(Landroid/content/res/TypedArray;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 132
    invoke-direct {p0}, Lmobi/upod/timedurationpicker/TimeDurationPicker;->updateUnits()V

    .line 134
    new-instance p1, Lmobi/upod/timedurationpicker/TimeDurationPicker$1;

    invoke-direct {p1, p0}, Lmobi/upod/timedurationpicker/TimeDurationPicker$1;-><init>(Lmobi/upod/timedurationpicker/TimeDurationPicker;)V

    invoke-virtual {v4, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    new-instance p1, Lmobi/upod/timedurationpicker/TimeDurationPicker$2;

    invoke-direct {p1, p0}, Lmobi/upod/timedurationpicker/TimeDurationPicker$2;-><init>(Lmobi/upod/timedurationpicker/TimeDurationPicker;)V

    invoke-virtual {v8, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    new-instance p1, Lmobi/upod/timedurationpicker/TimeDurationPicker$3;

    invoke-direct {p1, p0}, Lmobi/upod/timedurationpicker/TimeDurationPicker$3;-><init>(Lmobi/upod/timedurationpicker/TimeDurationPicker;)V

    .line 153
    array-length p2, v10

    :goto_0
    if-ge v0, p2, :cond_0

    aget-object p3, v10, v0

    .line 154
    invoke-virtual {p3, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 160
    :cond_0
    invoke-direct {p0}, Lmobi/upod/timedurationpicker/TimeDurationPicker;->updateHoursMinutesSeconds()V

    return-void

    :catchall_0
    move-exception p1

    .line 125
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method static synthetic access$000(Lmobi/upod/timedurationpicker/TimeDurationPicker;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lmobi/upod/timedurationpicker/TimeDurationPicker;->onBackspace()V

    return-void
.end method

.method static synthetic access$100(Lmobi/upod/timedurationpicker/TimeDurationPicker;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lmobi/upod/timedurationpicker/TimeDurationPicker;->onClear()V

    return-void
.end method

.method static synthetic access$200(Lmobi/upod/timedurationpicker/TimeDurationPicker;Ljava/lang/CharSequence;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lmobi/upod/timedurationpicker/TimeDurationPicker;->onNumberClick(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private applyBackgroundColor(Landroid/content/res/TypedArray;ILandroid/view/View;)V
    .locals 1

    .line 315
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 316
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    .line 317
    invoke-virtual {p3, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method private applyIcon(Landroid/content/res/TypedArray;ILandroid/widget/ImageView;)V
    .locals 0

    .line 308
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 310
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method private varargs applyLeftMargin(I[Landroid/view/View;)V
    .locals 7

    .line 322
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .line 323
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 324
    iget v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget v5, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iget v6, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v3, p1, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 325
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private applyPadding(I[Landroid/view/View;)V
    .locals 3

    .line 293
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    invoke-virtual {v2, p1, p1, p1, p1}, Landroid/view/View;->setPadding(IIII)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private applyPadding(Landroid/content/res/TypedArray;I[Landroid/view/View;)V
    .locals 1

    const/4 v0, -0x1

    .line 286
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    if-le p1, v0, :cond_0

    .line 288
    invoke-direct {p0, p1, p3}, Lmobi/upod/timedurationpicker/TimeDurationPicker;->applyPadding(I[Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private applyTextAppearance(Landroid/content/Context;I[Landroid/widget/TextView;)V
    .locals 3

    .line 304
    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p3, v1

    invoke-virtual {v2, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private applyTextAppearance(Landroid/content/Context;Landroid/content/res/TypedArray;I[Landroid/widget/TextView;)V
    .locals 1

    const/4 v0, 0x0

    .line 297
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    if-eqz p2, :cond_0

    .line 299
    invoke-direct {p0, p1, p2, p4}, Lmobi/upod/timedurationpicker/TimeDurationPicker;->applyTextAppearance(Landroid/content/Context;I[Landroid/widget/TextView;)V

    :cond_0
    return-void
.end method

.method private applyUnits(Landroid/content/res/TypedArray;I)V
    .locals 1

    .line 173
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 174
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker;->timeUnits:I

    :cond_0
    return-void
.end method

.method private fireDurationChangeListener()V
    .locals 3

    .line 356
    iget-object v0, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker;->changeListener:Lmobi/upod/timedurationpicker/TimeDurationPicker$OnDurationChangedListener;

    if-eqz v0, :cond_0

    .line 357
    iget-object v1, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker;->input:Lmobi/upod/timedurationpicker/TimeDurationPicker$TimeDurationString;

    invoke-virtual {v1}, Lmobi/upod/timedurationpicker/TimeDurationPicker$TimeDurationString;->getDuration()J

    move-result-wide v1

    invoke-interface {v0, p0, v1, v2}, Lmobi/upod/timedurationpicker/TimeDurationPicker$OnDurationChangedListener;->onDurationChanged(Lmobi/upod/timedurationpicker/TimeDurationPicker;J)V

    :cond_0
    return-void
.end method

.method private onBackspace()V
    .locals 1

    .line 334
    iget-object v0, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker;->input:Lmobi/upod/timedurationpicker/TimeDurationPicker$TimeDurationString;

    invoke-virtual {v0}, Lmobi/upod/timedurationpicker/TimeDurationPicker$TimeDurationString;->popDigit()V

    .line 335
    invoke-direct {p0}, Lmobi/upod/timedurationpicker/TimeDurationPicker;->updateHoursMinutesSeconds()V

    return-void
.end method

.method private onClear()V
    .locals 1

    .line 339
    iget-object v0, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker;->input:Lmobi/upod/timedurationpicker/TimeDurationPicker$TimeDurationString;

    invoke-virtual {v0}, Lmobi/upod/timedurationpicker/TimeDurationPicker$TimeDurationString;->clear()V

    .line 340
    invoke-direct {p0}, Lmobi/upod/timedurationpicker/TimeDurationPicker;->updateHoursMinutesSeconds()V

    return-void
.end method

.method private onNumberClick(Ljava/lang/CharSequence;)V
    .locals 1

    .line 344
    iget-object v0, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker;->input:Lmobi/upod/timedurationpicker/TimeDurationPicker$TimeDurationString;

    invoke-virtual {v0, p1}, Lmobi/upod/timedurationpicker/TimeDurationPicker$TimeDurationString;->pushNumber(Ljava/lang/CharSequence;)V

    .line 345
    invoke-direct {p0}, Lmobi/upod/timedurationpicker/TimeDurationPicker;->updateHoursMinutesSeconds()V

    return-void
.end method

.method private updateHoursMinutesSeconds()V
    .locals 2

    .line 349
    iget-object v0, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker;->hoursView:Landroid/widget/TextView;

    iget-object v1, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker;->input:Lmobi/upod/timedurationpicker/TimeDurationPicker$TimeDurationString;

    invoke-virtual {v1}, Lmobi/upod/timedurationpicker/TimeDurationPicker$TimeDurationString;->getHoursString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    iget-object v0, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker;->minutesView:Landroid/widget/TextView;

    iget-object v1, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker;->input:Lmobi/upod/timedurationpicker/TimeDurationPicker$TimeDurationString;

    invoke-virtual {v1}, Lmobi/upod/timedurationpicker/TimeDurationPicker$TimeDurationString;->getMinutesString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    iget-object v0, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker;->secondsView:Landroid/widget/TextView;

    iget-object v1, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker;->input:Lmobi/upod/timedurationpicker/TimeDurationPicker$TimeDurationString;

    invoke-virtual {v1}, Lmobi/upod/timedurationpicker/TimeDurationPicker$TimeDurationString;->getSecondsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 352
    invoke-direct {p0}, Lmobi/upod/timedurationpicker/TimeDurationPicker;->fireDurationChangeListener()V

    return-void
.end method

.method private updateUnits()V
    .locals 5

    .line 164
    iget-object v0, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker;->hoursView:Landroid/widget/TextView;

    iget v1, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker;->timeUnits:I

    const/4 v2, 0x1

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 165
    iget-object v0, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker;->hoursLabel:Landroid/widget/TextView;

    iget v1, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker;->timeUnits:I

    if-eqz v1, :cond_3

    if-ne v1, v2, :cond_2

    goto :goto_2

    :cond_2
    const/16 v1, 0x8

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 166
    iget-object v0, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker;->secondsView:Landroid/widget/TextView;

    iget v1, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker;->timeUnits:I

    const/4 v2, 0x2

    if-eqz v1, :cond_5

    if-ne v1, v2, :cond_4

    goto :goto_4

    :cond_4
    const/16 v1, 0x8

    goto :goto_5

    :cond_5
    :goto_4
    const/4 v1, 0x0

    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 167
    iget-object v0, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker;->secondsLabel:Landroid/widget/TextView;

    iget v1, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker;->timeUnits:I

    if-eqz v1, :cond_6

    if-ne v1, v2, :cond_7

    :cond_6
    const/4 v3, 0x0

    :cond_7
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 169
    iget-object v0, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker;->input:Lmobi/upod/timedurationpicker/TimeDurationPicker$TimeDurationString;

    iget v1, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker;->timeUnits:I

    invoke-static {v0, v1}, Lmobi/upod/timedurationpicker/TimeDurationPicker$TimeDurationString;->access$300(Lmobi/upod/timedurationpicker/TimeDurationPicker$TimeDurationString;I)V

    return-void
.end method


# virtual methods
.method public getDuration()J
    .locals 2

    .line 187
    iget-object v0, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker;->input:Lmobi/upod/timedurationpicker/TimeDurationPicker$TimeDurationString;

    invoke-virtual {v0}, Lmobi/upod/timedurationpicker/TimeDurationPicker$TimeDurationString;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    sub-int/2addr p4, p2

    .line 423
    iget-object p1, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker;->displayRow:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    .line 424
    iget-object p2, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker;->displayRow:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    sub-int p3, p4, p1

    .line 425
    div-int/lit8 p3, p3, 0x2

    .line 426
    iget-object p5, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker;->displayRow:Landroid/view/View;

    const/4 v0, 0x0

    add-int/2addr p1, p3

    invoke-virtual {p5, p3, v0, p1, p2}, Landroid/view/View;->layout(IIII)V

    .line 429
    iget-object p1, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker;->numPad:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    .line 430
    iget-object p3, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker;->numPad:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    sub-int/2addr p4, p1

    .line 431
    div-int/lit8 p4, p4, 0x2

    .line 433
    iget-object p5, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker;->numPad:Landroid/view/View;

    add-int/2addr p1, p4

    add-int/2addr p3, p2

    invoke-virtual {p5, p4, p2, p1, p3}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    .line 367
    invoke-virtual {p0}, Lmobi/upod/timedurationpicker/TimeDurationPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmobi/upod/timedurationpicker/R$dimen;->touchable:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v1, 0x0

    .line 368
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 371
    iget-object v3, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker;->hoursView:Landroid/widget/TextView;

    invoke-virtual {v3, v2, v2}, Landroid/widget/TextView;->measure(II)V

    .line 372
    iget-object v3, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker;->unitLabelViews:[Landroid/widget/TextView;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    .line 373
    invoke-virtual {v3, v2, v2}, Landroid/widget/TextView;->measure(II)V

    .line 374
    iget-object v5, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker;->hoursView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x3

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    const v6, 0x3f99999a    # 1.2f

    mul-float v3, v3, v6

    float-to-int v3, v3

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    new-array v4, v4, [Landroid/view/View;

    .line 375
    iget-object v5, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker;->minutesView:Landroid/widget/TextView;

    aput-object v5, v4, v1

    const/4 v1, 0x1

    iget-object v5, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker;->secondsView:Landroid/widget/TextView;

    aput-object v5, v4, v1

    invoke-direct {p0, v3, v4}, Lmobi/upod/timedurationpicker/TimeDurationPicker;->applyLeftMargin(I[Landroid/view/View;)V

    .line 378
    iget-object v1, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker;->durationView:Landroid/view/View;

    invoke-virtual {v1, v2, v2}, Landroid/view/View;->measure(II)V

    .line 379
    iget-object v1, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker;->durationView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    mul-int/lit8 v3, v0, 0x2

    add-int/2addr v1, v3

    .line 380
    iget-object v3, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker;->durationView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 383
    iget-object v4, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker;->numPadMeasureButton:Landroid/widget/Button;

    invoke-virtual {v4, v2, v2}, Landroid/widget/Button;->measure(II)V

    .line 384
    iget-object v2, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker;->numPadMeasureButton:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getMeasuredHeight()I

    move-result v2

    iget-object v4, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker;->numPadMeasureButton:Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    mul-int/lit8 v2, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    .line 389
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int v4, v3, v0

    .line 393
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 394
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 395
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    .line 396
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    const/high16 v7, 0x40000000    # 2.0f

    if-ne p1, v7, :cond_0

    move v2, v5

    :cond_0
    if-ne p2, v7, :cond_1

    move v4, v6

    .line 402
    :cond_1
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 404
    iget-object p2, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker;->displayRow:Landroid/view/View;

    invoke-static {p1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/view/View;->measure(II)V

    .line 408
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p2

    sub-int/2addr v4, v3

    .line 409
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 410
    iget-object v1, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker;->numPad:Landroid/view/View;

    invoke-static {p2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v1, v2, v4}, Landroid/view/View;->measure(II)V

    .line 413
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/2addr v3, v0

    .line 415
    invoke-virtual {p0, p1, v3}, Lmobi/upod/timedurationpicker/TimeDurationPicker;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    .line 447
    instance-of v0, p1, Lmobi/upod/timedurationpicker/TimeDurationPicker$SavedState;

    if-eqz v0, :cond_0

    .line 450
    check-cast p1, Lmobi/upod/timedurationpicker/TimeDurationPicker$SavedState;

    .line 451
    invoke-virtual {p1}, Lmobi/upod/timedurationpicker/TimeDurationPicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 452
    iget-object v0, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker;->input:Lmobi/upod/timedurationpicker/TimeDurationPicker$TimeDurationString;

    invoke-virtual {v0}, Lmobi/upod/timedurationpicker/TimeDurationPicker$TimeDurationString;->clear()V

    .line 453
    iget-object v0, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker;->input:Lmobi/upod/timedurationpicker/TimeDurationPicker$TimeDurationString;

    iget-object p1, p1, Lmobi/upod/timedurationpicker/TimeDurationPicker$SavedState;->durationInput:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lmobi/upod/timedurationpicker/TimeDurationPicker$TimeDurationString;->pushNumber(Ljava/lang/CharSequence;)V

    .line 454
    invoke-direct {p0}, Lmobi/upod/timedurationpicker/TimeDurationPicker;->updateHoursMinutesSeconds()V

    return-void

    .line 448
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected state of class "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v2, Lmobi/upod/timedurationpicker/TimeDurationPicker$SavedState;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " but received state of class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 442
    new-instance v0, Lmobi/upod/timedurationpicker/TimeDurationPicker$SavedState;

    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    iget-object v2, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker;->input:Lmobi/upod/timedurationpicker/TimeDurationPicker$TimeDurationString;

    invoke-virtual {v2}, Lmobi/upod/timedurationpicker/TimeDurationPicker$TimeDurationString;->getInputString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lmobi/upod/timedurationpicker/TimeDurationPicker$SavedState;-><init>(Landroid/os/Parcelable;Ljava/lang/String;)V

    return-object v0
.end method

.method public setBackspaceIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 246
    iget-object v0, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker;->backspaceButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setButtonTextAppearance(I)V
    .locals 2

    .line 238
    invoke-virtual {p0}, Lmobi/upod/timedurationpicker/TimeDurationPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker;->numPadButtons:[Landroid/widget/Button;

    invoke-direct {p0, v0, p1, v1}, Lmobi/upod/timedurationpicker/TimeDurationPicker;->applyTextAppearance(Landroid/content/Context;I[Landroid/widget/TextView;)V

    return-void
.end method

.method public setClearIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 254
    iget-object v0, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker;->clearButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setDisplayTextAppearance(I)V
    .locals 2

    .line 222
    invoke-virtual {p0}, Lmobi/upod/timedurationpicker/TimeDurationPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker;->displayViews:[Landroid/widget/TextView;

    invoke-direct {p0, v0, p1, v1}, Lmobi/upod/timedurationpicker/TimeDurationPicker;->applyTextAppearance(Landroid/content/Context;I[Landroid/widget/TextView;)V

    return-void
.end method

.method public setDuration(J)V
    .locals 1

    .line 195
    iget-object v0, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker;->input:Lmobi/upod/timedurationpicker/TimeDurationPicker$TimeDurationString;

    invoke-virtual {v0, p1, p2}, Lmobi/upod/timedurationpicker/TimeDurationPicker$TimeDurationString;->setDuration(J)V

    .line 196
    invoke-direct {p0}, Lmobi/upod/timedurationpicker/TimeDurationPicker;->updateHoursMinutesSeconds()V

    return-void
.end method

.method public setDurationDisplayBackgroundColor(I)V
    .locals 1

    .line 270
    iget-object v0, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker;->displayRow:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public setNumPadButtonPadding(I)V
    .locals 1

    .line 278
    iget-object v0, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker;->numPadButtons:[Landroid/widget/Button;

    invoke-direct {p0, p1, v0}, Lmobi/upod/timedurationpicker/TimeDurationPicker;->applyPadding(I[Landroid/view/View;)V

    return-void
.end method

.method public setOnDurationChangeListener(Lmobi/upod/timedurationpicker/TimeDurationPicker$OnDurationChangedListener;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker;->changeListener:Lmobi/upod/timedurationpicker/TimeDurationPicker$OnDurationChangedListener;

    return-void
.end method

.method public setSeparatorColor(I)V
    .locals 1

    .line 262
    iget-object v0, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker;->separatorView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public setTimeUnits(I)V
    .locals 0

    .line 205
    iput p1, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker;->timeUnits:I

    .line 206
    invoke-direct {p0}, Lmobi/upod/timedurationpicker/TimeDurationPicker;->updateUnits()V

    return-void
.end method

.method public setUnitTextAppearance(I)V
    .locals 2

    .line 230
    invoke-virtual {p0}, Lmobi/upod/timedurationpicker/TimeDurationPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lmobi/upod/timedurationpicker/TimeDurationPicker;->unitLabelViews:[Landroid/widget/TextView;

    invoke-direct {p0, v0, p1, v1}, Lmobi/upod/timedurationpicker/TimeDurationPicker;->applyTextAppearance(Landroid/content/Context;I[Landroid/widget/TextView;)V

    return-void
.end method
