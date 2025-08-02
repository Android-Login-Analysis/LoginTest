.class public abstract Lorg/thoughtcrime/securesms/components/viewpager/ExtendedOnPageChangedListener;
.super Ljava/lang/Object;
.source "ExtendedOnPageChangedListener.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# instance fields
.field private currentPage:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lorg/thoughtcrime/securesms/components/viewpager/ExtendedOnPageChangedListener;->currentPage:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 17
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/viewpager/ExtendedOnPageChangedListener;->currentPage:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/viewpager/ExtendedOnPageChangedListener;->currentPage:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/components/viewpager/ExtendedOnPageChangedListener;->onPageUnselected(I)V

    .line 18
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/viewpager/ExtendedOnPageChangedListener;->currentPage:Ljava/lang/Integer;

    return-void
.end method

.method public abstract onPageUnselected(I)V
.end method
