.class Lorg/thoughtcrime/securesms/components/WebxdcView$OpenClickedListener;
.super Ljava/lang/Object;
.source "WebxdcView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/components/WebxdcView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OpenClickedListener"
.end annotation


# instance fields
.field private final slide:Lorg/thoughtcrime/securesms/mms/DocumentSlide;

.field final synthetic this$0:Lorg/thoughtcrime/securesms/components/WebxdcView;


# direct methods
.method private constructor <init>(Lorg/thoughtcrime/securesms/components/WebxdcView;Landroid/content/Context;Lcom/b44t/messenger/DcMsg;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/WebxdcView$OpenClickedListener;->this$0:Lorg/thoughtcrime/securesms/components/WebxdcView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    new-instance p1, Lorg/thoughtcrime/securesms/mms/DocumentSlide;

    invoke-direct {p1, p2, p3}, Lorg/thoughtcrime/securesms/mms/DocumentSlide;-><init>(Landroid/content/Context;Lcom/b44t/messenger/DcMsg;)V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/WebxdcView$OpenClickedListener;->slide:Lorg/thoughtcrime/securesms/mms/DocumentSlide;

    return-void
.end method

.method synthetic constructor <init>(Lorg/thoughtcrime/securesms/components/WebxdcView;Landroid/content/Context;Lcom/b44t/messenger/DcMsg;Lorg/thoughtcrime/securesms/components/WebxdcView$1;)V
    .locals 0

    .line 101
    invoke-direct {p0, p1, p2, p3}, Lorg/thoughtcrime/securesms/components/WebxdcView$OpenClickedListener;-><init>(Lorg/thoughtcrime/securesms/components/WebxdcView;Landroid/content/Context;Lcom/b44t/messenger/DcMsg;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 110
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/WebxdcView$OpenClickedListener;->this$0:Lorg/thoughtcrime/securesms/components/WebxdcView;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/components/WebxdcView;->access$100(Lorg/thoughtcrime/securesms/components/WebxdcView;)Lorg/thoughtcrime/securesms/mms/SlideClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/WebxdcView$OpenClickedListener;->this$0:Lorg/thoughtcrime/securesms/components/WebxdcView;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/components/WebxdcView;->access$100(Lorg/thoughtcrime/securesms/components/WebxdcView;)Lorg/thoughtcrime/securesms/mms/SlideClickListener;

    move-result-object v0

    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/WebxdcView$OpenClickedListener;->slide:Lorg/thoughtcrime/securesms/mms/DocumentSlide;

    invoke-interface {v0, p1, v1}, Lorg/thoughtcrime/securesms/mms/SlideClickListener;->onClick(Landroid/view/View;Lorg/thoughtcrime/securesms/mms/Slide;)V

    :cond_0
    return-void
.end method
