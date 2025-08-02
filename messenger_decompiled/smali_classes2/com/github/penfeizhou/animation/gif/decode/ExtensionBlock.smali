.class public abstract Lcom/github/penfeizhou/animation/gif/decode/ExtensionBlock;
.super Ljava/lang/Object;
.source "ExtensionBlock.java"

# interfaces
.implements Lcom/github/penfeizhou/animation/gif/decode/Block;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static retrieve(Lcom/github/penfeizhou/animation/gif/io/GifReader;)Lcom/github/penfeizhou/animation/gif/decode/ExtensionBlock;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14
    invoke-virtual {p0}, Lcom/github/penfeizhou/animation/gif/io/GifReader;->peek()B

    move-result p0

    const/4 v0, -0x7

    if-eq p0, v0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, -0x2

    if-eq p0, v0, :cond_1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    .line 27
    new-instance p0, Lcom/github/penfeizhou/animation/gif/decode/ApplicationExtension;

    invoke-direct {p0}, Lcom/github/penfeizhou/animation/gif/decode/ApplicationExtension;-><init>()V

    goto :goto_0

    .line 30
    :cond_0
    new-instance p0, Lcom/github/penfeizhou/animation/gif/decode/GifParser$FormatException;

    invoke-direct {p0}, Lcom/github/penfeizhou/animation/gif/decode/GifParser$FormatException;-><init>()V

    throw p0

    .line 21
    :cond_1
    new-instance p0, Lcom/github/penfeizhou/animation/gif/decode/CommentExtension;

    invoke-direct {p0}, Lcom/github/penfeizhou/animation/gif/decode/CommentExtension;-><init>()V

    goto :goto_0

    .line 24
    :cond_2
    new-instance p0, Lcom/github/penfeizhou/animation/gif/decode/PlaintTextExtension;

    invoke-direct {p0}, Lcom/github/penfeizhou/animation/gif/decode/PlaintTextExtension;-><init>()V

    goto :goto_0

    .line 18
    :cond_3
    new-instance p0, Lcom/github/penfeizhou/animation/gif/decode/GraphicControlExtension;

    invoke-direct {p0}, Lcom/github/penfeizhou/animation/gif/decode/GraphicControlExtension;-><init>()V

    :goto_0
    return-object p0
.end method
