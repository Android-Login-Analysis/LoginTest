.class Lorg/thoughtcrime/securesms/ConversationItem$StickerClickListener;
.super Ljava/lang/Object;
.source "ConversationItem.java"

# interfaces
.implements Lorg/thoughtcrime/securesms/mms/SlideClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/ConversationItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StickerClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/ConversationItem;


# direct methods
.method private constructor <init>(Lorg/thoughtcrime/securesms/ConversationItem;)V
    .locals 0

    .line 942
    iput-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItem$StickerClickListener;->this$0:Lorg/thoughtcrime/securesms/ConversationItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/thoughtcrime/securesms/ConversationItem;Lorg/thoughtcrime/securesms/ConversationItem$1;)V
    .locals 0

    .line 942
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/ConversationItem$StickerClickListener;-><init>(Lorg/thoughtcrime/securesms/ConversationItem;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;Lorg/thoughtcrime/securesms/mms/Slide;)V
    .locals 0

    .line 944
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItem$StickerClickListener;->this$0:Lorg/thoughtcrime/securesms/ConversationItem;

    iget-object p2, p1, Lorg/thoughtcrime/securesms/ConversationItem;->messageRecord:Lcom/b44t/messenger/DcMsg;

    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/ConversationItem;->shouldInterceptClicks(Lcom/b44t/messenger/DcMsg;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItem$StickerClickListener;->this$0:Lorg/thoughtcrime/securesms/ConversationItem;

    iget-object p1, p1, Lorg/thoughtcrime/securesms/ConversationItem;->batchSelected:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 945
    :cond_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationItem$StickerClickListener;->this$0:Lorg/thoughtcrime/securesms/ConversationItem;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/ConversationItem;->performClick()Z

    :cond_1
    return-void
.end method
