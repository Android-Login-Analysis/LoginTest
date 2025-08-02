.class Lorg/thoughtcrime/securesms/mms/AttachmentManager$ThumbnailClickListener;
.super Ljava/lang/Object;
.source "AttachmentManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/mms/AttachmentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThumbnailClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/mms/AttachmentManager;


# direct methods
.method private constructor <init>(Lorg/thoughtcrime/securesms/mms/AttachmentManager;)V
    .locals 0

    .line 634
    iput-object p1, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$ThumbnailClickListener;->this$0:Lorg/thoughtcrime/securesms/mms/AttachmentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/thoughtcrime/securesms/mms/AttachmentManager;Lorg/thoughtcrime/securesms/mms/AttachmentManager$1;)V
    .locals 0

    .line 634
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/mms/AttachmentManager$ThumbnailClickListener;-><init>(Lorg/thoughtcrime/securesms/mms/AttachmentManager;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 637
    iget-object p1, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$ThumbnailClickListener;->this$0:Lorg/thoughtcrime/securesms/mms/AttachmentManager;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->access$1400(Lorg/thoughtcrime/securesms/mms/AttachmentManager;)Lorg/thoughtcrime/securesms/util/guava/Optional;

    move-result-object p1

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/util/guava/Optional;->isPresent()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$ThumbnailClickListener;->this$0:Lorg/thoughtcrime/securesms/mms/AttachmentManager;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->access$1400(Lorg/thoughtcrime/securesms/mms/AttachmentManager;)Lorg/thoughtcrime/securesms/util/guava/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/util/guava/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/mms/Slide;

    invoke-static {p1, v0}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->access$1500(Lorg/thoughtcrime/securesms/mms/AttachmentManager;Lorg/thoughtcrime/securesms/mms/Slide;)V

    :cond_0
    return-void
.end method
