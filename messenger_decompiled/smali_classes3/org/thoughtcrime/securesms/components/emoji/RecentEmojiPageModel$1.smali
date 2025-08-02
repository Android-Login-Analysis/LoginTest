.class Lorg/thoughtcrime/securesms/components/emoji/RecentEmojiPageModel$1;
.super Landroid/os/AsyncTask;
.source "RecentEmojiPageModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/thoughtcrime/securesms/components/emoji/RecentEmojiPageModel;->onCodePointSelected(Ljava/lang/String;)V
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
.field final synthetic this$0:Lorg/thoughtcrime/securesms/components/emoji/RecentEmojiPageModel;

.field final synthetic val$latestRecentlyUsed:Ljava/util/LinkedHashSet;


# direct methods
.method constructor <init>(Lorg/thoughtcrime/securesms/components/emoji/RecentEmojiPageModel;Ljava/util/LinkedHashSet;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/emoji/RecentEmojiPageModel$1;->this$0:Lorg/thoughtcrime/securesms/components/emoji/RecentEmojiPageModel;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/components/emoji/RecentEmojiPageModel$1;->val$latestRecentlyUsed:Ljava/util/LinkedHashSet;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 88
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/components/emoji/RecentEmojiPageModel$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    .line 93
    :try_start_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/emoji/RecentEmojiPageModel$1;->val$latestRecentlyUsed:Ljava/util/LinkedHashSet;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/util/JsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 94
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/RecentEmojiPageModel$1;->this$0:Lorg/thoughtcrime/securesms/components/emoji/RecentEmojiPageModel;

    invoke-static {v0}, Lorg/thoughtcrime/securesms/components/emoji/RecentEmojiPageModel;->access$100(Lorg/thoughtcrime/securesms/components/emoji/RecentEmojiPageModel;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/emoji/RecentEmojiPageModel$1;->this$0:Lorg/thoughtcrime/securesms/components/emoji/RecentEmojiPageModel;

    .line 95
    invoke-static {v1}, Lorg/thoughtcrime/securesms/components/emoji/RecentEmojiPageModel;->access$000(Lorg/thoughtcrime/securesms/components/emoji/RecentEmojiPageModel;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 96
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 98
    invoke-static {}, Lorg/thoughtcrime/securesms/components/emoji/RecentEmojiPageModel;->access$200()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
