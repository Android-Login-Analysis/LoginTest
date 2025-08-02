.class final Lorg/thoughtcrime/securesms/util/guava/Absent;
.super Lorg/thoughtcrime/securesms/util/guava/Optional;
.source "Absent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/thoughtcrime/securesms/util/guava/Optional<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lorg/thoughtcrime/securesms/util/guava/Absent;

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lorg/thoughtcrime/securesms/util/guava/Absent;

    invoke-direct {v0}, Lorg/thoughtcrime/securesms/util/guava/Absent;-><init>()V

    sput-object v0, Lorg/thoughtcrime/securesms/util/guava/Absent;->INSTANCE:Lorg/thoughtcrime/securesms/util/guava/Absent;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/util/guava/Optional;-><init>()V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 83
    sget-object v0, Lorg/thoughtcrime/securesms/util/guava/Absent;->INSTANCE:Lorg/thoughtcrime/securesms/util/guava/Absent;

    return-object v0
.end method


# virtual methods
.method public asSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 61
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public get()Ljava/lang/Object;
    .locals 2

    .line 39
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "value is absent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 1

    const v0, 0x598df91c

    return v0
.end method

.method public isPresent()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public or(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const-string v0, "use orNull() instead of or(null)"

    .line 43
    invoke-static {p1, v0}, Lorg/thoughtcrime/securesms/util/guava/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public or(Lorg/thoughtcrime/securesms/util/guava/Supplier;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/thoughtcrime/securesms/util/guava/Supplier<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 52
    invoke-interface {p1}, Lorg/thoughtcrime/securesms/util/guava/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "use orNull() instead of a Supplier that returns null"

    invoke-static {p1, v0}, Lorg/thoughtcrime/securesms/util/guava/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public or(Lorg/thoughtcrime/securesms/util/guava/Optional;)Lorg/thoughtcrime/securesms/util/guava/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/thoughtcrime/securesms/util/guava/Optional<",
            "*>;)",
            "Lorg/thoughtcrime/securesms/util/guava/Optional<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 48
    invoke-static {p1}, Lorg/thoughtcrime/securesms/util/guava/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/thoughtcrime/securesms/util/guava/Optional;

    return-object p1
.end method

.method public orNull()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Optional.absent()"

    return-object v0
.end method

.method public transform(Lorg/thoughtcrime/securesms/util/guava/Function;)Lorg/thoughtcrime/securesms/util/guava/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/thoughtcrime/securesms/util/guava/Function<",
            "-",
            "Ljava/lang/Object;",
            "TV;>;)",
            "Lorg/thoughtcrime/securesms/util/guava/Optional<",
            "TV;>;"
        }
    .end annotation

    .line 66
    invoke-static {p1}, Lorg/thoughtcrime/securesms/util/guava/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    invoke-static {}, Lorg/thoughtcrime/securesms/util/guava/Optional;->absent()Lorg/thoughtcrime/securesms/util/guava/Optional;

    move-result-object p1

    return-object p1
.end method
