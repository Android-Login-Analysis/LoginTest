.class public Lorg/thoughtcrime/securesms/util/views/Stub;
.super Ljava/lang/Object;
.source "Stub.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private view:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private viewStub:Landroid/view/ViewStub;


# direct methods
.method public constructor <init>(Landroid/view/ViewStub;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lorg/thoughtcrime/securesms/util/views/Stub;->viewStub:Landroid/view/ViewStub;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lorg/thoughtcrime/securesms/util/views/Stub;->view:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 18
    iget-object v0, p0, Lorg/thoughtcrime/securesms/util/views/Stub;->viewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/thoughtcrime/securesms/util/views/Stub;->view:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lorg/thoughtcrime/securesms/util/views/Stub;->viewStub:Landroid/view/ViewStub;

    .line 22
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/util/views/Stub;->view:Ljava/lang/Object;

    return-object v0
.end method

.method public resolved()Z
    .locals 1

    .line 26
    iget-object v0, p0, Lorg/thoughtcrime/securesms/util/views/Stub;->view:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
