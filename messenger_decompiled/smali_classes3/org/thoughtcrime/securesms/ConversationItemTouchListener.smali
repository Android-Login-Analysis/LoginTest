.class final Lorg/thoughtcrime/securesms/ConversationItemTouchListener;
.super Landroidx/recyclerview/widget/RecyclerView$SimpleOnItemTouchListener;
.source "ConversationItemTouchListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/ConversationItemTouchListener$Callback;
    }
.end annotation


# instance fields
.field private final callback:Lorg/thoughtcrime/securesms/ConversationItemTouchListener$Callback;


# direct methods
.method constructor <init>(Lorg/thoughtcrime/securesms/ConversationItemTouchListener$Callback;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$SimpleOnItemTouchListener;-><init>()V

    .line 13
    iput-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItemTouchListener;->callback:Lorg/thoughtcrime/securesms/ConversationItemTouchListener$Callback;

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 18
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    .line 19
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItemTouchListener;->callback:Lorg/thoughtcrime/securesms/ConversationItemTouchListener$Callback;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    invoke-interface {p1, v0, p2}, Lorg/thoughtcrime/securesms/ConversationItemTouchListener$Callback;->onDownEvent(FF)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
