.class Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider$1;
.super Landroid/content/UriMatcher;
.source "PersistentBlobProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 2

    .line 45
    invoke-direct {p0, p1}, Landroid/content/UriMatcher;-><init>(I)V

    const-string p1, "capture/*/*/#"

    const/4 v0, 0x1

    const-string v1, "org.thoughtcrime.securesms"

    .line 46
    invoke-virtual {p0, v1, p1, v0}, Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider$1;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string p1, "capture-new/*/*/*/*/#"

    const/4 v0, 0x2

    .line 47
    invoke-virtual {p0, v1, p1, v0}, Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider$1;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
