.class Lorg/thoughtcrime/securesms/components/RepeatableImageKey$Repeater;
.super Ljava/lang/Object;
.source "RepeatableImageKey.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/components/RepeatableImageKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Repeater"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/components/RepeatableImageKey;


# direct methods
.method private constructor <init>(Lorg/thoughtcrime/securesms/components/RepeatableImageKey;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/RepeatableImageKey$Repeater;->this$0:Lorg/thoughtcrime/securesms/components/RepeatableImageKey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/thoughtcrime/securesms/components/RepeatableImageKey;Lorg/thoughtcrime/securesms/components/RepeatableImageKey$1;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/components/RepeatableImageKey$Repeater;-><init>(Lorg/thoughtcrime/securesms/components/RepeatableImageKey;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 62
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/RepeatableImageKey$Repeater;->this$0:Lorg/thoughtcrime/securesms/components/RepeatableImageKey;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/components/RepeatableImageKey;->access$100(Lorg/thoughtcrime/securesms/components/RepeatableImageKey;)V

    .line 63
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/RepeatableImageKey$Repeater;->this$0:Lorg/thoughtcrime/securesms/components/RepeatableImageKey;

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Lorg/thoughtcrime/securesms/components/RepeatableImageKey;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
