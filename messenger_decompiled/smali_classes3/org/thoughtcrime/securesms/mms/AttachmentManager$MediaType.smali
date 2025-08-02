.class public final enum Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;
.super Ljava/lang/Enum;
.source "AttachmentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/mms/AttachmentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MediaType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;

.field public static final enum AUDIO:Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;

.field public static final enum DOCUMENT:Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;

.field public static final enum GIF:Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;

.field public static final enum IMAGE:Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;

.field public static final enum VIDEO:Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;


# direct methods
.method private static synthetic $values()[Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;

    const/4 v1, 0x0

    .line 667
    sget-object v2, Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;->IMAGE:Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;->GIF:Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;->AUDIO:Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;->VIDEO:Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;->DOCUMENT:Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 668
    new-instance v0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;

    const-string v1, "IMAGE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;->IMAGE:Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;

    new-instance v0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;

    const-string v1, "GIF"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;->GIF:Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;

    new-instance v0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;

    const-string v1, "AUDIO"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;->AUDIO:Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;

    new-instance v0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;

    const-string v1, "VIDEO"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;->VIDEO:Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;

    new-instance v0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;

    const-string v1, "DOCUMENT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;->DOCUMENT:Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;

    .line 667
    invoke-static {}, Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;->$values()[Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;

    move-result-object v0

    sput-object v0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;->$VALUES:[Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 667
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;
    .locals 1

    .line 667
    const-class v0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;

    return-object p0
.end method

.method public static values()[Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;
    .locals 1

    .line 667
    sget-object v0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;->$VALUES:[Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;

    invoke-virtual {v0}, [Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;

    return-object v0
.end method


# virtual methods
.method public createSlide(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JIII)Lorg/thoughtcrime/securesms/mms/Slide;
    .locals 20

    move-object/from16 v7, p1

    move-object/from16 v6, p3

    if-nez p4, :cond_0

    const-string v0, "application/octet-stream"

    move-object v8, v0

    goto :goto_0

    :cond_0
    move-object/from16 v8, p4

    .line 683
    :goto_0
    sget-object v0, Lorg/thoughtcrime/securesms/mms/AttachmentManager$3;->$SwitchMap$org$thoughtcrime$securesms$mms$AttachmentManager$MediaType:[I

    invoke-virtual/range {p0 .. p0}, Lorg/thoughtcrime/securesms/mms/AttachmentManager$MediaType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v9, 0x1

    if-eq v0, v9, :cond_8

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    const/4 v1, 0x4

    if-eq v0, v1, :cond_5

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    if-eqz v6, :cond_1

    const-string v0, ".xdc"

    .line 691
    invoke-virtual {v6, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 692
    invoke-static/range {p1 .. p1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object v0

    .line 693
    new-instance v1, Lcom/b44t/messenger/DcMsg;

    const/16 v2, 0x50

    invoke-direct {v1, v0, v2}, Lcom/b44t/messenger/DcMsg;-><init>(Lcom/b44t/messenger/DcContext;I)V

    .line 694
    new-instance v2, Lorg/thoughtcrime/securesms/attachments/UriAttachment;

    const/4 v10, 0x0

    const-string v11, "application/webxdc+zip"

    const/4 v12, 0x1

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v8, v2

    move-object/from16 v9, p2

    move-object/from16 v17, p3

    invoke-direct/range {v8 .. v19}, Lorg/thoughtcrime/securesms/attachments/UriAttachment;-><init>(Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;IJIILjava/lang/String;Ljava/lang/String;Z)V

    .line 695
    invoke-virtual {v2, v7}, Lorg/thoughtcrime/securesms/attachments/Attachment;->getRealPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "application/webxdc+zip"

    .line 696
    invoke-virtual {v1, v2, v3}, Lcom/b44t/messenger/DcMsg;->setFile(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v2, p9

    .line 697
    invoke-virtual {v0, v2, v1}, Lcom/b44t/messenger/DcContext;->setDraft(ILcom/b44t/messenger/DcMsg;)V

    .line 698
    new-instance v0, Lorg/thoughtcrime/securesms/mms/DocumentSlide;

    invoke-direct {v0, v7, v1}, Lorg/thoughtcrime/securesms/mms/DocumentSlide;-><init>(Landroid/content/Context;Lcom/b44t/messenger/DcMsg;)V

    return-object v0

    :cond_1
    const-string v0, "text/vcard"

    .line 701
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz v6, :cond_3

    const-string v0, ".vcf"

    invoke-virtual {v6, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, ".vcard"

    invoke-virtual {v6, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 702
    :cond_2
    new-instance v0, Lorg/thoughtcrime/securesms/mms/VcardSlide;

    move-object v1, v0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p5

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/thoughtcrime/securesms/mms/VcardSlide;-><init>(Landroid/content/Context;Landroid/net/Uri;JLjava/lang/String;)V

    .line 703
    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/mms/VcardSlide;->asAttachment()Lorg/thoughtcrime/securesms/attachments/Attachment;

    move-result-object v1

    invoke-virtual {v1, v7}, Lorg/thoughtcrime/securesms/attachments/Attachment;->getRealPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 705
    :try_start_0
    invoke-static/range {p1 .. p1}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getRpc(Landroid/content/Context;)Lcom/b44t/messenger/rpc/Rpc;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/b44t/messenger/rpc/Rpc;->parseVcard(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1
    :try_end_0
    .catch Lcom/b44t/messenger/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, v9, :cond_3

    return-object v0

    :catch_0
    move-exception v0

    .line 709
    invoke-virtual {v0}, Lcom/b44t/messenger/rpc/RpcException;->printStackTrace()V

    .line 713
    :cond_3
    new-instance v0, Lorg/thoughtcrime/securesms/mms/DocumentSlide;

    move-object v1, v0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v8

    move-wide/from16 v5, p5

    move-object/from16 v7, p3

    invoke-direct/range {v1 .. v7}, Lorg/thoughtcrime/securesms/mms/DocumentSlide;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;)V

    return-object v0

    .line 714
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "unrecognized enum"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 687
    :cond_5
    new-instance v0, Lorg/thoughtcrime/securesms/mms/VideoSlide;

    move-object/from16 v3, p2

    move-wide/from16 v4, p5

    invoke-direct {v0, v7, v3, v4, v5}, Lorg/thoughtcrime/securesms/mms/VideoSlide;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    return-object v0

    :cond_6
    move-object/from16 v3, p2

    move-wide/from16 v4, p5

    .line 686
    new-instance v0, Lorg/thoughtcrime/securesms/mms/AudioSlide;

    const/4 v6, 0x0

    move-object v1, v0

    move-object/from16 v2, p1

    move-object/from16 v7, p3

    invoke-direct/range {v1 .. v7}, Lorg/thoughtcrime/securesms/mms/AudioSlide;-><init>(Landroid/content/Context;Landroid/net/Uri;JZLjava/lang/String;)V

    return-object v0

    :cond_7
    move-object/from16 v3, p2

    move-wide/from16 v4, p5

    .line 685
    new-instance v0, Lorg/thoughtcrime/securesms/mms/GifSlide;

    move-object v1, v0

    move-object/from16 v2, p1

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v1 .. v7}, Lorg/thoughtcrime/securesms/mms/GifSlide;-><init>(Landroid/content/Context;Landroid/net/Uri;JII)V

    return-object v0

    :cond_8
    move-object/from16 v3, p2

    move-wide/from16 v4, p5

    .line 684
    new-instance v0, Lorg/thoughtcrime/securesms/mms/ImageSlide;

    move-object v1, v0

    move-object/from16 v2, p1

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v1 .. v7}, Lorg/thoughtcrime/securesms/mms/ImageSlide;-><init>(Landroid/content/Context;Landroid/net/Uri;JII)V

    return-object v0
.end method
