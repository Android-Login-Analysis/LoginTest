.class public final synthetic Lorg/thoughtcrime/securesms/qr/QrActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public synthetic constructor <init>(Landroidx/viewpager/widget/ViewPager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/qr/QrActivity$$ExternalSyntheticLambda1;->f$0:Landroidx/viewpager/widget/ViewPager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/thoughtcrime/securesms/qr/QrActivity$$ExternalSyntheticLambda1;->f$0:Landroidx/viewpager/widget/ViewPager;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/qr/QrActivity;->lambda$checkPermissions$1(Landroidx/viewpager/widget/ViewPager;)V

    return-void
.end method
