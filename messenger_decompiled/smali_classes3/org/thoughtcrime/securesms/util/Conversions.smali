.class public Lorg/thoughtcrime/securesms/util/Conversions;
.super Ljava/lang/Object;
.source "Conversions.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static longToByteArray([BIJ)I
    .locals 4

    add-int/lit8 v0, p1, 0x7

    long-to-int v1, p2

    int-to-byte v1, v1

    .line 28
    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x6

    const/16 v1, 0x8

    shr-long v2, p2, v1

    long-to-int v3, v2

    int-to-byte v2, v3

    .line 29
    aput-byte v2, p0, v0

    add-int/lit8 v0, p1, 0x5

    const/16 v2, 0x10

    shr-long v2, p2, v2

    long-to-int v3, v2

    int-to-byte v2, v3

    .line 30
    aput-byte v2, p0, v0

    add-int/lit8 v0, p1, 0x4

    const/16 v2, 0x18

    shr-long v2, p2, v2

    long-to-int v3, v2

    int-to-byte v2, v3

    .line 31
    aput-byte v2, p0, v0

    add-int/lit8 v0, p1, 0x3

    const/16 v2, 0x20

    shr-long v2, p2, v2

    long-to-int v3, v2

    int-to-byte v2, v3

    .line 32
    aput-byte v2, p0, v0

    add-int/lit8 v0, p1, 0x2

    const/16 v2, 0x28

    shr-long v2, p2, v2

    long-to-int v3, v2

    int-to-byte v2, v3

    .line 33
    aput-byte v2, p0, v0

    add-int/lit8 v0, p1, 0x1

    const/16 v2, 0x30

    shr-long v2, p2, v2

    long-to-int v3, v2

    int-to-byte v2, v3

    .line 34
    aput-byte v2, p0, v0

    const/16 v0, 0x38

    shr-long/2addr p2, v0

    long-to-int p3, p2

    int-to-byte p2, p3

    .line 35
    aput-byte p2, p0, p1

    return v1
.end method

.method public static longToByteArray(J)[B
    .locals 2

    const/16 v0, 0x8

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 23
    invoke-static {v0, v1, p0, p1}, Lorg/thoughtcrime/securesms/util/Conversions;->longToByteArray([BIJ)I

    return-object v0
.end method
