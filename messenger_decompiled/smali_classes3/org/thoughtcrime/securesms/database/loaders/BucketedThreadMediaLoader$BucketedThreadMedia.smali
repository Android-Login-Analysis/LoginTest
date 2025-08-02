.class public Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia;
.super Ljava/lang/Object;
.source "BucketedThreadMediaLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BucketedThreadMedia"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$TimeBucket;,
        Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$MonthBuckets;
    }
.end annotation


# instance fields
.field private final LAST_MONTH:Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$TimeBucket;

.field private final LAST_WEEK:Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$TimeBucket;

.field private final OLDER:Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$MonthBuckets;

.field private final THIS_MONTH:Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$TimeBucket;

.field private final THIS_WEEK:Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$TimeBucket;

.field private final TIME_SECTIONS:[Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$TimeBucket;

.field private final TODAY:Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$TimeBucket;

.field private final YESTERDAY:Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$TimeBucket;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 85
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v8, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$TimeBucket;

    const v2, 0x7f120408

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v9, 0x6

    const/4 v10, 0x0

    .line 88
    invoke-virtual {v0, v9, v10}, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia;->addToCalendarFromTodayMidnight(II)J

    move-result-wide v4

    const-wide v6, 0x7fffffffffffffffL

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$TimeBucket;-><init>(Ljava/lang/String;JJ)V

    iput-object v8, v0, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia;->TODAY:Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$TimeBucket;

    .line 90
    new-instance v2, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$TimeBucket;

    const v3, 0x7f120440

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v3, -0x1

    .line 91
    invoke-virtual {v0, v9, v3}, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia;->addToCalendarFromTodayMidnight(II)J

    move-result-wide v13

    invoke-static {v8}, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$TimeBucket;->access$000(Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$TimeBucket;)J

    move-result-wide v15

    move-object v11, v2

    invoke-direct/range {v11 .. v16}, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$TimeBucket;-><init>(Ljava/lang/String;JJ)V

    iput-object v2, v0, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia;->YESTERDAY:Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$TimeBucket;

    .line 93
    new-instance v4, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$TimeBucket;

    const v5, 0x7f120405

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 94
    invoke-virtual/range {p0 .. p0}, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia;->getCalendar()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v5

    const/4 v6, 0x7

    invoke-virtual {v0, v6, v5}, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia;->setInCalendarFromTodayMidnight(II)J

    move-result-wide v19

    invoke-static {v2}, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$TimeBucket;->access$000(Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$TimeBucket;)J

    move-result-wide v21

    move-object/from16 v17, v4

    invoke-direct/range {v17 .. v22}, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$TimeBucket;-><init>(Ljava/lang/String;JJ)V

    iput-object v4, v0, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia;->THIS_WEEK:Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$TimeBucket;

    .line 96
    new-instance v5, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$TimeBucket;

    const v6, 0x7f1201c3

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 97
    invoke-static {v4}, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$TimeBucket;->access$000(Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$TimeBucket;)J

    move-result-wide v6

    const/4 v15, 0x3

    invoke-virtual {v0, v6, v7, v15, v3}, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia;->addToCalendarFrom(JII)J

    move-result-wide v13

    invoke-static {v4}, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$TimeBucket;->access$000(Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$TimeBucket;)J

    move-result-wide v6

    move-object v11, v5

    const/16 v17, 0x3

    move-wide v15, v6

    invoke-direct/range {v11 .. v16}, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$TimeBucket;-><init>(Ljava/lang/String;JJ)V

    iput-object v5, v0, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia;->LAST_WEEK:Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$TimeBucket;

    .line 99
    new-instance v6, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$TimeBucket;

    const v7, 0x7f120404

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/4 v7, 0x5

    const/4 v11, 0x1

    .line 100
    invoke-virtual {v0, v7, v11}, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia;->setInCalendarFromTodayMidnight(II)J

    move-result-wide v20

    invoke-static {v5}, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$TimeBucket;->access$000(Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$TimeBucket;)J

    move-result-wide v22

    move-object/from16 v18, v6

    invoke-direct/range {v18 .. v23}, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$TimeBucket;-><init>(Ljava/lang/String;JJ)V

    iput-object v6, v0, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia;->THIS_MONTH:Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$TimeBucket;

    .line 102
    new-instance v12, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$TimeBucket;

    const v13, 0x7f1201be

    invoke-virtual {v1, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 103
    invoke-static {v6}, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$TimeBucket;->access$000(Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$TimeBucket;)J

    move-result-wide v13

    const/4 v1, 0x2

    invoke-virtual {v0, v13, v14, v1, v3}, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia;->addToCalendarFrom(JII)J

    move-result-wide v26

    invoke-static {v5}, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$TimeBucket;->access$000(Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$TimeBucket;)J

    move-result-wide v28

    move-object/from16 v24, v12

    invoke-direct/range {v24 .. v29}, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$TimeBucket;-><init>(Ljava/lang/String;JJ)V

    iput-object v12, v0, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia;->LAST_MONTH:Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$TimeBucket;

    new-array v3, v9, [Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$TimeBucket;

    aput-object v8, v3, v10

    aput-object v2, v3, v11

    aput-object v4, v3, v1

    aput-object v5, v3, v17

    const/4 v1, 0x4

    aput-object v6, v3, v1

    aput-object v12, v3, v7

    .line 104
    iput-object v3, v0, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia;->TIME_SECTIONS:[Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$TimeBucket;

    .line 105
    new-instance v1, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$MonthBuckets;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$MonthBuckets;-><init>(Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$1;)V

    iput-object v1, v0, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia;->OLDER:Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$MonthBuckets;

    return-void
.end method

.method static synthetic lambda$get$2(Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$TimeBucket;)Z
    .locals 0

    .line 144
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$TimeBucket;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static synthetic lambda$getName$3(Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$TimeBucket;)Z
    .locals 0

    .line 151
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$TimeBucket;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static synthetic lambda$getSectionCount$0(Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$TimeBucket;)Z
    .locals 0

    .line 131
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$TimeBucket;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static synthetic lambda$getSectionItemCount$1(Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$TimeBucket;)Z
    .locals 0

    .line 137
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$TimeBucket;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public add(Lcom/b44t/messenger/DcMsg;)V
    .locals 6

    .line 109
    iget-object v0, p0, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia;->TIME_SECTIONS:[Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$TimeBucket;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 110
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getTimestamp()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$TimeBucket;->inRange(J)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 111
    invoke-virtual {v3, p1}, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$TimeBucket;->add(Lcom/b44t/messenger/DcMsg;)V

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 115
    :cond_1
    iget-object v0, p0, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia;->OLDER:Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$MonthBuckets;

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$MonthBuckets;->add(Lcom/b44t/messenger/DcMsg;)V

    return-void
.end method

.method addToCalendarFrom(JII)J
    .locals 2

    .line 170
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 171
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 172
    invoke-virtual {v0, p3, p4}, Ljava/util/Calendar;->add(II)V

    .line 173
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    return-wide p1
.end method

.method addToCalendarFromTodayMidnight(II)J
    .locals 1

    .line 177
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 178
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia;->setCalendarToTodayMidnight(Ljava/util/Calendar;)V

    .line 179
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->add(II)V

    .line 180
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    return-wide p1
.end method

.method public get(II)Lcom/b44t/messenger/DcMsg;
    .locals 2

    .line 144
    iget-object v0, p0, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia;->TIME_SECTIONS:[Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$TimeBucket;

    invoke-static {v0}, Lcom/annimon/stream/Stream;->of([Ljava/lang/Object;)Lcom/annimon/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v0, v1}, Lcom/annimon/stream/Stream;->filter(Lcom/annimon/stream/function/Predicate;)Lcom/annimon/stream/Stream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/annimon/stream/Stream;->toList()Ljava/util/List;

    move-result-object v0

    .line 146
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$TimeBucket;

    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$TimeBucket;->getItem(I)Lcom/b44t/messenger/DcMsg;

    move-result-object p1

    return-object p1

    .line 147
    :cond_0
    iget-object v1, p0, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia;->OLDER:Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$MonthBuckets;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1, p2}, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$MonthBuckets;->getItem(II)Lcom/b44t/messenger/DcMsg;

    move-result-object p1

    return-object p1
.end method

.method public getAll()Ljava/util/LinkedList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "Lcom/b44t/messenger/DcMsg;",
            ">;"
        }
    .end annotation

    .line 119
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 120
    iget-object v1, p0, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia;->TIME_SECTIONS:[Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$TimeBucket;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 121
    invoke-static {v4}, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$TimeBucket;->access$200(Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$TimeBucket;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 123
    :cond_0
    iget-object v1, p0, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia;->OLDER:Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$MonthBuckets;

    invoke-static {v1}, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$MonthBuckets;->access$300(Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$MonthBuckets;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 124
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method getCalendar()Ljava/util/Calendar;
    .locals 1

    .line 159
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public getName(ILjava/util/Locale;)Ljava/lang/String;
    .locals 2

    .line 151
    iget-object v0, p0, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia;->TIME_SECTIONS:[Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$TimeBucket;

    invoke-static {v0}, Lcom/annimon/stream/Stream;->of([Ljava/lang/Object;)Lcom/annimon/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Lcom/annimon/stream/Stream;->filter(Lcom/annimon/stream/function/Predicate;)Lcom/annimon/stream/Stream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/annimon/stream/Stream;->toList()Ljava/util/List;

    move-result-object v0

    .line 153
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$TimeBucket;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$TimeBucket;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 154
    :cond_0
    iget-object v1, p0, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia;->OLDER:Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$MonthBuckets;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1, p2}, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$MonthBuckets;->getName(ILjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSectionCount()I
    .locals 2

    .line 130
    iget-object v0, p0, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia;->TIME_SECTIONS:[Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$TimeBucket;

    invoke-static {v0}, Lcom/annimon/stream/Stream;->of([Ljava/lang/Object;)Lcom/annimon/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$$ExternalSyntheticLambda3;-><init>()V

    .line 131
    invoke-virtual {v0, v1}, Lcom/annimon/stream/Stream;->filter(Lcom/annimon/stream/function/Predicate;)Lcom/annimon/stream/Stream;

    move-result-object v0

    .line 132
    invoke-virtual {v0}, Lcom/annimon/stream/Stream;->count()J

    move-result-wide v0

    long-to-int v1, v0

    iget-object v0, p0, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia;->OLDER:Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$MonthBuckets;

    .line 133
    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$MonthBuckets;->getSectionCount()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public getSectionItemCount(I)I
    .locals 2

    .line 137
    iget-object v0, p0, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia;->TIME_SECTIONS:[Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$TimeBucket;

    invoke-static {v0}, Lcom/annimon/stream/Stream;->of([Ljava/lang/Object;)Lcom/annimon/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/annimon/stream/Stream;->filter(Lcom/annimon/stream/function/Predicate;)Lcom/annimon/stream/Stream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/annimon/stream/Stream;->toList()Ljava/util/List;

    move-result-object v0

    .line 139
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$TimeBucket;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$TimeBucket;->getItemCount()I

    move-result p1

    return p1

    .line 140
    :cond_0
    iget-object v1, p0, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia;->OLDER:Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$MonthBuckets;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$MonthBuckets;->getSectionItemCount(I)I

    move-result p1

    return p1
.end method

.method setCalendarToTodayMidnight(Ljava/util/Calendar;)V
    .locals 2

    const/16 v0, 0xb

    const/4 v1, 0x0

    .line 184
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xc

    .line 185
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xd

    .line 186
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xe

    .line 187
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    return-void
.end method

.method setInCalendarFromTodayMidnight(II)J
    .locals 1

    .line 163
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 164
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia;->setCalendarToTodayMidnight(Ljava/util/Calendar;)V

    .line 165
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->set(II)V

    .line 166
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    return-wide p1
.end method
