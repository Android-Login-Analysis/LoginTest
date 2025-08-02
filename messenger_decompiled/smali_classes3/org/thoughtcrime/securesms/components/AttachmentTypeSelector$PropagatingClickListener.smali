.class Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector$PropagatingClickListener;
.super Ljava/lang/Object;
.source "AttachmentTypeSelector.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PropagatingClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;

.field private final type:I


# direct methods
.method private constructor <init>(Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;I)V
    .locals 0

    .line 286
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector$PropagatingClickListener;->this$0:Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    iput p2, p0, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector$PropagatingClickListener;->type:I

    return-void
.end method

.method synthetic constructor <init>(Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;ILorg/thoughtcrime/securesms/components/AttachmentTypeSelector$1;)V
    .locals 0

    .line 282
    invoke-direct {p0, p1, p2}, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector$PropagatingClickListener;-><init>(Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 292
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector$PropagatingClickListener;->this$0:Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;->access$700(Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;Landroid/view/View;)V

    .line 294
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector$PropagatingClickListener;->this$0:Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;->access$800(Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;)Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector$AttachmentClickedListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector$PropagatingClickListener;->this$0:Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;->access$800(Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;)Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector$AttachmentClickedListener;

    move-result-object p1

    iget v0, p0, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector$PropagatingClickListener;->type:I

    invoke-interface {p1, v0}, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector$AttachmentClickedListener;->onClick(I)V

    :cond_0
    return-void
.end method
