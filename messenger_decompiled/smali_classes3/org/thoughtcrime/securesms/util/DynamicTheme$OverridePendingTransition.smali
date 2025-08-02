.class final Lorg/thoughtcrime/securesms/util/DynamicTheme$OverridePendingTransition;
.super Ljava/lang/Object;
.source "DynamicTheme.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/util/DynamicTheme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OverridePendingTransition"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static invoke(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    .line 110
    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method
