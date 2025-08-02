.class public final synthetic Lorg/thoughtcrime/securesms/components/ScaleStableImageView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/thoughtcrime/securesms/components/ScaleStableImageView;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/thoughtcrime/securesms/components/ScaleStableImageView;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/ScaleStableImageView$$ExternalSyntheticLambda1;->f$0:Lorg/thoughtcrime/securesms/components/ScaleStableImageView;

    iput p2, p0, Lorg/thoughtcrime/securesms/components/ScaleStableImageView$$ExternalSyntheticLambda1;->f$1:I

    iput p3, p0, Lorg/thoughtcrime/securesms/components/ScaleStableImageView$$ExternalSyntheticLambda1;->f$2:I

    iput-object p4, p0, Lorg/thoughtcrime/securesms/components/ScaleStableImageView$$ExternalSyntheticLambda1;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/ScaleStableImageView$$ExternalSyntheticLambda1;->f$0:Lorg/thoughtcrime/securesms/components/ScaleStableImageView;

    iget v1, p0, Lorg/thoughtcrime/securesms/components/ScaleStableImageView$$ExternalSyntheticLambda1;->f$1:I

    iget v2, p0, Lorg/thoughtcrime/securesms/components/ScaleStableImageView$$ExternalSyntheticLambda1;->f$2:I

    iget-object v3, p0, Lorg/thoughtcrime/securesms/components/ScaleStableImageView$$ExternalSyntheticLambda1;->f$3:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lorg/thoughtcrime/securesms/components/ScaleStableImageView;->lambda$onSizeChanged$1$org-thoughtcrime-securesms-components-ScaleStableImageView(IILjava/lang/String;)V

    return-void
.end method
