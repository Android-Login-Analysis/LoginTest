.class Lorg/thoughtcrime/securesms/qr/QrActivity$ProfilePagerAdapter;
.super Landroidx/fragment/app/FragmentStatePagerAdapter;
.source "QrActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/qr/QrActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProfilePagerAdapter"
.end annotation


# instance fields
.field private final activity:Lorg/thoughtcrime/securesms/qr/QrActivity;

.field final synthetic this$0:Lorg/thoughtcrime/securesms/qr/QrActivity;


# direct methods
.method constructor <init>(Lorg/thoughtcrime/securesms/qr/QrActivity;Lorg/thoughtcrime/securesms/qr/QrActivity;Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lorg/thoughtcrime/securesms/qr/QrActivity$ProfilePagerAdapter;->this$0:Lorg/thoughtcrime/securesms/qr/QrActivity;

    const/4 p1, 0x1

    .line 221
    invoke-direct {p0, p3, p1}, Landroidx/fragment/app/FragmentStatePagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;I)V

    .line 222
    iput-object p2, p0, Lorg/thoughtcrime/securesms/qr/QrActivity$ProfilePagerAdapter;->activity:Lorg/thoughtcrime/securesms/qr/QrActivity;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 1

    if-eqz p1, :cond_0

    .line 237
    new-instance p1, Lorg/thoughtcrime/securesms/qr/QrScanFragment;

    invoke-direct {p1}, Lorg/thoughtcrime/securesms/qr/QrScanFragment;-><init>()V

    goto :goto_0

    .line 232
    :cond_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/qr/QrActivity$ProfilePagerAdapter;->activity:Lorg/thoughtcrime/securesms/qr/QrActivity;

    new-instance v0, Lorg/thoughtcrime/securesms/qr/QrShowFragment;

    invoke-direct {v0}, Lorg/thoughtcrime/securesms/qr/QrShowFragment;-><init>()V

    invoke-static {p1, v0}, Lorg/thoughtcrime/securesms/qr/QrActivity;->access$202(Lorg/thoughtcrime/securesms/qr/QrActivity;Lorg/thoughtcrime/securesms/qr/QrShowFragment;)Lorg/thoughtcrime/securesms/qr/QrShowFragment;

    .line 233
    iget-object p1, p0, Lorg/thoughtcrime/securesms/qr/QrActivity$ProfilePagerAdapter;->activity:Lorg/thoughtcrime/securesms/qr/QrActivity;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/qr/QrActivity;->access$200(Lorg/thoughtcrime/securesms/qr/QrActivity;)Lorg/thoughtcrime/securesms/qr/QrShowFragment;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    if-eqz p1, :cond_0

    .line 256
    iget-object p1, p0, Lorg/thoughtcrime/securesms/qr/QrActivity$ProfilePagerAdapter;->this$0:Lorg/thoughtcrime/securesms/qr/QrActivity;

    const v0, 0x7f12038d

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/qr/QrActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 253
    :cond_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/qr/QrActivity$ProfilePagerAdapter;->this$0:Lorg/thoughtcrime/securesms/qr/QrActivity;

    const v0, 0x7f120393

    invoke-virtual {p1, v0}, Lorg/thoughtcrime/securesms/qr/QrActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
