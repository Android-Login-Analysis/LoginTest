.class public Lorg/thoughtcrime/securesms/mms/AttachmentManager;
.super Ljava/lang/Object;
.source "AttachmentManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/mms/AttachmentManager$AttachmentListener;,
        Lorg/thoughtcrime/securesms/mms/AttachmentManager$RemoveButtonListener;,
        Lorg/thoughtcrime/securesms/mms/AttachmentManager$EditButtonListener;,
        Lorg/thoughtcrime/securesms/mms/AttachmentManager$ThumbnailClickListener;,
        Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AttachmentManager"


# instance fields
.field private final attachmentListener:Lorg/thoughtcrime/securesms/mms/AttachmentManager$AttachmentListener;

.field private attachmentPresent:Z

.field private final attachmentViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/thoughtcrime/securesms/util/views/Stub<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private audioView:Lorg/thoughtcrime/securesms/components/AudioView;

.field private final context:Landroid/content/Context;

.field private documentView:Lorg/thoughtcrime/securesms/components/DocumentView;

.field private final garbage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private hidden:Z

.field private imageCaptureUri:Landroid/net/Uri;

.field private removableMediaView:Lorg/thoughtcrime/securesms/components/RemovableEditableMediaView;

.field private slide:Lorg/thoughtcrime/securesms/util/guava/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/thoughtcrime/securesms/util/guava/Optional<",
            "Lorg/thoughtcrime/securesms/mms/Slide;",
            ">;"
        }
    .end annotation
.end field

.field private thumbnail:Lorg/thoughtcrime/securesms/components/ThumbnailView;

.field private vcardView:Lorg/thoughtcrime/securesms/components/VcardView;

.field private videoCaptureUri:Landroid/net/Uri;

.field private webxdcView:Lorg/thoughtcrime/securesms/components/WebxdcView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lorg/thoughtcrime/securesms/mms/AttachmentManager$AttachmentListener;)V
    .locals 1

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->garbage:Ljava/util/List;

    .line 101
    invoke-static {}, Lorg/thoughtcrime/securesms/util/guava/Optional;->absent()Lorg/thoughtcrime/securesms/util/guava/Optional;

    move-result-object v0

    iput-object v0, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->slide:Lorg/thoughtcrime/securesms/util/guava/Optional;

    .line 108
    iput-object p1, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->context:Landroid/content/Context;

    .line 109
    iput-object p2, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->attachmentListener:Lorg/thoughtcrime/securesms/mms/AttachmentManager$AttachmentListener;

    const p2, 0x7f090066

    .line 110
    invoke-static {p1, p2}, Lorg/thoughtcrime/securesms/util/ViewUtil;->findStubById(Landroid/app/Activity;I)Lorg/thoughtcrime/securesms/util/views/Stub;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->attachmentViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    return-void
.end method

.method static synthetic access$1000(Lorg/thoughtcrime/securesms/mms/AttachmentManager;)Lorg/thoughtcrime/securesms/components/AudioView;
    .locals 0

    .line 83
    iget-object p0, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->audioView:Lorg/thoughtcrime/securesms/components/AudioView;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/thoughtcrime/securesms/mms/AttachmentManager;)Lorg/thoughtcrime/securesms/components/VcardView;
    .locals 0

    .line 83
    iget-object p0, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->vcardView:Lorg/thoughtcrime/securesms/components/VcardView;

    return-object p0
.end method

.method static synthetic access$1200(Lorg/thoughtcrime/securesms/mms/AttachmentManager;)Lorg/thoughtcrime/securesms/components/WebxdcView;
    .locals 0

    .line 83
    iget-object p0, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->webxdcView:Lorg/thoughtcrime/securesms/components/WebxdcView;

    return-object p0
.end method

.method static synthetic access$1300(Lorg/thoughtcrime/securesms/mms/AttachmentManager;)Lorg/thoughtcrime/securesms/components/DocumentView;
    .locals 0

    .line 83
    iget-object p0, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->documentView:Lorg/thoughtcrime/securesms/components/DocumentView;

    return-object p0
.end method

.method static synthetic access$1400(Lorg/thoughtcrime/securesms/mms/AttachmentManager;)Lorg/thoughtcrime/securesms/util/guava/Optional;
    .locals 0

    .line 83
    iget-object p0, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->slide:Lorg/thoughtcrime/securesms/util/guava/Optional;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/thoughtcrime/securesms/mms/AttachmentManager;Lorg/thoughtcrime/securesms/mms/Slide;)V
    .locals 0

    .line 83
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->previewImageDraft(Lorg/thoughtcrime/securesms/mms/Slide;)V

    return-void
.end method

.method static synthetic access$1600(Lorg/thoughtcrime/securesms/mms/AttachmentManager;)Landroid/net/Uri;
    .locals 0

    .line 83
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->getSlideUri()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lorg/thoughtcrime/securesms/mms/AttachmentManager;)Lorg/thoughtcrime/securesms/components/ThumbnailView;
    .locals 0

    .line 83
    iget-object p0, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->thumbnail:Lorg/thoughtcrime/securesms/components/ThumbnailView;

    return-object p0
.end method

.method static synthetic access$400(Lorg/thoughtcrime/securesms/mms/AttachmentManager;Z)V
    .locals 0

    .line 83
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->setAttachmentPresent(Z)V

    return-void
.end method

.method static synthetic access$500(Lorg/thoughtcrime/securesms/mms/AttachmentManager;)Lorg/thoughtcrime/securesms/mms/AttachmentManager$AttachmentListener;
    .locals 0

    .line 83
    iget-object p0, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->attachmentListener:Lorg/thoughtcrime/securesms/mms/AttachmentManager$AttachmentListener;

    return-object p0
.end method

.method static synthetic access$600(Lorg/thoughtcrime/securesms/mms/AttachmentManager;)Landroid/content/Context;
    .locals 0

    .line 83
    iget-object p0, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .line 83
    sget-object v0, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lorg/thoughtcrime/securesms/mms/AttachmentManager;Lorg/thoughtcrime/securesms/mms/Slide;)V
    .locals 0

    .line 83
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->setSlide(Lorg/thoughtcrime/securesms/mms/Slide;)V

    return-void
.end method

.method static synthetic access$900(Lorg/thoughtcrime/securesms/mms/AttachmentManager;)Lorg/thoughtcrime/securesms/components/RemovableEditableMediaView;
    .locals 0

    .line 83
    iget-object p0, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->removableMediaView:Lorg/thoughtcrime/securesms/components/RemovableEditableMediaView;

    return-object p0
.end method

.method private cleanup(Landroid/net/Uri;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 184
    iget-object v0, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider;->isAuthority(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    sget-object v0, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cleaning up "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-static {}, Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider;->getInstance()Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider;

    move-result-object v0

    iget-object v1, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider;->delete(Landroid/content/Context;Landroid/net/Uri;)Z

    :cond_0
    return-void
.end method

.method public static getFileName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 8

    .line 435
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 436
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 p0, 0x1

    new-array v4, p0, [Ljava/lang/String;

    const/4 p0, 0x0

    const-string v0, "_display_name"

    aput-object v0, v4, p0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 438
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 439
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v0

    goto :goto_0

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_0

    .line 442
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 443
    :cond_0
    throw p1

    :cond_1
    :goto_0
    if-eqz p0, :cond_2

    .line 442
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_2
    if-nez v1, :cond_3

    .line 446
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    :cond_3
    return-object v1
.end method

.method private getSlideUri()Landroid/net/Uri;
    .locals 1

    .line 521
    iget-object v0, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->slide:Lorg/thoughtcrime/securesms/util/guava/Optional;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/util/guava/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->slide:Lorg/thoughtcrime/securesms/util/guava/Optional;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/util/guava/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/mms/Slide;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/mms/Slide;->getUri()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private inflateStub()V
    .locals 3

    .line 114
    iget-object v0, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->attachmentViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/util/views/Stub;->resolved()Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->attachmentViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const v1, 0x7f090067

    .line 117
    invoke-static {v0, v1}, Lorg/thoughtcrime/securesms/util/ViewUtil;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/thoughtcrime/securesms/components/ThumbnailView;

    iput-object v1, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->thumbnail:Lorg/thoughtcrime/securesms/components/ThumbnailView;

    const v1, 0x7f090063

    .line 118
    invoke-static {v0, v1}, Lorg/thoughtcrime/securesms/util/ViewUtil;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/thoughtcrime/securesms/components/AudioView;

    iput-object v1, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->audioView:Lorg/thoughtcrime/securesms/components/AudioView;

    const v1, 0x7f090064

    .line 119
    invoke-static {v0, v1}, Lorg/thoughtcrime/securesms/util/ViewUtil;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/thoughtcrime/securesms/components/DocumentView;

    iput-object v1, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->documentView:Lorg/thoughtcrime/securesms/components/DocumentView;

    const v1, 0x7f090069

    .line 120
    invoke-static {v0, v1}, Lorg/thoughtcrime/securesms/util/ViewUtil;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/thoughtcrime/securesms/components/WebxdcView;

    iput-object v1, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->webxdcView:Lorg/thoughtcrime/securesms/components/WebxdcView;

    const v1, 0x7f090068

    .line 121
    invoke-static {v0, v1}, Lorg/thoughtcrime/securesms/util/ViewUtil;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/thoughtcrime/securesms/components/VcardView;

    iput-object v1, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->vcardView:Lorg/thoughtcrime/securesms/components/VcardView;

    const v1, 0x7f0902d6

    .line 123
    invoke-static {v0, v1}, Lorg/thoughtcrime/securesms/util/ViewUtil;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/components/RemovableEditableMediaView;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->removableMediaView:Lorg/thoughtcrime/securesms/components/RemovableEditableMediaView;

    .line 125
    new-instance v1, Lorg/thoughtcrime/securesms/mms/AttachmentManager$RemoveButtonListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/thoughtcrime/securesms/mms/AttachmentManager$RemoveButtonListener;-><init>(Lorg/thoughtcrime/securesms/mms/AttachmentManager;Lorg/thoughtcrime/securesms/mms/AttachmentManager$1;)V

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/components/RemovableEditableMediaView;->setRemoveClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v0, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->removableMediaView:Lorg/thoughtcrime/securesms/components/RemovableEditableMediaView;

    new-instance v1, Lorg/thoughtcrime/securesms/mms/AttachmentManager$EditButtonListener;

    invoke-direct {v1, p0, v2}, Lorg/thoughtcrime/securesms/mms/AttachmentManager$EditButtonListener;-><init>(Lorg/thoughtcrime/securesms/mms/AttachmentManager;Lorg/thoughtcrime/securesms/mms/AttachmentManager$1;)V

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/components/RemovableEditableMediaView;->setEditClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v0, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->thumbnail:Lorg/thoughtcrime/securesms/components/ThumbnailView;

    new-instance v1, Lorg/thoughtcrime/securesms/mms/AttachmentManager$ThumbnailClickListener;

    invoke-direct {v1, p0, v2}, Lorg/thoughtcrime/securesms/mms/AttachmentManager$ThumbnailClickListener;-><init>(Lorg/thoughtcrime/securesms/mms/AttachmentManager;Lorg/thoughtcrime/securesms/mms/AttachmentManager$1;)V

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/components/ThumbnailView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v0, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->context:Landroid/content/Context;

    const v1, 0x7f04017c

    invoke-static {v0, v1}, Lorg/thoughtcrime/securesms/util/ThemeUtil;->getThemedColor(Landroid/content/Context;I)I

    move-result v0

    .line 129
    iget-object v1, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->audioView:Lorg/thoughtcrime/securesms/components/AudioView;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/components/AudioView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 130
    iget-object v1, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->documentView:Lorg/thoughtcrime/securesms/components/DocumentView;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/components/DocumentView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 131
    iget-object v1, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->webxdcView:Lorg/thoughtcrime/securesms/components/WebxdcView;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/components/WebxdcView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 132
    iget-object v1, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->vcardView:Lorg/thoughtcrime/securesms/components/VcardView;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/components/VcardView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$selectAudio$2(Landroid/app/Activity;I)V
    .locals 2

    const-string v0, "audio/*"

    const/4 v1, 0x0

    .line 483
    invoke-static {p0, v0, v1, p1}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->selectMediaType(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic lambda$selectGallery$0(Landroid/app/Activity;I)V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "image/*"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v3, "video/*"

    aput-object v3, v0, v1

    .line 464
    invoke-static {p0, v2, v0, p1}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->selectMediaType(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic lambda$selectImage$1(Landroid/app/Activity;I)V
    .locals 2

    const-string v0, "image/*"

    const/4 v1, 0x0

    .line 473
    invoke-static {p0, v0, v1, p1}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->selectMediaType(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic lambda$selectLocation$3(Lorg/thoughtcrime/securesms/geolocation/DcLocationManager;II)V
    .locals 1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    .line 507
    invoke-virtual {p0, p2, p1}, Lorg/thoughtcrime/securesms/geolocation/DcLocationManager;->shareLocation(II)V

    goto :goto_0

    .line 505
    :cond_0
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/geolocation/DcLocationManager;->shareLastLocation(I)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$selectLocation$4(Landroid/app/Activity;Lorg/thoughtcrime/securesms/geolocation/DcLocationManager;I)V
    .locals 1

    .line 503
    new-instance v0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1, p2}, Lorg/thoughtcrime/securesms/mms/AttachmentManager$$ExternalSyntheticLambda4;-><init>(Lorg/thoughtcrime/securesms/geolocation/DcLocationManager;I)V

    invoke-static {p0, v0}, Lorg/thoughtcrime/securesms/ShareLocationDialog;->show(Landroid/content/Context;Lorg/thoughtcrime/securesms/ShareLocationDialog$ShareLocationDurationSelectionListener;)V

    return-void
.end method

.method private markGarbage(Landroid/net/Uri;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 191
    iget-object v0, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider;->isAuthority(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    sget-object v0, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Marking garbage that needs cleaning: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v0, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->garbage:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private previewImageDraft(Lorg/thoughtcrime/securesms/mms/Slide;)V
    .locals 4

    .line 623
    invoke-static {p1}, Lorg/thoughtcrime/securesms/MediaPreviewActivity;->isTypeSupported(Lorg/thoughtcrime/securesms/mms/Slide;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/mms/Slide;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 624
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->context:Landroid/content/Context;

    const-class v2, Lorg/thoughtcrime/securesms/MediaPreviewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x1

    .line 625
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "dc_msg_id"

    .line 626
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/mms/Slide;->getDcMsgId()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "outgoing"

    .line 627
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 628
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/mms/Slide;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/mms/Slide;->getContentType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 630
    iget-object p1, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public static selectAudio(Landroid/app/Activity;I)V
    .locals 4

    .line 478
    invoke-static {p0}, Lorg/thoughtcrime/securesms/permissions/Permissions;->with(Landroid/app/Activity;)Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v3, v1, v2

    .line 479
    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->request([Ljava/lang/String;)Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object v0

    .line 480
    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->alwaysGrantOnSdk30()Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object v0

    .line 481
    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->ifNecessary()Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object v0

    const v1, 0x7f1202f8

    .line 482
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->withPermanentDenialDialog(Ljava/lang/String;)Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object v0

    new-instance v1, Lorg/thoughtcrime/securesms/mms/AttachmentManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lorg/thoughtcrime/securesms/mms/AttachmentManager$$ExternalSyntheticLambda0;-><init>(Landroid/app/Activity;I)V

    .line 483
    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->onAllGranted(Ljava/lang/Runnable;)Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object p0

    .line 484
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->execute()V

    return-void
.end method

.method public static selectDocument(Landroid/app/Activity;I)V
    .locals 2

    const-string v0, "*/*"

    const/4 v1, 0x0

    .line 452
    invoke-static {p0, v0, v1, p1}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->selectMediaType(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/String;I)V

    return-void
.end method

.method public static selectGallery(Landroid/app/Activity;I)V
    .locals 2

    .line 460
    invoke-static {p0}, Lorg/thoughtcrime/securesms/permissions/Permissions;->with(Landroid/app/Activity;)Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object v0

    .line 461
    invoke-static {}, Lorg/thoughtcrime/securesms/permissions/Permissions;->galleryPermissions()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->request([Ljava/lang/String;)Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object v0

    .line 462
    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->ifNecessary()Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object v0

    const v1, 0x7f1202f8

    .line 463
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->withPermanentDenialDialog(Ljava/lang/String;)Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object v0

    new-instance v1, Lorg/thoughtcrime/securesms/mms/AttachmentManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lorg/thoughtcrime/securesms/mms/AttachmentManager$$ExternalSyntheticLambda2;-><init>(Landroid/app/Activity;I)V

    .line 464
    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->onAllGranted(Ljava/lang/Runnable;)Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object p0

    .line 465
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->execute()V

    return-void
.end method

.method public static selectImage(Landroid/app/Activity;I)V
    .locals 2

    .line 469
    invoke-static {p0}, Lorg/thoughtcrime/securesms/permissions/Permissions;->with(Landroid/app/Activity;)Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object v0

    .line 470
    invoke-static {}, Lorg/thoughtcrime/securesms/permissions/Permissions;->galleryPermissions()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->request([Ljava/lang/String;)Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object v0

    .line 471
    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->ifNecessary()Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object v0

    const v1, 0x7f1202f8

    .line 472
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->withPermanentDenialDialog(Ljava/lang/String;)Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object v0

    new-instance v1, Lorg/thoughtcrime/securesms/mms/AttachmentManager$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lorg/thoughtcrime/securesms/mms/AttachmentManager$$ExternalSyntheticLambda5;-><init>(Landroid/app/Activity;I)V

    .line 473
    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->onAllGranted(Ljava/lang/Runnable;)Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object p0

    .line 474
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->execute()V

    return-void
.end method

.method public static selectLocation(Landroid/app/Activity;I)V
    .locals 6

    .line 488
    invoke-static {p0}, Lorg/thoughtcrime/securesms/ApplicationContext;->getInstance(Landroid/content/Context;)Lorg/thoughtcrime/securesms/ApplicationContext;

    move-result-object v0

    .line 489
    iget-object v1, v0, Lorg/thoughtcrime/securesms/ApplicationContext;->dcLocationManager:Lorg/thoughtcrime/securesms/geolocation/DcLocationManager;

    .line 491
    invoke-static {v0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b44t/messenger/DcContext;->isSendingLocationsToChat(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 492
    invoke-virtual {v1, p1}, Lorg/thoughtcrime/securesms/geolocation/DcLocationManager;->stopSharingLocation(I)V

    return-void

    .line 498
    :cond_0
    invoke-static {p0}, Lorg/thoughtcrime/securesms/permissions/Permissions;->with(Landroid/app/Activity;)Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object v0

    .line 499
    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->ifNecessary()Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object v0

    const v2, 0x7f080134

    filled-new-array {v2}, [I

    move-result-object v2

    const-string v3, "To share your live location with chat members, allow Delta Chat to use your location data.\n\nTo make live location work gaplessly, location data is used even when the app is closed or not in use."

    .line 500
    invoke-virtual {v0, v3, v2}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->withRationaleDialog(Ljava/lang/String;[I)Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object v0

    const v2, 0x7f1202f5

    .line 501
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->withPermanentDenialDialog(Ljava/lang/String;)Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object v0

    new-instance v2, Lorg/thoughtcrime/securesms/mms/AttachmentManager$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v1, p1}, Lorg/thoughtcrime/securesms/mms/AttachmentManager$$ExternalSyntheticLambda1;-><init>(Landroid/app/Activity;Lorg/thoughtcrime/securesms/geolocation/DcLocationManager;I)V

    .line 502
    invoke-virtual {v0, v2}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->onAllGranted(Ljava/lang/Runnable;)Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object p0

    .line 512
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    const/4 v2, 0x1

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-lt p1, v0, :cond_1

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/String;

    const-string v0, "android.permission.ACCESS_BACKGROUND_LOCATION"

    aput-object v0, p1, v4

    aput-object v3, p1, v2

    aput-object v1, p1, v5

    .line 513
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->request([Ljava/lang/String;)Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    goto :goto_0

    :cond_1
    new-array p1, v5, [Ljava/lang/String;

    aput-object v3, p1, v4

    aput-object v1, p1, v2

    .line 515
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->request([Ljava/lang/String;)Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    .line 517
    :goto_0
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->execute()V

    return-void
.end method

.method public static selectMediaType(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 587
    invoke-static {p0, p1, p2, p3, v0}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->selectMediaType(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/String;ILandroid/net/Uri;)V

    return-void
.end method

.method public static selectMediaType(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/String;ILandroid/net/Uri;)V
    .locals 2

    .line 591
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 592
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x13

    if-eqz p2, :cond_0

    .line 594
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, p1, :cond_0

    const-string v1, "android.intent.extra.MIME_TYPES"

    .line 595
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    if-eqz p4, :cond_1

    .line 598
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt p2, v1, :cond_1

    const-string p2, "android.provider.extra.INITIAL_URI"

    .line 599
    invoke-virtual {v0, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 602
    :cond_1
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, p1, :cond_2

    const-string p1, "android.intent.action.OPEN_DOCUMENT"

    .line 603
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 605
    :try_start_0
    invoke-virtual {p0, v0, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 608
    :catch_0
    sget-object p1, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->TAG:Ljava/lang/String;

    const-string p2, "couldn\'t complete ACTION_OPEN_DOCUMENT, no activity found. falling back."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string p1, "android.intent.action.GET_CONTENT"

    .line 612
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 615
    :try_start_1
    invoke-virtual {p0, v0, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 617
    :catch_1
    sget-object p1, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->TAG:Ljava/lang/String;

    const-string p2, "couldn\'t complete ACTION_GET_CONTENT intent, no activity found. falling back."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x7f1202c0

    const/4 p2, 0x1

    .line 618
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method private setAttachmentPresent(Z)V
    .locals 0

    .line 725
    iput-boolean p1, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->attachmentPresent:Z

    .line 726
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->updateVisibility()V

    return-void
.end method

.method private setSlide(Lorg/thoughtcrime/securesms/mms/Slide;)V
    .locals 2

    .line 198
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->getSlideUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->getSlideUri()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->cleanup(Landroid/net/Uri;)V

    .line 199
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->imageCaptureUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/mms/Slide;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->imageCaptureUri:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->cleanup(Landroid/net/Uri;)V

    .line 200
    :cond_1
    iget-object v0, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->videoCaptureUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/mms/Slide;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->videoCaptureUri:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->cleanup(Landroid/net/Uri;)V

    :cond_2
    const/4 v0, 0x0

    .line 202
    iput-object v0, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->imageCaptureUri:Landroid/net/Uri;

    .line 203
    iput-object v0, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->videoCaptureUri:Landroid/net/Uri;

    .line 204
    invoke-static {p1}, Lorg/thoughtcrime/securesms/util/guava/Optional;->of(Ljava/lang/Object;)Lorg/thoughtcrime/securesms/util/guava/Optional;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->slide:Lorg/thoughtcrime/securesms/util/guava/Optional;

    return-void
.end method

.method private updateVisibility()V
    .locals 2

    .line 731
    iget-boolean v0, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->attachmentPresent:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->hidden:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    if-ne v0, v1, :cond_1

    .line 736
    iget-object v1, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->attachmentViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/util/views/Stub;->resolved()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 739
    :cond_1
    iget-object v1, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->attachmentViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public buildSlideDeck()Lorg/thoughtcrime/securesms/mms/SlideDeck;
    .locals 2

    .line 428
    new-instance v0, Lorg/thoughtcrime/securesms/mms/SlideDeck;

    invoke-direct {v0}, Lorg/thoughtcrime/securesms/mms/SlideDeck;-><init>()V

    .line 429
    iget-object v1, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->slide:Lorg/thoughtcrime/securesms/util/guava/Optional;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/util/guava/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->slide:Lorg/thoughtcrime/securesms/util/guava/Optional;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/util/guava/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/thoughtcrime/securesms/mms/Slide;

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/mms/SlideDeck;->addSlide(Lorg/thoughtcrime/securesms/mms/Slide;)V

    :cond_0
    return-object v0
.end method

.method public capturePhoto(Landroid/app/Activity;I)V
    .locals 4

    .line 533
    invoke-static {p1}, Lorg/thoughtcrime/securesms/permissions/Permissions;->with(Landroid/app/Activity;)Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.CAMERA"

    aput-object v3, v1, v2

    .line 534
    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->request([Ljava/lang/String;)Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object v0

    .line 535
    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->ifNecessary()Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object v0

    const v1, 0x7f1202f4

    .line 536
    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->withPermanentDenialDialog(Ljava/lang/String;)Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object v0

    new-instance v1, Lorg/thoughtcrime/securesms/mms/AttachmentManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2}, Lorg/thoughtcrime/securesms/mms/AttachmentManager$$ExternalSyntheticLambda3;-><init>(Lorg/thoughtcrime/securesms/mms/AttachmentManager;Landroid/app/Activity;I)V

    .line 537
    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->onAllGranted(Ljava/lang/Runnable;)Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object p1

    .line 552
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->execute()V

    return-void
.end method

.method public captureVideo(Landroid/app/Activity;I)V
    .locals 4

    .line 556
    invoke-static {p1}, Lorg/thoughtcrime/securesms/permissions/Permissions;->with(Landroid/app/Activity;)Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.CAMERA"

    aput-object v3, v1, v2

    .line 557
    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->request([Ljava/lang/String;)Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object v0

    .line 558
    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->ifNecessary()Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object v0

    const v1, 0x7f1202f4

    .line 559
    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->withPermanentDenialDialog(Ljava/lang/String;)Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object v0

    new-instance v1, Lorg/thoughtcrime/securesms/mms/AttachmentManager$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1, p2}, Lorg/thoughtcrime/securesms/mms/AttachmentManager$$ExternalSyntheticLambda6;-><init>(Lorg/thoughtcrime/securesms/mms/AttachmentManager;Landroid/app/Activity;I)V

    .line 560
    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->onAllGranted(Ljava/lang/Runnable;)Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;

    move-result-object p1

    .line 583
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/permissions/Permissions$PermissionsBuilder;->execute()V

    return-void
.end method

.method public cleanup()V
    .locals 2

    .line 167
    iget-object v0, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->imageCaptureUri:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->cleanup(Landroid/net/Uri;)V

    .line 168
    iget-object v0, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->videoCaptureUri:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->cleanup(Landroid/net/Uri;)V

    .line 169
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->getSlideUri()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->cleanup(Landroid/net/Uri;)V

    const/4 v0, 0x0

    .line 171
    iput-object v0, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->imageCaptureUri:Landroid/net/Uri;

    .line 172
    iput-object v0, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->videoCaptureUri:Landroid/net/Uri;

    .line 173
    invoke-static {}, Lorg/thoughtcrime/securesms/util/guava/Optional;->absent()Lorg/thoughtcrime/securesms/util/guava/Optional;

    move-result-object v0

    iput-object v0, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->slide:Lorg/thoughtcrime/securesms/util/guava/Optional;

    .line 175
    iget-object v0, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->garbage:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 177
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-direct {p0, v1}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->cleanup(Landroid/net/Uri;)V

    .line 179
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public clear(Lorg/thoughtcrime/securesms/mms/GlideRequests;Z)V
    .locals 1

    .line 138
    iget-object v0, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->attachmentViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/util/views/Stub;->resolved()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 141
    iget-object p2, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->attachmentViewStub:Lorg/thoughtcrime/securesms/util/views/Stub;

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/util/views/Stub;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    const/16 v0, 0xc8

    invoke-static {p2, v0}, Lorg/thoughtcrime/securesms/util/ViewUtil;->fadeOut(Landroid/view/View;I)Lcom/b44t/messenger/util/concurrent/ListenableFuture;

    move-result-object p2

    new-instance v0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$1;

    invoke-direct {v0, p0, p1}, Lorg/thoughtcrime/securesms/mms/AttachmentManager$1;-><init>(Lorg/thoughtcrime/securesms/mms/AttachmentManager;Lorg/thoughtcrime/securesms/mms/GlideRequests;)V

    invoke-interface {p2, v0}, Lcom/b44t/messenger/util/concurrent/ListenableFuture;->addListener(Lcom/b44t/messenger/util/concurrent/ListenableFuture$Listener;)V

    goto :goto_0

    .line 154
    :cond_0
    iget-object p2, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->thumbnail:Lorg/thoughtcrime/securesms/components/ThumbnailView;

    invoke-virtual {p2, p1}, Lorg/thoughtcrime/securesms/components/ThumbnailView;->clear(Lorg/thoughtcrime/securesms/mms/GlideRequests;)V

    const/4 p1, 0x0

    .line 155
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->setAttachmentPresent(Z)V

    .line 156
    iget-object p1, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->attachmentListener:Lorg/thoughtcrime/securesms/mms/AttachmentManager$AttachmentListener;

    invoke-interface {p1}, Lorg/thoughtcrime/securesms/mms/AttachmentManager$AttachmentListener;->onAttachmentChanged()V

    .line 159
    :goto_0
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->getSlideUri()Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->markGarbage(Landroid/net/Uri;)V

    .line 160
    invoke-static {}, Lorg/thoughtcrime/securesms/util/guava/Optional;->absent()Lorg/thoughtcrime/securesms/util/guava/Optional;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->slide:Lorg/thoughtcrime/securesms/util/guava/Optional;

    .line 162
    iget-object p1, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->audioView:Lorg/thoughtcrime/securesms/components/AudioView;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/components/AudioView;->cleanup()V

    :cond_1
    return-void
.end method

.method public getImageCaptureUri()Landroid/net/Uri;
    .locals 1

    .line 525
    iget-object v0, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->imageCaptureUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getVideoCaptureUri()Landroid/net/Uri;
    .locals 1

    .line 529
    iget-object v0, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->videoCaptureUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isAttachmentPresent()Z
    .locals 1

    .line 424
    iget-boolean v0, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->attachmentPresent:Z

    return v0
.end method

.method synthetic lambda$capturePhoto$5$org-thoughtcrime-securesms-mms-AttachmentManager(Landroid/app/Activity;I)V
    .locals 5

    .line 0
    const-string v0, "imageCaptureUri path is "

    .line 539
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 540
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 541
    iget-object v2, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->imageCaptureUri:Landroid/net/Uri;

    if-nez v2, :cond_0

    .line 542
    invoke-static {}, Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider;->getInstance()Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider;

    move-result-object v2

    iget-object v3, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->context:Landroid/content/Context;

    const-string v4, "image/jpeg"

    invoke-virtual {v2, v3, v4}, Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider;->createForExternal(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->imageCaptureUri:Landroid/net/Uri;

    .line 544
    :cond_0
    sget-object v2, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->imageCaptureUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "output"

    .line 545
    iget-object v2, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->imageCaptureUri:Landroid/net/Uri;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 546
    invoke-virtual {p1, v1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 549
    sget-object p2, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->TAG:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method synthetic lambda$captureVideo$6$org-thoughtcrime-securesms-mms-AttachmentManager(Landroid/app/Activity;I)V
    .locals 5

    .line 0
    const-string v0, "videoCaptureUri path is "

    .line 562
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 563
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 564
    iget-object v2, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->videoCaptureUri:Landroid/net/Uri;

    if-nez v2, :cond_0

    .line 565
    invoke-static {}, Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider;->getInstance()Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider;

    move-result-object v2

    iget-object v3, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->context:Landroid/content/Context;

    const-string v4, "video/mp4"

    invoke-virtual {v2, v3, v4}, Lorg/thoughtcrime/securesms/providers/PersistentBlobProvider;->createForExternal(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->videoCaptureUri:Landroid/net/Uri;

    .line 567
    :cond_0
    sget-object v2, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->videoCaptureUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "output"

    .line 568
    iget-object v2, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->videoCaptureUri:Landroid/net/Uri;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v0, 0x2

    .line 569
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 570
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 571
    invoke-virtual {p1, v1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 573
    :cond_1
    new-instance p2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p2, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 574
    invoke-virtual {p2, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const-string p2, "Video recording not available"

    .line 575
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x104000a

    const/4 v0, 0x0

    .line 576
    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 577
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 580
    sget-object p2, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->TAG:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 414
    iget-object v0, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->slide:Lorg/thoughtcrime/securesms/util/guava/Optional;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/util/guava/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->slide:Lorg/thoughtcrime/securesms/util/guava/Optional;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/util/guava/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/mms/Slide;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/mms/Slide;->isWebxdcDocument()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->webxdcView:Lorg/thoughtcrime/securesms/components/WebxdcView;

    if-eqz v0, :cond_0

    .line 417
    iget-object v1, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->context:Landroid/content/Context;

    invoke-static {v1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object v1

    iget-object v2, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->slide:Lorg/thoughtcrime/securesms/util/guava/Optional;

    invoke-virtual {v2}, Lorg/thoughtcrime/securesms/util/guava/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/thoughtcrime/securesms/mms/Slide;

    iget v2, v2, Lorg/thoughtcrime/securesms/mms/Slide;->dcMsgId:I

    invoke-virtual {v1, v2}, Lcom/b44t/messenger/DcContext;->getMsg(I)Lcom/b44t/messenger/DcMsg;

    move-result-object v1

    iget-object v2, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->context:Landroid/content/Context;

    const v3, 0x7f120430

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/thoughtcrime/securesms/components/WebxdcView;->setWebxdc(Lcom/b44t/messenger/DcMsg;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setHidden(Z)V
    .locals 0

    .line 720
    iput-boolean p1, p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->hidden:Z

    .line 721
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->updateVisibility()V

    return-void
.end method

.method public setMedia(Lorg/thoughtcrime/securesms/mms/GlideRequests;Landroid/net/Uri;Lcom/b44t/messenger/DcMsg;Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;III)Lcom/b44t/messenger/util/concurrent/ListenableFuture;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/thoughtcrime/securesms/mms/GlideRequests;",
            "Landroid/net/Uri;",
            "Lcom/b44t/messenger/DcMsg;",
            "Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;",
            "III)",
            "Lcom/b44t/messenger/util/concurrent/ListenableFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 246
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/mms/AttachmentManager;->inflateStub()V

    .line 248
    new-instance v10, Lcom/b44t/messenger/util/concurrent/SettableFuture;

    invoke-direct {v10}, Lcom/b44t/messenger/util/concurrent/SettableFuture;-><init>()V

    .line 250
    new-instance v11, Lorg/thoughtcrime/securesms/mms/AttachmentManager$2;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object v8, v10

    move-object/from16 v9, p4

    invoke-direct/range {v0 .. v9}, Lorg/thoughtcrime/securesms/mms/AttachmentManager$2;-><init>(Lorg/thoughtcrime/securesms/mms/AttachmentManager;Lorg/thoughtcrime/securesms/mms/GlideRequests;Lcom/b44t/messenger/DcMsg;Landroid/net/Uri;IIILcom/b44t/messenger/util/concurrent/SettableFuture;Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;)V

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 406
    invoke-virtual {v11, v0, v1}, Lorg/thoughtcrime/securesms/mms/AttachmentManager$2;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-object v10
.end method
