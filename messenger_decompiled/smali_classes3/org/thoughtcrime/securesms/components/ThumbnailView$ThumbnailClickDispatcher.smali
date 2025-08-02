.class Lorg/thoughtcrime/securesms/components/ThumbnailView$ThumbnailClickDispatcher;
.super Ljava/lang/Object;
.source "ThumbnailView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/components/ThumbnailView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThumbnailClickDispatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/components/ThumbnailView;


# direct methods
.method private constructor <init>(Lorg/thoughtcrime/securesms/components/ThumbnailView;)V
    .locals 0

    .line 299
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/ThumbnailView$ThumbnailClickDispatcher;->this$0:Lorg/thoughtcrime/securesms/components/ThumbnailView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/thoughtcrime/securesms/components/ThumbnailView;Lorg/thoughtcrime/securesms/components/ThumbnailView$1;)V
    .locals 0

    .line 299
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/components/ThumbnailView$ThumbnailClickDispatcher;-><init>(Lorg/thoughtcrime/securesms/components/ThumbnailView;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 302
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/ThumbnailView$ThumbnailClickDispatcher;->this$0:Lorg/thoughtcrime/securesms/components/ThumbnailView;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/components/ThumbnailView;->access$100(Lorg/thoughtcrime/securesms/components/ThumbnailView;)Lorg/thoughtcrime/securesms/mms/SlideClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/ThumbnailView$ThumbnailClickDispatcher;->this$0:Lorg/thoughtcrime/securesms/components/ThumbnailView;

    .line 303
    invoke-static {v0}, Lorg/thoughtcrime/securesms/components/ThumbnailView;->access$200(Lorg/thoughtcrime/securesms/components/ThumbnailView;)Lorg/thoughtcrime/securesms/mms/Slide;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/ThumbnailView$ThumbnailClickDispatcher;->this$0:Lorg/thoughtcrime/securesms/components/ThumbnailView;

    .line 304
    invoke-static {v0}, Lorg/thoughtcrime/securesms/components/ThumbnailView;->access$200(Lorg/thoughtcrime/securesms/components/ThumbnailView;)Lorg/thoughtcrime/securesms/mms/Slide;

    move-result-object v0

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/mms/Slide;->asAttachment()Lorg/thoughtcrime/securesms/attachments/Attachment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/attachments/Attachment;->getDataUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/ThumbnailView$ThumbnailClickDispatcher;->this$0:Lorg/thoughtcrime/securesms/components/ThumbnailView;

    .line 305
    invoke-static {v0}, Lorg/thoughtcrime/securesms/components/ThumbnailView;->access$200(Lorg/thoughtcrime/securesms/components/ThumbnailView;)Lorg/thoughtcrime/securesms/mms/Slide;

    move-result-object v0

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/mms/Slide;->getTransferState()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 307
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/ThumbnailView$ThumbnailClickDispatcher;->this$0:Lorg/thoughtcrime/securesms/components/ThumbnailView;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/components/ThumbnailView;->access$100(Lorg/thoughtcrime/securesms/components/ThumbnailView;)Lorg/thoughtcrime/securesms/mms/SlideClickListener;

    move-result-object v0

    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/ThumbnailView$ThumbnailClickDispatcher;->this$0:Lorg/thoughtcrime/securesms/components/ThumbnailView;

    invoke-static {v1}, Lorg/thoughtcrime/securesms/components/ThumbnailView;->access$200(Lorg/thoughtcrime/securesms/components/ThumbnailView;)Lorg/thoughtcrime/securesms/mms/Slide;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lorg/thoughtcrime/securesms/mms/SlideClickListener;->onClick(Landroid/view/View;Lorg/thoughtcrime/securesms/mms/Slide;)V

    goto :goto_0

    .line 308
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/ThumbnailView$ThumbnailClickDispatcher;->this$0:Lorg/thoughtcrime/securesms/components/ThumbnailView;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/components/ThumbnailView;->access$300(Lorg/thoughtcrime/securesms/components/ThumbnailView;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 309
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/ThumbnailView$ThumbnailClickDispatcher;->this$0:Lorg/thoughtcrime/securesms/components/ThumbnailView;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/components/ThumbnailView;->access$300(Lorg/thoughtcrime/securesms/components/ThumbnailView;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method
