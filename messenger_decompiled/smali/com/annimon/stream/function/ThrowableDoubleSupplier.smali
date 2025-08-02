.class public interface abstract Lcom/annimon/stream/function/ThrowableDoubleSupplier;
.super Ljava/lang/Object;
.source "ThrowableDoubleSupplier.java"


# annotations
.annotation runtime Lcom/annimon/stream/function/FunctionalInterface;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Throwable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getAsDouble()D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()D^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method
