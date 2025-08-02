.class public Lorg/thoughtcrime/securesms/util/AndroidSignalProtocolLogger;
.super Ljava/lang/Object;
.source "AndroidSignalProtocolLogger.java"

# interfaces
.implements Lorg/thoughtcrime/securesms/util/SignalProtocolLogger;


# static fields
.field private static final PRIORITY_MAP:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13
    new-instance v0, Lorg/thoughtcrime/securesms/util/AndroidSignalProtocolLogger$1;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lorg/thoughtcrime/securesms/util/AndroidSignalProtocolLogger$1;-><init>(I)V

    sput-object v0, Lorg/thoughtcrime/securesms/util/AndroidSignalProtocolLogger;->PRIORITY_MAP:Landroid/util/SparseIntArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public log(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 24
    sget-object v0, Lorg/thoughtcrime/securesms/util/AndroidSignalProtocolLogger;->PRIORITY_MAP:Landroid/util/SparseIntArray;

    const/4 v1, 0x5

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    .line 25
    invoke-static {p1, p2, p3}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method
