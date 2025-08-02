.class public interface abstract Lcom/b44t/messenger/util/concurrent/ListenableFuture;
.super Ljava/lang/Object;
.source "ListenableFuture.java"

# interfaces
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b44t/messenger/util/concurrent/ListenableFuture$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public abstract addListener(Lcom/b44t/messenger/util/concurrent/ListenableFuture$Listener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b44t/messenger/util/concurrent/ListenableFuture$Listener<",
            "TT;>;)V"
        }
    .end annotation
.end method
