.class final Lcom/annimon/stream/function/IntSupplier$Util$1;
.super Ljava/lang/Object;
.source "IntSupplier.java"

# interfaces
.implements Lcom/annimon/stream/function/IntSupplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/function/IntSupplier$Util;->safe(Lcom/annimon/stream/function/ThrowableIntSupplier;I)Lcom/annimon/stream/function/IntSupplier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$resultIfFailed:I

.field final synthetic val$throwableSupplier:Lcom/annimon/stream/function/ThrowableIntSupplier;


# direct methods
.method constructor <init>(Lcom/annimon/stream/function/ThrowableIntSupplier;I)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/annimon/stream/function/IntSupplier$Util$1;->val$throwableSupplier:Lcom/annimon/stream/function/ThrowableIntSupplier;

    iput p2, p0, Lcom/annimon/stream/function/IntSupplier$Util$1;->val$resultIfFailed:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAsInt()I
    .locals 1

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/annimon/stream/function/IntSupplier$Util$1;->val$throwableSupplier:Lcom/annimon/stream/function/ThrowableIntSupplier;

    invoke-interface {v0}, Lcom/annimon/stream/function/ThrowableIntSupplier;->getAsInt()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 56
    :catchall_0
    iget v0, p0, Lcom/annimon/stream/function/IntSupplier$Util$1;->val$resultIfFailed:I

    return v0
.end method
