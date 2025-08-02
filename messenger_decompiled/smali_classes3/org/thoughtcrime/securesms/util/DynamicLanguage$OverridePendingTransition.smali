.class final Lorg/thoughtcrime/securesms/util/DynamicLanguage$OverridePendingTransition;
.super Ljava/lang/Object;
.source "DynamicLanguage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/util/DynamicLanguage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OverridePendingTransition"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static invoke(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    .line 103
    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method
