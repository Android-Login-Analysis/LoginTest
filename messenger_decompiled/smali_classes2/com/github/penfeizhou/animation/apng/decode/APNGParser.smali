.class public Lcom/github/penfeizhou/animation/apng/decode/APNGParser;
.super Ljava/lang/Object;
.source "APNGParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/penfeizhou/animation/apng/decode/APNGParser$FormatException;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAPNG(Landroid/content/Context;I)Z
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

    invoke-static {p0}, Lcom/github/penfeizhou/animation/apng/decode/APNGParser;->isAPNG(Lcom/github/penfeizhou/animation/io/Reader;)Z

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

.method public static isAPNG(Landroid/content/Context;Ljava/lang/String;)Z
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

    invoke-static {p0}, Lcom/github/penfeizhou/animation/apng/decode/APNGParser;->isAPNG(Lcom/github/penfeizhou/animation/io/Reader;)Z

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

.method public static isAPNG(Lcom/github/penfeizhou/animation/io/Reader;)Z
    .locals 1

    .line 82
    instance-of v0, p0, Lcom/github/penfeizhou/animation/apng/io/APNGReader;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/github/penfeizhou/animation/apng/io/APNGReader;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/github/penfeizhou/animation/apng/io/APNGReader;

    invoke-direct {v0, p0}, Lcom/github/penfeizhou/animation/apng/io/APNGReader;-><init>(Lcom/github/penfeizhou/animation/io/Reader;)V

    move-object p0, v0

    :goto_0
    :try_start_0
    const-string v0, "\u0089PNG"

    .line 84
    invoke-virtual {p0, v0}, Lcom/github/penfeizhou/animation/apng/io/APNGReader;->matchFourCC(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\r\n\u001a\n"

    invoke-virtual {p0, v0}, Lcom/github/penfeizhou/animation/apng/io/APNGReader;->matchFourCC(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 87
    :cond_1
    invoke-virtual {p0}, Lcom/github/penfeizhou/animation/apng/io/APNGReader;->available()I

    move-result v0

    if-lez v0, :cond_3

    .line 88
    invoke-static {p0}, Lcom/github/penfeizhou/animation/apng/decode/APNGParser;->parseChunk(Lcom/github/penfeizhou/animation/apng/io/APNGReader;)Lcom/github/penfeizhou/animation/apng/decode/Chunk;

    move-result-object v0

    .line 89
    instance-of v0, v0, Lcom/github/penfeizhou/animation/apng/decode/ACTLChunk;

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 85
    :cond_2
    new-instance p0, Lcom/github/penfeizhou/animation/apng/decode/APNGParser$FormatException;

    invoke-direct {p0}, Lcom/github/penfeizhou/animation/apng/decode/APNGParser$FormatException;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 94
    instance-of v0, p0, Lcom/github/penfeizhou/animation/apng/decode/APNGParser$FormatException;

    if-nez v0, :cond_3

    .line 95
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public static isAPNG(Ljava/lang/String;)Z
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

    invoke-static {p0}, Lcom/github/penfeizhou/animation/apng/decode/APNGParser;->isAPNG(Lcom/github/penfeizhou/animation/io/Reader;)Z

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

.method public static parse(Lcom/github/penfeizhou/animation/apng/io/APNGReader;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/penfeizhou/animation/apng/io/APNGReader;",
            ")",
            "Ljava/util/List<",
            "Lcom/github/penfeizhou/animation/apng/decode/Chunk;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "\u0089PNG"

    .line 102
    invoke-virtual {p0, v0}, Lcom/github/penfeizhou/animation/apng/io/APNGReader;->matchFourCC(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\r\n\u001a\n"

    invoke-virtual {p0, v0}, Lcom/github/penfeizhou/animation/apng/io/APNGReader;->matchFourCC(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 107
    :goto_0
    invoke-virtual {p0}, Lcom/github/penfeizhou/animation/apng/io/APNGReader;->available()I

    move-result v1

    if-lez v1, :cond_0

    .line 108
    invoke-static {p0}, Lcom/github/penfeizhou/animation/apng/decode/APNGParser;->parseChunk(Lcom/github/penfeizhou/animation/apng/io/APNGReader;)Lcom/github/penfeizhou/animation/apng/decode/Chunk;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0

    .line 103
    :cond_1
    new-instance p0, Lcom/github/penfeizhou/animation/apng/decode/APNGParser$FormatException;

    invoke-direct {p0}, Lcom/github/penfeizhou/animation/apng/decode/APNGParser$FormatException;-><init>()V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method private static parseChunk(Lcom/github/penfeizhou/animation/apng/io/APNGReader;)Lcom/github/penfeizhou/animation/apng/decode/Chunk;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    invoke-virtual {p0}, Lcom/github/penfeizhou/animation/apng/io/APNGReader;->position()I

    move-result v0

    .line 115
    invoke-virtual {p0}, Lcom/github/penfeizhou/animation/apng/io/APNGReader;->readInt()I

    move-result v1

    .line 116
    invoke-virtual {p0}, Lcom/github/penfeizhou/animation/apng/io/APNGReader;->readFourCC()I

    move-result v2

    .line 118
    sget v3, Lcom/github/penfeizhou/animation/apng/decode/ACTLChunk;->ID:I

    if-ne v2, v3, :cond_0

    .line 119
    new-instance v3, Lcom/github/penfeizhou/animation/apng/decode/ACTLChunk;

    invoke-direct {v3}, Lcom/github/penfeizhou/animation/apng/decode/ACTLChunk;-><init>()V

    goto :goto_0

    .line 120
    :cond_0
    sget v3, Lcom/github/penfeizhou/animation/apng/decode/FCTLChunk;->ID:I

    if-ne v2, v3, :cond_1

    .line 121
    new-instance v3, Lcom/github/penfeizhou/animation/apng/decode/FCTLChunk;

    invoke-direct {v3}, Lcom/github/penfeizhou/animation/apng/decode/FCTLChunk;-><init>()V

    goto :goto_0

    .line 122
    :cond_1
    sget v3, Lcom/github/penfeizhou/animation/apng/decode/FDATChunk;->ID:I

    if-ne v2, v3, :cond_2

    .line 123
    new-instance v3, Lcom/github/penfeizhou/animation/apng/decode/FDATChunk;

    invoke-direct {v3}, Lcom/github/penfeizhou/animation/apng/decode/FDATChunk;-><init>()V

    goto :goto_0

    .line 124
    :cond_2
    sget v3, Lcom/github/penfeizhou/animation/apng/decode/IDATChunk;->ID:I

    if-ne v2, v3, :cond_3

    .line 125
    new-instance v3, Lcom/github/penfeizhou/animation/apng/decode/IDATChunk;

    invoke-direct {v3}, Lcom/github/penfeizhou/animation/apng/decode/IDATChunk;-><init>()V

    goto :goto_0

    .line 126
    :cond_3
    sget v3, Lcom/github/penfeizhou/animation/apng/decode/IENDChunk;->ID:I

    if-ne v2, v3, :cond_4

    .line 127
    new-instance v3, Lcom/github/penfeizhou/animation/apng/decode/IENDChunk;

    invoke-direct {v3}, Lcom/github/penfeizhou/animation/apng/decode/IENDChunk;-><init>()V

    goto :goto_0

    .line 128
    :cond_4
    sget v3, Lcom/github/penfeizhou/animation/apng/decode/IHDRChunk;->ID:I

    if-ne v2, v3, :cond_5

    .line 129
    new-instance v3, Lcom/github/penfeizhou/animation/apng/decode/IHDRChunk;

    invoke-direct {v3}, Lcom/github/penfeizhou/animation/apng/decode/IHDRChunk;-><init>()V

    goto :goto_0

    .line 131
    :cond_5
    new-instance v3, Lcom/github/penfeizhou/animation/apng/decode/Chunk;

    invoke-direct {v3}, Lcom/github/penfeizhou/animation/apng/decode/Chunk;-><init>()V

    .line 133
    :goto_0
    iput v0, v3, Lcom/github/penfeizhou/animation/apng/decode/Chunk;->offset:I

    .line 134
    iput v2, v3, Lcom/github/penfeizhou/animation/apng/decode/Chunk;->fourcc:I

    .line 135
    iput v1, v3, Lcom/github/penfeizhou/animation/apng/decode/Chunk;->length:I

    .line 136
    invoke-virtual {v3, p0}, Lcom/github/penfeizhou/animation/apng/decode/Chunk;->parse(Lcom/github/penfeizhou/animation/apng/io/APNGReader;)V

    .line 137
    invoke-virtual {p0}, Lcom/github/penfeizhou/animation/apng/io/APNGReader;->readInt()I

    move-result p0

    iput p0, v3, Lcom/github/penfeizhou/animation/apng/decode/Chunk;->crc:I

    return-object v3
.end method
