.class public Lorg/thoughtcrime/securesms/util/Pair;
.super Ljava/lang/Object;
.source "Pair.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T1:",
        "Ljava/lang/Object;",
        "T2:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final v1:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT1;"
        }
    .end annotation
.end field

.field private final v2:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT2;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT1;TT2;)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lorg/thoughtcrime/securesms/util/Pair;->v1:Ljava/lang/Object;

    .line 14
    iput-object p2, p0, Lorg/thoughtcrime/securesms/util/Pair;->v2:Ljava/lang/Object;

    return-void
.end method

.method private equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 26
    instance-of v0, p1, Lorg/thoughtcrime/securesms/util/Pair;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/thoughtcrime/securesms/util/Pair;

    .line 27
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/util/Pair;->first()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/util/Pair;->first()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/thoughtcrime/securesms/util/Pair;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/util/Pair;->second()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/util/Pair;->second()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/thoughtcrime/securesms/util/Pair;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public first()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT1;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lorg/thoughtcrime/securesms/util/Pair;->v1:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 32
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/util/Pair;->first()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/util/Pair;->second()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public second()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT2;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lorg/thoughtcrime/securesms/util/Pair;->v2:Ljava/lang/Object;

    return-object v0
.end method
