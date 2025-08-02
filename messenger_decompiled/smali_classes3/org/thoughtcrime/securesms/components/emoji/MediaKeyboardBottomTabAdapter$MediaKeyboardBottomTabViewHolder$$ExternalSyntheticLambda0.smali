.class public final synthetic Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardBottomTabAdapter$MediaKeyboardBottomTabViewHolder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardBottomTabAdapter$EventListener;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardBottomTabAdapter$EventListener;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardBottomTabAdapter$MediaKeyboardBottomTabViewHolder$$ExternalSyntheticLambda0;->f$0:Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardBottomTabAdapter$EventListener;

    iput p2, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardBottomTabAdapter$MediaKeyboardBottomTabViewHolder$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardBottomTabAdapter$MediaKeyboardBottomTabViewHolder$$ExternalSyntheticLambda0;->f$0:Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardBottomTabAdapter$EventListener;

    iget v1, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardBottomTabAdapter$MediaKeyboardBottomTabViewHolder$$ExternalSyntheticLambda0;->f$1:I

    invoke-static {v0, v1, p1}, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardBottomTabAdapter$MediaKeyboardBottomTabViewHolder;->lambda$bind$0(Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardBottomTabAdapter$EventListener;ILandroid/view/View;)V

    return-void
.end method
