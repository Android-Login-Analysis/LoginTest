.class public final Landroidx/emoji2/emojipicker/EmojiViewData;
.super Landroidx/emoji2/emojipicker/ItemViewData;
.source "ItemViewData.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000f\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0008\u0080\u0008\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u0011\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0007H\u00c6\u0003J\'\u0010\u0014\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010\u0015\u001a\u00020\u00052\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u00d6\u0003J\t\u0010\u0018\u001a\u00020\u0007H\u00d6\u0001J\t\u0010\u0019\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u001a"
    }
    d2 = {
        "Landroidx/emoji2/emojipicker/EmojiViewData;",
        "Landroidx/emoji2/emojipicker/ItemViewData;",
        "emoji",
        "",
        "updateToSticky",
        "",
        "dataIndex",
        "",
        "(Ljava/lang/String;ZI)V",
        "getDataIndex",
        "()I",
        "getEmoji",
        "()Ljava/lang/String;",
        "setEmoji",
        "(Ljava/lang/String;)V",
        "getUpdateToSticky",
        "()Z",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "toString",
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
.field private final dataIndex:I

.field private emoji:Ljava/lang/String;

.field private final updateToSticky:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZI)V
    .locals 2

    const-string v0, "emoji"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    sget-object v0, Landroidx/emoji2/emojipicker/ItemType;->EMOJI:Landroidx/emoji2/emojipicker/ItemType;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/emoji2/emojipicker/ItemViewData;-><init>(Landroidx/emoji2/emojipicker/ItemType;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 46
    iput-object p1, p0, Landroidx/emoji2/emojipicker/EmojiViewData;->emoji:Ljava/lang/String;

    .line 47
    iput-boolean p2, p0, Landroidx/emoji2/emojipicker/EmojiViewData;->updateToSticky:Z

    .line 49
    iput p3, p0, Landroidx/emoji2/emojipicker/EmojiViewData;->dataIndex:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ZIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x1

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 45
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Landroidx/emoji2/emojipicker/EmojiViewData;-><init>(Ljava/lang/String;ZI)V

    return-void
.end method

.method public static synthetic copy$default(Landroidx/emoji2/emojipicker/EmojiViewData;Ljava/lang/String;ZIILjava/lang/Object;)Landroidx/emoji2/emojipicker/EmojiViewData;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Landroidx/emoji2/emojipicker/EmojiViewData;->emoji:Ljava/lang/String;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-boolean p2, p0, Landroidx/emoji2/emojipicker/EmojiViewData;->updateToSticky:Z

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget p3, p0, Landroidx/emoji2/emojipicker/EmojiViewData;->dataIndex:I

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Landroidx/emoji2/emojipicker/EmojiViewData;->copy(Ljava/lang/String;ZI)Landroidx/emoji2/emojipicker/EmojiViewData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/emoji2/emojipicker/EmojiViewData;->emoji:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/emoji2/emojipicker/EmojiViewData;->updateToSticky:Z

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Landroidx/emoji2/emojipicker/EmojiViewData;->dataIndex:I

    return v0
.end method

.method public final copy(Ljava/lang/String;ZI)Landroidx/emoji2/emojipicker/EmojiViewData;
    .locals 1

    const-string v0, "emoji"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/emoji2/emojipicker/EmojiViewData;

    invoke-direct {v0, p1, p2, p3}, Landroidx/emoji2/emojipicker/EmojiViewData;-><init>(Ljava/lang/String;ZI)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/emoji2/emojipicker/EmojiViewData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/emoji2/emojipicker/EmojiViewData;

    iget-object v1, p0, Landroidx/emoji2/emojipicker/EmojiViewData;->emoji:Ljava/lang/String;

    iget-object v3, p1, Landroidx/emoji2/emojipicker/EmojiViewData;->emoji:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Landroidx/emoji2/emojipicker/EmojiViewData;->updateToSticky:Z

    iget-boolean v3, p1, Landroidx/emoji2/emojipicker/EmojiViewData;->updateToSticky:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Landroidx/emoji2/emojipicker/EmojiViewData;->dataIndex:I

    iget p1, p1, Landroidx/emoji2/emojipicker/EmojiViewData;->dataIndex:I

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getDataIndex()I
    .locals 1

    .line 49
    iget v0, p0, Landroidx/emoji2/emojipicker/EmojiViewData;->dataIndex:I

    return v0
.end method

.method public final getEmoji()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Landroidx/emoji2/emojipicker/EmojiViewData;->emoji:Ljava/lang/String;

    return-object v0
.end method

.method public final getUpdateToSticky()Z
    .locals 1

    .line 47
    iget-boolean v0, p0, Landroidx/emoji2/emojipicker/EmojiViewData;->updateToSticky:Z

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroidx/emoji2/emojipicker/EmojiViewData;->emoji:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Landroidx/emoji2/emojipicker/EmojiViewData;->updateToSticky:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/emoji2/emojipicker/EmojiViewData;->dataIndex:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final setEmoji(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iput-object p1, p0, Landroidx/emoji2/emojipicker/EmojiViewData;->emoji:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EmojiViewData(emoji="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/emoji2/emojipicker/EmojiViewData;->emoji:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", updateToSticky="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroidx/emoji2/emojipicker/EmojiViewData;->updateToSticky:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", dataIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/emoji2/emojipicker/EmojiViewData;->dataIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
