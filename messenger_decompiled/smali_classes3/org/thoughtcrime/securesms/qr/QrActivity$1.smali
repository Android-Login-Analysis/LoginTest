.class Lorg/thoughtcrime/securesms/qr/QrActivity$1;
.super Ljava/lang/Object;
.source "QrActivity.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/thoughtcrime/securesms/qr/QrActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/qr/QrActivity;

.field final synthetic val$adapter:Lorg/thoughtcrime/securesms/qr/QrActivity$ProfilePagerAdapter;


# direct methods
.method constructor <init>(Lorg/thoughtcrime/securesms/qr/QrActivity;Lorg/thoughtcrime/securesms/qr/QrActivity$ProfilePagerAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 79
    iput-object p1, p0, Lorg/thoughtcrime/securesms/qr/QrActivity$1;->this$0:Lorg/thoughtcrime/securesms/qr/QrActivity;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/qr/QrActivity$1;->val$adapter:Lorg/thoughtcrime/securesms/qr/QrActivity$ProfilePagerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    .line 86
    iget-object v0, p0, Lorg/thoughtcrime/securesms/qr/QrActivity$1;->this$0:Lorg/thoughtcrime/securesms/qr/QrActivity;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/qr/QrActivity;->invalidateOptionsMenu()V

    .line 87
    iget-object v0, p0, Lorg/thoughtcrime/securesms/qr/QrActivity$1;->this$0:Lorg/thoughtcrime/securesms/qr/QrActivity;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/qr/QrActivity$1;->val$adapter:Lorg/thoughtcrime/securesms/qr/QrActivity$ProfilePagerAdapter;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/qr/QrActivity;->access$000(Lorg/thoughtcrime/securesms/qr/QrActivity;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lorg/thoughtcrime/securesms/qr/QrActivity;->access$100(Lorg/thoughtcrime/securesms/qr/QrActivity;ILorg/thoughtcrime/securesms/qr/QrActivity$ProfilePagerAdapter;Landroidx/viewpager/widget/ViewPager;)V

    return-void
.end method
