.class Lorg/thoughtcrime/securesms/components/ComposeText$CommitContentListener;
.super Ljava/lang/Object;
.source "ComposeText.java"

# interfaces
.implements Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/components/ComposeText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CommitContentListener"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "org.thoughtcrime.securesms.components.ComposeText$CommitContentListener"


# instance fields
.field private final mediaListener:Lorg/thoughtcrime/securesms/components/InputPanel$MediaListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lorg/thoughtcrime/securesms/components/InputPanel$MediaListener;)V
    .locals 0

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/ComposeText$CommitContentListener;->mediaListener:Lorg/thoughtcrime/securesms/components/InputPanel$MediaListener;

    return-void
.end method

.method synthetic constructor <init>(Lorg/thoughtcrime/securesms/components/InputPanel$MediaListener;Lorg/thoughtcrime/securesms/components/ComposeText$1;)V
    .locals 0

    .line 148
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/components/ComposeText$CommitContentListener;-><init>(Lorg/thoughtcrime/securesms/components/InputPanel$MediaListener;)V

    return-void
.end method


# virtual methods
.method public onCommitContent(Landroidx/core/view/inputmethod/InputContentInfoCompat;ILandroid/os/Bundle;)Z
    .locals 2

    .line 160
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastNMR1()Z

    move-result p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    and-int/2addr p2, v0

    if-eqz p2, :cond_0

    .line 162
    :try_start_0
    invoke-virtual {p1}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->requestPermission()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 164
    sget-object p2, Lorg/thoughtcrime/securesms/components/ComposeText$CommitContentListener;->TAG:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    .line 169
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->getDescription()Landroid/content/ClipDescription;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ClipDescription;->getMimeTypeCount()I

    move-result p2

    if-lez p2, :cond_1

    .line 170
    iget-object p2, p0, Lorg/thoughtcrime/securesms/components/ComposeText$CommitContentListener;->mediaListener:Lorg/thoughtcrime/securesms/components/InputPanel$MediaListener;

    invoke-virtual {p1}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->getContentUri()Landroid/net/Uri;

    move-result-object p3

    .line 171
    invoke-virtual {p1}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->getDescription()Landroid/content/ClipDescription;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/ClipDescription;->getMimeType(I)Ljava/lang/String;

    move-result-object p1

    .line 170
    invoke-interface {p2, p3, p1}, Lorg/thoughtcrime/securesms/components/InputPanel$MediaListener;->onMediaSelected(Landroid/net/Uri;Ljava/lang/String;)V

    return v0

    :cond_1
    return v1
.end method
