.class public Lorg/thoughtcrime/securesms/database/loaders/RecentPhotosLoader;
.super Landroidx/loader/content/CursorLoader;
.source "RecentPhotosLoader.java"


# static fields
.field public static final BASE_URL:Landroid/net/Uri;

.field private static final PROJECTION:[Ljava/lang/String;

.field private static final SELECTION:Ljava/lang/String;


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lorg/thoughtcrime/securesms/database/loaders/RecentPhotosLoader;->BASE_URL:Landroid/net/Uri;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "datetaken"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "date_modified"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "orientation"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    .line 18
    sput-object v0, Lorg/thoughtcrime/securesms/database/loaders/RecentPhotosLoader;->PROJECTION:[Ljava/lang/String;

    .line 26
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-le v0, v1, :cond_0

    const-string v0, "is_pending != 1"

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 27
    :goto_0
    sput-object v0, Lorg/thoughtcrime/securesms/database/loaders/RecentPhotosLoader;->SELECTION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Landroidx/loader/content/CursorLoader;-><init>(Landroid/content/Context;)V

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/database/loaders/RecentPhotosLoader;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public loadInBackground()Landroid/database/Cursor;
    .locals 7

    .line 38
    iget-object v0, p0, Lorg/thoughtcrime/securesms/database/loaders/RecentPhotosLoader;->context:Landroid/content/Context;

    invoke-static {}, Lorg/thoughtcrime/securesms/permissions/Permissions;->galleryPermissions()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/thoughtcrime/securesms/permissions/Permissions;->hasAll(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lorg/thoughtcrime/securesms/database/loaders/RecentPhotosLoader;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lorg/thoughtcrime/securesms/database/loaders/RecentPhotosLoader;->PROJECTION:[Ljava/lang/String;

    sget-object v4, Lorg/thoughtcrime/securesms/database/loaders/RecentPhotosLoader;->SELECTION:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "date_modified DESC"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/database/loaders/RecentPhotosLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
