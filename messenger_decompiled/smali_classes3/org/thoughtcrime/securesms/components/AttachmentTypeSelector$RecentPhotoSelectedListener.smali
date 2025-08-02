.class Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector$RecentPhotoSelectedListener;
.super Ljava/lang/Object;
.source "AttachmentTypeSelector.java"

# interfaces
.implements Lorg/thoughtcrime/securesms/components/RecentPhotoViewRail$OnItemClickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecentPhotoSelectedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;


# direct methods
.method private constructor <init>(Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector$RecentPhotoSelectedListener;->this$0:Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector$1;)V
    .locals 0

    .line 273
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector$RecentPhotoSelectedListener;-><init>(Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;)V

    return-void
.end method


# virtual methods
.method public onItemClicked(Landroid/net/Uri;)V
    .locals 2

    .line 276
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector$RecentPhotoSelectedListener;->this$0:Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;->access$700(Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;Landroid/view/View;)V

    .line 278
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector$RecentPhotoSelectedListener;->this$0:Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;->access$800(Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;)Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector$AttachmentClickedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector$RecentPhotoSelectedListener;->this$0:Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;->access$800(Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;)Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector$AttachmentClickedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector$AttachmentClickedListener;->onQuickAttachment(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method
