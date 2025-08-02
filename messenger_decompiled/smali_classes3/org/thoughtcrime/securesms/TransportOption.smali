.class public Lorg/thoughtcrime/securesms/TransportOption;
.super Ljava/lang/Object;
.source "TransportOption.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/TransportOption$Type;
    }
.end annotation


# instance fields
.field private final composeHint:Ljava/lang/String;

.field private final drawable:I

.field private final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/thoughtcrime/securesms/TransportOption$Type;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p2, p0, Lorg/thoughtcrime/securesms/TransportOption;->drawable:I

    .line 22
    iput-object p3, p0, Lorg/thoughtcrime/securesms/TransportOption;->text:Ljava/lang/String;

    .line 23
    iput-object p4, p0, Lorg/thoughtcrime/securesms/TransportOption;->composeHint:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getComposeHint()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/thoughtcrime/securesms/TransportOption;->composeHint:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/thoughtcrime/securesms/TransportOption;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getDrawable()I
    .locals 1

    .line 31
    iget v0, p0, Lorg/thoughtcrime/securesms/TransportOption;->drawable:I

    return v0
.end method

.method public getType()Lorg/thoughtcrime/securesms/TransportOption$Type;
    .locals 1

    .line 27
    sget-object v0, Lorg/thoughtcrime/securesms/TransportOption$Type;->NORMAL_MAIL:Lorg/thoughtcrime/securesms/TransportOption$Type;

    return-object v0
.end method
