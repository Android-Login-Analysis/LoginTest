.class Lorg/thoughtcrime/securesms/components/ContactFilterToolbar$1;
.super Ljava/lang/Object;
.source "ContactFilterToolbar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 48
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/ContactFilterToolbar$1;->this$0:Lorg/thoughtcrime/securesms/components/ContactFilterToolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 51
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/ContactFilterToolbar$1;->this$0:Lorg/thoughtcrime/securesms/components/ContactFilterToolbar;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/components/ContactFilterToolbar;->access$000(Lorg/thoughtcrime/securesms/components/ContactFilterToolbar;)Landroid/widget/EditText;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/ContactFilterToolbar$1;->this$0:Lorg/thoughtcrime/securesms/components/ContactFilterToolbar;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/thoughtcrime/securesms/components/ContactFilterToolbar;->access$100(Lorg/thoughtcrime/securesms/components/ContactFilterToolbar;Landroid/view/View;)V

    return-void
.end method
