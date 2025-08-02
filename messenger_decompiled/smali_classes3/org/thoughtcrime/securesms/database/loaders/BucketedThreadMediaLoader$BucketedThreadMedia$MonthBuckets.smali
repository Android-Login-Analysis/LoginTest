.class Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$MonthBuckets;
.super Ljava/lang/Object;
.source "BucketedThreadMediaLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MonthBuckets"
.end annotation


# instance fields
.field private final months:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/Date;",
            "Ljava/util/List<",
            "Lcom/b44t/messenger/DcMsg;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$MonthBuckets;->months:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$1;)V
    .locals 0

    .line 229
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$MonthBuckets;-><init>()V

    return-void
.end method

.method static synthetic access$300(Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$MonthBuckets;)Ljava/util/Map;
    .locals 0

    .line 229
    iget-object p0, p0, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$MonthBuckets;->months:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method add(Lcom/b44t/messenger/DcMsg;)V
    .locals 4

    .line 234
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 235
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v1, 0x1

    .line 237
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit16 v2, v2, -0x76c

    const/4 v3, 0x2

    .line 238
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 239
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v2, v0, v1}, Ljava/util/Date;-><init>(III)V

    .line 241
    iget-object v0, p0, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$MonthBuckets;->months:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$MonthBuckets;->months:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 244
    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 245
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    iget-object p1, p0, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$MonthBuckets;->months:Ljava/util/Map;

    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method getItem(II)Lcom/b44t/messenger/DcMsg;
    .locals 1

    .line 259
    iget-object v0, p0, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$MonthBuckets;->months:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$MonthBuckets;->getSection(I)Ljava/util/Date;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/b44t/messenger/DcMsg;

    return-object p1
.end method

.method getName(ILjava/util/Locale;)Ljava/lang/String;
    .locals 2

    .line 270
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$MonthBuckets;->getSection(I)Ljava/util/Date;

    move-result-object p1

    .line 272
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMMM yyyy"

    invoke-direct {v0, v1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method getSection(I)Ljava/util/Date;
    .locals 2

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$MonthBuckets;->months:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 264
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 266
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Date;

    return-object p1
.end method

.method getSectionCount()I
    .locals 1

    .line 251
    iget-object v0, p0, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$MonthBuckets;->months:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method getSectionItemCount(I)I
    .locals 1

    .line 255
    iget-object v0, p0, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$MonthBuckets;->months:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$MonthBuckets;->getSection(I)Ljava/util/Date;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method
