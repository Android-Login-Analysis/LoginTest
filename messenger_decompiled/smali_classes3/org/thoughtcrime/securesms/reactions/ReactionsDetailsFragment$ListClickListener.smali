.class Lorg/thoughtcrime/securesms/reactions/ReactionsDetailsFragment$ListClickListener;
.super Ljava/lang/Object;
.source "ReactionsDetailsFragment.java"

# interfaces
.implements Lorg/thoughtcrime/securesms/reactions/ReactionRecipientsAdapter$ItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/reactions/ReactionsDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/reactions/ReactionsDetailsFragment;


# direct methods
.method private constructor <init>(Lorg/thoughtcrime/securesms/reactions/ReactionsDetailsFragment;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lorg/thoughtcrime/securesms/reactions/ReactionsDetailsFragment$ListClickListener;->this$0:Lorg/thoughtcrime/securesms/reactions/ReactionsDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/thoughtcrime/securesms/reactions/ReactionsDetailsFragment;Lorg/thoughtcrime/securesms/reactions/ReactionsDetailsFragment$1;)V
    .locals 0

    .line 113
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/reactions/ReactionsDetailsFragment$ListClickListener;-><init>(Lorg/thoughtcrime/securesms/reactions/ReactionsDetailsFragment;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Lorg/thoughtcrime/securesms/reactions/ReactionRecipientItem;)V
    .locals 1

    .line 117
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/reactions/ReactionRecipientItem;->getContactId()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 119
    iget-object v0, p0, Lorg/thoughtcrime/securesms/reactions/ReactionsDetailsFragment$ListClickListener;->this$0:Lorg/thoughtcrime/securesms/reactions/ReactionsDetailsFragment;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/reactions/ReactionsDetailsFragment;->dismiss()V

    .line 120
    iget-object v0, p0, Lorg/thoughtcrime/securesms/reactions/ReactionsDetailsFragment$ListClickListener;->this$0:Lorg/thoughtcrime/securesms/reactions/ReactionsDetailsFragment;

    invoke-static {v0, p1}, Lorg/thoughtcrime/securesms/reactions/ReactionsDetailsFragment;->access$100(Lorg/thoughtcrime/securesms/reactions/ReactionsDetailsFragment;I)V

    :cond_0
    return-void
.end method
