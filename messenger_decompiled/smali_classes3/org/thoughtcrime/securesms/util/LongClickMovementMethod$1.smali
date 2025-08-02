.class Lorg/thoughtcrime/securesms/util/LongClickMovementMethod$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "LongClickMovementMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/thoughtcrime/securesms/util/LongClickMovementMethod;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/util/LongClickMovementMethod;


# direct methods
.method constructor <init>(Lorg/thoughtcrime/securesms/util/LongClickMovementMethod;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lorg/thoughtcrime/securesms/util/LongClickMovementMethod$1;->this$0:Lorg/thoughtcrime/securesms/util/LongClickMovementMethod;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    .line 30
    iget-object p1, p0, Lorg/thoughtcrime/securesms/util/LongClickMovementMethod$1;->this$0:Lorg/thoughtcrime/securesms/util/LongClickMovementMethod;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/util/LongClickMovementMethod;->access$000(Lorg/thoughtcrime/securesms/util/LongClickMovementMethod;)Lorg/thoughtcrime/securesms/util/LongClickCopySpan;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/thoughtcrime/securesms/util/LongClickMovementMethod$1;->this$0:Lorg/thoughtcrime/securesms/util/LongClickMovementMethod;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/util/LongClickMovementMethod;->access$100(Lorg/thoughtcrime/securesms/util/LongClickMovementMethod;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 31
    iget-object p1, p0, Lorg/thoughtcrime/securesms/util/LongClickMovementMethod$1;->this$0:Lorg/thoughtcrime/securesms/util/LongClickMovementMethod;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/util/LongClickMovementMethod;->access$000(Lorg/thoughtcrime/securesms/util/LongClickMovementMethod;)Lorg/thoughtcrime/securesms/util/LongClickCopySpan;

    move-result-object p1

    iget-object v0, p0, Lorg/thoughtcrime/securesms/util/LongClickMovementMethod$1;->this$0:Lorg/thoughtcrime/securesms/util/LongClickMovementMethod;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/util/LongClickMovementMethod;->access$100(Lorg/thoughtcrime/securesms/util/LongClickMovementMethod;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/util/LongClickCopySpan;->onLongClick(Landroid/view/View;)V

    .line 32
    iget-object p1, p0, Lorg/thoughtcrime/securesms/util/LongClickMovementMethod$1;->this$0:Lorg/thoughtcrime/securesms/util/LongClickMovementMethod;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/thoughtcrime/securesms/util/LongClickMovementMethod;->access$102(Lorg/thoughtcrime/securesms/util/LongClickMovementMethod;Landroid/view/View;)Landroid/view/View;

    .line 33
    iget-object p1, p0, Lorg/thoughtcrime/securesms/util/LongClickMovementMethod$1;->this$0:Lorg/thoughtcrime/securesms/util/LongClickMovementMethod;

    invoke-static {p1, v0}, Lorg/thoughtcrime/securesms/util/LongClickMovementMethod;->access$002(Lorg/thoughtcrime/securesms/util/LongClickMovementMethod;Lorg/thoughtcrime/securesms/util/LongClickCopySpan;)Lorg/thoughtcrime/securesms/util/LongClickCopySpan;

    :cond_0
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 39
    iget-object p1, p0, Lorg/thoughtcrime/securesms/util/LongClickMovementMethod$1;->this$0:Lorg/thoughtcrime/securesms/util/LongClickMovementMethod;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/util/LongClickMovementMethod;->access$000(Lorg/thoughtcrime/securesms/util/LongClickMovementMethod;)Lorg/thoughtcrime/securesms/util/LongClickCopySpan;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/thoughtcrime/securesms/util/LongClickMovementMethod$1;->this$0:Lorg/thoughtcrime/securesms/util/LongClickMovementMethod;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/util/LongClickMovementMethod;->access$100(Lorg/thoughtcrime/securesms/util/LongClickMovementMethod;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 40
    iget-object p1, p0, Lorg/thoughtcrime/securesms/util/LongClickMovementMethod$1;->this$0:Lorg/thoughtcrime/securesms/util/LongClickMovementMethod;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/util/LongClickMovementMethod;->access$000(Lorg/thoughtcrime/securesms/util/LongClickMovementMethod;)Lorg/thoughtcrime/securesms/util/LongClickCopySpan;

    move-result-object p1

    iget-object v0, p0, Lorg/thoughtcrime/securesms/util/LongClickMovementMethod$1;->this$0:Lorg/thoughtcrime/securesms/util/LongClickMovementMethod;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/util/LongClickMovementMethod;->access$100(Lorg/thoughtcrime/securesms/util/LongClickMovementMethod;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/util/LongClickCopySpan;->onClick(Landroid/view/View;)V

    .line 41
    iget-object p1, p0, Lorg/thoughtcrime/securesms/util/LongClickMovementMethod$1;->this$0:Lorg/thoughtcrime/securesms/util/LongClickMovementMethod;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/thoughtcrime/securesms/util/LongClickMovementMethod;->access$102(Lorg/thoughtcrime/securesms/util/LongClickMovementMethod;Landroid/view/View;)Landroid/view/View;

    .line 42
    iget-object p1, p0, Lorg/thoughtcrime/securesms/util/LongClickMovementMethod$1;->this$0:Lorg/thoughtcrime/securesms/util/LongClickMovementMethod;

    invoke-static {p1, v0}, Lorg/thoughtcrime/securesms/util/LongClickMovementMethod;->access$002(Lorg/thoughtcrime/securesms/util/LongClickMovementMethod;Lorg/thoughtcrime/securesms/util/LongClickCopySpan;)Lorg/thoughtcrime/securesms/util/LongClickCopySpan;

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
