.class public final synthetic Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;


# direct methods
.method public synthetic constructor <init>(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback$1$$ExternalSyntheticLambda0;->f$0:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback$1$$ExternalSyntheticLambda0;->f$0:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/ConversationItemSwipeCallback$1;->lambda$onTouch$0(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method
