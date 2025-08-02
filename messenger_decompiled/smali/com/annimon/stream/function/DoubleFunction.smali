.class public interface abstract Lcom/annimon/stream/function/DoubleFunction;
.super Ljava/lang/Object;
.source "DoubleFunction.java"


# annotations
.annotation runtime Lcom/annimon/stream/function/FunctionalInterface;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/annimon/stream/function/DoubleFunction$Util;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract apply(D)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TR;"
        }
    .end annotation
.end method
