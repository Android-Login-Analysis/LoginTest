.class public Lorg/thoughtcrime/securesms/video/recode/Sample;
.super Ljava/lang/Object;
.source "Sample.java"


# instance fields
.field private offset:J

.field private size:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-wide p1, p0, Lorg/thoughtcrime/securesms/video/recode/Sample;->offset:J

    .line 9
    iput-wide p3, p0, Lorg/thoughtcrime/securesms/video/recode/Sample;->size:J

    return-void
.end method


# virtual methods
.method public getOffset()J
    .locals 2

    .line 13
    iget-wide v0, p0, Lorg/thoughtcrime/securesms/video/recode/Sample;->offset:J

    return-wide v0
.end method

.method public getSize()J
    .locals 2

    .line 17
    iget-wide v0, p0, Lorg/thoughtcrime/securesms/video/recode/Sample;->size:J

    return-wide v0
.end method
