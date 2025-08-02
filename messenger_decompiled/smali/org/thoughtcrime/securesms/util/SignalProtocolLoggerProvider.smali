.class public Lorg/thoughtcrime/securesms/util/SignalProtocolLoggerProvider;
.super Ljava/lang/Object;
.source "SignalProtocolLoggerProvider.java"


# static fields
.field private static provider:Lorg/thoughtcrime/securesms/util/SignalProtocolLogger;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getProvider()Lorg/thoughtcrime/securesms/util/SignalProtocolLogger;
    .locals 1

    .line 13
    sget-object v0, Lorg/thoughtcrime/securesms/util/SignalProtocolLoggerProvider;->provider:Lorg/thoughtcrime/securesms/util/SignalProtocolLogger;

    return-object v0
.end method

.method public static setProvider(Lorg/thoughtcrime/securesms/util/SignalProtocolLogger;)V
    .locals 0

    .line 17
    sput-object p0, Lorg/thoughtcrime/securesms/util/SignalProtocolLoggerProvider;->provider:Lorg/thoughtcrime/securesms/util/SignalProtocolLogger;

    return-void
.end method
