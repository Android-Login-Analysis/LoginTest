.class synthetic Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$1;
.super Ljava/lang/Object;
.source "ThumbRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$thoughtcrime$securesms$imageeditor$model$ThumbRenderer$ControlPoint:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 47
    invoke-static {}, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;->values()[Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$1;->$SwitchMap$org$thoughtcrime$securesms$imageeditor$model$ThumbRenderer$ControlPoint:[I

    :try_start_0
    sget-object v1, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;->CENTER_LEFT:Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$1;->$SwitchMap$org$thoughtcrime$securesms$imageeditor$model$ThumbRenderer$ControlPoint:[I

    sget-object v1, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;->CENTER_RIGHT:Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$1;->$SwitchMap$org$thoughtcrime$securesms$imageeditor$model$ThumbRenderer$ControlPoint:[I

    sget-object v1, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;->TOP_CENTER:Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$1;->$SwitchMap$org$thoughtcrime$securesms$imageeditor$model$ThumbRenderer$ControlPoint:[I

    sget-object v1, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;->BOTTOM_CENTER:Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$1;->$SwitchMap$org$thoughtcrime$securesms$imageeditor$model$ThumbRenderer$ControlPoint:[I

    sget-object v1, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;->TOP_LEFT:Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$1;->$SwitchMap$org$thoughtcrime$securesms$imageeditor$model$ThumbRenderer$ControlPoint:[I

    sget-object v1, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;->TOP_RIGHT:Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$1;->$SwitchMap$org$thoughtcrime$securesms$imageeditor$model$ThumbRenderer$ControlPoint:[I

    sget-object v1, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;->BOTTOM_LEFT:Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$1;->$SwitchMap$org$thoughtcrime$securesms$imageeditor$model$ThumbRenderer$ControlPoint:[I

    sget-object v1, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;->BOTTOM_RIGHT:Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    return-void
.end method
