.class public final synthetic Lorg/thoughtcrime/securesms/components/AvatarImageView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/thoughtcrime/securesms/components/AvatarImageView;

.field public final synthetic f$1:Lorg/thoughtcrime/securesms/recipients/Recipient;


# direct methods
.method public synthetic constructor <init>(Lorg/thoughtcrime/securesms/components/AvatarImageView;Lorg/thoughtcrime/securesms/recipients/Recipient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/AvatarImageView$$ExternalSyntheticLambda0;->f$0:Lorg/thoughtcrime/securesms/components/AvatarImageView;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/components/AvatarImageView$$ExternalSyntheticLambda0;->f$1:Lorg/thoughtcrime/securesms/recipients/Recipient;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/AvatarImageView$$ExternalSyntheticLambda0;->f$0:Lorg/thoughtcrime/securesms/components/AvatarImageView;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/AvatarImageView$$ExternalSyntheticLambda0;->f$1:Lorg/thoughtcrime/securesms/recipients/Recipient;

    invoke-virtual {v0, v1, p1}, Lorg/thoughtcrime/securesms/components/AvatarImageView;->lambda$setAvatarClickHandler$0$org-thoughtcrime-securesms-components-AvatarImageView(Lorg/thoughtcrime/securesms/recipients/Recipient;Landroid/view/View;)V

    return-void
.end method
