.class public final Landroidx/emoji2/emojipicker/EmojiPickerItems;
.super Ljava/lang/Object;
.source "EmojiPickerItems.kt"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Landroidx/emoji2/emojipicker/ItemViewData;",
        ">;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEmojiPickerItems.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EmojiPickerItems.kt\nandroidx/emoji2/emojipicker/EmojiPickerItems\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,111:1\n1#2:112\n1360#3:113\n1446#3,5:114\n*S KotlinDebug\n*F\n+ 1 EmojiPickerItems.kt\nandroidx/emoji2/emojipicker/EmojiPickerItems\n*L\n109#1:113\n109#1:114,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010(\n\u0000\u0008\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0013\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\r\u001a\u00020\u00082\u0008\u0008\u0001\u0010\u000e\u001a\u00020\u0008J\u0010\u0010\u000f\u001a\u00020\u00022\u0008\u0008\u0001\u0010\u0010\u001a\u00020\u0008J\u0010\u0010\u0011\u001a\u00020\u00122\u0008\u0008\u0001\u0010\u0013\u001a\u00020\u0008J\u0012\u0010\u0014\u001a\u00020\u00082\u0008\u0008\u0001\u0010\u0013\u001a\u00020\u0008H\u0007J\u0010\u0010\u0015\u001a\u00020\u00082\u0008\u0008\u0001\u0010\u0010\u001a\u00020\u0008J\u000e\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0005J\u000f\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u001aH\u0096\u0002R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0007\u001a\u00020\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u000b\u001a\u00020\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\n\u00a8\u0006\u001b"
    }
    d2 = {
        "Landroidx/emoji2/emojipicker/EmojiPickerItems;",
        "",
        "Landroidx/emoji2/emojipicker/ItemViewData;",
        "groups",
        "",
        "Landroidx/emoji2/emojipicker/ItemGroup;",
        "(Ljava/util/List;)V",
        "numGroups",
        "",
        "getNumGroups",
        "()I",
        "size",
        "getSize",
        "firstItemPositionByGroupIndex",
        "groupIndex",
        "getBodyItem",
        "absolutePosition",
        "getHeaderIconDescription",
        "",
        "index",
        "getHeaderIconId",
        "groupIndexByItemPosition",
        "groupRange",
        "Lkotlin/ranges/IntRange;",
        "group",
        "iterator",
        "",
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
.field private final groups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/emoji2/emojipicker/ItemGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/emoji2/emojipicker/ItemGroup;",
            ">;)V"
        }
    .end annotation

    const-string v0, "groups"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Landroidx/emoji2/emojipicker/EmojiPickerItems;->groups:Ljava/util/List;

    .line 67
    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Initialized with empty categorized sources"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final firstItemPositionByGroupIndex(I)I
    .locals 2

    .line 101
    iget-object v0, p0, Landroidx/emoji2/emojipicker/EmojiPickerItems;->groups:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/emoji2/emojipicker/ItemGroup;

    invoke-virtual {v1}, Landroidx/emoji2/emojipicker/ItemGroup;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public final getBodyItem(I)Landroidx/emoji2/emojipicker/ItemViewData;
    .locals 3

    .line 72
    iget-object v0, p0, Landroidx/emoji2/emojipicker/EmojiPickerItems;->groups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/emoji2/emojipicker/ItemGroup;

    .line 73
    invoke-virtual {v1}, Landroidx/emoji2/emojipicker/ItemGroup;->getSize()I

    move-result v2

    if-ge p1, v2, :cond_0

    invoke-virtual {v1, p1}, Landroidx/emoji2/emojipicker/ItemGroup;->get(I)Landroidx/emoji2/emojipicker/ItemViewData;

    move-result-object p1

    return-object p1

    .line 74
    :cond_0
    invoke-virtual {v1}, Landroidx/emoji2/emojipicker/ItemGroup;->getSize()I

    move-result v1

    sub-int/2addr p1, v1

    goto :goto_0

    .line 76
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final getHeaderIconDescription(I)Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Landroidx/emoji2/emojipicker/EmojiPickerItems;->groups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/emoji2/emojipicker/ItemGroup;

    invoke-virtual {p1}, Landroidx/emoji2/emojipicker/ItemGroup;->getTitleItem$emoji2_emojipicker_release()Landroidx/emoji2/emojipicker/CategoryTitle;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/emoji2/emojipicker/CategoryTitle;->getTitle()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getHeaderIconId(I)I
    .locals 1

    .line 82
    iget-object v0, p0, Landroidx/emoji2/emojipicker/EmojiPickerItems;->groups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/emoji2/emojipicker/ItemGroup;

    invoke-virtual {p1}, Landroidx/emoji2/emojipicker/ItemGroup;->getCategoryIconId$emoji2_emojipicker_release()I

    move-result p1

    return p1
.end method

.method public final getNumGroups()I
    .locals 1

    .line 79
    iget-object v0, p0, Landroidx/emoji2/emojipicker/EmojiPickerItems;->groups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getSize()I
    .locals 3

    .line 64
    iget-object v0, p0, Landroidx/emoji2/emojipicker/EmojiPickerItems;->groups:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/emoji2/emojipicker/ItemGroup;

    invoke-virtual {v2}, Landroidx/emoji2/emojipicker/ItemGroup;->getSize()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public final groupIndexByItemPosition(I)I
    .locals 4

    .line 90
    iget-object v0, p0, Landroidx/emoji2/emojipicker/EmojiPickerItems;->groups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/emoji2/emojipicker/ItemGroup;

    .line 91
    invoke-virtual {v2}, Landroidx/emoji2/emojipicker/ItemGroup;->getSize()I

    move-result v3

    if-ge p1, v3, :cond_0

    return v1

    .line 93
    :cond_0
    invoke-virtual {v2}, Landroidx/emoji2/emojipicker/ItemGroup;->getSize()I

    move-result v2

    sub-int/2addr p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final groupRange(Landroidx/emoji2/emojipicker/ItemGroup;)Lkotlin/ranges/IntRange;
    .locals 1

    const-string v0, "group"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Landroidx/emoji2/emojipicker/EmojiPickerItems;->groups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Landroidx/emoji2/emojipicker/EmojiPickerItems;->groups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 106
    invoke-virtual {p0, v0}, Landroidx/emoji2/emojipicker/EmojiPickerItems;->firstItemPositionByGroupIndex(I)I

    move-result v0

    invoke-virtual {p1}, Landroidx/emoji2/emojipicker/ItemGroup;->getSize()I

    move-result p1

    add-int/2addr p1, v0

    invoke-static {v0, p1}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object p1

    return-object p1

    .line 104
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Check failed."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Landroidx/emoji2/emojipicker/ItemViewData;",
            ">;"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Landroidx/emoji2/emojipicker/EmojiPickerItems;->groups:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 113
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 114
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 115
    check-cast v2, Landroidx/emoji2/emojipicker/ItemGroup;

    .line 109
    invoke-virtual {v2}, Landroidx/emoji2/emojipicker/ItemGroup;->getAll()Ljava/util/List;

    move-result-object v2

    .line 115
    check-cast v2, Ljava/lang/Iterable;

    .line 116
    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    .line 118
    :cond_0
    check-cast v1, Ljava/util/List;

    .line 109
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
