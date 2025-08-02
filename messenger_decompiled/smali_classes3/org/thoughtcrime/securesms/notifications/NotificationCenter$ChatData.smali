.class Lorg/thoughtcrime/securesms/notifications/NotificationCenter$ChatData;
.super Ljava/lang/Object;
.source "NotificationCenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/notifications/NotificationCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChatData"
.end annotation


# instance fields
.field public final accountId:I

.field public final chatId:I

.field final synthetic this$0:Lorg/thoughtcrime/securesms/notifications/NotificationCenter;


# direct methods
.method public constructor <init>(Lorg/thoughtcrime/securesms/notifications/NotificationCenter;II)V
    .locals 0

    .line 610
    iput-object p1, p0, Lorg/thoughtcrime/securesms/notifications/NotificationCenter$ChatData;->this$0:Lorg/thoughtcrime/securesms/notifications/NotificationCenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 611
    iput p2, p0, Lorg/thoughtcrime/securesms/notifications/NotificationCenter$ChatData;->accountId:I

    .line 612
    iput p3, p0, Lorg/thoughtcrime/securesms/notifications/NotificationCenter$ChatData;->chatId:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 618
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 620
    :cond_1
    check-cast p1, Lorg/thoughtcrime/securesms/notifications/NotificationCenter$ChatData;

    .line 621
    iget v2, p0, Lorg/thoughtcrime/securesms/notifications/NotificationCenter$ChatData;->accountId:I

    iget v3, p1, Lorg/thoughtcrime/securesms/notifications/NotificationCenter$ChatData;->accountId:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lorg/thoughtcrime/securesms/notifications/NotificationCenter$ChatData;->chatId:I

    iget p1, p1, Lorg/thoughtcrime/securesms/notifications/NotificationCenter$ChatData;->chatId:I

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method
