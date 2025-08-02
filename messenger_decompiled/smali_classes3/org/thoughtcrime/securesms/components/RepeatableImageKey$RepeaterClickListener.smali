.class Lorg/thoughtcrime/securesms/components/RepeatableImageKey$RepeaterClickListener;
.super Ljava/lang/Object;
.source "RepeatableImageKey.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/components/RepeatableImageKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RepeaterClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/components/RepeatableImageKey;


# direct methods
.method private constructor <init>(Lorg/thoughtcrime/securesms/components/RepeatableImageKey;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/RepeatableImageKey$RepeaterClickListener;->this$0:Lorg/thoughtcrime/securesms/components/RepeatableImageKey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/thoughtcrime/securesms/components/RepeatableImageKey;Lorg/thoughtcrime/securesms/components/RepeatableImageKey$1;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/components/RepeatableImageKey$RepeaterClickListener;-><init>(Lorg/thoughtcrime/securesms/components/RepeatableImageKey;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 55
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/RepeatableImageKey$RepeaterClickListener;->this$0:Lorg/thoughtcrime/securesms/components/RepeatableImageKey;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/components/RepeatableImageKey;->access$100(Lorg/thoughtcrime/securesms/components/RepeatableImageKey;)V

    return-void
.end method
