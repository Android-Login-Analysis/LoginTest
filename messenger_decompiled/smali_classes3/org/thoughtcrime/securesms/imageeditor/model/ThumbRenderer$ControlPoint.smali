.class public final enum Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;
.super Ljava/lang/Enum;
.source "ThumbRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ControlPoint"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;

.field public static final enum BOTTOM_CENTER:Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;

.field public static final enum BOTTOM_LEFT:Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;

.field public static final enum BOTTOM_RIGHT:Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;

.field public static final enum CENTER_LEFT:Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;

.field public static final enum CENTER_RIGHT:Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;

.field public static final enum TOP_CENTER:Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;

.field public static final enum TOP_LEFT:Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;

.field public static final enum TOP_RIGHT:Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;


# instance fields
.field private final x:F

.field private final y:F


# direct methods
.method private static synthetic $values()[Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;

    const/4 v1, 0x0

    .line 17
    sget-object v2, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;->CENTER_LEFT:Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;->CENTER_RIGHT:Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;->TOP_CENTER:Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;->BOTTOM_CENTER:Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;->TOP_LEFT:Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;->TOP_RIGHT:Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;->BOTTOM_LEFT:Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;->BOTTOM_RIGHT:Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 19
    new-instance v0, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;

    const-string v1, "CENTER_LEFT"

    const/4 v2, 0x0

    const/high16 v3, -0x3b860000    # -1000.0f

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;-><init>(Ljava/lang/String;IFF)V

    sput-object v0, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;->CENTER_LEFT:Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;

    .line 20
    new-instance v0, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;

    const-string v1, "CENTER_RIGHT"

    const/4 v2, 0x1

    const/high16 v5, 0x447a0000    # 1000.0f

    invoke-direct {v0, v1, v2, v5, v4}, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;-><init>(Ljava/lang/String;IFF)V

    sput-object v0, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;->CENTER_RIGHT:Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;

    .line 22
    new-instance v0, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;

    const-string v1, "TOP_CENTER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v4, v3}, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;-><init>(Ljava/lang/String;IFF)V

    sput-object v0, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;->TOP_CENTER:Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;

    .line 23
    new-instance v0, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;

    const-string v1, "BOTTOM_CENTER"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v4, v5}, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;-><init>(Ljava/lang/String;IFF)V

    sput-object v0, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;->BOTTOM_CENTER:Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;

    .line 25
    new-instance v0, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;

    const-string v1, "TOP_LEFT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v3, v3}, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;-><init>(Ljava/lang/String;IFF)V

    sput-object v0, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;->TOP_LEFT:Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;

    .line 26
    new-instance v0, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;

    const-string v1, "TOP_RIGHT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v5, v3}, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;-><init>(Ljava/lang/String;IFF)V

    sput-object v0, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;->TOP_RIGHT:Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;

    .line 27
    new-instance v0, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;

    const-string v1, "BOTTOM_LEFT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v3, v5}, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;-><init>(Ljava/lang/String;IFF)V

    sput-object v0, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;->BOTTOM_LEFT:Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;

    .line 28
    new-instance v0, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;

    const-string v1, "BOTTOM_RIGHT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v5, v5}, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;-><init>(Ljava/lang/String;IFF)V

    sput-object v0, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;->BOTTOM_RIGHT:Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;

    .line 17
    invoke-static {}, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;->$values()[Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;

    move-result-object v0

    sput-object v0, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;->$VALUES:[Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IFF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 34
    iput p3, p0, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;->x:F

    .line 35
    iput p4, p0, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;->y:F

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;
    .locals 1

    .line 17
    const-class v0, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;

    return-object p0
.end method

.method public static values()[Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;
    .locals 1

    .line 17
    sget-object v0, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;->$VALUES:[Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;

    invoke-virtual {v0}, [Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;

    return-object v0
.end method


# virtual methods
.method public getX()F
    .locals 1

    .line 39
    iget v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .line 43
    iget v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;->y:F

    return v0
.end method

.method public isCenter()Z
    .locals 1

    .line 70
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;->isHorizontalCenter()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;->isVerticalCenter()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isHorizontalCenter()Z
    .locals 1

    .line 62
    sget-object v0, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;->CENTER_LEFT:Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;

    if-eq p0, v0, :cond_1

    sget-object v0, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;->CENTER_RIGHT:Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isVerticalCenter()Z
    .locals 1

    .line 66
    sget-object v0, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;->TOP_CENTER:Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;

    if-eq p0, v0, :cond_1

    sget-object v0, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;->BOTTOM_CENTER:Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public opposite()Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;
    .locals 2

    .line 47
    sget-object v0, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$1;->$SwitchMap$org$thoughtcrime$securesms$imageeditor$model$ThumbRenderer$ControlPoint:[I

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 57
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 55
    :pswitch_0
    sget-object v0, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;->TOP_LEFT:Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;

    return-object v0

    .line 54
    :pswitch_1
    sget-object v0, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;->TOP_RIGHT:Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;

    return-object v0

    .line 53
    :pswitch_2
    sget-object v0, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;->BOTTOM_LEFT:Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;

    return-object v0

    .line 52
    :pswitch_3
    sget-object v0, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;->BOTTOM_RIGHT:Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;

    return-object v0

    .line 51
    :pswitch_4
    sget-object v0, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;->TOP_CENTER:Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;

    return-object v0

    .line 50
    :pswitch_5
    sget-object v0, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;->BOTTOM_CENTER:Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;

    return-object v0

    .line 49
    :pswitch_6
    sget-object v0, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;->CENTER_LEFT:Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;

    return-object v0

    .line 48
    :pswitch_7
    sget-object v0, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;->CENTER_RIGHT:Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
