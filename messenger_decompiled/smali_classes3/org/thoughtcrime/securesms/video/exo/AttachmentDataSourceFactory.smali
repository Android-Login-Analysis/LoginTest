.class public Lorg/thoughtcrime/securesms/video/exo/AttachmentDataSourceFactory;
.super Ljava/lang/Object;
.source "AttachmentDataSourceFactory.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/DataSource$Factory;


# instance fields
.field private final defaultDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lorg/thoughtcrime/securesms/video/exo/AttachmentDataSourceFactory;->defaultDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;

    return-void
.end method


# virtual methods
.method public bridge synthetic createDataSource()Lcom/google/android/exoplayer2/upstream/DataSource;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/video/exo/AttachmentDataSourceFactory;->createDataSource()Lorg/thoughtcrime/securesms/video/exo/AttachmentDataSource;

    move-result-object v0

    return-object v0
.end method

.method public createDataSource()Lorg/thoughtcrime/securesms/video/exo/AttachmentDataSource;
    .locals 2

    .line 20
    new-instance v0, Lorg/thoughtcrime/securesms/video/exo/AttachmentDataSource;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/video/exo/AttachmentDataSourceFactory;->defaultDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;->createDataSource()Lcom/google/android/exoplayer2/upstream/DefaultDataSource;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/thoughtcrime/securesms/video/exo/AttachmentDataSource;-><init>(Lcom/google/android/exoplayer2/upstream/DefaultDataSource;)V

    return-object v0
.end method
