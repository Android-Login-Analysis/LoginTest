.class final enum Lorg/thoughtcrime/securesms/FullMsgActivity$LoadRemoteContent;
.super Ljava/lang/Enum;
.source "FullMsgActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/FullMsgActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "LoadRemoteContent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/thoughtcrime/securesms/FullMsgActivity$LoadRemoteContent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/thoughtcrime/securesms/FullMsgActivity$LoadRemoteContent;

.field public static final enum ALWAYS:Lorg/thoughtcrime/securesms/FullMsgActivity$LoadRemoteContent;

.field public static final enum NEVER:Lorg/thoughtcrime/securesms/FullMsgActivity$LoadRemoteContent;

.field public static final enum ONCE:Lorg/thoughtcrime/securesms/FullMsgActivity$LoadRemoteContent;


# direct methods
.method private static synthetic $values()[Lorg/thoughtcrime/securesms/FullMsgActivity$LoadRemoteContent;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/thoughtcrime/securesms/FullMsgActivity$LoadRemoteContent;

    const/4 v1, 0x0

    .line 33
    sget-object v2, Lorg/thoughtcrime/securesms/FullMsgActivity$LoadRemoteContent;->NEVER:Lorg/thoughtcrime/securesms/FullMsgActivity$LoadRemoteContent;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/thoughtcrime/securesms/FullMsgActivity$LoadRemoteContent;->ONCE:Lorg/thoughtcrime/securesms/FullMsgActivity$LoadRemoteContent;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lorg/thoughtcrime/securesms/FullMsgActivity$LoadRemoteContent;->ALWAYS:Lorg/thoughtcrime/securesms/FullMsgActivity$LoadRemoteContent;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 34
    new-instance v0, Lorg/thoughtcrime/securesms/FullMsgActivity$LoadRemoteContent;

    const-string v1, "NEVER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/thoughtcrime/securesms/FullMsgActivity$LoadRemoteContent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/thoughtcrime/securesms/FullMsgActivity$LoadRemoteContent;->NEVER:Lorg/thoughtcrime/securesms/FullMsgActivity$LoadRemoteContent;

    .line 35
    new-instance v0, Lorg/thoughtcrime/securesms/FullMsgActivity$LoadRemoteContent;

    const-string v1, "ONCE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/thoughtcrime/securesms/FullMsgActivity$LoadRemoteContent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/thoughtcrime/securesms/FullMsgActivity$LoadRemoteContent;->ONCE:Lorg/thoughtcrime/securesms/FullMsgActivity$LoadRemoteContent;

    .line 36
    new-instance v0, Lorg/thoughtcrime/securesms/FullMsgActivity$LoadRemoteContent;

    const-string v1, "ALWAYS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/thoughtcrime/securesms/FullMsgActivity$LoadRemoteContent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/thoughtcrime/securesms/FullMsgActivity$LoadRemoteContent;->ALWAYS:Lorg/thoughtcrime/securesms/FullMsgActivity$LoadRemoteContent;

    .line 33
    invoke-static {}, Lorg/thoughtcrime/securesms/FullMsgActivity$LoadRemoteContent;->$values()[Lorg/thoughtcrime/securesms/FullMsgActivity$LoadRemoteContent;

    move-result-object v0

    sput-object v0, Lorg/thoughtcrime/securesms/FullMsgActivity$LoadRemoteContent;->$VALUES:[Lorg/thoughtcrime/securesms/FullMsgActivity$LoadRemoteContent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/thoughtcrime/securesms/FullMsgActivity$LoadRemoteContent;
    .locals 1

    .line 33
    const-class v0, Lorg/thoughtcrime/securesms/FullMsgActivity$LoadRemoteContent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/thoughtcrime/securesms/FullMsgActivity$LoadRemoteContent;

    return-object p0
.end method

.method public static values()[Lorg/thoughtcrime/securesms/FullMsgActivity$LoadRemoteContent;
    .locals 1

    .line 33
    sget-object v0, Lorg/thoughtcrime/securesms/FullMsgActivity$LoadRemoteContent;->$VALUES:[Lorg/thoughtcrime/securesms/FullMsgActivity$LoadRemoteContent;

    invoke-virtual {v0}, [Lorg/thoughtcrime/securesms/FullMsgActivity$LoadRemoteContent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/thoughtcrime/securesms/FullMsgActivity$LoadRemoteContent;

    return-object v0
.end method
