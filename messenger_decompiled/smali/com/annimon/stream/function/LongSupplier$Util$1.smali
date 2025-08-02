.class final Lcom/annimon/stream/function/LongSupplier$Util$1;
.super Ljava/lang/Object;
.source "LongSupplier.java"

# interfaces
.implements Lcom/annimon/stream/function/LongSupplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/function/LongSupplier$Util;->safe(Lcom/annimon/stream/function/ThrowableLongSupplier;J)Lcom/annimon/stream/function/LongSupplier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$resultIfFailed:J

.field final synthetic val$throwableSupplier:Lcom/annimon/stream/function/ThrowableLongSupplier;


# direct methods
.method constructor <init>(Lcom/annimon/stream/function/ThrowableLongSupplier;J)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/annimon/stream/function/LongSupplier$Util$1;->val$throwableSupplier:Lcom/annimon/stream/function/ThrowableLongSupplier;

    iput-wide p2, p0, Lcom/annimon/stream/function/LongSupplier$Util$1;->val$resultIfFailed:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAsLong()J
    .locals 2

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/annimon/stream/function/LongSupplier$Util$1;->val$throwableSupplier:Lcom/annimon/stream/function/ThrowableLongSupplier;

    invoke-interface {v0}, Lcom/annimon/stream/function/ThrowableLongSupplier;->getAsLong()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    .line 55
    :catchall_0
    iget-wide v0, p0, Lcom/annimon/stream/function/LongSupplier$Util$1;->val$resultIfFailed:J

    return-wide v0
.end method
