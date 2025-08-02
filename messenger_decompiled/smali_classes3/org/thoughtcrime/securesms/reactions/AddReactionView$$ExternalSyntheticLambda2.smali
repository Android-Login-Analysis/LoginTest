.class public final synthetic Lorg/thoughtcrime/securesms/reactions/AddReactionView$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/core/util/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/thoughtcrime/securesms/reactions/AddReactionView;

.field public final synthetic f$1:Landroidx/appcompat/app/AlertDialog;


# direct methods
.method public synthetic constructor <init>(Lorg/thoughtcrime/securesms/reactions/AddReactionView;Landroidx/appcompat/app/AlertDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/reactions/AddReactionView$$ExternalSyntheticLambda2;->f$0:Lorg/thoughtcrime/securesms/reactions/AddReactionView;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/reactions/AddReactionView$$ExternalSyntheticLambda2;->f$1:Landroidx/appcompat/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lorg/thoughtcrime/securesms/reactions/AddReactionView$$ExternalSyntheticLambda2;->f$0:Lorg/thoughtcrime/securesms/reactions/AddReactionView;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/reactions/AddReactionView$$ExternalSyntheticLambda2;->f$1:Landroidx/appcompat/app/AlertDialog;

    check-cast p1, Landroidx/emoji2/emojipicker/EmojiViewItem;

    invoke-virtual {v0, v1, p1}, Lorg/thoughtcrime/securesms/reactions/AddReactionView;->lambda$anyReactionClicked$2$org-thoughtcrime-securesms-reactions-AddReactionView(Landroidx/appcompat/app/AlertDialog;Landroidx/emoji2/emojipicker/EmojiViewItem;)V

    return-void
.end method
