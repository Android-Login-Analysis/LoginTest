.class Lorg/thoughtcrime/securesms/util/Stopwatch$Split;
.super Ljava/lang/Object;
.source "Stopwatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/util/Stopwatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Split"
.end annotation


# instance fields
.field final label:Ljava/lang/String;

.field final time:J


# direct methods
.method constructor <init>(JLjava/lang/String;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-wide p1, p0, Lorg/thoughtcrime/securesms/util/Stopwatch$Split;->time:J

    .line 56
    iput-object p3, p0, Lorg/thoughtcrime/securesms/util/Stopwatch$Split;->label:Ljava/lang/String;

    return-void
.end method
