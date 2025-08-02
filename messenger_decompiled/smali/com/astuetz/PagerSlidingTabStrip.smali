.class public Lcom/astuetz/PagerSlidingTabStrip;
.super Landroid/widget/HorizontalScrollView;
.source "PagerSlidingTabStrip.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/astuetz/PagerSlidingTabStrip$SavedState;,
        Lcom/astuetz/PagerSlidingTabStrip$PagerAdapterObserver;,
        Lcom/astuetz/PagerSlidingTabStrip$PageListener;,
        Lcom/astuetz/PagerSlidingTabStrip$OnTabReselectedListener;,
        Lcom/astuetz/PagerSlidingTabStrip$CustomTabProvider;
    }
.end annotation


# static fields
.field private static final ATTRS:[I

.field private static final PADDING_INDEX:I = 0x3

.field private static final PADDING_LEFT_INDEX:I = 0x4

.field private static final PADDING_RIGHT_INDEX:I = 0x5

.field private static final TEXT_COLOR_INDEX:I = 0x2

.field private static final TEXT_COLOR_PRIMARY:I = 0x0

.field private static final TEXT_SIZE_INDEX:I = 0x1


# instance fields
.field private final adapterObserver:Lcom/astuetz/PagerSlidingTabStrip$PagerAdapterObserver;

.field private currentPosition:I

.field private currentPositionOffset:F

.field private defaultTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field public delegatePageListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field private dividerColor:I

.field private dividerPadding:I

.field private dividerPaint:Landroid/graphics/Paint;

.field private dividerWidth:I

.field private expandedTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field private firstTabGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private indicatorColor:I

.field private indicatorHeight:I

.field private isPaddingMiddle:Z

.field private lastScrollX:I

.field private locale:Ljava/util/Locale;

.field private paddingLeft:I

.field private paddingRight:I

.field private final pageListener:Lcom/astuetz/PagerSlidingTabStrip$PageListener;

.field private pager:Landroidx/viewpager/widget/ViewPager;

.field private rectPaint:Landroid/graphics/Paint;

.field private scrollOffset:I

.field private shouldExpand:Z

.field private tabBackgroundResId:I

.field private tabCount:I

.field private tabPadding:I

.field private tabReselectedListener:Lcom/astuetz/PagerSlidingTabStrip$OnTabReselectedListener;

.field private tabTextColor:Landroid/content/res/ColorStateList;

.field private tabTextColorSelected:Landroid/content/res/ColorStateList;

.field private tabTextSize:I

.field private tabTypeface:Landroid/graphics/Typeface;

.field private tabTypefaceSelectedStyle:I

.field private tabTypefaceStyle:I

.field private tabsContainer:Landroid/widget/LinearLayout;

.field private textAllCaps:Z

.field private textAlpha:I

.field private underlineColor:I

.field private underlineHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 61
    fill-array-data v0, :array_0

    sput-object v0, Lcom/astuetz/PagerSlidingTabStrip;->ATTRS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1010036
        0x1010095
        0x1010098
        0x10100d5
        0x10100d6
        0x10100d8
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 134
    invoke-direct {p0, p1, v0}, Lcom/astuetz/PagerSlidingTabStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 138
    invoke-direct {p0, p1, p2, v0}, Lcom/astuetz/PagerSlidingTabStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .line 142
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    new-instance p3, Lcom/astuetz/PagerSlidingTabStrip$PagerAdapterObserver;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lcom/astuetz/PagerSlidingTabStrip$PagerAdapterObserver;-><init>(Lcom/astuetz/PagerSlidingTabStrip;Lcom/astuetz/PagerSlidingTabStrip$1;)V

    iput-object p3, p0, Lcom/astuetz/PagerSlidingTabStrip;->adapterObserver:Lcom/astuetz/PagerSlidingTabStrip$PagerAdapterObserver;

    .line 84
    new-instance p3, Lcom/astuetz/PagerSlidingTabStrip$PageListener;

    invoke-direct {p3, p0, v0}, Lcom/astuetz/PagerSlidingTabStrip$PageListener;-><init>(Lcom/astuetz/PagerSlidingTabStrip;Lcom/astuetz/PagerSlidingTabStrip$1;)V

    iput-object p3, p0, Lcom/astuetz/PagerSlidingTabStrip;->pageListener:Lcom/astuetz/PagerSlidingTabStrip$PageListener;

    .line 85
    iput-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabReselectedListener:Lcom/astuetz/PagerSlidingTabStrip$OnTabReselectedListener;

    const/4 p3, 0x0

    .line 93
    iput p3, p0, Lcom/astuetz/PagerSlidingTabStrip;->currentPosition:I

    const/4 v1, 0x0

    .line 94
    iput v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->currentPositionOffset:F

    const/4 v1, 0x2

    .line 100
    iput v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->indicatorHeight:I

    .line 102
    iput p3, p0, Lcom/astuetz/PagerSlidingTabStrip;->underlineHeight:I

    .line 105
    iput p3, p0, Lcom/astuetz/PagerSlidingTabStrip;->dividerWidth:I

    .line 106
    iput p3, p0, Lcom/astuetz/PagerSlidingTabStrip;->dividerPadding:I

    const/16 v2, 0xc

    .line 109
    iput v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabPadding:I

    const/16 v2, 0xe

    .line 110
    iput v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabTextSize:I

    .line 111
    iput-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabTextColor:Landroid/content/res/ColorStateList;

    .line 112
    iput-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabTextColorSelected:Landroid/content/res/ColorStateList;

    const/16 v2, 0x96

    .line 113
    iput v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->textAlpha:I

    .line 115
    iput p3, p0, Lcom/astuetz/PagerSlidingTabStrip;->paddingLeft:I

    .line 116
    iput p3, p0, Lcom/astuetz/PagerSlidingTabStrip;->paddingRight:I

    .line 118
    iput-boolean p3, p0, Lcom/astuetz/PagerSlidingTabStrip;->shouldExpand:Z

    const/4 v2, 0x1

    .line 119
    iput-boolean v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->textAllCaps:Z

    .line 120
    iput-boolean p3, p0, Lcom/astuetz/PagerSlidingTabStrip;->isPaddingMiddle:Z

    .line 122
    iput-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabTypeface:Landroid/graphics/Typeface;

    .line 123
    iput v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabTypefaceStyle:I

    .line 124
    iput v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabTypefaceSelectedStyle:I

    .line 127
    iput p3, p0, Lcom/astuetz/PagerSlidingTabStrip;->lastScrollX:I

    .line 129
    sget v0, Lcom/astuetz/pagerslidingtabstrip/R$drawable;->psts_background_tab:I

    iput v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabBackgroundResId:I

    .line 377
    new-instance v0, Lcom/astuetz/PagerSlidingTabStrip$3;

    invoke-direct {v0, p0}, Lcom/astuetz/PagerSlidingTabStrip$3;-><init>(Lcom/astuetz/PagerSlidingTabStrip;)V

    iput-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->firstTabGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 143
    invoke-virtual {p0, v2}, Lcom/astuetz/PagerSlidingTabStrip;->setFillViewport(Z)V

    .line 144
    invoke-virtual {p0, p3}, Lcom/astuetz/PagerSlidingTabStrip;->setWillNotDraw(Z)V

    .line 145
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    .line 146
    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 147
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/astuetz/PagerSlidingTabStrip;->addView(Landroid/view/View;)V

    .line 150
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 151
    iget v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->scrollOffset:I

    int-to-float v3, v3

    invoke-static {v2, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->scrollOffset:I

    .line 152
    iget v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->indicatorHeight:I

    int-to-float v3, v3

    invoke-static {v2, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->indicatorHeight:I

    .line 153
    iget v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->underlineHeight:I

    int-to-float v3, v3

    invoke-static {v2, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->underlineHeight:I

    .line 154
    iget v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->dividerPadding:I

    int-to-float v3, v3

    invoke-static {v2, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->dividerPadding:I

    .line 155
    iget v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabPadding:I

    int-to-float v3, v3

    invoke-static {v2, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabPadding:I

    .line 156
    iget v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->dividerWidth:I

    int-to-float v3, v3

    invoke-static {v2, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->dividerWidth:I

    .line 157
    iget v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabTextSize:I

    int-to-float v3, v3

    invoke-static {v1, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabTextSize:I

    .line 160
    sget-object v0, Lcom/astuetz/PagerSlidingTabStrip;->ATTRS:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 161
    iget v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabTextSize:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabTextSize:I

    .line 162
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    const v3, 0x106000b

    .line 163
    invoke-virtual {v0, p3, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 165
    iput v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->underlineColor:I

    .line 166
    iput v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->dividerColor:I

    .line 167
    iput v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->indicatorColor:I

    const/4 v5, 0x3

    .line 168
    invoke-virtual {v0, v5, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    if-lez v5, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    const/4 v6, 0x4

    .line 169
    invoke-virtual {v0, v6, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    :goto_0
    iput v6, p0, Lcom/astuetz/PagerSlidingTabStrip;->paddingLeft:I

    if-lez v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x5

    .line 170
    invoke-virtual {v0, v5, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    :goto_1
    iput v5, p0, Lcom/astuetz/PagerSlidingTabStrip;->paddingRight:I

    .line 171
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 174
    sget-object v0, Lcom/astuetz/pagerslidingtabstrip/R$styleable;->PagerSlidingTabStrip:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 175
    sget p2, Lcom/astuetz/pagerslidingtabstrip/R$styleable;->PagerSlidingTabStrip_pstsIndicatorColor:I

    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->indicatorColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/astuetz/PagerSlidingTabStrip;->indicatorColor:I

    .line 176
    sget p2, Lcom/astuetz/pagerslidingtabstrip/R$styleable;->PagerSlidingTabStrip_pstsUnderlineColor:I

    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->underlineColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/astuetz/PagerSlidingTabStrip;->underlineColor:I

    .line 177
    sget p2, Lcom/astuetz/pagerslidingtabstrip/R$styleable;->PagerSlidingTabStrip_pstsDividerColor:I

    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->dividerColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/astuetz/PagerSlidingTabStrip;->dividerColor:I

    .line 178
    sget p2, Lcom/astuetz/pagerslidingtabstrip/R$styleable;->PagerSlidingTabStrip_pstsDividerWidth:I

    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->dividerWidth:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/astuetz/PagerSlidingTabStrip;->dividerWidth:I

    .line 179
    sget p2, Lcom/astuetz/pagerslidingtabstrip/R$styleable;->PagerSlidingTabStrip_pstsIndicatorHeight:I

    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->indicatorHeight:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/astuetz/PagerSlidingTabStrip;->indicatorHeight:I

    .line 180
    sget p2, Lcom/astuetz/pagerslidingtabstrip/R$styleable;->PagerSlidingTabStrip_pstsUnderlineHeight:I

    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->underlineHeight:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/astuetz/PagerSlidingTabStrip;->underlineHeight:I

    .line 181
    sget p2, Lcom/astuetz/pagerslidingtabstrip/R$styleable;->PagerSlidingTabStrip_pstsDividerPadding:I

    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->dividerPadding:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/astuetz/PagerSlidingTabStrip;->dividerPadding:I

    .line 182
    sget p2, Lcom/astuetz/pagerslidingtabstrip/R$styleable;->PagerSlidingTabStrip_pstsTabPaddingLeftRight:I

    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabPadding:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabPadding:I

    .line 183
    sget p2, Lcom/astuetz/pagerslidingtabstrip/R$styleable;->PagerSlidingTabStrip_pstsTabBackground:I

    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabBackgroundResId:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabBackgroundResId:I

    .line 184
    sget p2, Lcom/astuetz/pagerslidingtabstrip/R$styleable;->PagerSlidingTabStrip_pstsShouldExpand:I

    iget-boolean v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->shouldExpand:Z

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/astuetz/PagerSlidingTabStrip;->shouldExpand:Z

    .line 185
    sget p2, Lcom/astuetz/pagerslidingtabstrip/R$styleable;->PagerSlidingTabStrip_pstsScrollOffset:I

    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->scrollOffset:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/astuetz/PagerSlidingTabStrip;->scrollOffset:I

    .line 186
    sget p2, Lcom/astuetz/pagerslidingtabstrip/R$styleable;->PagerSlidingTabStrip_pstsTextAllCaps:I

    iget-boolean v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->textAllCaps:Z

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/astuetz/PagerSlidingTabStrip;->textAllCaps:Z

    .line 187
    sget p2, Lcom/astuetz/pagerslidingtabstrip/R$styleable;->PagerSlidingTabStrip_pstsPaddingMiddle:I

    iget-boolean v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->isPaddingMiddle:Z

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/astuetz/PagerSlidingTabStrip;->isPaddingMiddle:Z

    .line 188
    sget p2, Lcom/astuetz/pagerslidingtabstrip/R$styleable;->PagerSlidingTabStrip_pstsTextStyle:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabTypefaceStyle:I

    .line 189
    sget p2, Lcom/astuetz/pagerslidingtabstrip/R$styleable;->PagerSlidingTabStrip_pstsTextSelectedStyle:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabTypefaceSelectedStyle:I

    .line 190
    sget p2, Lcom/astuetz/pagerslidingtabstrip/R$styleable;->PagerSlidingTabStrip_pstsTextColorSelected:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabTextColorSelected:Landroid/content/res/ColorStateList;

    .line 191
    sget p2, Lcom/astuetz/pagerslidingtabstrip/R$styleable;->PagerSlidingTabStrip_pstsTextAlpha:I

    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->textAlpha:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/astuetz/PagerSlidingTabStrip;->textAlpha:I

    .line 192
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    if-nez v1, :cond_2

    .line 194
    iget p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->textAlpha:I

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result p2

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v0

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    invoke-static {p1, p2, v0, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/astuetz/PagerSlidingTabStrip;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    :cond_2
    iput-object v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabTextColor:Landroid/content/res/ColorStateList;

    .line 199
    iget-object p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabTextColorSelected:Landroid/content/res/ColorStateList;

    if-nez p1, :cond_3

    invoke-direct {p0, v3}, Lcom/astuetz/PagerSlidingTabStrip;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    :cond_3
    iput-object p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabTextColorSelected:Landroid/content/res/ColorStateList;

    .line 201
    invoke-direct {p0}, Lcom/astuetz/PagerSlidingTabStrip;->setMarginBottomTabContainer()V

    .line 203
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    .line 204
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 205
    iget-object p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 207
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->dividerPaint:Landroid/graphics/Paint;

    .line 208
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 209
    iget-object p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->dividerPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/astuetz/PagerSlidingTabStrip;->dividerWidth:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 211
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x2

    invoke-direct {p1, p2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->defaultTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 212
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-direct {p1, p3, v4, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iput-object p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->expandedTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 214
    iget-object p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->locale:Ljava/util/Locale;

    if-nez p1, :cond_4

    .line 215
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->locale:Ljava/util/Locale;

    :cond_4
    return-void
.end method

.method static synthetic access$1000(Lcom/astuetz/PagerSlidingTabStrip;)I
    .locals 0

    .line 50
    iget p0, p0, Lcom/astuetz/PagerSlidingTabStrip;->currentPosition:I

    return p0
.end method

.method static synthetic access$1002(Lcom/astuetz/PagerSlidingTabStrip;I)I
    .locals 0

    .line 50
    iput p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->currentPosition:I

    return p1
.end method

.method static synthetic access$1102(Lcom/astuetz/PagerSlidingTabStrip;F)F
    .locals 0

    .line 50
    iput p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->currentPositionOffset:F

    return p1
.end method

.method static synthetic access$1200(Lcom/astuetz/PagerSlidingTabStrip;II)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/astuetz/PagerSlidingTabStrip;->scrollToChild(II)V

    return-void
.end method

.method static synthetic access$1300(Lcom/astuetz/PagerSlidingTabStrip;I)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/astuetz/PagerSlidingTabStrip;->updateSelection(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/astuetz/PagerSlidingTabStrip;)I
    .locals 0

    .line 50
    iget p0, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabCount:I

    return p0
.end method

.method static synthetic access$1500(Lcom/astuetz/PagerSlidingTabStrip;Landroid/view/View;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/astuetz/PagerSlidingTabStrip;->selected(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$200(Lcom/astuetz/PagerSlidingTabStrip;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/astuetz/PagerSlidingTabStrip;->pager:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/astuetz/PagerSlidingTabStrip;)Landroid/widget/LinearLayout;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$400(Lcom/astuetz/PagerSlidingTabStrip;Landroid/view/View;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/astuetz/PagerSlidingTabStrip;->notSelected(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$500(Lcom/astuetz/PagerSlidingTabStrip;)Lcom/astuetz/PagerSlidingTabStrip$OnTabReselectedListener;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabReselectedListener:Lcom/astuetz/PagerSlidingTabStrip$OnTabReselectedListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/astuetz/PagerSlidingTabStrip;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/astuetz/PagerSlidingTabStrip;->isPaddingMiddle:Z

    return p0
.end method

.method static synthetic access$700(Lcom/astuetz/PagerSlidingTabStrip;)I
    .locals 0

    .line 50
    iget p0, p0, Lcom/astuetz/PagerSlidingTabStrip;->paddingLeft:I

    return p0
.end method

.method static synthetic access$702(Lcom/astuetz/PagerSlidingTabStrip;I)I
    .locals 0

    .line 50
    iput p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->paddingLeft:I

    return p1
.end method

.method static synthetic access$800(Lcom/astuetz/PagerSlidingTabStrip;)I
    .locals 0

    .line 50
    iget p0, p0, Lcom/astuetz/PagerSlidingTabStrip;->paddingRight:I

    return p0
.end method

.method static synthetic access$802(Lcom/astuetz/PagerSlidingTabStrip;I)I
    .locals 0

    .line 50
    iput p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->paddingRight:I

    return p1
.end method

.method static synthetic access$900(Lcom/astuetz/PagerSlidingTabStrip;)I
    .locals 0

    .line 50
    iget p0, p0, Lcom/astuetz/PagerSlidingTabStrip;->scrollOffset:I

    return p0
.end method

.method static synthetic access$902(Lcom/astuetz/PagerSlidingTabStrip;I)I
    .locals 0

    .line 50
    iput p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->scrollOffset:I

    return p1
.end method

.method private addTab(ILjava/lang/CharSequence;Landroid/view/View;)V
    .locals 1

    .line 273
    sget v0, Lcom/astuetz/pagerslidingtabstrip/R$id;->psts_tab_title:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 275
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 p2, 0x1

    .line 278
    invoke-virtual {p3, p2}, Landroid/view/View;->setFocusable(Z)V

    .line 279
    new-instance p2, Lcom/astuetz/PagerSlidingTabStrip$2;

    invoke-direct {p2, p0, p1}, Lcom/astuetz/PagerSlidingTabStrip$2;-><init>(Lcom/astuetz/PagerSlidingTabStrip;I)V

    invoke-virtual {p3, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    iget-object p2, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    iget-boolean v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->shouldExpand:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->expandedTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->defaultTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    :goto_0
    invoke-virtual {p2, p3, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private getColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 4

    .line 741
    new-instance v0, Landroid/content/res/ColorStateList;

    const/4 v1, 0x1

    new-array v1, v1, [[I

    const/4 v2, 0x0

    new-array v3, v2, [I

    aput-object v3, v1, v2

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v0
.end method

.method private getIndicatorCoordinates()Landroidx/core/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 342
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->currentPosition:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 343
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    .line 344
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v0, v0

    .line 347
    iget v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->currentPositionOffset:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    iget v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->currentPosition:I

    iget v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabCount:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_0

    .line 349
    iget-object v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 350
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    .line 351
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    .line 353
    iget v4, p0, Lcom/astuetz/PagerSlidingTabStrip;->currentPositionOffset:F

    mul-float v3, v3, v4

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v6, v5, v4

    mul-float v6, v6, v1

    add-float v1, v3, v6

    mul-float v2, v2, v4

    sub-float/2addr v5, v4

    mul-float v5, v5, v0

    add-float v0, v2, v5

    .line 356
    :cond_0
    new-instance v2, Landroidx/core/util/Pair;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method private notSelected(Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 500
    sget v0, Lcom/astuetz/pagerslidingtabstrip/R$id;->psts_tab_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 502
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabTypeface:Landroid/graphics/Typeface;

    iget v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabTypefaceStyle:I

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 503
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method private scrollToChild(II)V
    .locals 1

    .line 318
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabCount:I

    if-nez v0, :cond_0

    return-void

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    add-int/2addr v0, p2

    if-gtz p1, :cond_1

    if-lez p2, :cond_2

    .line 329
    :cond_1
    iget p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->scrollOffset:I

    sub-int/2addr v0, p1

    .line 330
    invoke-direct {p0}, Lcom/astuetz/PagerSlidingTabStrip;->getIndicatorCoordinates()Landroidx/core/util/Pair;

    move-result-object p1

    int-to-float p2, v0

    .line 331
    iget-object v0, p1, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object p1, p1, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    sub-float/2addr v0, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v0, p1

    add-float/2addr p2, v0

    float-to-int v0, p2

    .line 334
    :cond_2
    iget p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->lastScrollX:I

    if-eq v0, p1, :cond_3

    .line 335
    iput v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->lastScrollX:I

    const/4 p1, 0x0

    .line 336
    invoke-virtual {p0, v0, p1}, Lcom/astuetz/PagerSlidingTabStrip;->scrollTo(II)V

    :cond_3
    return-void
.end method

.method private selected(Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 510
    sget v0, Lcom/astuetz/pagerslidingtabstrip/R$id;->psts_tab_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 512
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabTypeface:Landroid/graphics/Typeface;

    iget v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabTypefaceSelectedStyle:I

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 513
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabTextColorSelected:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method private setMarginBottomTabContainer()V
    .locals 5

    .line 220
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 221
    iget v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->indicatorHeight:I

    iget v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->underlineHeight:I

    if-lt v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    .line 222
    :goto_0
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 223
    iget-object v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateSelection(I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 486
    :goto_0
    iget v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabCount:I

    if-ge v1, v2, :cond_2

    .line 487
    iget-object v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v1, p1, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 489
    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    if-eqz v3, :cond_1

    .line 491
    invoke-direct {p0, v2}, Lcom/astuetz/PagerSlidingTabStrip;->selected(Landroid/view/View;)V

    goto :goto_2

    .line 493
    :cond_1
    invoke-direct {p0, v2}, Lcom/astuetz/PagerSlidingTabStrip;->notSelected(Landroid/view/View;)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private updateTabStyles()V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 296
    :goto_0
    iget v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabCount:I

    if-ge v1, v2, :cond_1

    .line 297
    iget-object v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 298
    iget v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabBackgroundResId:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 299
    iget v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabPadding:I

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    iget v5, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabPadding:I

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 300
    sget v3, Lcom/astuetz/pagerslidingtabstrip/R$id;->psts_tab_title:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 303
    iget v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabTextSize:I

    int-to-float v3, v3

    invoke-virtual {v2, v0, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 306
    iget-boolean v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->textAllCaps:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    .line 308
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAllCaps(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getDividerColor()I
    .locals 1

    .line 622
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->dividerColor:I

    return v0
.end method

.method public getDividerPadding()I
    .locals 1

    .line 634
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->dividerPadding:I

    return v0
.end method

.method public getDividerWidth()I
    .locals 1

    .line 626
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->dividerWidth:I

    return v0
.end method

.method public getIndicatorColor()I
    .locals 1

    .line 610
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->indicatorColor:I

    return v0
.end method

.method public getIndicatorHeight()I
    .locals 1

    .line 614
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->indicatorHeight:I

    return v0
.end method

.method public getScrollOffset()I
    .locals 1

    .line 638
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->scrollOffset:I

    return v0
.end method

.method public getShouldExpand()Z
    .locals 1

    .line 642
    iget-boolean v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->shouldExpand:Z

    return v0
.end method

.method public getTabBackground()I
    .locals 1

    .line 658
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabBackgroundResId:I

    return v0
.end method

.method public getTabPaddingLeftRight()I
    .locals 1

    .line 662
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabPadding:I

    return v0
.end method

.method public getTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 654
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTextSize()I
    .locals 1

    .line 646
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabTextSize:I

    return v0
.end method

.method public getUnderlineColor()I
    .locals 1

    .line 618
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->underlineColor:I

    return v0
.end method

.method public getUnderlineHeight()I
    .locals 1

    .line 630
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->underlineHeight:I

    return v0
.end method

.method public isTextAllCaps()Z
    .locals 1

    .line 650
    iget-boolean v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->textAllCaps:Z

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 4

    .line 239
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 240
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabCount:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 242
    :goto_0
    iget v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabCount:I

    if-ge v1, v2, :cond_1

    .line 244
    iget-object v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v2}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v2

    instance-of v2, v2, Lcom/astuetz/PagerSlidingTabStrip$CustomTabProvider;

    if-eqz v2, :cond_0

    .line 245
    iget-object v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v2}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v2

    check-cast v2, Lcom/astuetz/PagerSlidingTabStrip$CustomTabProvider;

    invoke-interface {v2, p0, v1}, Lcom/astuetz/PagerSlidingTabStrip$CustomTabProvider;->getCustomTabView(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v2

    goto :goto_1

    .line 247
    :cond_0
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/astuetz/pagerslidingtabstrip/R$layout;->psts_tab:I

    invoke-virtual {v2, v3, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 250
    :goto_1
    iget-object v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v3}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroidx/viewpager/widget/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 252
    invoke-direct {p0, v1, v3, v2}, Lcom/astuetz/PagerSlidingTabStrip;->addTab(ILjava/lang/CharSequence;Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 255
    :cond_1
    invoke-direct {p0}, Lcom/astuetz/PagerSlidingTabStrip;->updateTabStyles()V

    .line 256
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/astuetz/PagerSlidingTabStrip$1;

    invoke-direct {v1, p0}, Lcom/astuetz/PagerSlidingTabStrip$1;-><init>(Lcom/astuetz/PagerSlidingTabStrip;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 538
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 539
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->pager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->adapterObserver:Lcom/astuetz/PagerSlidingTabStrip$PagerAdapterObserver;

    invoke-virtual {v0}, Lcom/astuetz/PagerSlidingTabStrip$PagerAdapterObserver;->isAttached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->adapterObserver:Lcom/astuetz/PagerSlidingTabStrip$PagerAdapterObserver;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 542
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->adapterObserver:Lcom/astuetz/PagerSlidingTabStrip$PagerAdapterObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/astuetz/PagerSlidingTabStrip$PagerAdapterObserver;->setAttached(Z)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 549
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 550
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->pager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->adapterObserver:Lcom/astuetz/PagerSlidingTabStrip$PagerAdapterObserver;

    invoke-virtual {v0}, Lcom/astuetz/PagerSlidingTabStrip$PagerAdapterObserver;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->adapterObserver:Lcom/astuetz/PagerSlidingTabStrip$PagerAdapterObserver;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 553
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->adapterObserver:Lcom/astuetz/PagerSlidingTabStrip$PagerAdapterObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/astuetz/PagerSlidingTabStrip$PagerAdapterObserver;->setAttached(Z)V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 405
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onDraw(Landroid/graphics/Canvas;)V

    .line 406
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabCount:I

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 410
    :cond_0
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->getHeight()I

    move-result v0

    .line 412
    iget-object v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->indicatorColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 413
    invoke-direct {p0}, Lcom/astuetz/PagerSlidingTabStrip;->getIndicatorCoordinates()Landroidx/core/util/Pair;

    move-result-object v1

    .line 414
    iget-object v2, v1, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->paddingLeft:I

    int-to-float v3, v3

    add-float v5, v2, v3

    iget v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->indicatorHeight:I

    sub-int v2, v0, v2

    int-to-float v6, v2

    iget-object v1, v1, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->paddingLeft:I

    int-to-float v2, v2

    add-float v7, v1, v2

    int-to-float v12, v0

    iget-object v9, p0, Lcom/astuetz/PagerSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    move-object v4, p1

    move v8, v12

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 416
    iget-object v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->underlineColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 417
    iget v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->paddingLeft:I

    int-to-float v9, v1

    iget v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->underlineHeight:I

    sub-int v1, v0, v1

    int-to-float v10, v1

    iget-object v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->paddingRight:I

    add-int/2addr v1, v2

    int-to-float v11, v1

    iget-object v13, p0, Lcom/astuetz/PagerSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    move-object v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 419
    iget v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->dividerWidth:I

    if-eqz v1, :cond_1

    .line 420
    iget-object v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->dividerPaint:Landroid/graphics/Paint;

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 421
    iget-object v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->dividerPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->dividerColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x0

    .line 422
    :goto_0
    iget v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 423
    iget-object v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 424
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v5, v3

    iget v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->dividerPadding:I

    int-to-float v6, v3

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v7, v2

    iget v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->dividerPadding:I

    sub-int v2, v0, v2

    int-to-float v8, v2

    iget-object v9, p0, Lcom/astuetz/PagerSlidingTabStrip;->dividerPaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .line 361
    iget-boolean v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->isPaddingMiddle:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->paddingLeft:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->paddingRight:I

    if-lez v0, :cond_1

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->getWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setMinimumWidth(I)V

    .line 365
    invoke-virtual {p0, v1}, Lcom/astuetz/PagerSlidingTabStrip;->setClipToPadding(Z)V

    .line 368
    :cond_1
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 369
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->firstTabGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 374
    :cond_2
    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 560
    check-cast p1, Lcom/astuetz/PagerSlidingTabStrip$SavedState;

    .line 561
    invoke-virtual {p1}, Lcom/astuetz/PagerSlidingTabStrip$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/HorizontalScrollView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 562
    iget p1, p1, Lcom/astuetz/PagerSlidingTabStrip$SavedState;->currentPosition:I

    iput p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->currentPosition:I

    if-eqz p1, :cond_0

    .line 563
    iget-object p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    if-lez p1, :cond_0

    .line 564
    iget-object p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/astuetz/PagerSlidingTabStrip;->notSelected(Landroid/view/View;)V

    .line 565
    iget-object p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->currentPosition:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/astuetz/PagerSlidingTabStrip;->selected(Landroid/view/View;)V

    .line 567
    :cond_0
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->requestLayout()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 572
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 573
    new-instance v1, Lcom/astuetz/PagerSlidingTabStrip$SavedState;

    invoke-direct {v1, v0}, Lcom/astuetz/PagerSlidingTabStrip$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 574
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->currentPosition:I

    iput v0, v1, Lcom/astuetz/PagerSlidingTabStrip$SavedState;->currentPosition:I

    return-object v1
.end method

.method public setAllCaps(Z)V
    .locals 0

    .line 728
    iput-boolean p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->textAllCaps:Z

    return-void
.end method

.method public setDividerColor(I)V
    .locals 0

    .line 691
    iput p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->dividerColor:I

    .line 692
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->invalidate()V

    return-void
.end method

.method public setDividerColorResource(I)V
    .locals 1

    .line 696
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->dividerColor:I

    .line 697
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->invalidate()V

    return-void
.end method

.method public setDividerPadding(I)V
    .locals 0

    .line 711
    iput p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->dividerPadding:I

    .line 712
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->invalidate()V

    return-void
.end method

.method public setDividerWidth(I)V
    .locals 0

    .line 701
    iput p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->dividerWidth:I

    .line 702
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->invalidate()V

    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 0

    .line 666
    iput p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->indicatorColor:I

    .line 667
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->invalidate()V

    return-void
.end method

.method public setIndicatorColorResource(I)V
    .locals 1

    .line 671
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->indicatorColor:I

    .line 672
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->invalidate()V

    return-void
.end method

.method public setIndicatorHeight(I)V
    .locals 0

    .line 676
    iput p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->indicatorHeight:I

    .line 677
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->invalidate()V

    return-void
.end method

.method public setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .locals 0

    .line 434
    iput-object p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->delegatePageListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    return-void
.end method

.method public setOnTabReselectedListener(Lcom/astuetz/PagerSlidingTabStrip$OnTabReselectedListener;)V
    .locals 0

    .line 430
    iput-object p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabReselectedListener:Lcom/astuetz/PagerSlidingTabStrip$OnTabReselectedListener;

    return-void
.end method

.method public setScrollOffset(I)V
    .locals 0

    .line 716
    iput p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->scrollOffset:I

    .line 717
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->invalidate()V

    return-void
.end method

.method public setShouldExpand(Z)V
    .locals 0

    .line 721
    iput-boolean p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->shouldExpand:Z

    .line 722
    iget-object p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->pager:Landroidx/viewpager/widget/ViewPager;

    if-eqz p1, :cond_0

    .line 723
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setTabBackground(I)V
    .locals 0

    .line 764
    iput p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabBackgroundResId:I

    return-void
.end method

.method public setTabPaddingLeftRight(I)V
    .locals 0

    .line 768
    iput p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabPadding:I

    .line 769
    invoke-direct {p0}, Lcom/astuetz/PagerSlidingTabStrip;->updateTabStyles()V

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    .line 737
    invoke-direct {p0, p1}, Lcom/astuetz/PagerSlidingTabStrip;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/astuetz/PagerSlidingTabStrip;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 745
    iput-object p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabTextColor:Landroid/content/res/ColorStateList;

    .line 746
    invoke-direct {p0}, Lcom/astuetz/PagerSlidingTabStrip;->updateTabStyles()V

    return-void
.end method

.method public setTextColorResource(I)V
    .locals 1

    .line 750
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/astuetz/PagerSlidingTabStrip;->setTextColor(I)V

    return-void
.end method

.method public setTextColorStateListResource(I)V
    .locals 1

    .line 754
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/astuetz/PagerSlidingTabStrip;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTextSize(I)V
    .locals 0

    .line 732
    iput p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabTextSize:I

    .line 733
    invoke-direct {p0}, Lcom/astuetz/PagerSlidingTabStrip;->updateTabStyles()V

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;I)V
    .locals 0

    .line 758
    iput-object p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabTypeface:Landroid/graphics/Typeface;

    .line 759
    iput p2, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabTypefaceSelectedStyle:I

    .line 760
    invoke-direct {p0}, Lcom/astuetz/PagerSlidingTabStrip;->updateTabStyles()V

    return-void
.end method

.method public setUnderlineColor(I)V
    .locals 0

    .line 681
    iput p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->underlineColor:I

    .line 682
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->invalidate()V

    return-void
.end method

.method public setUnderlineColorResource(I)V
    .locals 1

    .line 686
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->underlineColor:I

    .line 687
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->invalidate()V

    return-void
.end method

.method public setUnderlineHeight(I)V
    .locals 0

    .line 706
    iput p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->underlineHeight:I

    .line 707
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->invalidate()V

    return-void
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 1

    .line 227
    iput-object p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->pager:Landroidx/viewpager/widget/ViewPager;

    .line 228
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->pageListener:Lcom/astuetz/PagerSlidingTabStrip$PageListener;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 233
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->adapterObserver:Lcom/astuetz/PagerSlidingTabStrip$PagerAdapterObserver;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 234
    iget-object p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->adapterObserver:Lcom/astuetz/PagerSlidingTabStrip$PagerAdapterObserver;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/astuetz/PagerSlidingTabStrip$PagerAdapterObserver;->setAttached(Z)V

    .line 235
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->notifyDataSetChanged()V

    return-void

    .line 229
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ViewPager does not have adapter instance."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
