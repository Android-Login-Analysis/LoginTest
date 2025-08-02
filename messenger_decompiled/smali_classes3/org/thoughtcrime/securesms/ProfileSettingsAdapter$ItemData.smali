.class Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$ItemData;
.super Ljava/lang/Object;
.source "ProfileSettingsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/ProfileSettingsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ItemData"
.end annotation


# static fields
.field static final CATEGORY_INFO:I = 0x1

.field static final CATEGORY_MEMBERS:I = 0x3

.field static final CATEGORY_SHARED_CHATS:I = 0x4

.field static final CATEGORY_SIGNATURE:I = 0x2


# instance fields
.field final chatlistIndex:I

.field final contactId:I

.field final iconLeft:I

.field final label:Ljava/lang/String;

.field final labelColor:I

.field final settingsId:I

.field final type:I


# direct methods
.method constructor <init>(III)V
    .locals 8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    .line 74
    invoke-direct/range {v0 .. v7}, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$ItemData;-><init>(IIIILjava/lang/String;II)V

    return-void
.end method

.method constructor <init>(IIIILjava/lang/String;II)V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput p1, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$ItemData;->type:I

    .line 79
    iput p2, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$ItemData;->contactId:I

    .line 80
    iput p3, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$ItemData;->chatlistIndex:I

    .line 81
    iput p4, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$ItemData;->settingsId:I

    .line 82
    iput-object p5, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$ItemData;->label:Ljava/lang/String;

    .line 83
    iput p6, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$ItemData;->labelColor:I

    .line 84
    iput p7, p0, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$ItemData;->iconLeft:I

    return-void
.end method

.method constructor <init>(IILjava/lang/String;II)V
    .locals 8

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    .line 70
    invoke-direct/range {v0 .. v7}, Lorg/thoughtcrime/securesms/ProfileSettingsAdapter$ItemData;-><init>(IIIILjava/lang/String;II)V

    return-void
.end method
