.class public final synthetic Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider$AddObserver;


# direct methods
.method public synthetic constructor <init>(Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider$AddObserver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard$$ExternalSyntheticLambda1;->f$0:Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider$AddObserver;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard$$ExternalSyntheticLambda1;->f$0:Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider$AddObserver;

    invoke-static {v0, p1}, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard;->lambda$presentAddButton$1(Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider$AddObserver;Landroid/view/View;)V

    return-void
.end method
