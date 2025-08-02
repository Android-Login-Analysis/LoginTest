.class Lorg/thoughtcrime/securesms/ProfileStatusItem$PassthroughClickListener;
.super Ljava/lang/Object;
.source "ProfileStatusItem.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/ProfileStatusItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PassthroughClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/ProfileStatusItem;


# direct methods
.method private constructor <init>(Lorg/thoughtcrime/securesms/ProfileStatusItem;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lorg/thoughtcrime/securesms/ProfileStatusItem$PassthroughClickListener;->this$0:Lorg/thoughtcrime/securesms/ProfileStatusItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/thoughtcrime/securesms/ProfileStatusItem;Lorg/thoughtcrime/securesms/ProfileStatusItem$1;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/ProfileStatusItem$PassthroughClickListener;-><init>(Lorg/thoughtcrime/securesms/ProfileStatusItem;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 51
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ProfileStatusItem$PassthroughClickListener;->this$0:Lorg/thoughtcrime/securesms/ProfileStatusItem;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/ProfileStatusItem;->performClick()Z

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 0

    .line 42
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ProfileStatusItem$PassthroughClickListener;->this$0:Lorg/thoughtcrime/securesms/ProfileStatusItem;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/ProfileStatusItem;->access$100(Lorg/thoughtcrime/securesms/ProfileStatusItem;)Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->hasSelection()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 45
    :cond_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ProfileStatusItem$PassthroughClickListener;->this$0:Lorg/thoughtcrime/securesms/ProfileStatusItem;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/ProfileStatusItem;->performLongClick()Z

    const/4 p1, 0x1

    return p1
.end method
