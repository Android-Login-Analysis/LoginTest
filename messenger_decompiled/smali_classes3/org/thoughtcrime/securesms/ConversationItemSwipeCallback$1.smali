.class Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback$1;
.super Ljava/lang/Object;
.source "ConversationItemSwipeCallback.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback;->setTouchListener(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private listenerCalled:Z

.field final synthetic this$0:Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback;

.field final synthetic val$dx:F

.field final synthetic val$recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field final synthetic val$viewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;


# direct methods
.method constructor <init>(Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 130
    iput-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback$1;->this$0:Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback$1;->val$recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p3, p0, Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback$1;->val$viewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iput p4, p0, Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback$1;->val$dx:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 136
    iput-boolean p1, p0, Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback$1;->listenerCalled:Z

    return-void
.end method

.method static synthetic lambda$onTouch$0(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 154
    invoke-static {p0}, Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback;->access$300(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 140
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 145
    :cond_0
    iget-boolean p1, p0, Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback$1;->listenerCalled:Z

    if-nez p1, :cond_1

    .line 146
    iput-boolean v0, p0, Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback$1;->listenerCalled:Z

    .line 147
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback$1;->this$0:Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback$1;->val$recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback$1;->val$viewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget v3, p0, Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback$1;->val$dx:F

    invoke-static {p1, v1, v2, v3}, Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback;->access$100(Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;F)V

    .line 151
    :cond_1
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback$1;->this$0:Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback;

    invoke-static {p1, v0}, Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback;->access$202(Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback;Z)Z

    .line 152
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback$1;->this$0:Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback;

    invoke-static {p1, p2}, Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback;->access$002(Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback;Z)Z

    .line 154
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback$1;->val$viewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback$1;->val$viewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    new-instance v1, Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback$1$$ExternalSyntheticLambda0;-><init>(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {p1, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 155
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback$1;->val$viewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lorg/thoughtcrime/securesms/util/AccessibilityUtil;->areAnimationsDisabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 156
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback$1;->val$viewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback;->access$300(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    goto :goto_0

    .line 142
    :cond_2
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback$1;->this$0:Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback;

    invoke-static {p1, v0}, Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback;->access$002(Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback;Z)Z

    :cond_3
    :goto_0
    return p2
.end method
