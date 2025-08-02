.class public final enum Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$HeaderState;
.super Ljava/lang/Enum;
.source "StickyHeaderGridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HeaderState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$HeaderState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$HeaderState;

.field public static final enum NORMAL:Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$HeaderState;

.field public static final enum PUSHED:Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$HeaderState;

.field public static final enum STICKY:Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$HeaderState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 61
    new-instance v0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$HeaderState;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$HeaderState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$HeaderState;->NORMAL:Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$HeaderState;

    .line 62
    new-instance v1, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$HeaderState;

    const-string v3, "STICKY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$HeaderState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$HeaderState;->STICKY:Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$HeaderState;

    .line 63
    new-instance v3, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$HeaderState;

    const-string v5, "PUSHED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$HeaderState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$HeaderState;->PUSHED:Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$HeaderState;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$HeaderState;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 60
    sput-object v5, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$HeaderState;->$VALUES:[Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$HeaderState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$HeaderState;
    .locals 1

    .line 60
    const-class v0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$HeaderState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$HeaderState;

    return-object p0
.end method

.method public static values()[Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$HeaderState;
    .locals 1

    .line 60
    sget-object v0, Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$HeaderState;->$VALUES:[Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$HeaderState;

    invoke-virtual {v0}, [Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$HeaderState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codewaves/stickyheadergrid/StickyHeaderGridLayoutManager$HeaderState;

    return-object v0
.end method
