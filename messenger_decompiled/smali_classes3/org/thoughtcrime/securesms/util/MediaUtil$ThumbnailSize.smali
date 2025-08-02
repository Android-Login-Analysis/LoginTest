.class public Lorg/thoughtcrime/securesms/util/MediaUtil$ThumbnailSize;
.super Ljava/lang/Object;
.source "MediaUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/util/MediaUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThumbnailSize"
.end annotation


# instance fields
.field public height:I

.field public width:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    iput p1, p0, Lorg/thoughtcrime/securesms/util/MediaUtil$ThumbnailSize;->width:I

    .line 258
    iput p2, p0, Lorg/thoughtcrime/securesms/util/MediaUtil$ThumbnailSize;->height:I

    return-void
.end method
