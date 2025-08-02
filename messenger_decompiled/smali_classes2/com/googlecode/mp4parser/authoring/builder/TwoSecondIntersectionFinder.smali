.class public Lcom/googlecode/mp4parser/authoring/builder/TwoSecondIntersectionFinder;
.super Ljava/lang/Object;
.source "TwoSecondIntersectionFinder.java"

# interfaces
.implements Lcom/googlecode/mp4parser/authoring/builder/FragmentIntersectionFinder;


# instance fields
.field private fragmentLength:I

.field private movie:Lcom/googlecode/mp4parser/authoring/Movie;


# direct methods
.method public constructor <init>(Lcom/googlecode/mp4parser/authoring/Movie;I)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/builder/TwoSecondIntersectionFinder;->movie:Lcom/googlecode/mp4parser/authoring/Movie;

    .line 34
    iput p2, p0, Lcom/googlecode/mp4parser/authoring/builder/TwoSecondIntersectionFinder;->fragmentLength:I

    return-void
.end method


# virtual methods
.method public sampleNumbers(Lcom/googlecode/mp4parser/authoring/Track;)[J
    .locals 18

    move-object/from16 v0, p0

    .line 43
    iget-object v1, v0, Lcom/googlecode/mp4parser/authoring/builder/TwoSecondIntersectionFinder;->movie:Lcom/googlecode/mp4parser/authoring/Movie;

    invoke-virtual {v1}, Lcom/googlecode/mp4parser/authoring/Movie;->getTracks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide/16 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_9

    .line 50
    iget v1, v0, Lcom/googlecode/mp4parser/authoring/builder/TwoSecondIntersectionFinder;->fragmentLength:I

    int-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    const/4 v4, 0x1

    sub-int/2addr v1, v4

    .line 51
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->getSamples()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v1, v4, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    move v5, v1

    .line 56
    :goto_1
    new-array v6, v5, [J

    const-wide/16 v7, -0x1

    .line 57
    invoke-static {v6, v7, v8}, Ljava/util/Arrays;->fill([JJ)V

    const-wide/16 v1, 0x1

    const/4 v9, 0x0

    .line 58
    aput-wide v1, v6, v9

    .line 62
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleDurations()[J

    move-result-object v10

    array-length v11, v10

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v12, 0x0

    :goto_2
    if-lt v3, v11, :cond_2

    goto :goto_3

    :cond_2
    aget-wide v13, v10, v3

    .line 63
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v15

    invoke-virtual {v15}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTimescale()J

    move-result-wide v15

    div-long v15, v1, v15

    iget v7, v0, Lcom/googlecode/mp4parser/authoring/builder/TwoSecondIntersectionFinder;->fragmentLength:I

    int-to-long v7, v7

    div-long v7, v15, v7

    long-to-int v8, v7

    add-int/2addr v8, v4

    if-lt v8, v5, :cond_8

    :goto_3
    add-int/2addr v12, v4

    int-to-long v1, v12

    add-int/lit8 v3, v5, -0x1

    :goto_4
    if-gez v3, :cond_6

    new-array v1, v9, [J

    :goto_5
    if-lt v9, v5, :cond_3

    return-object v1

    .line 79
    :cond_3
    aget-wide v2, v6, v9

    .line 80
    array-length v7, v1

    if-eqz v7, :cond_4

    array-length v7, v1

    sub-int/2addr v7, v4

    aget-wide v7, v1, v7

    cmp-long v10, v7, v2

    if-eqz v10, :cond_5

    .line 81
    :cond_4
    array-length v7, v1

    add-int/2addr v7, v4

    invoke-static {v1, v7}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    .line 82
    array-length v7, v1

    sub-int/2addr v7, v4

    aput-wide v2, v1, v7

    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 73
    :cond_6
    aget-wide v7, v6, v3

    const-wide/16 v15, -0x1

    cmp-long v10, v7, v15

    if-nez v10, :cond_7

    .line 74
    aput-wide v1, v6, v3

    .line 76
    :cond_7
    aget-wide v1, v6, v3

    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    :cond_8
    const-wide/16 v15, -0x1

    add-int/lit8 v12, v12, 0x1

    move/from16 v17, v5

    int-to-long v4, v12

    .line 67
    aput-wide v4, v6, v8

    add-long/2addr v1, v13

    add-int/lit8 v3, v3, 0x1

    move-wide v7, v15

    move/from16 v5, v17

    const/4 v4, 0x1

    goto :goto_2

    .line 43
    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/googlecode/mp4parser/authoring/Track;

    .line 44
    invoke-interface {v4}, Lcom/googlecode/mp4parser/authoring/Track;->getDuration()J

    move-result-wide v5

    invoke-interface {v4}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTimescale()J

    move-result-wide v7

    div-long/2addr v5, v7

    long-to-double v4, v5

    cmpg-double v6, v2, v4

    if-gez v6, :cond_0

    move-wide v2, v4

    goto/16 :goto_0
.end method
