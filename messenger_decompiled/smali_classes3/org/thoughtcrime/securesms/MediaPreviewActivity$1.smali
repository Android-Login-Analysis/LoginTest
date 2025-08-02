.class Lorg/thoughtcrime/securesms/MediaPreviewActivity$1;
.super Lorg/thoughtcrime/securesms/util/DynamicTheme;
.source "MediaPreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/thoughtcrime/securesms/MediaPreviewActivity;->onPreCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/MediaPreviewActivity;


# direct methods
.method constructor <init>(Lorg/thoughtcrime/securesms/MediaPreviewActivity;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity$1;->this$0:Lorg/thoughtcrime/securesms/MediaPreviewActivity;

    invoke-direct {p0}, Lorg/thoughtcrime/securesms/util/DynamicTheme;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/app/Activity;)V
    .locals 1

    const v0, 0x7f13025f

    .line 110
    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTheme(I)V

    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
