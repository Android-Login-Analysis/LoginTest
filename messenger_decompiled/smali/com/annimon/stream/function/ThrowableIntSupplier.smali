.class public interface abstract Lcom/annimon/stream/function/ThrowableIntSupplier;
.super Ljava/lang/Object;
.source "ThrowableIntSupplier.java"


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
.method public abstract getAsInt()I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()I^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method
