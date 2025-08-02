.class final Lcom/annimon/stream/function/BooleanPredicate$Util$4;
.super Ljava/lang/Object;
.source "BooleanPredicate.java"

# interfaces
.implements Lcom/annimon/stream/function/BooleanPredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/function/BooleanPredicate$Util;->xor(Lcom/annimon/stream/function/BooleanPredicate;Lcom/annimon/stream/function/BooleanPredicate;)Lcom/annimon/stream/function/BooleanPredicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$p1:Lcom/annimon/stream/function/BooleanPredicate;

.field final synthetic val$p2:Lcom/annimon/stream/function/BooleanPredicate;


# direct methods
.method constructor <init>(Lcom/annimon/stream/function/BooleanPredicate;Lcom/annimon/stream/function/BooleanPredicate;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/annimon/stream/function/BooleanPredicate$Util$4;->val$p1:Lcom/annimon/stream/function/BooleanPredicate;

    iput-object p2, p0, Lcom/annimon/stream/function/BooleanPredicate$Util$4;->val$p2:Lcom/annimon/stream/function/BooleanPredicate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public test(Z)Z
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/annimon/stream/function/BooleanPredicate$Util$4;->val$p1:Lcom/annimon/stream/function/BooleanPredicate;

    invoke-interface {v0, p1}, Lcom/annimon/stream/function/BooleanPredicate;->test(Z)Z

    move-result v0

    iget-object v1, p0, Lcom/annimon/stream/function/BooleanPredicate$Util$4;->val$p2:Lcom/annimon/stream/function/BooleanPredicate;

    invoke-interface {v1, p1}, Lcom/annimon/stream/function/BooleanPredicate;->test(Z)Z

    move-result p1

    xor-int/2addr p1, v0

    return p1
.end method
