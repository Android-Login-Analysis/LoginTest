.class public final enum Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;
.super Ljava/lang/Enum;
.source "ImageEditorHud.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;

.field public static final enum BLUR:Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;

.field public static final enum CROP:Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;

.field public static final enum DRAW:Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;

.field public static final enum HIGHLIGHT:Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;

.field public static final enum MOVE_DELETE:Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;

.field public static final enum NONE:Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;

.field public static final enum TEXT:Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;


# direct methods
.method private static synthetic $values()[Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;

    const/4 v1, 0x0

    .line 244
    sget-object v2, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;->NONE:Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;->CROP:Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;->TEXT:Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;->DRAW:Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;->HIGHLIGHT:Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;->BLUR:Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;->MOVE_DELETE:Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 245
    new-instance v0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;->NONE:Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;

    .line 246
    new-instance v0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;

    const-string v1, "CROP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;->CROP:Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;

    .line 247
    new-instance v0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;

    const-string v1, "TEXT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;->TEXT:Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;

    .line 248
    new-instance v0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;

    const-string v1, "DRAW"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;->DRAW:Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;

    .line 249
    new-instance v0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;

    const-string v1, "HIGHLIGHT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;->HIGHLIGHT:Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;

    .line 250
    new-instance v0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;

    const-string v1, "BLUR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;->BLUR:Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;

    .line 251
    new-instance v0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;

    const-string v1, "MOVE_DELETE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;->MOVE_DELETE:Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;

    .line 244
    invoke-static {}, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;->$values()[Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;

    move-result-object v0

    sput-object v0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;->$VALUES:[Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 244
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;
    .locals 1

    .line 244
    const-class v0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;

    return-object p0
.end method

.method public static values()[Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;
    .locals 1

    .line 244
    sget-object v0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;->$VALUES:[Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;

    invoke-virtual {v0}, [Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$Mode;

    return-object v0
.end method
