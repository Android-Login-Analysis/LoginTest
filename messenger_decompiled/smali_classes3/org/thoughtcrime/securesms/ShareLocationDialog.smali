.class public Lorg/thoughtcrime/securesms/ShareLocationDialog;
.super Ljava/lang/Object;
.source "ShareLocationDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/ShareLocationDialog$ShareLocationDurationSelectionListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$show$0(Lorg/thoughtcrime/securesms/ShareLocationDialog$ShareLocationDurationSelectionListener;Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x1

    if-eq p2, p1, :cond_3

    const/4 p1, 0x2

    if-eq p2, p1, :cond_2

    const/4 p1, 0x3

    if-eq p2, p1, :cond_1

    const/4 p1, 0x4

    if-eq p2, p1, :cond_0

    const/16 p1, 0x12c

    goto :goto_0

    :cond_0
    const/16 p1, 0x5460

    goto :goto_0

    :cond_1
    const/16 p1, 0x1c20

    goto :goto_0

    :cond_2
    const/16 p1, 0xe10

    goto :goto_0

    :cond_3
    const/16 p1, 0x708

    .line 24
    :goto_0
    invoke-interface {p0, p1}, Lorg/thoughtcrime/securesms/ShareLocationDialog$ShareLocationDurationSelectionListener;->onSelected(I)V

    return-void
.end method

.method public static show(Landroid/content/Context;Lorg/thoughtcrime/securesms/ShareLocationDialog$ShareLocationDurationSelectionListener;)V
    .locals 1

    .line 10
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p0, 0x7f120407

    .line 11
    invoke-virtual {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 12
    new-instance p0, Lorg/thoughtcrime/securesms/ShareLocationDialog$$ExternalSyntheticLambda0;

    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/ShareLocationDialog$$ExternalSyntheticLambda0;-><init>(Lorg/thoughtcrime/securesms/ShareLocationDialog$ShareLocationDurationSelectionListener;)V

    const p1, 0x7f030024

    invoke-virtual {v0, p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 27
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method
