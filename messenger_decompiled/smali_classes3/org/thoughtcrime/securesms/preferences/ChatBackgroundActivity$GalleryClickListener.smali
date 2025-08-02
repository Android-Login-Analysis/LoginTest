.class Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity$GalleryClickListener;
.super Ljava/lang/Object;
.source "ChatBackgroundActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GalleryClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity;


# direct methods
.method private constructor <init>(Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity$GalleryClickListener;->this$0:Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity;Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity$1;)V
    .locals 0

    .line 206
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity$GalleryClickListener;-><init>(Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 209
    iget-object p1, p0, Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity$GalleryClickListener;->this$0:Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity;

    const/16 v0, 0xb

    invoke-static {p1, v0}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->selectImage(Landroid/app/Activity;I)V

    return-void
.end method
