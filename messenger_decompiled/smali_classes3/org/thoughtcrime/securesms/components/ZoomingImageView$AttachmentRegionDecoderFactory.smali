.class Lorg/thoughtcrime/securesms/components/ZoomingImageView$AttachmentRegionDecoderFactory;
.super Ljava/lang/Object;
.source "ZoomingImageView.java"

# interfaces
.implements Lcom/davemorrissey/labs/subscaleview/decoder/DecoderFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/components/ZoomingImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AttachmentRegionDecoderFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/davemorrissey/labs/subscaleview/decoder/DecoderFactory<",
        "Lorg/thoughtcrime/securesms/components/subsampling/AttachmentRegionDecoder;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/thoughtcrime/securesms/components/ZoomingImageView$1;)V
    .locals 0

    .line 131
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/components/ZoomingImageView$AttachmentRegionDecoderFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic make()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 131
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/ZoomingImageView$AttachmentRegionDecoderFactory;->make()Lorg/thoughtcrime/securesms/components/subsampling/AttachmentRegionDecoder;

    move-result-object v0

    return-object v0
.end method

.method public make()Lorg/thoughtcrime/securesms/components/subsampling/AttachmentRegionDecoder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 134
    new-instance v0, Lorg/thoughtcrime/securesms/components/subsampling/AttachmentRegionDecoder;

    invoke-direct {v0}, Lorg/thoughtcrime/securesms/components/subsampling/AttachmentRegionDecoder;-><init>()V

    return-object v0
.end method
