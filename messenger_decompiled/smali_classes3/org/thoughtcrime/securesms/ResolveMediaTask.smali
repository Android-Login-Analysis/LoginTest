.class public Lorg/thoughtcrime/securesms/ResolveMediaTask;
.super Landroid/os/AsyncTask;
.source "ResolveMediaTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/ResolveMediaTask$OnMediaResolvedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/net/Uri;",
        "Ljava/lang/Void;",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ResolveMediaTask"

.field private static final instances:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lorg/thoughtcrime/securesms/ResolveMediaTask;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final contextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final listenerWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lorg/thoughtcrime/securesms/ResolveMediaTask$OnMediaResolvedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/thoughtcrime/securesms/ResolveMediaTask;->instances:Ljava/util/HashSet;

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Lorg/thoughtcrime/securesms/ResolveMediaTask$OnMediaResolvedListener;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 36
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/ResolveMediaTask;->contextRef:Ljava/lang/ref/WeakReference;

    .line 37
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/ResolveMediaTask;->listenerWeakReference:Ljava/lang/ref/WeakReference;

    .line 38
    sget-object p1, Lorg/thoughtcrime/securesms/ResolveMediaTask;->instances:Ljava/util/HashSet;

    invoke-virtual {p1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static cancelTasks()V
    .locals 3

    .line 108
    sget-object v0, Lorg/thoughtcrime/securesms/ResolveMediaTask;->instances:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/thoughtcrime/securesms/ResolveMediaTask;

    const/4 v2, 0x1

    .line 109
    invoke-virtual {v1, v2}, Lorg/thoughtcrime/securesms/ResolveMediaTask;->cancel(Z)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private hasFileScheme(Landroid/net/Uri;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string v0, "file"

    .line 117
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public static isExecuting()Z
    .locals 1

    .line 104
    sget-object v0, Lorg/thoughtcrime/securesms/ResolveMediaTask;->instances:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/net/Uri;)Landroid/net/Uri;
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "_size"

    const-string v3, "_display_name"

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 44
    :try_start_0
    aget-object v12, v0, v4

    .line 45
    array-length v0, v0

    const/4 v6, 0x1

    if-ne v0, v6, :cond_6

    if-nez v12, :cond_0

    goto/16 :goto_3

    .line 53
    :cond_0
    iget-object v0, v1, Lorg/thoughtcrime/securesms/ResolveMediaTask;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lde/cketti/safecontentresolver/SafeContentResolverCompat;->newInstance(Landroid/content/Context;)Lde/cketti/safecontentresolver/SafeContentResolver;

    move-result-object v0

    .line 54
    invoke-virtual {v0, v12}, Lde/cketti/safecontentresolver/SafeContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v15

    if-nez v15, :cond_1

    return-object v5

    .line 60
    :cond_1
    iget-object v0, v1, Lorg/thoughtcrime/securesms/ResolveMediaTask;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/String;

    aput-object v3, v8, v4

    aput-object v2, v8, v6

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v0

    move-object v7, v12

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v4, :cond_3

    .line 63
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    .line 65
    :try_start_2
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 66
    :try_start_3
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v18, v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v3, v5

    .line 68
    :goto_0
    :try_start_4
    sget-object v2, Lorg/thoughtcrime/securesms/ResolveMediaTask;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v18, v5

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v4, :cond_2

    .line 72
    :try_start_5
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 73
    :cond_2
    throw v0

    :cond_3
    move-object v3, v5

    move-object/from16 v18, v3

    :goto_1
    if-eqz v4, :cond_4

    .line 72
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_4
    if-nez v3, :cond_5

    .line 76
    invoke-virtual {v12}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v17, v0

    goto :goto_2

    :cond_5
    move-object/from16 v17, v3

    .line 79
    :goto_2
    iget-object v0, v1, Lorg/thoughtcrime/securesms/ResolveMediaTask;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0, v12}, Lorg/thoughtcrime/securesms/util/MediaUtil;->getMimeType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v16

    .line 80
    invoke-static {}, Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider;->getInstance()Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider;

    move-result-object v13

    iget-object v0, v1, Lorg/thoughtcrime/securesms/ResolveMediaTask;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/content/Context;

    invoke-virtual/range {v13 .. v18}, Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider;->create(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2

    return-object v0

    :cond_6
    :goto_3
    return-object v5

    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    .line 82
    :goto_4
    sget-object v2, Lorg/thoughtcrime/securesms/ResolveMediaTask;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v5
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 22
    check-cast p1, [Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/ResolveMediaTask;->doInBackground([Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method protected onCancelled()V
    .locals 2

    .line 97
    sget-object v0, Lorg/thoughtcrime/securesms/ResolveMediaTask;->instances:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 98
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 99
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ResolveMediaTask;->listenerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/ResolveMediaTask$OnMediaResolvedListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/thoughtcrime/securesms/ResolveMediaTask$OnMediaResolvedListener;->onMediaResolved(Landroid/net/Uri;)V

    return-void
.end method

.method protected onPostExecute(Landroid/net/Uri;)V
    .locals 1

    .line 89
    sget-object v0, Lorg/thoughtcrime/securesms/ResolveMediaTask;->instances:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 90
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/ResolveMediaTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lorg/thoughtcrime/securesms/ResolveMediaTask;->listenerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/ResolveMediaTask$OnMediaResolvedListener;

    invoke-interface {v0, p1}, Lorg/thoughtcrime/securesms/ResolveMediaTask$OnMediaResolvedListener;->onMediaResolved(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 22
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/ResolveMediaTask;->onPostExecute(Landroid/net/Uri;)V

    return-void
.end method
