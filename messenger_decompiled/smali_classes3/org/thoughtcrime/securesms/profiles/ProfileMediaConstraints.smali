.class public Lorg/thoughtcrime/securesms/profiles/ProfileMediaConstraints;
.super Lorg/thoughtcrime/securesms/mms/MediaConstraints;
.source "ProfileMediaConstraints.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/mms/MediaConstraints;-><init>()V

    return-void
.end method


# virtual methods
.method public getImageMaxHeight(Landroid/content/Context;)I
    .locals 0

    const/16 p1, 0x280

    return p1
.end method

.method public getImageMaxSize(Landroid/content/Context;)I
    .locals 0

    const/high16 p1, 0x500000

    return p1
.end method

.method public getImageMaxWidth(Landroid/content/Context;)I
    .locals 0

    const/16 p1, 0x280

    return p1
.end method
