.class final Lcom/annimon/stream/function/LongPredicate$Util$4;
.super Ljava/lang/Object;
.source "LongPredicate.java"

# interfaces
.implements Lcom/annimon/stream/function/LongPredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/function/LongPredicate$Util;->negate(Lcom/annimon/stream/function/LongPredicate;)Lcom/annimon/stream/function/LongPredicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$p1:Lcom/annimon/stream/function/LongPredicate;


# direct methods
.method constructor <init>(Lcom/annimon/stream/function/LongPredicate;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/annimon/stream/function/LongPredicate$Util$4;->val$p1:Lcom/annimon/stream/function/LongPredicate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public test(J)Z
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/annimon/stream/function/LongPredicate$Util$4;->val$p1:Lcom/annimon/stream/function/LongPredicate;

    invoke-interface {v0, p1, p2}, Lcom/annimon/stream/function/LongPredicate;->test(J)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
