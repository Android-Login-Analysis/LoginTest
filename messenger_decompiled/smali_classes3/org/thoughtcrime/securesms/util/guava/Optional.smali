.class public abstract Lorg/thoughtcrime/securesms/util/guava/Optional;
.super Ljava/lang/Object;
.source "Optional.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>()V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static absent()Lorg/thoughtcrime/securesms/util/guava/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/thoughtcrime/securesms/util/guava/Optional<",
            "TT;>;"
        }
    .end annotation

    .line 73
    sget-object v0, Lorg/thoughtcrime/securesms/util/guava/Absent;->INSTANCE:Lorg/thoughtcrime/securesms/util/guava/Absent;

    return-object v0
.end method

.method public static fromNullable(Ljava/lang/Object;)Lorg/thoughtcrime/securesms/util/guava/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lorg/thoughtcrime/securesms/util/guava/Optional<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 89
    invoke-static {}, Lorg/thoughtcrime/securesms/util/guava/Optional;->absent()Lorg/thoughtcrime/securesms/util/guava/Optional;

    move-result-object p0

    goto :goto_0

    .line 90
    :cond_0
    new-instance v0, Lorg/thoughtcrime/securesms/util/guava/Present;

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/util/guava/Present;-><init>(Ljava/lang/Object;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static of(Ljava/lang/Object;)Lorg/thoughtcrime/securesms/util/guava/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lorg/thoughtcrime/securesms/util/guava/Optional<",
            "TT;>;"
        }
    .end annotation

    .line 80
    new-instance v0, Lorg/thoughtcrime/securesms/util/guava/Present;

    invoke-static {p0}, Lorg/thoughtcrime/securesms/util/guava/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/util/guava/Present;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public abstract asSet()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract get()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract hashCode()I
.end method

.method public abstract isPresent()Z
.end method

.method public abstract or(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation
.end method

.method public abstract or(Lorg/thoughtcrime/securesms/util/guava/Supplier;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/thoughtcrime/securesms/util/guava/Supplier<",
            "+TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract or(Lorg/thoughtcrime/securesms/util/guava/Optional;)Lorg/thoughtcrime/securesms/util/guava/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/thoughtcrime/securesms/util/guava/Optional<",
            "+TT;>;)",
            "Lorg/thoughtcrime/securesms/util/guava/Optional<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract orNull()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method public abstract transform(Lorg/thoughtcrime/securesms/util/guava/Function;)Lorg/thoughtcrime/securesms/util/guava/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/thoughtcrime/securesms/util/guava/Function<",
            "-TT;TV;>;)",
            "Lorg/thoughtcrime/securesms/util/guava/Optional<",
            "TV;>;"
        }
    .end annotation
.end method
