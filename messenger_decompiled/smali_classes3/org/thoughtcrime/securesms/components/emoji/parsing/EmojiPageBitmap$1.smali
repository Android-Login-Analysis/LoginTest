.class Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiPageBitmap$1;
.super Landroid/os/AsyncTask;
.source "EmojiPageBitmap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiPageBitmap;->get()Lorg/thoughtcrime/securesms/util/ListenableFutureTask;
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
.field final synthetic this$0:Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiPageBitmap;


# direct methods
.method constructor <init>(Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiPageBitmap;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiPageBitmap$1;->this$0:Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiPageBitmap;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 58
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiPageBitmap$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 60
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiPageBitmap$1;->this$0:Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiPageBitmap;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiPageBitmap;->access$000(Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiPageBitmap;)Lorg/thoughtcrime/securesms/util/ListenableFutureTask;

    move-result-object p1

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/util/ListenableFutureTask;->run()V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 58
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiPageBitmap$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    .line 65
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiPageBitmap$1;->this$0:Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiPageBitmap;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiPageBitmap;->access$002(Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiPageBitmap;Lorg/thoughtcrime/securesms/util/ListenableFutureTask;)Lorg/thoughtcrime/securesms/util/ListenableFutureTask;

    return-void
.end method
