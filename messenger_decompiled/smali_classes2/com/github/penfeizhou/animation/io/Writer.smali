.class public interface abstract Lcom/github/penfeizhou/animation/io/Writer;
.super Ljava/lang/Object;
.source "Writer.java"


# virtual methods
.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract position()I
.end method

.method public abstract putByte(B)V
.end method

.method public abstract putBytes([B)V
.end method

.method public abstract reset(I)V
.end method

.method public abstract skip(I)V
.end method

.method public abstract toByteArray()[B
.end method
