.class public final synthetic Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/thoughtcrime/securesms/components/RepeatableImageKey$KeyEventListener;


# instance fields
.field public final synthetic f$0:Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider$BackspaceObserver;


# direct methods
.method public synthetic constructor <init>(Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider$BackspaceObserver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard$$ExternalSyntheticLambda0;->f$0:Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider$BackspaceObserver;

    return-void
.end method


# virtual methods
.method public final onKeyEvent()V
    .locals 1

    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboard$$ExternalSyntheticLambda0;->f$0:Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider$BackspaceObserver;

    invoke-interface {v0}, Lorg/thoughtcrime/securesms/components/emoji/MediaKeyboardProvider$BackspaceObserver;->onBackspaceClicked()V

    return-void
.end method
