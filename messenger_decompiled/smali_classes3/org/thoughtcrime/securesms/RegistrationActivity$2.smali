.class Lorg/thoughtcrime/securesms/RegistrationActivity$2;
.super Ljava/lang/Object;
.source "RegistrationActivity.java"

# interfaces
.implements Lcom/b44t/messenger/util/concurrent/ListenableFuture$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/thoughtcrime/securesms/RegistrationActivity;->do_register()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/b44t/messenger/util/concurrent/ListenableFuture$Listener<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/RegistrationActivity;


# direct methods
.method constructor <init>(Lorg/thoughtcrime/securesms/RegistrationActivity;)V
    .locals 0

    .line 284
    iput-object p1, p0, Lorg/thoughtcrime/securesms/RegistrationActivity$2;->this$0:Lorg/thoughtcrime/securesms/RegistrationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/util/concurrent/ExecutionException;)V
    .locals 0

    .line 295
    iget-object p1, p0, Lorg/thoughtcrime/securesms/RegistrationActivity$2;->this$0:Lorg/thoughtcrime/securesms/RegistrationActivity;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/RegistrationActivity;->access$100(Lorg/thoughtcrime/securesms/RegistrationActivity;)V

    .line 296
    iget-object p1, p0, Lorg/thoughtcrime/securesms/RegistrationActivity$2;->this$0:Lorg/thoughtcrime/securesms/RegistrationActivity;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/RegistrationActivity;->access$200(Lorg/thoughtcrime/securesms/RegistrationActivity;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Boolean;)V
    .locals 0

    .line 287
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    .line 288
    iget-object p1, p0, Lorg/thoughtcrime/securesms/RegistrationActivity$2;->this$0:Lorg/thoughtcrime/securesms/RegistrationActivity;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/RegistrationActivity;->access$100(Lorg/thoughtcrime/securesms/RegistrationActivity;)V

    .line 289
    iget-object p1, p0, Lorg/thoughtcrime/securesms/RegistrationActivity$2;->this$0:Lorg/thoughtcrime/securesms/RegistrationActivity;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/RegistrationActivity;->access$200(Lorg/thoughtcrime/securesms/RegistrationActivity;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 284
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/RegistrationActivity$2;->onSuccess(Ljava/lang/Boolean;)V

    return-void
.end method
