.class public Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider;
.super Ljava/lang/Object;
.source "EmojiProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider$EmojiDrawable;
    }
.end annotation


# static fields
.field private static final EMOJI_PER_ROW:I = 0x10

.field private static final EMOJI_RAW_HEIGHT:I = 0x40

.field private static final EMOJI_RAW_WIDTH:I = 0x40

.field private static final EMOJI_VERT_PAD:I = 0x0

.field private static final TAG:Ljava/lang/String; = "EmojiProvider"

.field private static volatile instance:Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider;

.field private static final paint:Landroid/graphics/Paint;


# instance fields
.field private final decodeScale:F

.field private final emojiTree:Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree;

.field private final verticalPad:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider;->paint:Landroid/graphics/Paint;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree;

    invoke-direct {v0}, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree;-><init>()V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider;->emojiTree:Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree;

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const/high16 v1, 0x42800000    # 64.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider;->decodeScale:F

    const/4 v1, 0x0

    mul-float v0, v0, v1

    .line 61
    iput v0, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider;->verticalPad:F

    .line 63
    sget-object v0, Lorg/thoughtcrime/securesms/components/emoji/EmojiPages;->DATA_PAGES:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageModel;

    .line 64
    invoke-interface {v1}, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageModel;->hasSpriteMap()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 65
    new-instance v3, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiPageBitmap;

    iget v4, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider;->decodeScale:F

    invoke-direct {v3, p1, v1, v4}, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiPageBitmap;-><init>(Landroid/content/Context;Lorg/thoughtcrime/securesms/components/emoji/EmojiPageModel;F)V

    .line 67
    invoke-interface {v1}, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageModel;->getEmoji()Ljava/util/List;

    move-result-object v1

    .line 68
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 69
    iget-object v4, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider;->emojiTree:Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v6, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiDrawInfo;

    invoke-direct {v6, v3, v2}, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiDrawInfo;-><init>(Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiPageBitmap;I)V

    invoke-virtual {v4, v5, v6}, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree;->add(Ljava/lang/String;Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiDrawInfo;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 74
    :cond_1
    sget-object p1, Lorg/thoughtcrime/securesms/components/emoji/EmojiPages;->OBSOLETE:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/util/Pair;

    .line 75
    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider;->emojiTree:Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/util/Pair;->first()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider;->emojiTree:Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/util/Pair;->second()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/util/Pair;->second()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v4, v5, v2, v0}, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree;->getEmoji(Ljava/lang/CharSequence;II)Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiDrawInfo;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree;->add(Ljava/lang/String;Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiDrawInfo;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 32
    sget-object v0, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider;)F
    .locals 0

    .line 32
    iget p0, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider;->verticalPad:F

    return p0
.end method

.method static synthetic access$300()Landroid/graphics/Paint;
    .locals 1

    .line 32
    sget-object v0, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider;->paint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider;
    .locals 2

    .line 49
    sget-object v0, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider;->instance:Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider;

    if-nez v0, :cond_1

    .line 50
    const-class v0, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider;

    monitor-enter v0

    .line 51
    :try_start_0
    sget-object v1, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider;->instance:Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider;

    if-nez v1, :cond_0

    .line 52
    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider;

    invoke-direct {v1, p0}, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider;-><init>(Landroid/content/Context;)V

    sput-object v1, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider;->instance:Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider;

    .line 54
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 56
    :cond_1
    :goto_0
    sget-object p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider;->instance:Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider;

    return-object p0
.end method


# virtual methods
.method emojify(Ljava/lang/CharSequence;Landroid/widget/TextView;)Landroid/text/Spannable;
    .locals 2

    .line 85
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider;->getCandidates(Ljava/lang/CharSequence;)Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiParser$CandidateList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider;->emojify(Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiParser$CandidateList;Ljava/lang/CharSequence;Landroid/widget/TextView;Z)Landroid/text/Spannable;

    move-result-object p1

    return-object p1
.end method

.method emojify(Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiParser$CandidateList;Ljava/lang/CharSequence;Landroid/widget/TextView;Z)Landroid/text/Spannable;
    .locals 4

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    .line 93
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 95
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiParser$CandidateList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiParser$Candidate;

    .line 96
    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiParser$Candidate;->getDrawInfo()Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiDrawInfo;

    move-result-object v1

    invoke-virtual {p0, v1, p4}, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider;->getEmojiDrawable(Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiDrawInfo;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 99
    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/EmojiSpan;

    invoke-direct {v2, v1, p3}, Lorg/thoughtcrime/securesms/components/emoji/EmojiSpan;-><init>(Landroid/graphics/drawable/Drawable;Landroid/widget/TextView;)V

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiParser$Candidate;->getStartIndex()I

    move-result v1

    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiParser$Candidate;->getEndIndex()I

    move-result p2

    const/16 v3, 0x21

    invoke-virtual {v0, v2, v1, p2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method getCandidates(Ljava/lang/CharSequence;)Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiParser$CandidateList;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 81
    :cond_0
    new-instance v0, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiParser;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider;->emojiTree:Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree;

    invoke-direct {v0, v1}, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiParser;-><init>(Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree;)V

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiParser;->findCandidates(Ljava/lang/CharSequence;)Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiParser$CandidateList;

    move-result-object p1

    return-object p1
.end method

.method public getEmojiBitmap(Ljava/lang/CharSequence;FZ)Landroid/graphics/Bitmap;
    .locals 3

    .line 117
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider;->emojiTree:Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree;

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree;->getEmoji(Ljava/lang/CharSequence;II)Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiDrawInfo;

    move-result-object p1

    .line 118
    invoke-virtual {p0, p1, p3}, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider;->getEmojiDrawable(Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiDrawInfo;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider$EmojiDrawable;

    if-eqz p1, :cond_0

    .line 120
    invoke-static {p1, p2}, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider$EmojiDrawable;->access$000(Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider$EmojiDrawable;F)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method getEmojiDrawable(Ljava/lang/CharSequence;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 108
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider;->emojiTree:Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree;->getEmoji(Ljava/lang/CharSequence;II)Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiDrawInfo;

    move-result-object p1

    .line 109
    invoke-virtual {p0, p1, v2}, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider;->getEmojiDrawable(Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiDrawInfo;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method protected getEmojiDrawable(Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiDrawInfo;Z)Landroid/graphics/drawable/Drawable;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 129
    :cond_0
    new-instance v0, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider$EmojiDrawable;

    iget v1, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider;->decodeScale:F

    invoke-direct {v0, p0, p1, v1}, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider$EmojiDrawable;-><init>(Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider;Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiDrawInfo;F)V

    if-eqz p2, :cond_1

    .line 132
    :try_start_0
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiDrawInfo;->getPage()Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiPageBitmap;

    move-result-object p1

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiPageBitmap;->loadPage()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider$EmojiDrawable;->setBitmap(Landroid/graphics/Bitmap;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 134
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 137
    :cond_1
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiDrawInfo;->getPage()Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiPageBitmap;

    move-result-object p1

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiPageBitmap;->get()Lorg/thoughtcrime/securesms/util/ListenableFutureTask;

    move-result-object p1

    new-instance p2, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider$1;

    invoke-direct {p2, p0, v0}, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider$1;-><init>(Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider;Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider$EmojiDrawable;)V

    invoke-virtual {p1, p2}, Lorg/thoughtcrime/securesms/util/ListenableFutureTask;->addListener(Lorg/thoughtcrime/securesms/util/FutureTaskListener;)V

    :goto_0
    return-object v0
.end method

.method public isEmoji(Ljava/lang/CharSequence;)Z
    .locals 3

    .line 113
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider;->emojiTree:Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiTree;->getEmoji(Ljava/lang/CharSequence;II)Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiDrawInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method
