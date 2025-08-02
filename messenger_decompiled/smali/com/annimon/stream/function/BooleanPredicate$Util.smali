.class public Lcom/annimon/stream/function/BooleanPredicate$Util;
.super Ljava/lang/Object;
.source "BooleanPredicate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/annimon/stream/function/BooleanPredicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Util"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static and(Lcom/annimon/stream/function/BooleanPredicate;Lcom/annimon/stream/function/BooleanPredicate;)Lcom/annimon/stream/function/BooleanPredicate;
    .locals 1

    .line 48
    new-instance v0, Lcom/annimon/stream/function/BooleanPredicate$Util$2;

    invoke-direct {v0, p0, p1}, Lcom/annimon/stream/function/BooleanPredicate$Util$2;-><init>(Lcom/annimon/stream/function/BooleanPredicate;Lcom/annimon/stream/function/BooleanPredicate;)V

    return-object v0
.end method

.method public static identity()Lcom/annimon/stream/function/BooleanPredicate;
    .locals 1

    .line 31
    new-instance v0, Lcom/annimon/stream/function/BooleanPredicate$Util$1;

    invoke-direct {v0}, Lcom/annimon/stream/function/BooleanPredicate$Util$1;-><init>()V

    return-object v0
.end method

.method public static negate(Lcom/annimon/stream/function/BooleanPredicate;)Lcom/annimon/stream/function/BooleanPredicate;
    .locals 1

    .line 98
    new-instance v0, Lcom/annimon/stream/function/BooleanPredicate$Util$5;

    invoke-direct {v0, p0}, Lcom/annimon/stream/function/BooleanPredicate$Util$5;-><init>(Lcom/annimon/stream/function/BooleanPredicate;)V

    return-object v0
.end method

.method public static or(Lcom/annimon/stream/function/BooleanPredicate;Lcom/annimon/stream/function/BooleanPredicate;)Lcom/annimon/stream/function/BooleanPredicate;
    .locals 1

    .line 65
    new-instance v0, Lcom/annimon/stream/function/BooleanPredicate$Util$3;

    invoke-direct {v0, p0, p1}, Lcom/annimon/stream/function/BooleanPredicate$Util$3;-><init>(Lcom/annimon/stream/function/BooleanPredicate;Lcom/annimon/stream/function/BooleanPredicate;)V

    return-object v0
.end method

.method public static xor(Lcom/annimon/stream/function/BooleanPredicate;Lcom/annimon/stream/function/BooleanPredicate;)Lcom/annimon/stream/function/BooleanPredicate;
    .locals 1

    .line 82
    new-instance v0, Lcom/annimon/stream/function/BooleanPredicate$Util$4;

    invoke-direct {v0, p0, p1}, Lcom/annimon/stream/function/BooleanPredicate$Util$4;-><init>(Lcom/annimon/stream/function/BooleanPredicate;Lcom/annimon/stream/function/BooleanPredicate;)V

    return-object v0
.end method
