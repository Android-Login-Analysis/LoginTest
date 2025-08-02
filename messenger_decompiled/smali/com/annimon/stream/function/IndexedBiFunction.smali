.class public interface abstract Lcom/annimon/stream/function/IndexedBiFunction;
.super Ljava/lang/Object;
.source "IndexedBiFunction.java"


# annotations
.annotation runtime Lcom/annimon/stream/function/FunctionalInterface;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/annimon/stream/function/IndexedBiFunction$Util;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract apply(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;TU;)TR;"
        }
    .end annotation
.end method
