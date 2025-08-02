.class Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity$DefaultClickListener;
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
    name = "DefaultClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity;


# direct methods
.method private constructor <init>(Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity$DefaultClickListener;->this$0:Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity;Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity$1;)V
    .locals 0

    .line 195
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity$DefaultClickListener;-><init>(Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 198
    iget-object p1, p0, Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity$DefaultClickListener;->this$0:Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity;

    const/4 v0, 0x0

    iput-object v0, p1, Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity;->imageUri:Landroid/net/Uri;

    .line 199
    iget-object p1, p0, Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity$DefaultClickListener;->this$0:Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity;

    const-string v0, ""

    iput-object v0, p1, Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity;->tempDestinationPath:Ljava/lang/String;

    .line 200
    iget-object p1, p0, Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity$DefaultClickListener;->this$0:Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity;->access$500(Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity;)V

    .line 201
    iget-object p1, p0, Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity$DefaultClickListener;->this$0:Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Lorg/thoughtcrime/securesms/preferences/ChatBackgroundActivity;->imageUpdate:Ljava/lang/Boolean;

    return-void
.end method
