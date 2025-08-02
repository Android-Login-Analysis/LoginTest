.class final Lorg/thoughtcrime/securesms/util/guava/Present;
.super Lorg/thoughtcrime/securesms/util/guava/Optional;
.source "Present.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/thoughtcrime/securesms/util/guava/Optional<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final reference:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/util/guava/Optional;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/thoughtcrime/securesms/util/guava/Present;->reference:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public asSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lorg/thoughtcrime/securesms/util/guava/Present;->reference:Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 72
    instance-of v0, p1, Lorg/thoughtcrime/securesms/util/guava/Present;

    if-eqz v0, :cond_0

    .line 73
    check-cast p1, Lorg/thoughtcrime/securesms/util/guava/Present;

    .line 74
    iget-object v0, p0, Lorg/thoughtcrime/securesms/util/guava/Present;->reference:Ljava/lang/Object;

    iget-object p1, p1, Lorg/thoughtcrime/securesms/util/guava/Present;->reference:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lorg/thoughtcrime/securesms/util/guava/Present;->reference:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 80
    iget-object v0, p0, Lorg/thoughtcrime/securesms/util/guava/Present;->reference:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0x598df91c

    add-int/2addr v0, v1

    return v0
.end method

.method public isPresent()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public or(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    const-string v0, "use orNull() instead of or(null)"

    .line 44
    invoke-static {p1, v0}, Lorg/thoughtcrime/securesms/util/guava/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object p1, p0, Lorg/thoughtcrime/securesms/util/guava/Present;->reference:Ljava/lang/Object;

    return-object p1
.end method

.method public or(Lorg/thoughtcrime/securesms/util/guava/Supplier;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/thoughtcrime/securesms/util/guava/Supplier<",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 54
    invoke-static {p1}, Lorg/thoughtcrime/securesms/util/guava/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object p1, p0, Lorg/thoughtcrime/securesms/util/guava/Present;->reference:Ljava/lang/Object;

    return-object p1
.end method

.method public or(Lorg/thoughtcrime/securesms/util/guava/Optional;)Lorg/thoughtcrime/securesms/util/guava/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/thoughtcrime/securesms/util/guava/Optional<",
            "+TT;>;)",
            "Lorg/thoughtcrime/securesms/util/guava/Optional<",
            "TT;>;"
        }
    .end annotation

    .line 49
    invoke-static {p1}, Lorg/thoughtcrime/securesms/util/guava/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public orNull()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lorg/thoughtcrime/securesms/util/guava/Present;->reference:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Optional.of("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/thoughtcrime/securesms/util/guava/Present;->reference:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transform(Lorg/thoughtcrime/securesms/util/guava/Function;)Lorg/thoughtcrime/securesms/util/guava/Optional;
    .locals 2
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

    .line 67
    new-instance v0, Lorg/thoughtcrime/securesms/util/guava/Present;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/util/guava/Present;->reference:Ljava/lang/Object;

    invoke-interface {p1, v1}, Lorg/thoughtcrime/securesms/util/guava/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Transformation function cannot return null."

    invoke-static {p1, v1}, Lorg/thoughtcrime/securesms/util/guava/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/thoughtcrime/securesms/util/guava/Present;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
