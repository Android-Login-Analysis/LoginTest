.class public final synthetic Lorg/thoughtcrime/securesms/ProfileGalleryAdapter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lorg/thoughtcrime/securesms/ProfileGalleryAdapter;

.field public final synthetic f$1:Lcom/b44t/messenger/DcMsg;


# direct methods
.method public synthetic constructor <init>(Lorg/thoughtcrime/securesms/ProfileGalleryAdapter;Lcom/b44t/messenger/DcMsg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/ProfileGalleryAdapter$$ExternalSyntheticLambda1;->f$0:Lorg/thoughtcrime/securesms/ProfileGalleryAdapter;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/ProfileGalleryAdapter$$ExternalSyntheticLambda1;->f$1:Lcom/b44t/messenger/DcMsg;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    iget-object v0, p0, Lorg/thoughtcrime/securesms/ProfileGalleryAdapter$$ExternalSyntheticLambda1;->f$0:Lorg/thoughtcrime/securesms/ProfileGalleryAdapter;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/ProfileGalleryAdapter$$ExternalSyntheticLambda1;->f$1:Lcom/b44t/messenger/DcMsg;

    invoke-virtual {v0, v1, p1}, Lorg/thoughtcrime/securesms/ProfileGalleryAdapter;->lambda$onBindItemViewHolder$1$org-thoughtcrime-securesms-ProfileGalleryAdapter(Lcom/b44t/messenger/DcMsg;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
