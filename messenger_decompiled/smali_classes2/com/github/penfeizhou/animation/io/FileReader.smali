.class public Lcom/github/penfeizhou/animation/io/FileReader;
.super Lcom/github/penfeizhou/animation/io/FilterReader;
.source "FileReader.java"


# instance fields
.field private final mFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    new-instance v0, Lcom/github/penfeizhou/animation/io/StreamReader;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Lcom/github/penfeizhou/animation/io/StreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lcom/github/penfeizhou/animation/io/FilterReader;-><init>(Lcom/github/penfeizhou/animation/io/Reader;)V

    .line 18
    iput-object p1, p0, Lcom/github/penfeizhou/animation/io/FileReader;->mFile:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/github/penfeizhou/animation/io/FileReader;->reader:Lcom/github/penfeizhou/animation/io/Reader;

    invoke-interface {v0}, Lcom/github/penfeizhou/animation/io/Reader;->close()V

    .line 24
    new-instance v0, Lcom/github/penfeizhou/animation/io/StreamReader;

    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/github/penfeizhou/animation/io/FileReader;->mFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Lcom/github/penfeizhou/animation/io/StreamReader;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/github/penfeizhou/animation/io/FileReader;->reader:Lcom/github/penfeizhou/animation/io/Reader;

    return-void
.end method
