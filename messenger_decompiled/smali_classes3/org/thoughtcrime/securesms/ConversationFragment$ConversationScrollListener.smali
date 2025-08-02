.class Lorg/thoughtcrime/securesms/ConversationFragment$ConversationScrollListener;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "ConversationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/ConversationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConversationScrollListener"
.end annotation


# instance fields
.field private final scrollButtonInAnimation:Landroid/view/animation/Animation;

.field private final scrollButtonOutAnimation:Landroid/view/animation/Animation;

.field final synthetic this$0:Lorg/thoughtcrime/securesms/ConversationFragment;

.field private wasAtBottom:Z

.field private wasAtZoomScrollHeight:Z


# direct methods
.method constructor <init>(Lorg/thoughtcrime/securesms/ConversationFragment;Landroid/content/Context;)V
    .locals 2

    .line 610
    iput-object p1, p0, Lorg/thoughtcrime/securesms/ConversationFragment$ConversationScrollListener;->this$0:Lorg/thoughtcrime/securesms/ConversationFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    const/4 p1, 0x1

    .line 606
    iput-boolean p1, p0, Lorg/thoughtcrime/securesms/ConversationFragment$ConversationScrollListener;->wasAtBottom:Z

    const/4 p1, 0x0

    .line 607
    iput-boolean p1, p0, Lorg/thoughtcrime/securesms/ConversationFragment$ConversationScrollListener;->wasAtZoomScrollHeight:Z

    const p1, 0x7f01001e

    .line 611
    invoke-static {p2, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/ConversationFragment$ConversationScrollListener;->scrollButtonInAnimation:Landroid/view/animation/Animation;

    const v0, 0x7f01001f

    .line 612
    invoke-static {p2, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    iput-object p2, p0, Lorg/thoughtcrime/securesms/ConversationFragment$ConversationScrollListener;->scrollButtonOutAnimation:Landroid/view/animation/Animation;

    const-wide/16 v0, 0x64

    .line 614
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    const-wide/16 v0, 0x32

    .line 615
    invoke-virtual {p2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    return-void
.end method

.method private isAtBottom()Z
    .locals 4

    .line 653
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationFragment$ConversationScrollListener;->this$0:Lorg/thoughtcrime/securesms/ConversationFragment;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/ConversationFragment;->access$600(Lorg/thoughtcrime/securesms/ConversationFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 655
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationFragment$ConversationScrollListener;->this$0:Lorg/thoughtcrime/securesms/ConversationFragment;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/ConversationFragment;->access$600(Lorg/thoughtcrime/securesms/ConversationFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 656
    iget-object v3, p0, Lorg/thoughtcrime/securesms/ConversationFragment$ConversationScrollListener;->this$0:Lorg/thoughtcrime/securesms/ConversationFragment;

    invoke-static {v3}, Lorg/thoughtcrime/securesms/ConversationFragment;->access$600(Lorg/thoughtcrime/securesms/ConversationFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_2

    .line 659
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget-object v3, p0, Lorg/thoughtcrime/securesms/ConversationFragment$ConversationScrollListener;->this$0:Lorg/thoughtcrime/securesms/ConversationFragment;

    invoke-static {v3}, Lorg/thoughtcrime/securesms/ConversationFragment;->access$600(Lorg/thoughtcrime/securesms/ConversationFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v3

    if-gt v0, v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private isAtZoomScrollHeight()Z
    .locals 2

    .line 663
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationFragment$ConversationScrollListener;->this$0:Lorg/thoughtcrime/securesms/ConversationFragment;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/ConversationFragment;->access$600(Lorg/thoughtcrime/securesms/ConversationFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method synthetic lambda$onScrolled$0$org-thoughtcrime-securesms-ConversationFragment$ConversationScrollListener()V
    .locals 1

    .line 638
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationFragment$ConversationScrollListener;->this$0:Lorg/thoughtcrime/securesms/ConversationFragment;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/ConversationFragment;->access$700(Lorg/thoughtcrime/securesms/ConversationFragment;)V

    return-void
.end method

.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 3

    .line 620
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ConversationFragment$ConversationScrollListener;->isAtBottom()Z

    move-result p1

    .line 621
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ConversationFragment$ConversationScrollListener;->isAtZoomScrollHeight()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 624
    iget-boolean v0, p0, Lorg/thoughtcrime/securesms/ConversationFragment$ConversationScrollListener;->wasAtZoomScrollHeight:Z

    if-nez v0, :cond_0

    .line 625
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationFragment$ConversationScrollListener;->this$0:Lorg/thoughtcrime/securesms/ConversationFragment;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/ConversationFragment;->access$300(Lorg/thoughtcrime/securesms/ConversationFragment;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationFragment$ConversationScrollListener;->scrollButtonInAnimation:Landroid/view/animation/Animation;

    invoke-static {v0, v1}, Lorg/thoughtcrime/securesms/util/ViewUtil;->animateIn(Landroid/view/View;Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 626
    iget-boolean v0, p0, Lorg/thoughtcrime/securesms/ConversationFragment$ConversationScrollListener;->wasAtBottom:Z

    if-nez v0, :cond_1

    .line 627
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationFragment$ConversationScrollListener;->this$0:Lorg/thoughtcrime/securesms/ConversationFragment;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/ConversationFragment;->access$300(Lorg/thoughtcrime/securesms/ConversationFragment;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationFragment$ConversationScrollListener;->scrollButtonOutAnimation:Landroid/view/animation/Animation;

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lorg/thoughtcrime/securesms/util/ViewUtil;->animateOut(Landroid/view/View;Landroid/view/animation/Animation;I)Lcom/b44t/messenger/util/concurrent/ListenableFuture;

    .line 634
    :cond_1
    :goto_0
    iput-boolean p1, p0, Lorg/thoughtcrime/securesms/ConversationFragment$ConversationScrollListener;->wasAtBottom:Z

    .line 635
    iput-boolean p2, p0, Lorg/thoughtcrime/securesms/ConversationFragment$ConversationScrollListener;->wasAtZoomScrollHeight:Z

    .line 638
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationFragment$ConversationScrollListener;->this$0:Lorg/thoughtcrime/securesms/ConversationFragment;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/ConversationFragment;->access$400(Lorg/thoughtcrime/securesms/ConversationFragment;)Lorg/thoughtcrime/securesms/util/Debouncer;

    move-result-object p1

    new-instance p2, Lorg/thoughtcrime/securesms/ConversationFragment$ConversationScrollListener$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/thoughtcrime/securesms/ConversationFragment$ConversationScrollListener$$ExternalSyntheticLambda0;-><init>(Lorg/thoughtcrime/securesms/ConversationFragment$ConversationScrollListener;)V

    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/util/Debouncer;->publish(Ljava/lang/Runnable;)V

    .line 640
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationFragment$ConversationScrollListener;->this$0:Lorg/thoughtcrime/securesms/ConversationFragment;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/ConversationFragment;->access$500(Lorg/thoughtcrime/securesms/ConversationFragment;)Lorg/thoughtcrime/securesms/reactions/AddReactionView;

    move-result-object p1

    invoke-virtual {p1, p3}, Lorg/thoughtcrime/securesms/reactions/AddReactionView;->move(I)V

    return-void
.end method
