.class final Lcom/annimon/stream/function/BooleanPredicate$Util$5;
.super Ljava/lang/Object;
.source "BooleanPredicate.java"

# interfaces
.implements Lcom/annimon/stream/function/BooleanPredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/function/BooleanPredicate$Util;->negate(Lcom/annimon/stream/function/BooleanPredicate;)Lcom/annimon/stream/function/BooleanPredicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$p1:Lcom/annimon/stream/function/BooleanPredicate;


# direct methods
.method constructor <init>(Lcom/annimon/stream/function/BooleanPredicate;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/annimon/stream/function/BooleanPredicate$Util$5;->val$p1:Lcom/annimon/stream/function/BooleanPredicate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public test(Z)Z
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/annimon/stream/function/BooleanPredicate$Util$5;->val$p1:Lcom/annimon/stream/function/BooleanPredicate;

    invoke-interface {v0, p1}, Lcom/annimon/stream/function/BooleanPredicate;->test(Z)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
