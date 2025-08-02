.class public final synthetic Lorg/thoughtcrime/securesms/mms/AttachmentManager$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/thoughtcrime/securesms/ShareLocationDialog$ShareLocationDurationSelectionListener;


# instance fields
.field public final synthetic f$0:Lorg/thoughtcrime/securesms/geolocation/DcLocationManager;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lorg/thoughtcrime/securesms/geolocation/DcLocationManager;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$$ExternalSyntheticLambda4;->f$0:Lorg/thoughtcrime/securesms/geolocation/DcLocationManager;

    iput p2, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$$ExternalSyntheticLambda4;->f$1:I

    return-void
.end method


# virtual methods
.method public final onSelected(I)V
    .locals 2

    iget-object v0, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$$ExternalSyntheticLambda4;->f$0:Lorg/thoughtcrime/securesms/geolocation/DcLocationManager;

    iget v1, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$$ExternalSyntheticLambda4;->f$1:I

    invoke-static {v0, v1, p1}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->lambda$selectLocation$3(Lorg/thoughtcrime/securesms/geolocation/DcLocationManager;II)V

    return-void
.end method
