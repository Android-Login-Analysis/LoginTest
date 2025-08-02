.class Lcom/annimon/stream/RandomCompat$4;
.super Ljava/lang/Object;
.source "RandomCompat.java"

# interfaces
.implements Lcom/annimon/stream/function/IntSupplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/RandomCompat;->ints(II)Lcom/annimon/stream/IntStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final bound:I

.field final synthetic this$0:Lcom/annimon/stream/RandomCompat;

.field final synthetic val$randomNumberBound:I

.field final synthetic val$randomNumberOrigin:I


# direct methods
.method constructor <init>(Lcom/annimon/stream/RandomCompat;II)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/annimon/stream/RandomCompat$4;->this$0:Lcom/annimon/stream/RandomCompat;

    iput p2, p0, Lcom/annimon/stream/RandomCompat$4;->val$randomNumberBound:I

    iput p3, p0, Lcom/annimon/stream/RandomCompat$4;->val$randomNumberOrigin:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sub-int/2addr p2, p3

    .line 252
    iput p2, p0, Lcom/annimon/stream/RandomCompat$4;->bound:I

    return-void
.end method


# virtual methods
.method public getAsInt()I
    .locals 3

    .line 256
    iget v0, p0, Lcom/annimon/stream/RandomCompat$4;->bound:I

    if-gez v0, :cond_1

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/annimon/stream/RandomCompat$4;->this$0:Lcom/annimon/stream/RandomCompat;

    invoke-static {v0}, Lcom/annimon/stream/RandomCompat;->access$000(Lcom/annimon/stream/RandomCompat;)Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    .line 261
    iget v1, p0, Lcom/annimon/stream/RandomCompat$4;->val$randomNumberOrigin:I

    if-ge v1, v0, :cond_0

    iget v1, p0, Lcom/annimon/stream/RandomCompat$4;->val$randomNumberBound:I

    if-ge v0, v1, :cond_0

    return v0

    .line 264
    :cond_1
    iget v0, p0, Lcom/annimon/stream/RandomCompat$4;->val$randomNumberOrigin:I

    iget-object v1, p0, Lcom/annimon/stream/RandomCompat$4;->this$0:Lcom/annimon/stream/RandomCompat;

    invoke-static {v1}, Lcom/annimon/stream/RandomCompat;->access$000(Lcom/annimon/stream/RandomCompat;)Ljava/util/Random;

    move-result-object v1

    iget v2, p0, Lcom/annimon/stream/RandomCompat$4;->bound:I

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
