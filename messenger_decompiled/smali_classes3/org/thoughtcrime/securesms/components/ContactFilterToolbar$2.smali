.class Lorg/thoughtcrime/securesms/components/ContactFilterToolbar$2;
.super Ljava/lang/Object;
.source "ContactFilterToolbar.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/thoughtcrime/securesms/components/ContactFilterToolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/components/ContactFilterToolbar;


# direct methods
.method constructor <init>(Lorg/thoughtcrime/securesms/components/ContactFilterToolbar;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/ContactFilterToolbar$2;->this$0:Lorg/thoughtcrime/securesms/components/ContactFilterToolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 69
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/ContactFilterToolbar$2;->this$0:Lorg/thoughtcrime/securesms/components/ContactFilterToolbar;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/components/ContactFilterToolbar;->access$000(Lorg/thoughtcrime/securesms/components/ContactFilterToolbar;)Landroid/widget/EditText;

    move-result-object p1

    invoke-static {p1}, Lorg/thoughtcrime/securesms/components/ContactFilterToolbar$SearchUtil;->isEmpty(Landroid/widget/EditText;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 70
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/ContactFilterToolbar$2;->this$0:Lorg/thoughtcrime/securesms/components/ContactFilterToolbar;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/components/ContactFilterToolbar;->access$200(Lorg/thoughtcrime/securesms/components/ContactFilterToolbar;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 71
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/ContactFilterToolbar$2;->this$0:Lorg/thoughtcrime/securesms/components/ContactFilterToolbar;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/components/ContactFilterToolbar;->access$300(Lorg/thoughtcrime/securesms/components/ContactFilterToolbar;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/thoughtcrime/securesms/components/ContactFilterToolbar;->access$100(Lorg/thoughtcrime/securesms/components/ContactFilterToolbar;Landroid/view/View;)V

    goto :goto_0

    .line 75
    :cond_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/ContactFilterToolbar$2;->this$0:Lorg/thoughtcrime/securesms/components/ContactFilterToolbar;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/thoughtcrime/securesms/components/ContactFilterToolbar;->access$100(Lorg/thoughtcrime/securesms/components/ContactFilterToolbar;Landroid/view/View;)V

    .line 77
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/ContactFilterToolbar$2;->this$0:Lorg/thoughtcrime/securesms/components/ContactFilterToolbar;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/components/ContactFilterToolbar;->access$400(Lorg/thoughtcrime/securesms/components/ContactFilterToolbar;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
