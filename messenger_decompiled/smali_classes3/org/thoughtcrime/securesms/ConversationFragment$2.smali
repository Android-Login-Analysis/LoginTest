.class Lorg/thoughtcrime/securesms/ConversationFragment$2;
.super Ljava/lang/Object;
.source "ConversationFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/thoughtcrime/securesms/ConversationFragment;->querySetupCode(Lcom/b44t/messenger/DcMsg;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/ConversationFragment;

.field final synthetic val$editTexts:[Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lorg/thoughtcrime/securesms/ConversationFragment;[Landroid/widget/EditText;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 722
    iput-object p1, p0, Lorg/thoughtcrime/securesms/ConversationFragment$2;->this$0:Lorg/thoughtcrime/securesms/ConversationFragment;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/ConversationFragment$2;->val$editTexts:[Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 729
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_1

    const/4 p1, 0x0

    :goto_0
    const/16 p3, 0x8

    if-ge p1, p3, :cond_1

    .line 731
    iget-object p3, p0, Lorg/thoughtcrime/securesms/ConversationFragment$2;->val$editTexts:[Landroid/widget/EditText;

    aget-object p3, p3, p1

    invoke-virtual {p3}, Landroid/widget/EditText;->hasFocus()Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lorg/thoughtcrime/securesms/ConversationFragment$2;->val$editTexts:[Landroid/widget/EditText;

    add-int/lit8 p4, p1, 0x1

    aget-object p3, p3, p4

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-interface {p3}, Landroid/text/Editable;->length()I

    move-result p3

    if-ge p3, p2, :cond_0

    .line 732
    iget-object p1, p0, Lorg/thoughtcrime/securesms/ConversationFragment$2;->val$editTexts:[Landroid/widget/EditText;

    aget-object p1, p1, p4

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
