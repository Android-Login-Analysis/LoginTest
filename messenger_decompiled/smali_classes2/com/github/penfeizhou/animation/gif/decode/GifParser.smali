.class public Lcom/github/penfeizhou/animation/gif/decode/GifParser;
.super Ljava/lang/Object;
.source "GifParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/penfeizhou/animation/gif/decode/GifParser$FormatException;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkHeader(Lcom/github/penfeizhou/animation/gif/io/GifReader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    invoke-virtual {p0}, Lcom/github/penfeizhou/animation/gif/io/GifReader;->peek()B

    move-result v0

    const/16 v1, 0x47

    if-ne v0, v1, :cond_1

    .line 138
    invoke-virtual {p0}, Lcom/github/penfeizhou/animation/gif/io/GifReader;->peek()B

    move-result v0

    const/16 v1, 0x49

    if-ne v0, v1, :cond_1

    .line 139
    invoke-virtual {p0}, Lcom/github/penfeizhou/animation/gif/io/GifReader;->peek()B

    move-result v0

    const/16 v1, 0x46

    if-ne v0, v1, :cond_1

    .line 140
    invoke-virtual {p0}, Lcom/github/penfeizhou/animation/gif/io/GifReader;->peek()B

    move-result v0

    const/16 v1, 0x38

    if-ne v0, v1, :cond_1

    .line 141
    invoke-virtual {p0}, Lcom/github/penfeizhou/animation/gif/io/GifReader;->peek()B

    move-result v0

    const/16 v1, 0x37

    if-eq v0, v1, :cond_0

    const/16 v1, 0x39

    if-ne v0, v1, :cond_1

    .line 142
    :cond_0
    invoke-virtual {p0}, Lcom/github/penfeizhou/animation/gif/io/GifReader;->peek()B

    move-result p0

    const/16 v0, 0x61

    if-ne p0, v0, :cond_1

    return-void

    .line 143
    :cond_1
    new-instance p0, Lcom/github/penfeizhou/animation/gif/decode/GifParser$FormatException;

    invoke-direct {p0}, Lcom/github/penfeizhou/animation/gif/decode/GifParser$FormatException;-><init>()V

    throw p0
.end method

.method public static isGif(Landroid/content/Context;I)Z
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

    invoke-static {p0}, Lcom/github/penfeizhou/animation/gif/decode/GifParser;->isGif(Lcom/github/penfeizhou/animation/io/Reader;)Z

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

.method public static isGif(Landroid/content/Context;Ljava/lang/String;)Z
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

    invoke-static {p0}, Lcom/github/penfeizhou/animation/gif/decode/GifParser;->isGif(Lcom/github/penfeizhou/animation/io/Reader;)Z

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

.method public static isGif(Lcom/github/penfeizhou/animation/io/Reader;)Z
    .locals 1

    .line 83
    :try_start_0
    instance-of v0, p0, Lcom/github/penfeizhou/animation/gif/io/GifReader;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/github/penfeizhou/animation/gif/io/GifReader;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/github/penfeizhou/animation/gif/io/GifReader;

    invoke-direct {v0, p0}, Lcom/github/penfeizhou/animation/gif/io/GifReader;-><init>(Lcom/github/penfeizhou/animation/io/Reader;)V

    move-object p0, v0

    .line 84
    :goto_0
    invoke-static {p0}, Lcom/github/penfeizhou/animation/gif/decode/GifParser;->checkHeader(Lcom/github/penfeizhou/animation/gif/io/GifReader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 87
    instance-of v0, p0, Lcom/github/penfeizhou/animation/gif/decode/GifParser$FormatException;

    if-nez v0, :cond_1

    .line 88
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isGif(Ljava/lang/String;)Z
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

    invoke-static {p0}, Lcom/github/penfeizhou/animation/gif/decode/GifParser;->isGif(Lcom/github/penfeizhou/animation/io/Reader;)Z

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

.method public static parse(Lcom/github/penfeizhou/animation/gif/io/GifReader;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/penfeizhou/animation/gif/io/GifReader;",
            ")",
            "Ljava/util/List<",
            "Lcom/github/penfeizhou/animation/gif/decode/Block;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    invoke-static {p0}, Lcom/github/penfeizhou/animation/gif/decode/GifParser;->checkHeader(Lcom/github/penfeizhou/animation/gif/io/GifReader;)V

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 98
    new-instance v1, Lcom/github/penfeizhou/animation/gif/decode/LogicalScreenDescriptor;

    invoke-direct {v1}, Lcom/github/penfeizhou/animation/gif/decode/LogicalScreenDescriptor;-><init>()V

    .line 99
    invoke-virtual {v1, p0}, Lcom/github/penfeizhou/animation/gif/decode/LogicalScreenDescriptor;->receive(Lcom/github/penfeizhou/animation/gif/io/GifReader;)V

    .line 100
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    invoke-virtual {v1}, Lcom/github/penfeizhou/animation/gif/decode/LogicalScreenDescriptor;->gColorTableFlag()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 102
    new-instance v2, Lcom/github/penfeizhou/animation/gif/decode/ColorTable;

    invoke-virtual {v1}, Lcom/github/penfeizhou/animation/gif/decode/LogicalScreenDescriptor;->gColorTableSize()I

    move-result v1

    invoke-direct {v2, v1}, Lcom/github/penfeizhou/animation/gif/decode/ColorTable;-><init>(I)V

    .line 103
    invoke-virtual {v2, p0}, Lcom/github/penfeizhou/animation/gif/decode/ColorTable;->receive(Lcom/github/penfeizhou/animation/gif/io/GifReader;)V

    .line 104
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/github/penfeizhou/animation/gif/io/GifReader;->peek()B

    move-result v1

    const/16 v2, 0x3b

    if-eq v1, v2, :cond_4

    const/16 v2, 0x21

    if-eq v1, v2, :cond_2

    const/16 v2, 0x2c

    if-eq v1, v2, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    .line 115
    :cond_1
    new-instance v1, Lcom/github/penfeizhou/animation/gif/decode/ImageDescriptor;

    invoke-direct {v1}, Lcom/github/penfeizhou/animation/gif/decode/ImageDescriptor;-><init>()V

    goto :goto_1

    .line 112
    :cond_2
    invoke-static {p0}, Lcom/github/penfeizhou/animation/gif/decode/ExtensionBlock;->retrieve(Lcom/github/penfeizhou/animation/gif/io/GifReader;)Lcom/github/penfeizhou/animation/gif/decode/ExtensionBlock;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_3

    .line 119
    invoke-interface {v1, p0}, Lcom/github/penfeizhou/animation/gif/decode/Block;->receive(Lcom/github/penfeizhou/animation/gif/io/GifReader;)V

    .line 120
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 122
    :cond_3
    new-instance p0, Lcom/github/penfeizhou/animation/gif/decode/GifParser$FormatException;

    invoke-direct {p0}, Lcom/github/penfeizhou/animation/gif/decode/GifParser$FormatException;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 127
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    return-object v0
.end method
