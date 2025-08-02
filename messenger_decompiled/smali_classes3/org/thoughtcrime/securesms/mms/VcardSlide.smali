.class public Lorg/thoughtcrime/securesms/mms/VcardSlide;
.super Lorg/thoughtcrime/securesms/mms/DocumentSlide;
.source "VcardSlide.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;JLjava/lang/String;)V
    .locals 7

    const-string v3, "text/vcard"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p3

    move-object v6, p5

    .line 19
    invoke-direct/range {v0 .. v6}, Lorg/thoughtcrime/securesms/mms/DocumentSlide;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/b44t/messenger/DcMsg;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lorg/thoughtcrime/securesms/mms/DocumentSlide;-><init>(Landroid/content/Context;Lcom/b44t/messenger/DcMsg;)V

    return-void
.end method


# virtual methods
.method public isVcard()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
