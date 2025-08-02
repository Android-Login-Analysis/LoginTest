.class Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$TimeBucket;
.super Ljava/lang/Object;
.source "BucketedThreadMediaLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimeBucket"
.end annotation


# instance fields
.field private final endTime:J

.field private final name:Ljava/lang/String;

.field private final records:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/b44t/messenger/DcMsg;",
            ">;"
        }
    .end annotation
.end field

.field private final startTime:J


# direct methods
.method constructor <init>(Ljava/lang/String;JJ)V
    .locals 1

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$TimeBucket;->records:Ljava/util/LinkedList;

    .line 199
    iput-object p1, p0, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$TimeBucket;->name:Ljava/lang/String;

    .line 200
    iput-wide p2, p0, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$TimeBucket;->startTime:J

    .line 201
    iput-wide p4, p0, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$TimeBucket;->endTime:J

    return-void
.end method

.method static synthetic access$000(Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$TimeBucket;)J
    .locals 2

    .line 190
    iget-wide v0, p0, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$TimeBucket;->startTime:J

    return-wide v0
.end method

.method static synthetic access$200(Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$TimeBucket;)Ljava/util/LinkedList;
    .locals 0

    .line 190
    iget-object p0, p0, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$TimeBucket;->records:Ljava/util/LinkedList;

    return-object p0
.end method


# virtual methods
.method add(Lcom/b44t/messenger/DcMsg;)V
    .locals 1

    .line 205
    iget-object v0, p0, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$TimeBucket;->records:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    return-void
.end method

.method getItem(I)Lcom/b44t/messenger/DcMsg;
    .locals 1

    .line 221
    iget-object v0, p0, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$TimeBucket;->records:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/b44t/messenger/DcMsg;

    return-object p1
.end method

.method getItemCount()I
    .locals 1

    .line 217
    iget-object v0, p0, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$TimeBucket;->records:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .line 225
    iget-object v0, p0, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$TimeBucket;->name:Ljava/lang/String;

    return-object v0
.end method

.method inRange(J)Z
    .locals 3

    .line 209
    iget-wide v0, p0, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$TimeBucket;->startTime:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    iget-wide v0, p0, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$TimeBucket;->endTime:J

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method isEmpty()Z
    .locals 1

    .line 213
    iget-object v0, p0, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$TimeBucket;->records:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    return v0
.end method
