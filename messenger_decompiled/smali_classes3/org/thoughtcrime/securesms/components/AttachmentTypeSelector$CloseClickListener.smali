.class Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector$CloseClickListener;
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
    name = "CloseClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;


# direct methods
.method private constructor <init>(Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;)V
    .locals 0

    .line 299
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector$CloseClickListener;->this$0:Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector$1;)V
    .locals 0

    .line 299
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector$CloseClickListener;-><init>(Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 302
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector$CloseClickListener;->this$0:Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/components/AttachmentTypeSelector;->dismiss()V

    return-void
.end method
