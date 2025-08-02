.class public Lorg/thoughtcrime/securesms/preferences/widgets/NotificationPrivacyPreference;
.super Ljava/lang/Object;
.source "NotificationPrivacyPreference.java"


# instance fields
.field private final preference:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lorg/thoughtcrime/securesms/preferences/widgets/NotificationPrivacyPreference;->preference:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public isDisplayContact()Z
    .locals 2

    const-string v0, "all"

    .line 12
    iget-object v1, p0, Lorg/thoughtcrime/securesms/preferences/widgets/NotificationPrivacyPreference;->preference:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "contact"

    iget-object v1, p0, Lorg/thoughtcrime/securesms/preferences/widgets/NotificationPrivacyPreference;->preference:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method public isDisplayMessage()Z
    .locals 2

    const-string v0, "all"

    .line 16
    iget-object v1, p0, Lorg/thoughtcrime/securesms/preferences/widgets/NotificationPrivacyPreference;->preference:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
