.class public Lcom/github/penfeizhou/animation/webp/decode/WebPParser;
.super Ljava/lang/Object;
.source "WebPParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/penfeizhou/animation/webp/decode/WebPParser$FormatException;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAWebP(Landroid/content/Context;I)Z
    .locals 1

    const/4 v0, 0x0

    .line 66
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 67
    new-instance p0, Lcom/github/penfeizhou/animation/io/StreamReader;

    invoke-direct {p0, v0}, Lcom/github/penfeizhou/animation/io/StreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-static {p0}, Lcom/github/penfeizhou/animation/webp/decode/WebPParser;->isAWebP(Lcom/github/penfeizhou/animation/io/Reader;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 73
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 75
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return p0

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_1

    .line 73
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 75
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 78
    :cond_1
    :goto_1
    throw p0

    :catch_2
    nop

    if-eqz v0, :cond_2

    .line 73
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    :catch_3
    move-exception p0

    .line 75
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_2
    const/4 p0, 0x0

    return p0
.end method

.method public static isAWebP(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 48
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 49
    new-instance p0, Lcom/github/penfeizhou/animation/io/StreamReader;

    invoke-direct {p0, v0}, Lcom/github/penfeizhou/animation/io/StreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-static {p0}, Lcom/github/penfeizhou/animation/webp/decode/WebPParser;->isAWebP(Lcom/github/penfeizhou/animation/io/Reader;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 55
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 57
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return p0

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_1

    .line 55
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 57
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 60
    :cond_1
    :goto_1
    throw p0

    :catch_2
    nop

    if-eqz v0, :cond_2

    .line 55
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    :catch_3
    move-exception p0

    .line 57
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_2
    const/4 p0, 0x0

    return p0
.end method

.method public static isAWebP(Lcom/github/penfeizhou/animation/io/Reader;)Z
    .locals 3

    .line 82
    instance-of v0, p0, Lcom/github/penfeizhou/animation/webp/io/WebPReader;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/github/penfeizhou/animation/webp/io/WebPReader;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/github/penfeizhou/animation/webp/io/WebPReader;

    invoke-direct {v0, p0}, Lcom/github/penfeizhou/animation/webp/io/WebPReader;-><init>(Lcom/github/penfeizhou/animation/io/Reader;)V

    move-object p0, v0

    :goto_0
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "RIFF"

    .line 84
    invoke-virtual {p0, v1}, Lcom/github/penfeizhou/animation/webp/io/WebPReader;->matchFourCC(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    const-wide/16 v1, 0x4

    .line 87
    invoke-virtual {p0, v1, v2}, Lcom/github/penfeizhou/animation/webp/io/WebPReader;->skip(J)J

    const-string v1, "WEBP"

    .line 88
    invoke-virtual {p0, v1}, Lcom/github/penfeizhou/animation/webp/io/WebPReader;->matchFourCC(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 91
    :cond_2
    invoke-virtual {p0}, Lcom/github/penfeizhou/animation/webp/io/WebPReader;->available()I

    move-result v1

    if-lez v1, :cond_3

    .line 92
    invoke-static {p0}, Lcom/github/penfeizhou/animation/webp/decode/WebPParser;->parseChunk(Lcom/github/penfeizhou/animation/webp/io/WebPReader;)Lcom/github/penfeizhou/animation/webp/decode/BaseChunk;

    move-result-object v1

    .line 93
    instance-of v2, v1, Lcom/github/penfeizhou/animation/webp/decode/VP8XChunk;

    if-eqz v2, :cond_2

    .line 94
    check-cast v1, Lcom/github/penfeizhou/animation/webp/decode/VP8XChunk;

    invoke-virtual {v1}, Lcom/github/penfeizhou/animation/webp/decode/VP8XChunk;->animation()Z

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 98
    instance-of v1, p0, Lcom/github/penfeizhou/animation/webp/decode/WebPParser$FormatException;

    if-nez v1, :cond_3

    .line 99
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    return v0
.end method

.method public static isAWebP(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 30
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 31
    :try_start_1
    new-instance p0, Lcom/github/penfeizhou/animation/io/StreamReader;

    invoke-direct {p0, v1}, Lcom/github/penfeizhou/animation/io/StreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-static {p0}, Lcom/github/penfeizhou/animation/webp/decode/WebPParser;->isAWebP(Lcom/github/penfeizhou/animation/io/Reader;)Z

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 39
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return p0

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_1

    :catch_1
    nop

    move-object v0, v1

    goto :goto_3

    :catchall_1
    move-exception p0

    :goto_1
    if-eqz v0, :cond_0

    .line 37
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 39
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 42
    :cond_0
    :goto_2
    throw p0

    :catch_3
    nop

    :goto_3
    if-eqz v0, :cond_1

    .line 37
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception p0

    .line 39
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_4
    const/4 p0, 0x0

    return p0
.end method

.method public static parse(Lcom/github/penfeizhou/animation/webp/io/WebPReader;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/penfeizhou/animation/webp/io/WebPReader;",
            ")",
            "Ljava/util/List<",
            "Lcom/github/penfeizhou/animation/webp/decode/BaseChunk;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "RIFF"

    .line 107
    invoke-virtual {p0, v0}, Lcom/github/penfeizhou/animation/webp/io/WebPReader;->matchFourCC(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide/16 v0, 0x4

    .line 110
    invoke-virtual {p0, v0, v1}, Lcom/github/penfeizhou/animation/webp/io/WebPReader;->skip(J)J

    const-string v0, "WEBP"

    .line 111
    invoke-virtual {p0, v0}, Lcom/github/penfeizhou/animation/webp/io/WebPReader;->matchFourCC(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 115
    :goto_0
    invoke-virtual {p0}, Lcom/github/penfeizhou/animation/webp/io/WebPReader;->available()I

    move-result v1

    if-lez v1, :cond_0

    .line 116
    invoke-static {p0}, Lcom/github/penfeizhou/animation/webp/decode/WebPParser;->parseChunk(Lcom/github/penfeizhou/animation/webp/io/WebPReader;)Lcom/github/penfeizhou/animation/webp/decode/BaseChunk;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0

    .line 112
    :cond_1
    new-instance p0, Lcom/github/penfeizhou/animation/webp/decode/WebPParser$FormatException;

    invoke-direct {p0}, Lcom/github/penfeizhou/animation/webp/decode/WebPParser$FormatException;-><init>()V

    throw p0

    .line 108
    :cond_2
    new-instance p0, Lcom/github/penfeizhou/animation/webp/decode/WebPParser$FormatException;

    invoke-direct {p0}, Lcom/github/penfeizhou/animation/webp/decode/WebPParser$FormatException;-><init>()V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method static parseChunk(Lcom/github/penfeizhou/animation/webp/io/WebPReader;)Lcom/github/penfeizhou/animation/webp/decode/BaseChunk;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    invoke-virtual {p0}, Lcom/github/penfeizhou/animation/webp/io/WebPReader;->position()I

    move-result v0

    .line 124
    invoke-virtual {p0}, Lcom/github/penfeizhou/animation/webp/io/WebPReader;->getFourCC()I

    move-result v1

    .line 125
    invoke-virtual {p0}, Lcom/github/penfeizhou/animation/webp/io/WebPReader;->getUInt32()I

    move-result v2

    .line 127
    sget v3, Lcom/github/penfeizhou/animation/webp/decode/VP8XChunk;->ID:I

    if-ne v3, v1, :cond_0

    .line 128
    new-instance v3, Lcom/github/penfeizhou/animation/webp/decode/VP8XChunk;

    invoke-direct {v3}, Lcom/github/penfeizhou/animation/webp/decode/VP8XChunk;-><init>()V

    goto :goto_0

    .line 129
    :cond_0
    sget v3, Lcom/github/penfeizhou/animation/webp/decode/ANIMChunk;->ID:I

    if-ne v3, v1, :cond_1

    .line 130
    new-instance v3, Lcom/github/penfeizhou/animation/webp/decode/ANIMChunk;

    invoke-direct {v3}, Lcom/github/penfeizhou/animation/webp/decode/ANIMChunk;-><init>()V

    goto :goto_0

    .line 131
    :cond_1
    sget v3, Lcom/github/penfeizhou/animation/webp/decode/ANMFChunk;->ID:I

    if-ne v3, v1, :cond_2

    .line 132
    new-instance v3, Lcom/github/penfeizhou/animation/webp/decode/ANMFChunk;

    invoke-direct {v3}, Lcom/github/penfeizhou/animation/webp/decode/ANMFChunk;-><init>()V

    goto :goto_0

    .line 133
    :cond_2
    sget v3, Lcom/github/penfeizhou/animation/webp/decode/ALPHChunk;->ID:I

    if-ne v3, v1, :cond_3

    .line 134
    new-instance v3, Lcom/github/penfeizhou/animation/webp/decode/ALPHChunk;

    invoke-direct {v3}, Lcom/github/penfeizhou/animation/webp/decode/ALPHChunk;-><init>()V

    goto :goto_0

    .line 135
    :cond_3
    sget v3, Lcom/github/penfeizhou/animation/webp/decode/VP8Chunk;->ID:I

    if-ne v3, v1, :cond_4

    .line 136
    new-instance v3, Lcom/github/penfeizhou/animation/webp/decode/VP8Chunk;

    invoke-direct {v3}, Lcom/github/penfeizhou/animation/webp/decode/VP8Chunk;-><init>()V

    goto :goto_0

    .line 137
    :cond_4
    sget v3, Lcom/github/penfeizhou/animation/webp/decode/VP8LChunk;->ID:I

    if-ne v3, v1, :cond_5

    .line 138
    new-instance v3, Lcom/github/penfeizhou/animation/webp/decode/VP8LChunk;

    invoke-direct {v3}, Lcom/github/penfeizhou/animation/webp/decode/VP8LChunk;-><init>()V

    goto :goto_0

    .line 139
    :cond_5
    sget v3, Lcom/github/penfeizhou/animation/webp/decode/ICCPChunk;->ID:I

    if-ne v3, v1, :cond_6

    .line 140
    new-instance v3, Lcom/github/penfeizhou/animation/webp/decode/ICCPChunk;

    invoke-direct {v3}, Lcom/github/penfeizhou/animation/webp/decode/ICCPChunk;-><init>()V

    goto :goto_0

    .line 141
    :cond_6
    sget v3, Lcom/github/penfeizhou/animation/webp/decode/XMPChunk;->ID:I

    if-ne v3, v1, :cond_7

    .line 142
    new-instance v3, Lcom/github/penfeizhou/animation/webp/decode/XMPChunk;

    invoke-direct {v3}, Lcom/github/penfeizhou/animation/webp/decode/XMPChunk;-><init>()V

    goto :goto_0

    .line 143
    :cond_7
    sget v3, Lcom/github/penfeizhou/animation/webp/decode/EXIFChunk;->ID:I

    if-ne v3, v1, :cond_8

    .line 144
    new-instance v3, Lcom/github/penfeizhou/animation/webp/decode/EXIFChunk;

    invoke-direct {v3}, Lcom/github/penfeizhou/animation/webp/decode/EXIFChunk;-><init>()V

    goto :goto_0

    .line 146
    :cond_8
    new-instance v3, Lcom/github/penfeizhou/animation/webp/decode/BaseChunk;

    invoke-direct {v3}, Lcom/github/penfeizhou/animation/webp/decode/BaseChunk;-><init>()V

    .line 148
    :goto_0
    iput v1, v3, Lcom/github/penfeizhou/animation/webp/decode/BaseChunk;->chunkFourCC:I

    .line 149
    iput v2, v3, Lcom/github/penfeizhou/animation/webp/decode/BaseChunk;->payloadSize:I

    .line 150
    iput v0, v3, Lcom/github/penfeizhou/animation/webp/decode/BaseChunk;->offset:I

    .line 151
    invoke-virtual {v3, p0}, Lcom/github/penfeizhou/animation/webp/decode/BaseChunk;->parse(Lcom/github/penfeizhou/animation/webp/io/WebPReader;)V

    return-object v3
.end method
