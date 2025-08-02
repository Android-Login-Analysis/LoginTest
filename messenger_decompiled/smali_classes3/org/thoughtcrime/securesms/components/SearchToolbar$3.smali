.class Lorg/thoughtcrime/securesms/components/SearchToolbar$3;
.super Lorg/thoughtcrime/securesms/animation/AnimationCompleteListener;
.source "SearchToolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/thoughtcrime/securesms/components/SearchToolbar;->hide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/components/SearchToolbar;


# direct methods
.method constructor <init>(Lorg/thoughtcrime/securesms/components/SearchToolbar;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/SearchToolbar$3;->this$0:Lorg/thoughtcrime/securesms/components/SearchToolbar;

    invoke-direct {p0}, Lorg/thoughtcrime/securesms/animation/AnimationCompleteListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 150
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/SearchToolbar$3;->this$0:Lorg/thoughtcrime/securesms/components/SearchToolbar;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/components/SearchToolbar;->setVisibility(I)V

    return-void
.end method
