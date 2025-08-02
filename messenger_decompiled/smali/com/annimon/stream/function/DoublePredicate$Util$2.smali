.class final Lcom/annimon/stream/function/DoublePredicate$Util$2;
.super Ljava/lang/Object;
.source "DoublePredicate.java"

# interfaces
.implements Lcom/annimon/stream/function/DoublePredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/function/DoublePredicate$Util;->or(Lcom/annimon/stream/function/DoublePredicate;Lcom/annimon/stream/function/DoublePredicate;)Lcom/annimon/stream/function/DoublePredicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$p1:Lcom/annimon/stream/function/DoublePredicate;

.field final synthetic val$p2:Lcom/annimon/stream/function/DoublePredicate;


# direct methods
.method constructor <init>(Lcom/annimon/stream/function/DoublePredicate;Lcom/annimon/stream/function/DoublePredicate;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/annimon/stream/function/DoublePredicate$Util$2;->val$p1:Lcom/annimon/stream/function/DoublePredicate;

    iput-object p2, p0, Lcom/annimon/stream/function/DoublePredicate$Util$2;->val$p2:Lcom/annimon/stream/function/DoublePredicate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public test(D)Z
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/annimon/stream/function/DoublePredicate$Util$2;->val$p1:Lcom/annimon/stream/function/DoublePredicate;

    invoke-interface {v0, p1, p2}, Lcom/annimon/stream/function/DoublePredicate;->test(D)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/annimon/stream/function/DoublePredicate$Util$2;->val$p2:Lcom/annimon/stream/function/DoublePredicate;

    invoke-interface {v0, p1, p2}, Lcom/annimon/stream/function/DoublePredicate;->test(D)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
