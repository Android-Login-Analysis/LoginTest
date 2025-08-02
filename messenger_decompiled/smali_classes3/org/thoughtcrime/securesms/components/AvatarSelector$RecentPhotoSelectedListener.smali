.class Lorg/thoughtcrime/securesms/components/AvatarSelector$RecentPhotoSelectedListener;
.super Ljava/lang/Object;
.source "AvatarSelector.java"

# interfaces
.implements Lorg/thoughtcrime/securesms/components/RecentPhotoViewRail$OnItemClickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/components/AvatarSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecentPhotoSelectedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/components/AvatarSelector;


# direct methods
.method private constructor <init>(Lorg/thoughtcrime/securesms/components/AvatarSelector;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/AvatarSelector$RecentPhotoSelectedListener;->this$0:Lorg/thoughtcrime/securesms/components/AvatarSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/thoughtcrime/securesms/components/AvatarSelector;Lorg/thoughtcrime/securesms/components/AvatarSelector$1;)V
    .locals 0

    .line 136
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/components/AvatarSelector$RecentPhotoSelectedListener;-><init>(Lorg/thoughtcrime/securesms/components/AvatarSelector;)V

    return-void
.end method


# virtual methods
.method public onItemClicked(Landroid/net/Uri;)V
    .locals 2

    .line 139
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/AvatarSelector$RecentPhotoSelectedListener;->this$0:Lorg/thoughtcrime/securesms/components/AvatarSelector;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/AvatarSelector;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/thoughtcrime/securesms/components/AvatarSelector;->access$500(Lorg/thoughtcrime/securesms/components/AvatarSelector;Landroid/view/View;)V

    .line 141
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/AvatarSelector$RecentPhotoSelectedListener;->this$0:Lorg/thoughtcrime/securesms/components/AvatarSelector;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/components/AvatarSelector;->access$600(Lorg/thoughtcrime/securesms/components/AvatarSelector;)Lorg/thoughtcrime/securesms/components/AvatarSelector$AttachmentClickedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/AvatarSelector$RecentPhotoSelectedListener;->this$0:Lorg/thoughtcrime/securesms/components/AvatarSelector;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/components/AvatarSelector;->access$600(Lorg/thoughtcrime/securesms/components/AvatarSelector;)Lorg/thoughtcrime/securesms/components/AvatarSelector$AttachmentClickedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/thoughtcrime/securesms/components/AvatarSelector$AttachmentClickedListener;->onQuickAttachment(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method
