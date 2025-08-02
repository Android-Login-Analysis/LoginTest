.class Lorg/thoughtcrime/securesms/components/AvatarSelector$CloseClickListener;
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
    name = "CloseClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/components/AvatarSelector;


# direct methods
.method private constructor <init>(Lorg/thoughtcrime/securesms/components/AvatarSelector;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/AvatarSelector$CloseClickListener;->this$0:Lorg/thoughtcrime/securesms/components/AvatarSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/thoughtcrime/securesms/components/AvatarSelector;Lorg/thoughtcrime/securesms/components/AvatarSelector$1;)V
    .locals 0

    .line 162
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/components/AvatarSelector$CloseClickListener;-><init>(Lorg/thoughtcrime/securesms/components/AvatarSelector;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 165
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/AvatarSelector$CloseClickListener;->this$0:Lorg/thoughtcrime/securesms/components/AvatarSelector;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/components/AvatarSelector;->dismiss()V

    return-void
.end method
