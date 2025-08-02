.class public final synthetic Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/annimon/stream/function/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$TimeBucket;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia;->lambda$getName$3(Lorg/thoughtcrime/securesms/database/loaders/BucketedThreadMediaLoader$BucketedThreadMedia$TimeBucket;)Z

    move-result p1

    return p1
.end method
