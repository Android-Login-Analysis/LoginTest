.class public final synthetic Lorg/thoughtcrime/securesms/components/RecentPhotoViewRail$RecentPhotoAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/thoughtcrime/securesms/components/RecentPhotoViewRail$RecentPhotoAdapter;

.field public final synthetic f$1:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lorg/thoughtcrime/securesms/components/RecentPhotoViewRail$RecentPhotoAdapter;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/RecentPhotoViewRail$RecentPhotoAdapter$$ExternalSyntheticLambda0;->f$0:Lorg/thoughtcrime/securesms/components/RecentPhotoViewRail$RecentPhotoAdapter;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/components/RecentPhotoViewRail$RecentPhotoAdapter$$ExternalSyntheticLambda0;->f$1:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/RecentPhotoViewRail$RecentPhotoAdapter$$ExternalSyntheticLambda0;->f$0:Lorg/thoughtcrime/securesms/components/RecentPhotoViewRail$RecentPhotoAdapter;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/RecentPhotoViewRail$RecentPhotoAdapter$$ExternalSyntheticLambda0;->f$1:Landroid/net/Uri;

    invoke-virtual {v0, v1, p1}, Lorg/thoughtcrime/securesms/components/RecentPhotoViewRail$RecentPhotoAdapter;->lambda$onBindItemViewHolder$0$org-thoughtcrime-securesms-components-RecentPhotoViewRail$RecentPhotoAdapter(Landroid/net/Uri;Landroid/view/View;)V

    return-void
.end method
