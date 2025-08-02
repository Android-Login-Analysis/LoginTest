.class Lcom/github/penfeizhou/animation/apng/decode/APNGDecoder$SnapShot;
.super Ljava/lang/Object;
.source "APNGDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/penfeizhou/animation/apng/decode/APNGDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SnapShot"
.end annotation


# instance fields
.field byteBuffer:Ljava/nio/ByteBuffer;

.field dispose_op:B

.field dstRect:Landroid/graphics/Rect;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/github/penfeizhou/animation/apng/decode/APNGDecoder$SnapShot;->dstRect:Landroid/graphics/Rect;

    return-void
.end method

.method synthetic constructor <init>(Lcom/github/penfeizhou/animation/apng/decode/APNGDecoder$1;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/github/penfeizhou/animation/apng/decode/APNGDecoder$SnapShot;-><init>()V

    return-void
.end method
