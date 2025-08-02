.class Lorg/thoughtcrime/securesms/components/DocumentView$OpenClickedListener;
.super Ljava/lang/Object;
.source "DocumentView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/components/DocumentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OpenClickedListener"
.end annotation


# instance fields
.field private final slide:Lorg/thoughtcrime/securesms/mms/DocumentSlide;

.field final synthetic this$0:Lorg/thoughtcrime/securesms/components/DocumentView;


# direct methods
.method private constructor <init>(Lorg/thoughtcrime/securesms/components/DocumentView;Lorg/thoughtcrime/securesms/mms/DocumentSlide;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/DocumentView$OpenClickedListener;->this$0:Lorg/thoughtcrime/securesms/components/DocumentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p2, p0, Lorg/thoughtcrime/securesms/components/DocumentView$OpenClickedListener;->slide:Lorg/thoughtcrime/securesms/mms/DocumentSlide;

    return-void
.end method

.method synthetic constructor <init>(Lorg/thoughtcrime/securesms/components/DocumentView;Lorg/thoughtcrime/securesms/mms/DocumentSlide;Lorg/thoughtcrime/securesms/components/DocumentView$1;)V
    .locals 0

    .line 102
    invoke-direct {p0, p1, p2}, Lorg/thoughtcrime/securesms/components/DocumentView$OpenClickedListener;-><init>(Lorg/thoughtcrime/securesms/components/DocumentView;Lorg/thoughtcrime/securesms/mms/DocumentSlide;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 111
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/DocumentView$OpenClickedListener;->this$0:Lorg/thoughtcrime/securesms/components/DocumentView;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/components/DocumentView;->access$100(Lorg/thoughtcrime/securesms/components/DocumentView;)Lorg/thoughtcrime/securesms/mms/SlideClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/DocumentView$OpenClickedListener;->this$0:Lorg/thoughtcrime/securesms/components/DocumentView;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/components/DocumentView;->access$100(Lorg/thoughtcrime/securesms/components/DocumentView;)Lorg/thoughtcrime/securesms/mms/SlideClickListener;

    move-result-object v0

    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/DocumentView$OpenClickedListener;->slide:Lorg/thoughtcrime/securesms/mms/DocumentSlide;

    invoke-interface {v0, p1, v1}, Lorg/thoughtcrime/securesms/mms/SlideClickListener;->onClick(Landroid/view/View;Lorg/thoughtcrime/securesms/mms/Slide;)V

    :cond_0
    return-void
.end method
