.class Lorg/thoughtcrime/securesms/components/InputPanel$RecordTime;
.super Ljava/lang/Object;
.source "InputPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/components/InputPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RecordTime"
.end annotation


# instance fields
.field private final UPDATE_EVERY_MS:I

.field private final recordTimeView:Landroid/widget/TextView;

.field private final startTime:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method private constructor <init>(Landroid/widget/TextView;)V
    .locals 3

    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 387
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/components/InputPanel$RecordTime;->startTime:Ljava/util/concurrent/atomic/AtomicLong;

    const/16 v0, 0x63

    .line 388
    iput v0, p0, Lorg/thoughtcrime/securesms/components/InputPanel$RecordTime;->UPDATE_EVERY_MS:I

    .line 391
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/InputPanel$RecordTime;->recordTimeView:Landroid/widget/TextView;

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/TextView;Lorg/thoughtcrime/securesms/components/InputPanel$1;)V
    .locals 0

    .line 384
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/components/InputPanel$RecordTime;-><init>(Landroid/widget/TextView;)V

    return-void
.end method

.method private formatElapsedTime(J)Ljava/lang/String;
    .locals 4

    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-wide/16 v2, 0x64

    div-long/2addr p1, v2

    const-wide/16 v2, 0xa

    rem-long/2addr p1, v2

    .line 421
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    const-string p1, ".%01d"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public display()V
    .locals 3

    .line 395
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/InputPanel$RecordTime;->startTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 396
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/InputPanel$RecordTime;->recordTimeView:Landroid/widget/TextView;

    const-wide/16 v1, 0x0

    invoke-direct {p0, v1, v2}, Lorg/thoughtcrime/securesms/components/InputPanel$RecordTime;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 397
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/InputPanel$RecordTime;->recordTimeView:Landroid/widget/TextView;

    const/16 v1, 0x96

    invoke-static {v0, v1}, Lorg/thoughtcrime/securesms/util/ViewUtil;->fadeIn(Landroid/view/View;I)V

    const-wide/16 v0, 0x63

    .line 398
    invoke-static {p0, v0, v1}, Lorg/thoughtcrime/securesms/util/Util;->runOnMainDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public hide()J
    .locals 5

    .line 402
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lorg/thoughtcrime/securesms/components/InputPanel$RecordTime;->startTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 403
    iget-object v2, p0, Lorg/thoughtcrime/securesms/components/InputPanel$RecordTime;->startTime:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 404
    iget-object v2, p0, Lorg/thoughtcrime/securesms/components/InputPanel$RecordTime;->recordTimeView:Landroid/widget/TextView;

    const/16 v3, 0x96

    const/4 v4, 0x4

    invoke-static {v2, v3, v4}, Lorg/thoughtcrime/securesms/util/ViewUtil;->fadeOut(Landroid/view/View;II)Lcom/b44t/messenger/util/concurrent/ListenableFuture;

    return-wide v0
.end method

.method public run()V
    .locals 5

    .line 410
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/InputPanel$RecordTime;->startTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 412
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 413
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/InputPanel$RecordTime;->recordTimeView:Landroid/widget/TextView;

    invoke-direct {p0, v2, v3}, Lorg/thoughtcrime/securesms/components/InputPanel$RecordTime;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-wide/16 v0, 0x63

    .line 414
    invoke-static {p0, v0, v1}, Lorg/thoughtcrime/securesms/util/Util;->runOnMainDelayed(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method
