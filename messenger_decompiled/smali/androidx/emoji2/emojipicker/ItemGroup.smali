.class public final Landroidx/emoji2/emojipicker/ItemGroup;
.super Ljava/lang/Object;
.source "EmojiPickerItems.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEmojiPickerItems.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EmojiPickerItems.kt\nandroidx/emoji2/emojipicker/ItemGroup\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,111:1\n1549#2:112\n1620#2,3:113\n*S KotlinDebug\n*F\n+ 1 EmojiPickerItems.kt\nandroidx/emoji2/emojipicker/ItemGroup\n*L\n55#1:112\n55#1:113,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u0001B=\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0002\u0010\u000cJ\u0011\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0003H\u0086\u0002J\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0007R\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000fR\u0011\u0010\u0010\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u000eR\u0014\u0010\u0004\u001a\u00020\u0005X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0018"
    }
    d2 = {
        "Landroidx/emoji2/emojipicker/ItemGroup;",
        "",
        "categoryIconId",
        "",
        "titleItem",
        "Landroidx/emoji2/emojipicker/CategoryTitle;",
        "contentItems",
        "",
        "Landroidx/emoji2/emojipicker/EmojiViewData;",
        "maxContentItemCount",
        "emptyPlaceholderItem",
        "Landroidx/emoji2/emojipicker/PlaceholderText;",
        "(ILandroidx/emoji2/emojipicker/CategoryTitle;Ljava/util/List;Ljava/lang/Integer;Landroidx/emoji2/emojipicker/PlaceholderText;)V",
        "getCategoryIconId$emoji2_emojipicker_release",
        "()I",
        "Ljava/lang/Integer;",
        "size",
        "getSize",
        "getTitleItem$emoji2_emojipicker_release",
        "()Landroidx/emoji2/emojipicker/CategoryTitle;",
        "get",
        "Landroidx/emoji2/emojipicker/ItemViewData;",
        "index",
        "getAll",
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


# instance fields
.field private final categoryIconId:I

.field private final contentItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/emoji2/emojipicker/EmojiViewData;",
            ">;"
        }
    .end annotation
.end field

.field private final emptyPlaceholderItem:Landroidx/emoji2/emojipicker/PlaceholderText;

.field private final maxContentItemCount:Ljava/lang/Integer;

.field private final titleItem:Landroidx/emoji2/emojipicker/CategoryTitle;


# direct methods
.method public constructor <init>(ILandroidx/emoji2/emojipicker/CategoryTitle;Ljava/util/List;Ljava/lang/Integer;Landroidx/emoji2/emojipicker/PlaceholderText;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/emoji2/emojipicker/CategoryTitle;",
            "Ljava/util/List<",
            "Landroidx/emoji2/emojipicker/EmojiViewData;",
            ">;",
            "Ljava/lang/Integer;",
            "Landroidx/emoji2/emojipicker/PlaceholderText;",
            ")V"
        }
    .end annotation

    const-string v0, "titleItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentItems"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Landroidx/emoji2/emojipicker/ItemGroup;->categoryIconId:I

    .line 33
    iput-object p2, p0, Landroidx/emoji2/emojipicker/ItemGroup;->titleItem:Landroidx/emoji2/emojipicker/CategoryTitle;

    .line 34
    iput-object p3, p0, Landroidx/emoji2/emojipicker/ItemGroup;->contentItems:Ljava/util/List;

    .line 35
    iput-object p4, p0, Landroidx/emoji2/emojipicker/ItemGroup;->maxContentItemCount:Ljava/lang/Integer;

    .line 36
    iput-object p5, p0, Landroidx/emoji2/emojipicker/ItemGroup;->emptyPlaceholderItem:Landroidx/emoji2/emojipicker/PlaceholderText;

    return-void
.end method

.method public synthetic constructor <init>(ILandroidx/emoji2/emojipicker/CategoryTitle;Ljava/util/List;Ljava/lang/Integer;Landroidx/emoji2/emojipicker/PlaceholderText;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p6, 0x8

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object v5, v0

    goto :goto_0

    :cond_0
    move-object v5, p4

    :goto_0
    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_1

    move-object v6, v0

    goto :goto_1

    :cond_1
    move-object v6, p5

    :goto_1
    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 31
    invoke-direct/range {v1 .. v6}, Landroidx/emoji2/emojipicker/ItemGroup;-><init>(ILandroidx/emoji2/emojipicker/CategoryTitle;Ljava/util/List;Ljava/lang/Integer;Landroidx/emoji2/emojipicker/PlaceholderText;)V

    return-void
.end method


# virtual methods
.method public final get(I)Landroidx/emoji2/emojipicker/ItemViewData;
    .locals 1

    if-nez p1, :cond_0

    .line 48
    iget-object p1, p0, Landroidx/emoji2/emojipicker/ItemGroup;->titleItem:Landroidx/emoji2/emojipicker/CategoryTitle;

    check-cast p1, Landroidx/emoji2/emojipicker/ItemViewData;

    return-object p1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 50
    iget-object v0, p0, Landroidx/emoji2/emojipicker/ItemGroup;->contentItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Landroidx/emoji2/emojipicker/ItemGroup;->contentItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/emoji2/emojipicker/ItemViewData;

    return-object p1

    :cond_1
    if-nez p1, :cond_2

    .line 51
    iget-object p1, p0, Landroidx/emoji2/emojipicker/ItemGroup;->emptyPlaceholderItem:Landroidx/emoji2/emojipicker/PlaceholderText;

    if-eqz p1, :cond_2

    check-cast p1, Landroidx/emoji2/emojipicker/ItemViewData;

    return-object p1

    .line 52
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public final getAll()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/emoji2/emojipicker/ItemViewData;",
            ">;"
        }
    .end annotation

    .line 55
    new-instance v0, Lkotlin/ranges/IntRange;

    invoke-virtual {p0}, Landroidx/emoji2/emojipicker/ItemGroup;->getSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lkotlin/ranges/IntRange;-><init>(II)V

    check-cast v0, Ljava/lang/Iterable;

    .line 112
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 113
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lkotlin/collections/IntIterator;

    invoke-virtual {v2}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v2

    .line 55
    invoke-virtual {p0, v2}, Landroidx/emoji2/emojipicker/ItemGroup;->get(I)Landroidx/emoji2/emojipicker/ItemViewData;

    move-result-object v2

    .line 114
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 115
    :cond_0
    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method public final getCategoryIconId$emoji2_emojipicker_release()I
    .locals 1

    .line 32
    iget v0, p0, Landroidx/emoji2/emojipicker/ItemGroup;->categoryIconId:I

    return v0
.end method

.method public final getSize()I
    .locals 3

    .line 41
    iget-object v0, p0, Landroidx/emoji2/emojipicker/ItemGroup;->contentItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/emoji2/emojipicker/ItemGroup;->emptyPlaceholderItem:Landroidx/emoji2/emojipicker/PlaceholderText;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 42
    :cond_1
    iget-object v0, p0, Landroidx/emoji2/emojipicker/ItemGroup;->maxContentItemCount:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/emoji2/emojipicker/ItemGroup;->contentItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, p0, Landroidx/emoji2/emojipicker/ItemGroup;->maxContentItemCount:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v0, v2, :cond_2

    .line 43
    iget-object v0, p0, Landroidx/emoji2/emojipicker/ItemGroup;->maxContentItemCount:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 44
    :cond_2
    iget-object v0, p0, Landroidx/emoji2/emojipicker/ItemGroup;->contentItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    add-int/2addr v1, v0

    return v1
.end method

.method public final getTitleItem$emoji2_emojipicker_release()Landroidx/emoji2/emojipicker/CategoryTitle;
    .locals 1

    .line 33
    iget-object v0, p0, Landroidx/emoji2/emojipicker/ItemGroup;->titleItem:Landroidx/emoji2/emojipicker/CategoryTitle;

    return-object v0
.end method
