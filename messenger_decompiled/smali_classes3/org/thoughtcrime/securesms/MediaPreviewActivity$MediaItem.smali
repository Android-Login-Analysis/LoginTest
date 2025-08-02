.class Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;
.super Ljava/lang/Object;
.source "MediaPreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/MediaPreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MediaItem"
.end annotation


# instance fields
.field private final date:J

.field private final msgId:I

.field private final outgoing:Z

.field private final recipient:Lorg/thoughtcrime/securesms/recipients/Recipient;

.field private final size:J

.field private final type:Ljava/lang/String;

.field private final uri:Landroid/net/Uri;


# direct methods
.method private constructor <init>(Lorg/thoughtcrime/securesms/recipients/Recipient;Landroid/net/Uri;Ljava/lang/String;IJJZ)V
    .locals 0

    .line 669
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 670
    iput-object p1, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;->recipient:Lorg/thoughtcrime/securesms/recipients/Recipient;

    .line 671
    iput-object p2, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;->uri:Landroid/net/Uri;

    .line 672
    iput-object p3, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;->type:Ljava/lang/String;

    .line 673
    iput p4, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;->msgId:I

    .line 674
    iput-wide p5, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;->date:J

    .line 675
    iput-wide p7, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;->size:J

    .line 676
    iput-boolean p9, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;->outgoing:Z

    return-void
.end method

.method synthetic constructor <init>(Lorg/thoughtcrime/securesms/recipients/Recipient;Landroid/net/Uri;Ljava/lang/String;IJJZLorg/thoughtcrime/securesms/MediaPreviewActivity$1;)V
    .locals 0

    .line 653
    invoke-direct/range {p0 .. p9}, Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;-><init>(Lorg/thoughtcrime/securesms/recipients/Recipient;Landroid/net/Uri;Ljava/lang/String;IJJZ)V

    return-void
.end method

.method static synthetic access$000(Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;)J
    .locals 2

    .line 653
    iget-wide v0, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;->date:J

    return-wide v0
.end method

.method static synthetic access$100(Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;)Z
    .locals 0

    .line 653
    iget-boolean p0, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;->outgoing:Z

    return p0
.end method

.method static synthetic access$200(Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;)I
    .locals 0

    .line 653
    iget p0, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;->msgId:I

    return p0
.end method

.method static synthetic access$500(Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;)Landroid/net/Uri;
    .locals 0

    .line 653
    iget-object p0, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;->uri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$600(Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;)Ljava/lang/String;
    .locals 0

    .line 653
    iget-object p0, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;->type:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;)J
    .locals 2

    .line 653
    iget-wide v0, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;->size:J

    return-wide v0
.end method

.method static synthetic access$900(Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;)Lorg/thoughtcrime/securesms/recipients/Recipient;
    .locals 0

    .line 653
    iget-object p0, p0, Lorg/thoughtcrime/securesms/MediaPreviewActivity$MediaItem;->recipient:Lorg/thoughtcrime/securesms/recipients/Recipient;

    return-object p0
.end method
