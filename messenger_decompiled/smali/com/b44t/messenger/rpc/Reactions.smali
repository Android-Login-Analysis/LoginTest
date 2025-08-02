.class public Lcom/b44t/messenger/rpc/Reactions;
.super Ljava/lang/Object;
.source "Reactions.java"


# instance fields
.field private final reactions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/b44t/messenger/rpc/Reaction;",
            ">;"
        }
    .end annotation
.end field

.field private final reactionsByContact:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/HashMap;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/b44t/messenger/rpc/Reaction;",
            ">;)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/b44t/messenger/rpc/Reactions;->reactionsByContact:Ljava/util/HashMap;

    .line 16
    iput-object p2, p0, Lcom/b44t/messenger/rpc/Reactions;->reactions:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getReactions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/b44t/messenger/rpc/Reaction;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/b44t/messenger/rpc/Reactions;->reactions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getReactionsByContact()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/b44t/messenger/rpc/Reactions;->reactionsByContact:Ljava/util/HashMap;

    return-object v0
.end method
