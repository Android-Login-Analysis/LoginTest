.class public final synthetic Lcom/google/common/base/Predicate$-CC;
.super Ljava/lang/Object;
.source "Predicate.java"


# direct methods
.method public static $default$test(Lcom/google/common/base/Predicate;Ljava/lang/Object;)Z
    .locals 0
    .param p0, "_this"    # Lcom/google/common/base/Predicate;
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/base/ParametricNullness;
        .end annotation
    .end param

    .line 81
    invoke-interface {p0, p1}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
