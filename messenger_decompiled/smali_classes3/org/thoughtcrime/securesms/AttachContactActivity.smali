.class public Lorg/thoughtcrime/securesms/AttachContactActivity;
.super Lorg/thoughtcrime/securesms/ContactSelectionActivity;
.source "AttachContactActivity.java"


# static fields
.field public static final CONTACT_ID_EXTRA:Ljava/lang/String; = "contact_id_extra"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/ContactSelectionActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onContactSelected(ILjava/lang/String;)V
    .locals 1

    .line 13
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 14
    invoke-static {p0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/b44t/messenger/DcContext;->lookupContactIdByAddr(Ljava/lang/String;)I

    move-result p2

    const-string v0, "contact_id_extra"

    .line 15
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 p2, -0x1

    .line 16
    invoke-virtual {p0, p2, p1}, Lorg/thoughtcrime/securesms/AttachContactActivity;->setResult(ILandroid/content/Intent;)V

    .line 17
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/AttachContactActivity;->finish()V

    return-void
.end method
