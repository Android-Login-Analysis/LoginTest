.class public Lorg/thoughtcrime/securesms/database/Address;
.super Ljava/lang/Object;
.source "Address.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable<",
        "Lorg/thoughtcrime/securesms/database/Address;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/thoughtcrime/securesms/database/Address;",
            ">;"
        }
    .end annotation
.end field

.field private static final DC_CHAT_PREFIX:Ljava/lang/String; = "dc:"

.field private static final DC_CONTACT_PREFIX:Ljava/lang/String; = "dcc:"

.field public static final UNKNOWN:Lorg/thoughtcrime/securesms/database/Address;


# instance fields
.field private final address:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 10
    new-instance v0, Lorg/thoughtcrime/securesms/database/Address$1;

    invoke-direct {v0}, Lorg/thoughtcrime/securesms/database/Address$1;-><init>()V

    sput-object v0, Lorg/thoughtcrime/securesms/database/Address;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 20
    new-instance v0, Lorg/thoughtcrime/securesms/database/Address;

    const-string v1, "Unknown"

    invoke-direct {v0, v1}, Lorg/thoughtcrime/securesms/database/Address;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/thoughtcrime/securesms/database/Address;->UNKNOWN:Lorg/thoughtcrime/securesms/database/Address;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/database/Address;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 37
    iput-object p1, p0, Lorg/thoughtcrime/securesms/database/Address;->address:Ljava/lang/String;

    return-void

    .line 36
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static fromChat(I)Lorg/thoughtcrime/securesms/database/Address;
    .locals 3

    .line 28
    new-instance v0, Lorg/thoughtcrime/securesms/database/Address;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dc:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/database/Address;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static fromContact(I)Lorg/thoughtcrime/securesms/database/Address;
    .locals 3

    .line 32
    new-instance v0, Lorg/thoughtcrime/securesms/database/Address;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dcc:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/database/Address;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static fromSerialized(Ljava/lang/String;)Lorg/thoughtcrime/securesms/database/Address;
    .locals 1

    .line 45
    new-instance v0, Lorg/thoughtcrime/securesms/database/Address;

    invoke-direct {v0, p0}, Lorg/thoughtcrime/securesms/database/Address;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 8
    check-cast p1, Lorg/thoughtcrime/securesms/database/Address;

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/database/Address;->compareTo(Lorg/thoughtcrime/securesms/database/Address;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/thoughtcrime/securesms/database/Address;)I
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/thoughtcrime/securesms/database/Address;->address:Ljava/lang/String;

    iget-object p1, p1, Lorg/thoughtcrime/securesms/database/Address;->address:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 74
    instance-of v0, p1, Lorg/thoughtcrime/securesms/database/Address;

    if-nez v0, :cond_1

    goto :goto_0

    .line 75
    :cond_1
    iget-object v0, p0, Lorg/thoughtcrime/securesms/database/Address;->address:Ljava/lang/String;

    check-cast p1, Lorg/thoughtcrime/securesms/database/Address;

    iget-object p1, p1, Lorg/thoughtcrime/securesms/database/Address;->address:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getDcChatId()I
    .locals 3

    .line 53
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/database/Address;->isDcChat()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lorg/thoughtcrime/securesms/database/Address;->address:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 53
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not dc chat: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/thoughtcrime/securesms/database/Address;->address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public getDcContactId()I
    .locals 3

    .line 58
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/database/Address;->isDcContact()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lorg/thoughtcrime/securesms/database/Address;->address:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 58
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not dc contact: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/thoughtcrime/securesms/database/Address;->address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public hashCode()I
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/thoughtcrime/securesms/database/Address;->address:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isDcChat()Z
    .locals 2

    .line 48
    iget-object v0, p0, Lorg/thoughtcrime/securesms/database/Address;->address:Ljava/lang/String;

    const-string v1, "dc:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isDcContact()Z
    .locals 2

    .line 50
    iget-object v0, p0, Lorg/thoughtcrime/securesms/database/Address;->address:Ljava/lang/String;

    const-string v1, "dcc:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public serialize()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/thoughtcrime/securesms/database/Address;->address:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/thoughtcrime/securesms/database/Address;->address:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 90
    iget-object p2, p0, Lorg/thoughtcrime/securesms/database/Address;->address:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
