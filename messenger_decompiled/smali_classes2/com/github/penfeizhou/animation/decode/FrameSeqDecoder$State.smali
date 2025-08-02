.class final enum Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;
.super Ljava/lang/Enum;
.source "FrameSeqDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

.field public static final enum FINISHING:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

.field public static final enum IDLE:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

.field public static final enum INITIALIZING:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

.field public static final enum RUNNING:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 88
    new-instance v0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;->IDLE:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    .line 89
    new-instance v1, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    const-string v3, "RUNNING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;->RUNNING:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    .line 90
    new-instance v3, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    const-string v5, "INITIALIZING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;->INITIALIZING:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    .line 91
    new-instance v5, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    const-string v7, "FINISHING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;->FINISHING:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 87
    sput-object v7, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;->$VALUES:[Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 87
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;
    .locals 1

    .line 87
    const-class v0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    return-object p0
.end method

.method public static values()[Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;
    .locals 1

    .line 87
    sget-object v0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;->$VALUES:[Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    invoke-virtual {v0}, [Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    return-object v0
.end method
