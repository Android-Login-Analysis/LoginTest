.class public final Landroidx/emoji2/emojipicker/PopupViewHelper;
.super Ljava/lang/Object;
.source "PopupViewHelper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/emoji2/emojipicker/PopupViewHelper$Companion;,
        Landroidx/emoji2/emojipicker/PopupViewHelper$GridTemplate;,
        Landroidx/emoji2/emojipicker/PopupViewHelper$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPopupViewHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PopupViewHelper.kt\nandroidx/emoji2/emojipicker/PopupViewHelper\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,169:1\n10242#2:170\n10664#2,5:171\n1855#3,2:176\n1549#3:178\n1620#3,3:179\n*S KotlinDebug\n*F\n+ 1 PopupViewHelper.kt\nandroidx/emoji2/emojipicker/PopupViewHelper\n*L\n93#1:170\n93#1:171,5\n93#1:176,2\n134#1:178\n134#1:179,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u0000 \u00122\u00020\u0001:\u0002\u0012\u0013B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J4\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c2\u0006\u0010\u000e\u001a\u00020\u000fJ\u0016\u0010\u0010\u001a\u00020\u00112\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Landroidx/emoji2/emojipicker/PopupViewHelper;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "fillPopupView",
        "Landroid/widget/GridLayout;",
        "popupView",
        "gridWidth",
        "",
        "gridHeight",
        "variants",
        "",
        "",
        "clickListener",
        "Landroid/view/View$OnClickListener;",
        "getGridTemplate",
        "Landroidx/emoji2/emojipicker/PopupViewHelper$GridTemplate;",
        "Companion",
        "GridTemplate",
        "emoji2-emojipicker_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Landroidx/emoji2/emojipicker/PopupViewHelper$Companion;

.field private static final SKIN_TONE_COLOR_RES_IDS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final SQUARE_LAYOUT_EMOJI_NO_SKIN_TONE:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SQUARE_LAYOUT_TEMPLATE:[[I

.field private static final SQUARE_LAYOUT_VARIANT_COUNT:I = 0x1a

.field private static final SQUARE_LAYOUT_WITH_SKIN_TONES_TEMPLATE:[[I


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public static synthetic $r8$lambda$NE8cODxUhlg6wiuonRmc6HjwZf4(Landroidx/emoji2/emojipicker/EmojiView;)V
    .locals 0

    invoke-static {p0}, Landroidx/emoji2/emojipicker/PopupViewHelper;->fillPopupView$lambda$6$lambda$3$lambda$2(Landroidx/emoji2/emojipicker/EmojiView;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Landroidx/emoji2/emojipicker/PopupViewHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/emoji2/emojipicker/PopupViewHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/emoji2/emojipicker/PopupViewHelper;->Companion:Landroidx/emoji2/emojipicker/PopupViewHelper$Companion;

    const-string/jumbo v0, "\ud83d\udc6a"

    .line 36
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Landroidx/emoji2/emojipicker/PopupViewHelper;->SQUARE_LAYOUT_EMOJI_NO_SKIN_TONE:Ljava/util/Set;

    const/4 v0, 0x5

    new-array v1, v0, [Ljava/lang/Integer;

    .line 39
    sget v2, Landroidx/emoji2/emojipicker/R$color;->light_skin_tone:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 40
    sget v2, Landroidx/emoji2/emojipicker/R$color;->medium_light_skin_tone:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 41
    sget v2, Landroidx/emoji2/emojipicker/R$color;->medium_skin_tone:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    .line 42
    sget v2, Landroidx/emoji2/emojipicker/R$color;->medium_dark_skin_tone:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v1, v6

    .line 43
    sget v2, Landroidx/emoji2/emojipicker/R$color;->dark_skin_tone:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v7, 0x4

    aput-object v2, v1, v7

    .line 38
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Landroidx/emoji2/emojipicker/PopupViewHelper;->SKIN_TONE_COLOR_RES_IDS:Ljava/util/List;

    const/4 v1, 0x6

    new-array v2, v1, [[I

    const/4 v8, 0x7

    new-array v9, v8, [I

    .line 57
    fill-array-data v9, :array_0

    aput-object v9, v2, v3

    new-array v9, v8, [I

    .line 58
    fill-array-data v9, :array_1

    aput-object v9, v2, v4

    new-array v9, v8, [I

    .line 59
    fill-array-data v9, :array_2

    aput-object v9, v2, v5

    new-array v9, v8, [I

    .line 60
    fill-array-data v9, :array_3

    aput-object v9, v2, v6

    new-array v9, v8, [I

    .line 61
    fill-array-data v9, :array_4

    aput-object v9, v2, v7

    new-array v8, v8, [I

    .line 62
    fill-array-data v8, :array_5

    aput-object v8, v2, v0

    .line 56
    sput-object v2, Landroidx/emoji2/emojipicker/PopupViewHelper;->SQUARE_LAYOUT_WITH_SKIN_TONES_TEMPLATE:[[I

    new-array v0, v0, [[I

    new-array v2, v1, [I

    .line 71
    fill-array-data v2, :array_6

    aput-object v2, v0, v3

    new-array v2, v1, [I

    .line 72
    fill-array-data v2, :array_7

    aput-object v2, v0, v4

    new-array v2, v1, [I

    .line 73
    fill-array-data v2, :array_8

    aput-object v2, v0, v5

    new-array v2, v1, [I

    .line 74
    fill-array-data v2, :array_9

    aput-object v2, v0, v6

    new-array v1, v1, [I

    .line 75
    fill-array-data v1, :array_a

    aput-object v1, v0, v7

    .line 70
    sput-object v0, Landroidx/emoji2/emojipicker/PopupViewHelper;->SQUARE_LAYOUT_TEMPLATE:[[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        -0x5
        -0x4
        -0x3
        -0x2
        -0x1
    .end array-data

    :array_1
    .array-data 4
        0x0
        -0x5
        0x2
        0x3
        0x4
        0x5
        0x6
    .end array-data

    :array_2
    .array-data 4
        0x0
        -0x4
        0x7
        0x8
        0x9
        0xa
        0xb
    .end array-data

    :array_3
    .array-data 4
        0x0
        -0x3
        0xc
        0xd
        0xe
        0xf
        0x10
    .end array-data

    :array_4
    .array-data 4
        0x0
        -0x2
        0x11
        0x12
        0x13
        0x14
        0x15
    .end array-data

    :array_5
    .array-data 4
        0x1
        -0x1
        0x16
        0x17
        0x18
        0x19
        0x1a
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x2
        0x3
        0x4
        0x5
        0x6
    .end array-data

    :array_7
    .array-data 4
        0x0
        0x7
        0x8
        0x9
        0xa
        0xb
    .end array-data

    :array_8
    .array-data 4
        0x0
        0xc
        0xd
        0xe
        0xf
        0x10
    .end array-data

    :array_9
    .array-data 4
        0x0
        0x11
        0x12
        0x13
        0x14
        0x15
    .end array-data

    :array_a
    .array-data 4
        0x1
        0x16
        0x17
        0x18
        0x19
        0x1a
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/emoji2/emojipicker/PopupViewHelper;->context:Landroid/content/Context;

    return-void
.end method

.method private static final fillPopupView$lambda$6$lambda$3$lambda$2(Landroidx/emoji2/emojipicker/EmojiView;)V
    .locals 1

    const-string v0, "$this_apply"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x80

    .line 103
    invoke-virtual {p0, v0}, Landroidx/emoji2/emojipicker/EmojiView;->sendAccessibilityEvent(I)V

    return-void
.end method

.method private final getGridTemplate(Ljava/util/List;)Landroidx/emoji2/emojipicker/PopupViewHelper$GridTemplate;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/emoji2/emojipicker/PopupViewHelper$GridTemplate;"
        }
    .end annotation

    .line 126
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x1a

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 127
    sget-object v0, Landroidx/emoji2/emojipicker/PopupViewHelper;->SQUARE_LAYOUT_EMOJI_NO_SKIN_TONE:Ljava/util/Set;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    sget-object v0, Landroidx/emoji2/emojipicker/PopupViewHelper$Companion$Layout;->SQUARE:Landroidx/emoji2/emojipicker/PopupViewHelper$Companion$Layout;

    goto :goto_0

    .line 129
    :cond_0
    sget-object v0, Landroidx/emoji2/emojipicker/PopupViewHelper$Companion$Layout;->SQUARE_WITH_SKIN_TONE_CIRCLE:Landroidx/emoji2/emojipicker/PopupViewHelper$Companion$Layout;

    goto :goto_0

    .line 130
    :cond_1
    sget-object v0, Landroidx/emoji2/emojipicker/PopupViewHelper$Companion$Layout;->FLAT:Landroidx/emoji2/emojipicker/PopupViewHelper$Companion$Layout;

    .line 131
    :goto_0
    sget-object v1, Landroidx/emoji2/emojipicker/PopupViewHelper$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Landroidx/emoji2/emojipicker/PopupViewHelper$Companion$Layout;->ordinal()I

    move-result v3

    aget v1, v1, v3

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v1, v5, :cond_5

    if-eq v1, v4, :cond_4

    if-ne v1, v3, :cond_3

    new-array v1, v5, [[I

    .line 134
    move-object v6, p1

    check-cast v6, Ljava/util/Collection;

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->getIndices(Ljava/util/Collection;)Lkotlin/ranges/IntRange;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    .line 178
    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v6, v8}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v7, Ljava/util/Collection;

    .line 179
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    move-object v8, v6

    check-cast v8, Lkotlin/collections/IntIterator;

    invoke-virtual {v8}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v8

    add-int/2addr v8, v5

    .line 134
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 180
    invoke-interface {v7, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 181
    :cond_2
    check-cast v7, Ljava/util/List;

    .line 178
    check-cast v7, Ljava/util/Collection;

    .line 134
    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v6

    aput-object v6, v1, v2

    goto :goto_2

    :cond_3
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 133
    :cond_4
    sget-object v1, Landroidx/emoji2/emojipicker/PopupViewHelper;->SQUARE_LAYOUT_WITH_SKIN_TONES_TEMPLATE:[[I

    goto :goto_2

    .line 132
    :cond_5
    sget-object v1, Landroidx/emoji2/emojipicker/PopupViewHelper;->SQUARE_LAYOUT_TEMPLATE:[[I

    .line 136
    :goto_2
    sget-object v6, Landroidx/emoji2/emojipicker/PopupViewHelper$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Landroidx/emoji2/emojipicker/PopupViewHelper$Companion$Layout;->ordinal()I

    move-result v7

    aget v6, v6, v7

    if-eq v6, v5, :cond_7

    if-eq v6, v4, :cond_7

    if-ne v6, v3, :cond_6

    .line 138
    aget-object v6, v1, v2

    array-length v6, v6

    const/4 v7, 0x6

    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_3

    :cond_6
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 137
    :cond_7
    aget-object v6, v1, v2

    array-length v6, v6

    .line 140
    :goto_3
    sget-object v7, Landroidx/emoji2/emojipicker/PopupViewHelper$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Landroidx/emoji2/emojipicker/PopupViewHelper$Companion$Layout;->ordinal()I

    move-result v0

    aget v0, v7, v0

    if-eq v0, v5, :cond_a

    if-eq v0, v4, :cond_a

    if-ne v0, v3, :cond_9

    .line 142
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    div-int/2addr v0, v6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    rem-int/2addr p1, v6

    if-nez p1, :cond_8

    goto :goto_4

    :cond_8
    const/4 v2, 0x1

    :goto_4
    add-int/2addr v0, v2

    goto :goto_5

    :cond_9
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 141
    :cond_a
    move-object p1, v1

    check-cast p1, [Ljava/lang/Object;

    array-length v0, p1

    .line 145
    :goto_5
    new-instance p1, Landroidx/emoji2/emojipicker/PopupViewHelper$GridTemplate;

    invoke-direct {p1, v1, v0, v6}, Landroidx/emoji2/emojipicker/PopupViewHelper$GridTemplate;-><init>([[III)V

    return-object p1
.end method


# virtual methods
.method public final fillPopupView(Landroid/widget/GridLayout;IILjava/util/List;Landroid/view/View$OnClickListener;)Landroid/widget/GridLayout;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/GridLayout;",
            "II",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/view/View$OnClickListener;",
            ")",
            "Landroid/widget/GridLayout;"
        }
    .end annotation

    const-string v0, "popupView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "variants"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clickListener"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-direct {p0, p4}, Landroidx/emoji2/emojipicker/PopupViewHelper;->getGridTemplate(Ljava/util/List;)Landroidx/emoji2/emojipicker/PopupViewHelper$GridTemplate;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Landroidx/emoji2/emojipicker/PopupViewHelper$GridTemplate;->getColumn()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/GridLayout;->setColumnCount(I)V

    .line 90
    invoke-virtual {v0}, Landroidx/emoji2/emojipicker/PopupViewHelper$GridTemplate;->getRow()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/GridLayout;->setRowCount(I)V

    const/4 v1, 0x0

    .line 91
    invoke-virtual {p1, v1}, Landroid/widget/GridLayout;->setOrientation(I)V

    .line 93
    invoke-virtual {v0}, Landroidx/emoji2/emojipicker/PopupViewHelper$GridTemplate;->getTemplate()[[I

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 170
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 171
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v0, v4

    .line 172
    check-cast v5, [I

    .line 93
    invoke-static {v5}, Lkotlin/collections/ArraysKt;->asIterable([I)Ljava/lang/Iterable;

    move-result-object v5

    .line 173
    invoke-static {v2, v5}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 175
    :cond_0
    check-cast v2, Ljava/util/List;

    .line 170
    check-cast v2, Ljava/lang/Iterable;

    .line 176
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-gt v3, v2, :cond_1

    .line 95
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v4

    if-gt v2, v4, :cond_1

    const/4 v4, 0x1

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    :goto_2
    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eqz v4, :cond_3

    .line 96
    new-instance v4, Landroidx/emoji2/emojipicker/EmojiView;

    iget-object v7, p0, Landroidx/emoji2/emojipicker/PopupViewHelper;->context:Landroid/content/Context;

    invoke-direct {v4, v7, v6, v5, v6}, Landroidx/emoji2/emojipicker/EmojiView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 97
    invoke-virtual {v4, v1}, Landroidx/emoji2/emojipicker/EmojiView;->setWillDrawVariantIndicator$emoji2_emojipicker_release(Z)V

    add-int/lit8 v5, v2, -0x1

    .line 98
    invoke-interface {p4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroidx/emoji2/emojipicker/EmojiView;->setEmoji(Ljava/lang/CharSequence;)V

    .line 99
    invoke-virtual {v4, p5}, Landroidx/emoji2/emojipicker/EmojiView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-ne v2, v3, :cond_2

    .line 102
    new-instance v2, Landroidx/emoji2/emojipicker/PopupViewHelper$$ExternalSyntheticLambda0;

    invoke-direct {v2, v4}, Landroidx/emoji2/emojipicker/PopupViewHelper$$ExternalSyntheticLambda0;-><init>(Landroidx/emoji2/emojipicker/EmojiView;)V

    invoke-virtual {p1, v2}, Landroid/widget/GridLayout;->post(Ljava/lang/Runnable;)Z

    .line 96
    :cond_2
    check-cast v4, Landroid/view/View;

    goto :goto_3

    :cond_3
    if-nez v2, :cond_4

    .line 108
    new-instance v2, Landroidx/emoji2/emojipicker/EmojiView;

    iget-object v3, p0, Landroidx/emoji2/emojipicker/PopupViewHelper;->context:Landroid/content/Context;

    invoke-direct {v2, v3, v6, v5, v6}, Landroidx/emoji2/emojipicker/EmojiView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v4, v2

    check-cast v4, Landroid/view/View;

    goto :goto_3

    .line 110
    :cond_4
    new-instance v3, Landroidx/emoji2/emojipicker/SkinToneCircleView;

    iget-object v4, p0, Landroidx/emoji2/emojipicker/PopupViewHelper;->context:Landroid/content/Context;

    invoke-direct {v3, v4, v6, v5, v6}, Landroidx/emoji2/emojipicker/SkinToneCircleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 111
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 112
    invoke-virtual {v3}, Landroidx/emoji2/emojipicker/SkinToneCircleView;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Landroidx/emoji2/emojipicker/PopupViewHelper;->SKIN_TONE_COLOR_RES_IDS:Ljava/util/List;

    add-int/lit8 v2, v2, 0x5

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-static {v5, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 113
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 111
    invoke-virtual {v3, v4}, Landroidx/emoji2/emojipicker/SkinToneCircleView;->setPaint(Landroid/graphics/Paint;)V

    .line 110
    move-object v4, v3

    check-cast v4, Landroid/view/View;

    .line 117
    :goto_3
    invoke-virtual {p1, v4}, Landroid/widget/GridLayout;->addView(Landroid/view/View;)V

    .line 118
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput p2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 119
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput p3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_1

    :cond_5
    return-object p1
.end method
