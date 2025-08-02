.class Lorg/thoughtcrime/securesms/MediaPreviewActivity$2;
.super Landroid/os/AsyncTask;
.source "MediaPreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/thoughtcrime/securesms/MediaPreviewActivity;->deleteMedia()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/MediaPreviewActivity;

.field final synthetic val$mediaItem:Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;


# direct methods
.method constructor <init>(Lorg/thoughtcrime/securesms/MediaPreviewActivity;Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;)V
    .locals 0

    .line 357
    iput-object p1, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity$2;->this$0:Lorg/thoughtcrime/securesms/MediaPreviewActivity;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity$2;->val$mediaItem:Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 357
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/MediaPreviewActivity$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .line 360
    iget-object p1, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity$2;->this$0:Lorg/thoughtcrime/securesms/MediaPreviewActivity;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->access$1200(Lorg/thoughtcrime/securesms/MediaPreviewActivity;)Lcom/b44t/messenger/DcContext;

    move-result-object p1

    iget-object v0, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity$2;->val$mediaItem:Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;->access$200(Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;)I

    move-result v0

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/b44t/messenger/DcContext;->deleteMsgs([I)V

    const/4 p1, 0x0

    return-object p1
.end method
