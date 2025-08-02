.class Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback;
.super Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;
.source "ConversationItemSwipeCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback$SwipeAvailabilityProvider;,
        Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback$OnSwipeListener;
    }
.end annotation


# static fields
.field private static final SWIPE_SUCCESS_DX:F

.field private static final SWIPE_SUCCESS_VIBE_TIME_MS:J = 0xaL


# instance fields
.field private canTriggerSwipe:Z

.field private final itemTouchListener:Lorg/thoughtcrime/securesms/ConversationItemTouchListener;

.field private latestDownX:F

.field private latestDownY:F

.field private final onSwipeListener:Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback$OnSwipeListener;

.field private shouldTriggerSwipeFeedback:Z

.field private final swipeAvailabilityProvider:Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback$SwipeAvailabilityProvider;

.field private swipeBack:Z


# direct methods
.method public static synthetic $r8$lambda$pB9R5nOVY3OyySL7xiiTVmtMuzI(Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback;FF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback;->updateLatestDownCoordinate(FF)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 22
    sget v0, Lorg/thoughtcrime/securesms/ConversationSwipeAnimationHelper;->TRIGGER_DX:F

    sput v0, Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback;->SWIPE_SUCCESS_DX:F

    return-void
.end method

.method constructor <init>(Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback$SwipeAvailabilityProvider;Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback$OnSwipeListener;)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x20

    .line 38
    invoke-direct {p0, v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;-><init>(II)V

    .line 39
    new-instance v0, Lorg/thoughtcrime/securesms/ConversationItemTouchListener;

    new-instance v1, Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback$$ExternalSyntheticLambda2;-><init>(Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback;)V

    invoke-direct {v0, v1}, Lorg/thoughtcrime/securesms/ConversationItemTouchListener;-><init>(Lorg/thoughtcrime/securesms/ConversationItemTouchListener$Callback;)V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback;->itemTouchListener:Lorg/thoughtcrime/securesms/ConversationItemTouchListener;

    .line 40
    iput-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback;->swipeAvailabilityProvider:Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback$SwipeAvailabilityProvider;

    .line 41
    iput-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback;->onSwipeListener:Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback$OnSwipeListener;

    const/4 p1, 0x1

    .line 42
    iput-boolean p1, p0, Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback;->shouldTriggerSwipeFeedback:Z

    .line 43
    iput-boolean p1, p0, Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback;->canTriggerSwipe:Z

    return-void
.end method

.method static synthetic access$002(Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback;Z)Z
    .locals 0

    .line 20
    iput-boolean p1, p0, Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback;->shouldTriggerSwipeFeedback:Z

    return p1
.end method

.method static synthetic access$100(Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;F)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2, p3}, Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback;->handleTouchActionUp(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;F)V

    return-void
.end method

.method static synthetic access$202(Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback;Z)Z
    .locals 0

    .line 20
    iput-boolean p1, p0, Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback;->swipeBack:Z

    return p1
.end method

.method static synthetic access$300(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 20
    invoke-static {p0}, Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback;->resetProgress(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method private cannotSwipeViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 3

    .line 189
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, v0, Lorg/thoughtcrime/securesms/ConversationItem;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 191
    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/thoughtcrime/securesms/ConversationItem;

    .line 192
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback;->swipeAvailabilityProvider:Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback$SwipeAvailabilityProvider;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/ConversationItem;->getMessageRecord()Lcom/b44t/messenger/DcMsg;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback$SwipeAvailabilityProvider;->isSwipeAvailable(Lcom/b44t/messenger/DcMsg;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback;->latestDownX:F

    iget v2, p0, Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback;->latestDownY:F

    .line 193
    invoke-virtual {p1, v0, v2}, Lorg/thoughtcrime/securesms/ConversationItem;->disallowSwipe(FF)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method private static getSignFromDirection(Landroid/view/View;)F
    .locals 3

    .line 202
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    const/high16 v2, 0x3f800000    # 1.0f

    if-lt v0, v1, :cond_0

    .line 203
    invoke-static {p0}, Lkotlinx/coroutines/time/TimeKt$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/View;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/high16 v2, -0x40800000    # -1.0f

    :cond_0
    return v2
.end method

.method private handleSwipeFeedback(Lorg/thoughtcrime/securesms/ConversationItem;F)V
    .locals 1

    .line 109
    sget v0, Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback;->SWIPE_SUCCESS_DX:F

    cmpl-float p2, p2, v0

    if-lez p2, :cond_0

    iget-boolean p2, p0, Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback;->shouldTriggerSwipeFeedback:Z

    if-eqz p2, :cond_0

    .line 110
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/ConversationItem;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback;->vibrate(Landroid/content/Context;)V

    .line 111
    invoke-static {p1}, Lorg/thoughtcrime/securesms/ConversationSwipeAnimationHelper;->trigger(Lorg/thoughtcrime/securesms/ConversationItem;)V

    const/4 p1, 0x0

    .line 112
    iput-boolean p1, p0, Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback;->shouldTriggerSwipeFeedback:Z

    :cond_0
    return-void
.end method

.method private handleTouchActionUp(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;F)V
    .locals 1

    .line 170
    sget v0, Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback;->SWIPE_SUCCESS_DX:F

    cmpl-float p3, p3, v0

    if-lez p3, :cond_0

    const/4 p3, 0x0

    .line 171
    iput-boolean p3, p0, Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback;->canTriggerSwipe:Z

    .line 172
    invoke-direct {p0, p2}, Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback;->onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 173
    iget-boolean p3, p0, Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback;->shouldTriggerSwipeFeedback:Z

    if-eqz p3, :cond_0

    .line 174
    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback;->vibrate(Landroid/content/Context;)V

    .line 177
    :cond_0
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x13

    if-lt p2, p3, :cond_1

    .line 178
    invoke-static {p1}, Lkotlinx/coroutines/time/TimeKt$$ExternalSyntheticApiModelOutline0;->m(Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_1
    return-void
.end method

.method private onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 117
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback;->cannotSwipeViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 119
    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/thoughtcrime/securesms/ConversationItem;

    .line 120
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/ConversationItem;->getMessageRecord()Lcom/b44t/messenger/DcMsg;

    move-result-object p1

    .line 122
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback;->onSwipeListener:Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback$OnSwipeListener;

    invoke-interface {v0, p1}, Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback$OnSwipeListener;->onSwipe(Lcom/b44t/messenger/DcMsg;)V

    return-void
.end method

.method private static resetProgress(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 183
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/thoughtcrime/securesms/ConversationItem;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 185
    invoke-static {p0}, Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback;->getSignFromDirection(Landroid/view/View;)F

    move-result p0

    const/4 v1, 0x0

    .line 183
    invoke-static {v0, v1, p0}, Lorg/thoughtcrime/securesms/ConversationSwipeAnimationHelper;->update(Lorg/thoughtcrime/securesms/ConversationItem;FF)V

    return-void
.end method

.method private static sameSign(FF)Z
    .locals 0

    mul-float p0, p0, p1

    const/4 p1, 0x0

    cmpl-float p0, p0, p1

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setTouchListener(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;F)V
    .locals 1

    .line 130
    new-instance v0, Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback$1;-><init>(Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;F)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private updateLatestDownCoordinate(FF)V
    .locals 0

    .line 197
    iput p1, p0, Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback;->latestDownX:F

    .line 198
    iput p2, p0, Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback;->latestDownY:F

    return-void
.end method

.method private static vibrate(Landroid/content/Context;)V
    .locals 2

    .line 214
    invoke-static {p0}, Lorg/thoughtcrime/securesms/util/ServiceUtil;->getVibrator(Landroid/content/Context;)Landroid/os/Vibrator;

    move-result-object p0

    if-eqz p0, :cond_0

    const-wide/16 v0, 0xa

    .line 215
    invoke-virtual {p0, v0, v1}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_0
    return-void
.end method


# virtual methods
.method attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback;->itemTouchListener:Lorg/thoughtcrime/securesms/ConversationItemTouchListener;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    .line 48
    new-instance v0, Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public convertToAbsoluteDirection(II)I
    .locals 1

    .line 73
    iget-boolean v0, p0, Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback;->swipeBack:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 74
    iput-boolean p1, p0, Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback;->swipeBack:Z

    return p1

    .line 77
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;->convertToAbsoluteDirection(II)I

    move-result p1

    return p1
.end method

.method public getSwipeDirs(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 1

    .line 67
    invoke-direct {p0, p2}, Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback;->cannotSwipeViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 68
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;->getSwipeDirs(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result p1

    return p1
.end method

.method public onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V
    .locals 1

    .line 87
    invoke-direct {p0, p3}, Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback;->cannotSwipeViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 89
    :cond_0
    iget-object p1, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback;->getSignFromDirection(Landroid/view/View;)F

    move-result p1

    .line 90
    invoke-static {p4, p1}, Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback;->sameSign(FF)Z

    move-result p5

    const/4 p7, 0x0

    const/4 v0, 0x1

    if-ne p6, v0, :cond_1

    if-eqz p5, :cond_1

    .line 93
    iget-object p5, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p5, Lorg/thoughtcrime/securesms/ConversationItem;

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p6

    invoke-static {p5, p6, p1}, Lorg/thoughtcrime/securesms/ConversationSwipeAnimationHelper;->update(Lorg/thoughtcrime/securesms/ConversationItem;FF)V

    .line 94
    iget-object p1, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/thoughtcrime/securesms/ConversationItem;

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p5

    invoke-direct {p0, p1, p5}, Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback;->handleSwipeFeedback(Lorg/thoughtcrime/securesms/ConversationItem;F)V

    .line 95
    iget-boolean p1, p0, Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback;->canTriggerSwipe:Z

    if-eqz p1, :cond_3

    .line 96
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-direct {p0, p2, p3, p1}, Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback;->setTouchListener(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;F)V

    goto :goto_0

    :cond_1
    if-eqz p6, :cond_2

    cmpl-float p1, p4, p7

    if-nez p1, :cond_3

    .line 99
    :cond_2
    iget-object p1, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/thoughtcrime/securesms/ConversationItem;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p1, p7, p2}, Lorg/thoughtcrime/securesms/ConversationSwipeAnimationHelper;->update(Lorg/thoughtcrime/securesms/ConversationItem;FF)V

    :cond_3
    :goto_0
    cmpl-float p1, p4, p7

    if-nez p1, :cond_4

    .line 103
    iput-boolean v0, p0, Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback;->shouldTriggerSwipeFeedback:Z

    .line 104
    iput-boolean v0, p0, Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback;->canTriggerSwipe:Z

    :cond_4
    return-void
.end method

.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    return-void
.end method
