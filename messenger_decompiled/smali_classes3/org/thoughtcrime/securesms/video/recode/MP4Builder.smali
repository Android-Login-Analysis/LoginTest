.class public Lorg/thoughtcrime/securesms/video/recode/MP4Builder;
.super Ljava/lang/Object;
.source "MP4Builder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/video/recode/MP4Builder$InterleaveChunkMdat;
    }
.end annotation


# instance fields
.field private currentMp4Movie:Lorg/thoughtcrime/securesms/video/recode/Mp4Movie;

.field private dataOffset:J

.field private fc:Ljava/nio/channels/FileChannel;

.field private fos:Ljava/io/FileOutputStream;

.field private mdat:Lorg/thoughtcrime/securesms/video/recode/MP4Builder$InterleaveChunkMdat;

.field private sizeBuffer:Ljava/nio/ByteBuffer;

.field private final track2SampleSizes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/thoughtcrime/securesms/video/recode/Track;",
            "[J>;"
        }
    .end annotation
.end field

.field private writeNewMdat:Z

.field private writedSinceLastMdat:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lorg/thoughtcrime/securesms/video/recode/MP4Builder;->mdat:Lorg/thoughtcrime/securesms/video/recode/MP4Builder$InterleaveChunkMdat;

    .line 48
    iput-object v0, p0, Lorg/thoughtcrime/securesms/video/recode/MP4Builder;->currentMp4Movie:Lorg/thoughtcrime/securesms/video/recode/Mp4Movie;

    .line 49
    iput-object v0, p0, Lorg/thoughtcrime/securesms/video/recode/MP4Builder;->fos:Ljava/io/FileOutputStream;

    .line 50
    iput-object v0, p0, Lorg/thoughtcrime/securesms/video/recode/MP4Builder;->fc:Ljava/nio/channels/FileChannel;

    const-wide/16 v1, 0x0

    .line 51
    iput-wide v1, p0, Lorg/thoughtcrime/securesms/video/recode/MP4Builder;->dataOffset:J

    .line 52
    iput-wide v1, p0, Lorg/thoughtcrime/securesms/video/recode/MP4Builder;->writedSinceLastMdat:J

    const/4 v1, 0x1

    .line 53
    iput-boolean v1, p0, Lorg/thoughtcrime/securesms/video/recode/MP4Builder;->writeNewMdat:Z

    .line 54
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/thoughtcrime/securesms/video/recode/MP4Builder;->track2SampleSizes:Ljava/util/HashMap;

    .line 55
    iput-object v0, p0, Lorg/thoughtcrime/securesms/video/recode/MP4Builder;->sizeBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private flushCurrentMdat()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lorg/thoughtcrime/securesms/video/recode/MP4Builder;->fc:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    .line 77
    iget-object v2, p0, Lorg/thoughtcrime/securesms/video/recode/MP4Builder;->fc:Ljava/nio/channels/FileChannel;

    iget-object v3, p0, Lorg/thoughtcrime/securesms/video/recode/MP4Builder;->mdat:Lorg/thoughtcrime/securesms/video/recode/MP4Builder$InterleaveChunkMdat;

    invoke-virtual {v3}, Lorg/thoughtcrime/securesms/video/recode/MP4Builder$InterleaveChunkMdat;->getOffset()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 78
    iget-object v2, p0, Lorg/thoughtcrime/securesms/video/recode/MP4Builder;->mdat:Lorg/thoughtcrime/securesms/video/recode/MP4Builder$InterleaveChunkMdat;

    iget-object v3, p0, Lorg/thoughtcrime/securesms/video/recode/MP4Builder;->fc:Ljava/nio/channels/FileChannel;

    invoke-virtual {v2, v3}, Lorg/thoughtcrime/securesms/video/recode/MP4Builder$InterleaveChunkMdat;->getBox(Ljava/nio/channels/WritableByteChannel;)V

    .line 79
    iget-object v2, p0, Lorg/thoughtcrime/securesms/video/recode/MP4Builder;->fc:Ljava/nio/channels/FileChannel;

    invoke-virtual {v2, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 80
    iget-object v0, p0, Lorg/thoughtcrime/securesms/video/recode/MP4Builder;->mdat:Lorg/thoughtcrime/securesms/video/recode/MP4Builder$InterleaveChunkMdat;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/thoughtcrime/securesms/video/recode/MP4Builder$InterleaveChunkMdat;->setDataOffset(J)V

    .line 81
    iget-object v0, p0, Lorg/thoughtcrime/securesms/video/recode/MP4Builder;->mdat:Lorg/thoughtcrime/securesms/video/recode/MP4Builder$InterleaveChunkMdat;

    invoke-virtual {v0, v1, v2}, Lorg/thoughtcrime/securesms/video/recode/MP4Builder$InterleaveChunkMdat;->setContentSize(J)V

    .line 82
    iget-object v0, p0, Lorg/thoughtcrime/securesms/video/recode/MP4Builder;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    return-void
.end method

.method public static gcd(JJ)J
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    return-wide p0

    .line 228
    :cond_0
    rem-long/2addr p0, p2

    invoke-static {p2, p3, p0, p1}, Lorg/thoughtcrime/securesms/video/recode/MP4Builder;->gcd(JJ)J

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public addTrack(Landroid/media/MediaFormat;Z)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lorg/thoughtcrime/securesms/video/recode/MP4Builder;->currentMp4Movie:Lorg/thoughtcrime/securesms/video/recode/Mp4Movie;

    invoke-virtual {v0, p1, p2}, Lorg/thoughtcrime/securesms/video/recode/Mp4Movie;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result p1

    return p1
.end method

.method protected createFileTypeBox()Lcom/coremedia/iso/boxes/FileTypeBox;
    .locals 5

    .line 153
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const-string v1, "isom"

    .line 154
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const-string v2, "3gp4"

    .line 155
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 156
    new-instance v2, Lcom/coremedia/iso/boxes/FileTypeBox;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v1, v3, v4, v0}, Lcom/coremedia/iso/boxes/FileTypeBox;-><init>(Ljava/lang/String;JLjava/util/List;)V

    return-object v2
.end method

.method public createMovie(Lorg/thoughtcrime/securesms/video/recode/Mp4Movie;)Lorg/thoughtcrime/securesms/video/recode/MP4Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 58
    iput-object p1, p0, Lorg/thoughtcrime/securesms/video/recode/MP4Builder;->currentMp4Movie:Lorg/thoughtcrime/securesms/video/recode/Mp4Movie;

    .line 60
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/video/recode/Mp4Movie;->getCacheFile()Ljava/io/File;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/video/recode/MP4Builder;->fos:Ljava/io/FileOutputStream;

    .line 61
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/video/recode/MP4Builder;->fc:Ljava/nio/channels/FileChannel;

    .line 63
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/video/recode/MP4Builder;->createFileTypeBox()Lcom/coremedia/iso/boxes/FileTypeBox;

    move-result-object p1

    .line 64
    iget-object v0, p0, Lorg/thoughtcrime/securesms/video/recode/MP4Builder;->fc:Ljava/nio/channels/FileChannel;

    invoke-virtual {p1, v0}, Lcom/coremedia/iso/boxes/FileTypeBox;->getBox(Ljava/nio/channels/WritableByteChannel;)V

    .line 65
    iget-wide v0, p0, Lorg/thoughtcrime/securesms/video/recode/MP4Builder;->dataOffset:J

    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/FileTypeBox;->getSize()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/thoughtcrime/securesms/video/recode/MP4Builder;->dataOffset:J

    .line 66
    iget-wide v2, p0, Lorg/thoughtcrime/securesms/video/recode/MP4Builder;->writedSinceLastMdat:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lorg/thoughtcrime/securesms/video/recode/MP4Builder;->writedSinceLastMdat:J

    .line 68
    new-instance p1, Lorg/thoughtcrime/securesms/video/recode/MP4Builder$InterleaveChunkMdat;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lorg/thoughtcrime/securesms/video/recode/MP4Builder$InterleaveChunkMdat;-><init>(Lorg/thoughtcrime/securesms/video/recode/MP4Builder;Lorg/thoughtcrime/securesms/video/recode/MP4Builder$1;)V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/video/recode/MP4Builder;->mdat:Lorg/thoughtcrime/securesms/video/recode/MP4Builder$InterleaveChunkMdat;

    const/4 p1, 0x4

    .line 70
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/video/recode/MP4Builder;->sizeBuffer:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method protected createMovieBox(Lorg/thoughtcrime/securesms/video/recode/Mp4Movie;)Lcom/coremedia/iso/boxes/MovieBox;
    .locals 12

    .line 243
    new-instance v0, Lcom/coremedia/iso/boxes/MovieBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/MovieBox;-><init>()V

    .line 244
    new-instance v1, Lcom/coremedia/iso/boxes/MovieHeaderBox;

    invoke-direct {v1}, Lcom/coremedia/iso/boxes/MovieHeaderBox;-><init>()V

    .line 246
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->setCreationTime(Ljava/util/Date;)V

    .line 247
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->setModificationTime(Ljava/util/Date;)V

    .line 248
    sget-object v2, Lcom/googlecode/mp4parser/util/Matrix;->ROTATE_0:Lcom/googlecode/mp4parser/util/Matrix;

    invoke-virtual {v1, v2}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->setMatrix(Lcom/googlecode/mp4parser/util/Matrix;)V

    .line 249
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/video/recode/MP4Builder;->getTimescale(Lorg/thoughtcrime/securesms/video/recode/Mp4Movie;)J

    move-result-wide v2

    .line 252
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/video/recode/Mp4Movie;->getTracks()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const-wide/16 v5, 0x0

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/thoughtcrime/securesms/video/recode/Track;

    .line 253
    invoke-virtual {v7}, Lorg/thoughtcrime/securesms/video/recode/Track;->getDuration()J

    move-result-wide v8

    mul-long v8, v8, v2

    invoke-virtual {v7}, Lorg/thoughtcrime/securesms/video/recode/Track;->getTimeScale()I

    move-result v7

    int-to-long v10, v7

    div-long/2addr v8, v10

    cmp-long v7, v8, v5

    if-lez v7, :cond_0

    move-wide v5, v8

    goto :goto_0

    .line 259
    :cond_1
    invoke-virtual {v1, v5, v6}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->setDuration(J)V

    .line 260
    invoke-virtual {v1, v2, v3}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->setTimescale(J)V

    .line 261
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/video/recode/Mp4Movie;->getTracks()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->setNextTrackId(J)V

    .line 263
    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/MovieBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 264
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/video/recode/Mp4Movie;->getTracks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/thoughtcrime/securesms/video/recode/Track;

    .line 265
    invoke-virtual {p0, v2, p1}, Lorg/thoughtcrime/securesms/video/recode/MP4Builder;->createTrackBox(Lorg/thoughtcrime/securesms/video/recode/Track;Lorg/thoughtcrime/securesms/video/recode/Mp4Movie;)Lcom/coremedia/iso/boxes/TrackBox;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/coremedia/iso/boxes/MovieBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method protected createStbl(Lorg/thoughtcrime/securesms/video/recode/Track;)Lcom/coremedia/iso/boxes/Box;
    .locals 1

    .line 327
    new-instance v0, Lcom/coremedia/iso/boxes/SampleTableBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/SampleTableBox;-><init>()V

    .line 329
    invoke-virtual {p0, p1, v0}, Lorg/thoughtcrime/securesms/video/recode/MP4Builder;->createStsd(Lorg/thoughtcrime/securesms/video/recode/Track;Lcom/coremedia/iso/boxes/SampleTableBox;)V

    .line 330
    invoke-virtual {p0, p1, v0}, Lorg/thoughtcrime/securesms/video/recode/MP4Builder;->createStts(Lorg/thoughtcrime/securesms/video/recode/Track;Lcom/coremedia/iso/boxes/SampleTableBox;)V

    .line 331
    invoke-virtual {p0, p1, v0}, Lorg/thoughtcrime/securesms/video/recode/MP4Builder;->createStss(Lorg/thoughtcrime/securesms/video/recode/Track;Lcom/coremedia/iso/boxes/SampleTableBox;)V

    .line 332
    invoke-virtual {p0, p1, v0}, Lorg/thoughtcrime/securesms/video/recode/MP4Builder;->createStsc(Lorg/thoughtcrime/securesms/video/recode/Track;Lcom/coremedia/iso/boxes/SampleTableBox;)V

    .line 333
    invoke-virtual {p0, p1, v0}, Lorg/thoughtcrime/securesms/video/recode/MP4Builder;->createStsz(Lorg/thoughtcrime/securesms/video/recode/Track;Lcom/coremedia/iso/boxes/SampleTableBox;)V

    .line 334
    invoke-virtual {p0, p1, v0}, Lorg/thoughtcrime/securesms/video/recode/MP4Builder;->createStco(Lorg/thoughtcrime/securesms/video/recode/Track;Lcom/coremedia/iso/boxes/SampleTableBox;)V

    return-object v0
.end method

.method protected createStco(Lorg/thoughtcrime/securesms/video/recode/Track;Lcom/coremedia/iso/boxes/SampleTableBox;)V
    .locals 9

    .line 416
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 418
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/video/recode/Track;->getSamples()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 v1, -0x1

    move-wide v3, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/thoughtcrime/securesms/video/recode/Sample;

    .line 419
    invoke-virtual {v5}, Lorg/thoughtcrime/securesms/video/recode/Sample;->getOffset()J

    move-result-wide v6

    cmp-long v8, v3, v1

    if-eqz v8, :cond_0

    cmp-long v8, v3, v6

    if-eqz v8, :cond_0

    move-wide v3, v1

    :cond_0
    cmp-long v8, v3, v1

    if-nez v8, :cond_1

    .line 424
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    :cond_1
    invoke-virtual {v5}, Lorg/thoughtcrime/securesms/video/recode/Sample;->getSize()J

    move-result-wide v3

    add-long/2addr v3, v6

    goto :goto_0

    .line 428
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [J

    const/4 v1, 0x0

    .line 429
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 430
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 433
    :cond_3
    new-instance v0, Lcom/coremedia/iso/boxes/StaticChunkOffsetBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/StaticChunkOffsetBox;-><init>()V

    .line 434
    invoke-virtual {v0, p1}, Lcom/coremedia/iso/boxes/StaticChunkOffsetBox;->setChunkOffsets([J)V

    .line 435
    invoke-virtual {p2, v0}, Lcom/coremedia/iso/boxes/SampleTableBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    return-void
.end method

.method protected createStsc(Lorg/thoughtcrime/securesms/video/recode/Track;Lcom/coremedia/iso/boxes/SampleTableBox;)V
    .locals 16

    .line 370
    new-instance v0, Lcom/coremedia/iso/boxes/SampleToChunkBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/SampleToChunkBox;-><init>()V

    .line 371
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/SampleToChunkBox;->setEntries(Ljava/util/List;)V

    .line 379
    invoke-virtual/range {p1 .. p1}, Lorg/thoughtcrime/securesms/video/recode/Track;->getSamples()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    :goto_0
    if-ge v5, v1, :cond_4

    .line 381
    invoke-virtual/range {p1 .. p1}, Lorg/thoughtcrime/securesms/video/recode/Track;->getSamples()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/thoughtcrime/securesms/video/recode/Sample;

    .line 382
    invoke-virtual {v8}, Lorg/thoughtcrime/securesms/video/recode/Sample;->getOffset()J

    move-result-wide v9

    .line 383
    invoke-virtual {v8}, Lorg/thoughtcrime/securesms/video/recode/Sample;->getSize()J

    move-result-wide v11

    add-long/2addr v9, v11

    add-int/2addr v6, v2

    add-int/lit8 v8, v1, -0x1

    if-eq v5, v8, :cond_1

    .line 390
    invoke-virtual/range {p1 .. p1}, Lorg/thoughtcrime/securesms/video/recode/Track;->getSamples()Ljava/util/ArrayList;

    move-result-object v8

    add-int/lit8 v11, v5, 0x1

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/thoughtcrime/securesms/video/recode/Sample;

    .line 391
    invoke-virtual {v8}, Lorg/thoughtcrime/securesms/video/recode/Sample;->getOffset()J

    move-result-wide v11

    cmp-long v8, v9, v11

    if-eqz v8, :cond_0

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v8, 0x1

    :goto_2
    if-eqz v8, :cond_3

    if-eq v4, v6, :cond_2

    .line 399
    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/SampleToChunkBox;->getEntries()Ljava/util/List;

    move-result-object v4

    new-instance v15, Lcom/coremedia/iso/boxes/SampleToChunkBox$Entry;

    int-to-long v9, v7

    int-to-long v11, v6

    const-wide/16 v13, 0x1

    move-object v8, v15

    invoke-direct/range {v8 .. v14}, Lcom/coremedia/iso/boxes/SampleToChunkBox$Entry;-><init>(JJJ)V

    invoke-interface {v4, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v4, v6

    :cond_2
    add-int/lit8 v7, v7, 0x1

    const/4 v6, 0x0

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    move-object/from16 v4, p2

    .line 406
    invoke-virtual {v4, v0}, Lcom/coremedia/iso/boxes/SampleTableBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    return-void
.end method

.method protected createStsd(Lorg/thoughtcrime/securesms/video/recode/Track;Lcom/coremedia/iso/boxes/SampleTableBox;)V
    .locals 0

    .line 340
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/video/recode/Track;->getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/coremedia/iso/boxes/SampleTableBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    return-void
.end method

.method protected createStss(Lorg/thoughtcrime/securesms/video/recode/Track;Lcom/coremedia/iso/boxes/SampleTableBox;)V
    .locals 1

    .line 361
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/video/recode/Track;->getSyncSamples()[J

    move-result-object p1

    if-eqz p1, :cond_0

    .line 362
    array-length v0, p1

    if-lez v0, :cond_0

    .line 363
    new-instance v0, Lcom/coremedia/iso/boxes/SyncSampleBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/SyncSampleBox;-><init>()V

    .line 364
    invoke-virtual {v0, p1}, Lcom/coremedia/iso/boxes/SyncSampleBox;->setSampleNumber([J)V

    .line 365
    invoke-virtual {p2, v0}, Lcom/coremedia/iso/boxes/SampleTableBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    :cond_0
    return-void
.end method

.method protected createStsz(Lorg/thoughtcrime/securesms/video/recode/Track;Lcom/coremedia/iso/boxes/SampleTableBox;)V
    .locals 2

    .line 410
    new-instance v0, Lcom/coremedia/iso/boxes/SampleSizeBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/SampleSizeBox;-><init>()V

    .line 411
    iget-object v1, p0, Lorg/thoughtcrime/securesms/video/recode/MP4Builder;->track2SampleSizes:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [J

    invoke-virtual {v0, p1}, Lcom/coremedia/iso/boxes/SampleSizeBox;->setSampleSizes([J)V

    .line 412
    invoke-virtual {p2, v0}, Lcom/coremedia/iso/boxes/SampleTableBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    return-void
.end method

.method protected createStts(Lorg/thoughtcrime/securesms/video/recode/Track;Lcom/coremedia/iso/boxes/SampleTableBox;)V
    .locals 9

    .line 345
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 347
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/video/recode/Track;->getSampleDurations()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    if-eqz v1, :cond_0

    .line 348
    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getDelta()J

    move-result-wide v6

    cmp-long v8, v6, v2

    if-nez v8, :cond_0

    .line 349
    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getCount()J

    move-result-wide v2

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->setCount(J)V

    goto :goto_0

    .line 351
    :cond_0
    new-instance v1, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    invoke-direct {v1, v4, v5, v2, v3}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;-><init>(JJ)V

    .line 352
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 355
    :cond_1
    new-instance p1, Lcom/coremedia/iso/boxes/TimeToSampleBox;

    invoke-direct {p1}, Lcom/coremedia/iso/boxes/TimeToSampleBox;-><init>()V

    .line 356
    invoke-virtual {p1, v0}, Lcom/coremedia/iso/boxes/TimeToSampleBox;->setEntries(Ljava/util/List;)V

    .line 357
    invoke-virtual {p2, p1}, Lcom/coremedia/iso/boxes/SampleTableBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    return-void
.end method

.method protected createTrackBox(Lorg/thoughtcrime/securesms/video/recode/Track;Lorg/thoughtcrime/securesms/video/recode/Mp4Movie;)Lcom/coremedia/iso/boxes/TrackBox;
    .locals 8

    .line 271
    new-instance v0, Lcom/coremedia/iso/boxes/TrackBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/TrackBox;-><init>()V

    .line 272
    new-instance v1, Lcom/coremedia/iso/boxes/TrackHeaderBox;

    invoke-direct {v1}, Lcom/coremedia/iso/boxes/TrackHeaderBox;-><init>()V

    const/4 v2, 0x1

    .line 274
    invoke-virtual {v1, v2}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setEnabled(Z)V

    .line 275
    invoke-virtual {v1, v2}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setInMovie(Z)V

    .line 276
    invoke-virtual {v1, v2}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setInPreview(Z)V

    .line 277
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/video/recode/Track;->isAudio()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 278
    sget-object v3, Lcom/googlecode/mp4parser/util/Matrix;->ROTATE_0:Lcom/googlecode/mp4parser/util/Matrix;

    invoke-virtual {v1, v3}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setMatrix(Lcom/googlecode/mp4parser/util/Matrix;)V

    goto :goto_0

    .line 280
    :cond_0
    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/video/recode/Mp4Movie;->getMatrix()Lcom/googlecode/mp4parser/util/Matrix;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setMatrix(Lcom/googlecode/mp4parser/util/Matrix;)V

    :goto_0
    const/4 v3, 0x0

    .line 282
    invoke-virtual {v1, v3}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setAlternateGroup(I)V

    .line 283
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/video/recode/Track;->getCreationTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setCreationTime(Ljava/util/Date;)V

    .line 284
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/video/recode/Track;->getDuration()J

    move-result-wide v4

    invoke-virtual {p0, p2}, Lorg/thoughtcrime/securesms/video/recode/MP4Builder;->getTimescale(Lorg/thoughtcrime/securesms/video/recode/Mp4Movie;)J

    move-result-wide v6

    mul-long v4, v4, v6

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/video/recode/Track;->getTimeScale()I

    move-result p2

    int-to-long v6, p2

    div-long/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setDuration(J)V

    .line 285
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/video/recode/Track;->getHeight()I

    move-result p2

    int-to-double v4, p2

    invoke-virtual {v1, v4, v5}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setHeight(D)V

    .line 286
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/video/recode/Track;->getWidth()I

    move-result p2

    int-to-double v4, p2

    invoke-virtual {v1, v4, v5}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setWidth(D)V

    .line 287
    invoke-virtual {v1, v3}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setLayer(I)V

    .line 288
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, p2}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setModificationTime(Ljava/util/Date;)V

    .line 289
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/video/recode/Track;->getTrackId()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    invoke-virtual {v1, v3, v4}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setTrackId(J)V

    .line 290
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/video/recode/Track;->getVolume()F

    move-result p2

    invoke-virtual {v1, p2}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setVolume(F)V

    .line 292
    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/TrackBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 294
    new-instance p2, Lcom/coremedia/iso/boxes/MediaBox;

    invoke-direct {p2}, Lcom/coremedia/iso/boxes/MediaBox;-><init>()V

    .line 295
    invoke-virtual {v0, p2}, Lcom/coremedia/iso/boxes/TrackBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 296
    new-instance v1, Lcom/coremedia/iso/boxes/MediaHeaderBox;

    invoke-direct {v1}, Lcom/coremedia/iso/boxes/MediaHeaderBox;-><init>()V

    .line 297
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/video/recode/Track;->getCreationTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->setCreationTime(Ljava/util/Date;)V

    .line 298
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/video/recode/Track;->getDuration()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->setDuration(J)V

    .line 299
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/video/recode/Track;->getTimeScale()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->setTimescale(J)V

    const-string v3, "eng"

    .line 300
    invoke-virtual {v1, v3}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->setLanguage(Ljava/lang/String;)V

    .line 301
    invoke-virtual {p2, v1}, Lcom/coremedia/iso/boxes/MediaBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 302
    new-instance v1, Lcom/coremedia/iso/boxes/HandlerBox;

    invoke-direct {v1}, Lcom/coremedia/iso/boxes/HandlerBox;-><init>()V

    .line 303
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/video/recode/Track;->isAudio()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "SoundHandle"

    goto :goto_1

    :cond_1
    const-string v3, "VideoHandle"

    :goto_1
    invoke-virtual {v1, v3}, Lcom/coremedia/iso/boxes/HandlerBox;->setName(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/video/recode/Track;->getHandler()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/coremedia/iso/boxes/HandlerBox;->setHandlerType(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p2, v1}, Lcom/coremedia/iso/boxes/MediaBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 308
    new-instance v1, Lcom/coremedia/iso/boxes/MediaInformationBox;

    invoke-direct {v1}, Lcom/coremedia/iso/boxes/MediaInformationBox;-><init>()V

    .line 309
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/video/recode/Track;->getMediaHeaderBox()Lcom/coremedia/iso/boxes/AbstractMediaHeaderBox;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/coremedia/iso/boxes/MediaInformationBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 311
    new-instance v3, Lcom/coremedia/iso/boxes/DataInformationBox;

    invoke-direct {v3}, Lcom/coremedia/iso/boxes/DataInformationBox;-><init>()V

    .line 312
    new-instance v4, Lcom/coremedia/iso/boxes/DataReferenceBox;

    invoke-direct {v4}, Lcom/coremedia/iso/boxes/DataReferenceBox;-><init>()V

    .line 313
    invoke-virtual {v3, v4}, Lcom/coremedia/iso/boxes/DataInformationBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 314
    new-instance v5, Lcom/coremedia/iso/boxes/DataEntryUrlBox;

    invoke-direct {v5}, Lcom/coremedia/iso/boxes/DataEntryUrlBox;-><init>()V

    .line 315
    invoke-virtual {v5, v2}, Lcom/coremedia/iso/boxes/DataEntryUrlBox;->setFlags(I)V

    .line 316
    invoke-virtual {v4, v5}, Lcom/coremedia/iso/boxes/DataReferenceBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 317
    invoke-virtual {v1, v3}, Lcom/coremedia/iso/boxes/MediaInformationBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 319
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/video/recode/MP4Builder;->createStbl(Lorg/thoughtcrime/securesms/video/recode/Track;)Lcom/coremedia/iso/boxes/Box;

    move-result-object p1

    .line 320
    invoke-virtual {v1, p1}, Lcom/coremedia/iso/boxes/MediaInformationBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 321
    invoke-virtual {p2, v1}, Lcom/coremedia/iso/boxes/MediaBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    return-object v0
.end method

.method public finishMovie(Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 131
    iget-object p1, p0, Lorg/thoughtcrime/securesms/video/recode/MP4Builder;->mdat:Lorg/thoughtcrime/securesms/video/recode/MP4Builder$InterleaveChunkMdat;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/video/recode/MP4Builder$InterleaveChunkMdat;->getContentSize()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    .line 132
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/video/recode/MP4Builder;->flushCurrentMdat()V

    .line 135
    :cond_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/video/recode/MP4Builder;->currentMp4Movie:Lorg/thoughtcrime/securesms/video/recode/Mp4Movie;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/video/recode/Mp4Movie;->getTracks()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/video/recode/Track;

    .line 136
    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/video/recode/Track;->getSamples()Ljava/util/ArrayList;

    move-result-object v1

    .line 137
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v3, v2, [J

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_1

    .line 139
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/thoughtcrime/securesms/video/recode/Sample;

    invoke-virtual {v5}, Lorg/thoughtcrime/securesms/video/recode/Sample;->getSize()J

    move-result-wide v5

    aput-wide v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 141
    :cond_1
    iget-object v1, p0, Lorg/thoughtcrime/securesms/video/recode/MP4Builder;->track2SampleSizes:Ljava/util/HashMap;

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 144
    :cond_2
    iget-object p1, p0, Lorg/thoughtcrime/securesms/video/recode/MP4Builder;->currentMp4Movie:Lorg/thoughtcrime/securesms/video/recode/Mp4Movie;

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/video/recode/MP4Builder;->createMovieBox(Lorg/thoughtcrime/securesms/video/recode/Mp4Movie;)Lcom/coremedia/iso/boxes/MovieBox;

    move-result-object p1

    .line 145
    iget-object v0, p0, Lorg/thoughtcrime/securesms/video/recode/MP4Builder;->fc:Ljava/nio/channels/FileChannel;

    invoke-interface {p1, v0}, Lcom/coremedia/iso/boxes/Box;->getBox(Ljava/nio/channels/WritableByteChannel;)V

    .line 146
    iget-object p1, p0, Lorg/thoughtcrime/securesms/video/recode/MP4Builder;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V

    .line 148
    iget-object p1, p0, Lorg/thoughtcrime/securesms/video/recode/MP4Builder;->fc:Ljava/nio/channels/FileChannel;

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V

    .line 149
    iget-object p1, p0, Lorg/thoughtcrime/securesms/video/recode/MP4Builder;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    return-void
.end method

.method public getTimescale(Lorg/thoughtcrime/securesms/video/recode/Mp4Movie;)J
    .locals 4

    .line 233
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/video/recode/Mp4Movie;->getTracks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 234
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/video/recode/Mp4Movie;->getTracks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/video/recode/Track;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/video/recode/Track;->getTimeScale()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 236
    :goto_0
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/video/recode/Mp4Movie;->getTracks()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/thoughtcrime/securesms/video/recode/Track;

    .line 237
    invoke-virtual {v2}, Lorg/thoughtcrime/securesms/video/recode/Track;->getTimeScale()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3, v0, v1}, Lorg/thoughtcrime/securesms/video/recode/MP4Builder;->gcd(JJ)J

    move-result-wide v0

    goto :goto_1

    :cond_1
    return-wide v0
.end method

.method public writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 86
    iget-boolean v0, p0, Lorg/thoughtcrime/securesms/video/recode/MP4Builder;->writeNewMdat:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lorg/thoughtcrime/securesms/video/recode/MP4Builder;->mdat:Lorg/thoughtcrime/securesms/video/recode/MP4Builder$InterleaveChunkMdat;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/thoughtcrime/securesms/video/recode/MP4Builder$InterleaveChunkMdat;->setContentSize(J)V

    .line 88
    iget-object v0, p0, Lorg/thoughtcrime/securesms/video/recode/MP4Builder;->mdat:Lorg/thoughtcrime/securesms/video/recode/MP4Builder$InterleaveChunkMdat;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/video/recode/MP4Builder;->fc:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, v2}, Lorg/thoughtcrime/securesms/video/recode/MP4Builder$InterleaveChunkMdat;->getBox(Ljava/nio/channels/WritableByteChannel;)V

    .line 89
    iget-object v0, p0, Lorg/thoughtcrime/securesms/video/recode/MP4Builder;->mdat:Lorg/thoughtcrime/securesms/video/recode/MP4Builder$InterleaveChunkMdat;

    iget-wide v2, p0, Lorg/thoughtcrime/securesms/video/recode/MP4Builder;->dataOffset:J

    invoke-virtual {v0, v2, v3}, Lorg/thoughtcrime/securesms/video/recode/MP4Builder$InterleaveChunkMdat;->setDataOffset(J)V

    .line 90
    iget-wide v2, p0, Lorg/thoughtcrime/securesms/video/recode/MP4Builder;->dataOffset:J

    const-wide/16 v4, 0x10

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/thoughtcrime/securesms/video/recode/MP4Builder;->dataOffset:J

    .line 91
    iget-wide v2, p0, Lorg/thoughtcrime/securesms/video/recode/MP4Builder;->writedSinceLastMdat:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/thoughtcrime/securesms/video/recode/MP4Builder;->writedSinceLastMdat:J

    .line 92
    iput-boolean v1, p0, Lorg/thoughtcrime/securesms/video/recode/MP4Builder;->writeNewMdat:Z

    .line 95
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/video/recode/MP4Builder;->mdat:Lorg/thoughtcrime/securesms/video/recode/MP4Builder$InterleaveChunkMdat;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/video/recode/MP4Builder$InterleaveChunkMdat;->getContentSize()J

    move-result-wide v2

    iget v4, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lorg/thoughtcrime/securesms/video/recode/MP4Builder$InterleaveChunkMdat;->setContentSize(J)V

    .line 96
    iget-wide v2, p0, Lorg/thoughtcrime/securesms/video/recode/MP4Builder;->writedSinceLastMdat:J

    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/thoughtcrime/securesms/video/recode/MP4Builder;->writedSinceLastMdat:J

    const-wide/32 v4, 0x8000

    cmp-long v0, v2, v4

    if-ltz v0, :cond_1

    .line 100
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/video/recode/MP4Builder;->flushCurrentMdat()V

    const/4 v0, 0x1

    .line 101
    iput-boolean v0, p0, Lorg/thoughtcrime/securesms/video/recode/MP4Builder;->writeNewMdat:Z

    .line 103
    iget-wide v2, p0, Lorg/thoughtcrime/securesms/video/recode/MP4Builder;->writedSinceLastMdat:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lorg/thoughtcrime/securesms/video/recode/MP4Builder;->writedSinceLastMdat:J

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 106
    :goto_0
    iget-object v2, p0, Lorg/thoughtcrime/securesms/video/recode/MP4Builder;->currentMp4Movie:Lorg/thoughtcrime/securesms/video/recode/Mp4Movie;

    iget-wide v3, p0, Lorg/thoughtcrime/securesms/video/recode/MP4Builder;->dataOffset:J

    invoke-virtual {v2, p1, v3, v4, p3}, Lorg/thoughtcrime/securesms/video/recode/Mp4Movie;->addSample(IJLandroid/media/MediaCodec$BufferInfo;)V

    .line 107
    iget p1, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    const/4 v2, 0x4

    if-eqz p4, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    const/4 v3, 0x4

    :goto_1
    add-int/2addr p1, v3

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 108
    iget p1, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v3, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr p1, v3

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    if-nez p4, :cond_3

    .line 111
    iget-object p1, p0, Lorg/thoughtcrime/securesms/video/recode/MP4Builder;->sizeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 112
    iget-object p1, p0, Lorg/thoughtcrime/securesms/video/recode/MP4Builder;->sizeBuffer:Ljava/nio/ByteBuffer;

    iget p4, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    sub-int/2addr p4, v2

    invoke-virtual {p1, p4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 113
    iget-object p1, p0, Lorg/thoughtcrime/securesms/video/recode/MP4Builder;->sizeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 114
    iget-object p1, p0, Lorg/thoughtcrime/securesms/video/recode/MP4Builder;->fc:Ljava/nio/channels/FileChannel;

    iget-object p4, p0, Lorg/thoughtcrime/securesms/video/recode/MP4Builder;->sizeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p4}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 117
    :cond_3
    iget-object p1, p0, Lorg/thoughtcrime/securesms/video/recode/MP4Builder;->fc:Ljava/nio/channels/FileChannel;

    invoke-virtual {p1, p2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 118
    iget-wide p1, p0, Lorg/thoughtcrime/securesms/video/recode/MP4Builder;->dataOffset:J

    iget p3, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    int-to-long p3, p3

    add-long/2addr p1, p3

    iput-wide p1, p0, Lorg/thoughtcrime/securesms/video/recode/MP4Builder;->dataOffset:J

    if-eqz v0, :cond_4

    .line 121
    iget-object p1, p0, Lorg/thoughtcrime/securesms/video/recode/MP4Builder;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V

    :cond_4
    return v0
.end method
