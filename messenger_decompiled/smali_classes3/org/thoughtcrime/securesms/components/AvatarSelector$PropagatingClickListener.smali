.class Lorg/thoughtcrime/securesms/components/AvatarSelector$PropagatingClickListener;
.super Ljava/lang/Object;
.source "AvatarSelector.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/components/AvatarSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PropagatingClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/components/AvatarSelector;

.field private final type:I


# direct methods
.method private constructor <init>(Lorg/thoughtcrime/securesms/components/AvatarSelector;I)V
    .locals 0

    .line 149
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/AvatarSelector$PropagatingClickListener;->this$0:Lorg/thoughtcrime/securesms/components/AvatarSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput p2, p0, Lorg/thoughtcrime/securesms/components/AvatarSelector$PropagatingClickListener;->type:I

    return-void
.end method

.method synthetic constructor <init>(Lorg/thoughtcrime/securesms/components/AvatarSelector;ILorg/thoughtcrime/securesms/components/AvatarSelector$1;)V
    .locals 0

    .line 145
    invoke-direct {p0, p1, p2}, Lorg/thoughtcrime/securesms/components/AvatarSelector$PropagatingClickListener;-><init>(Lorg/thoughtcrime/securesms/components/AvatarSelector;I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 155
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/AvatarSelector$PropagatingClickListener;->this$0:Lorg/thoughtcrime/securesms/components/AvatarSelector;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/components/AvatarSelector;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/thoughtcrime/securesms/components/AvatarSelector;->access$500(Lorg/thoughtcrime/securesms/components/AvatarSelector;Landroid/view/View;)V

    .line 157
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/AvatarSelector$PropagatingClickListener;->this$0:Lorg/thoughtcrime/securesms/components/AvatarSelector;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/components/AvatarSelector;->access$600(Lorg/thoughtcrime/securesms/components/AvatarSelector;)Lorg/thoughtcrime/securesms/components/AvatarSelector$AttachmentClickedListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/AvatarSelector$PropagatingClickListener;->this$0:Lorg/thoughtcrime/securesms/components/AvatarSelector;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/components/AvatarSelector;->access$600(Lorg/thoughtcrime/securesms/components/AvatarSelector;)Lorg/thoughtcrime/securesms/components/AvatarSelector$AttachmentClickedListener;

    move-result-object p1

    iget v0, p0, Lorg/thoughtcrime/securesms/components/AvatarSelector$PropagatingClickListener;->type:I

    invoke-interface {p1, v0}, Lorg/thoughtcrime/securesms/components/AvatarSelector$AttachmentClickedListener;->onClick(I)V

    :cond_0
    return-void
.end method
