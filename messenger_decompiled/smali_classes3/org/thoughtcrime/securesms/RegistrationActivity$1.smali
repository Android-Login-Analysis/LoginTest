.class Lorg/thoughtcrime/securesms/RegistrationActivity$1;
.super Ljava/lang/Object;
.source "RegistrationActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/thoughtcrime/securesms/RegistrationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/RegistrationActivity;


# direct methods
.method constructor <init>(Lorg/thoughtcrime/securesms/RegistrationActivity;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lorg/thoughtcrime/securesms/RegistrationActivity$1;->this$0:Lorg/thoughtcrime/securesms/RegistrationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 159
    iget-object p1, p0, Lorg/thoughtcrime/securesms/RegistrationActivity$1;->this$0:Lorg/thoughtcrime/securesms/RegistrationActivity;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/RegistrationActivity;->access$000(Lorg/thoughtcrime/securesms/RegistrationActivity;)V

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
