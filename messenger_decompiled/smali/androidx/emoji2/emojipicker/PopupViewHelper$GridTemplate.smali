.class final Landroidx/emoji2/emojipicker/PopupViewHelper$GridTemplate;
.super Ljava/lang/Object;
.source "PopupViewHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/emojipicker/PopupViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GridTemplate"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000e\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0082\u0008\u0018\u00002\u00020\u0001B#\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0008J\u0014\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\rJ\t\u0010\u0010\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0006H\u00c6\u0003J2\u0010\u0012\u001a\u00020\u00002\u000e\u0008\u0002\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006H\u00c6\u0001\u00a2\u0006\u0002\u0010\u0013J\u0013\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0017\u001a\u00020\u0006H\u00d6\u0001J\t\u0010\u0018\u001a\u00020\u0019H\u00d6\u0001R\u0011\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\nR\u0019\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\n\n\u0002\u0010\u000e\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u001a"
    }
    d2 = {
        "Landroidx/emoji2/emojipicker/PopupViewHelper$GridTemplate;",
        "",
        "template",
        "",
        "",
        "row",
        "",
        "column",
        "([[III)V",
        "getColumn",
        "()I",
        "getRow",
        "getTemplate",
        "()[[I",
        "[[I",
        "component1",
        "component2",
        "component3",
        "copy",
        "([[III)Landroidx/emoji2/emojipicker/PopupViewHelper$GridTemplate;",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
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
.field private final column:I

.field private final row:I

.field private final template:[[I


# direct methods
.method public constructor <init>([[III)V
    .locals 1

    const-string v0, "template"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-object p1, p0, Landroidx/emoji2/emojipicker/PopupViewHelper$GridTemplate;->template:[[I

    .line 150
    iput p2, p0, Landroidx/emoji2/emojipicker/PopupViewHelper$GridTemplate;->row:I

    .line 151
    iput p3, p0, Landroidx/emoji2/emojipicker/PopupViewHelper$GridTemplate;->column:I

    return-void
.end method

.method public static synthetic copy$default(Landroidx/emoji2/emojipicker/PopupViewHelper$GridTemplate;[[IIIILjava/lang/Object;)Landroidx/emoji2/emojipicker/PopupViewHelper$GridTemplate;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Landroidx/emoji2/emojipicker/PopupViewHelper$GridTemplate;->template:[[I

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget p2, p0, Landroidx/emoji2/emojipicker/PopupViewHelper$GridTemplate;->row:I

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget p3, p0, Landroidx/emoji2/emojipicker/PopupViewHelper$GridTemplate;->column:I

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Landroidx/emoji2/emojipicker/PopupViewHelper$GridTemplate;->copy([[III)Landroidx/emoji2/emojipicker/PopupViewHelper$GridTemplate;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()[[I
    .locals 1

    iget-object v0, p0, Landroidx/emoji2/emojipicker/PopupViewHelper$GridTemplate;->template:[[I

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Landroidx/emoji2/emojipicker/PopupViewHelper$GridTemplate;->row:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Landroidx/emoji2/emojipicker/PopupViewHelper$GridTemplate;->column:I

    return v0
.end method

.method public final copy([[III)Landroidx/emoji2/emojipicker/PopupViewHelper$GridTemplate;
    .locals 1

    const-string v0, "template"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/emoji2/emojipicker/PopupViewHelper$GridTemplate;

    invoke-direct {v0, p1, p2, p3}, Landroidx/emoji2/emojipicker/PopupViewHelper$GridTemplate;-><init>([[III)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/emoji2/emojipicker/PopupViewHelper$GridTemplate;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/emoji2/emojipicker/PopupViewHelper$GridTemplate;

    iget-object v1, p0, Landroidx/emoji2/emojipicker/PopupViewHelper$GridTemplate;->template:[[I

    iget-object v3, p1, Landroidx/emoji2/emojipicker/PopupViewHelper$GridTemplate;->template:[[I

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Landroidx/emoji2/emojipicker/PopupViewHelper$GridTemplate;->row:I

    iget v3, p1, Landroidx/emoji2/emojipicker/PopupViewHelper$GridTemplate;->row:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Landroidx/emoji2/emojipicker/PopupViewHelper$GridTemplate;->column:I

    iget p1, p1, Landroidx/emoji2/emojipicker/PopupViewHelper$GridTemplate;->column:I

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getColumn()I
    .locals 1

    .line 151
    iget v0, p0, Landroidx/emoji2/emojipicker/PopupViewHelper$GridTemplate;->column:I

    return v0
.end method

.method public final getRow()I
    .locals 1

    .line 150
    iget v0, p0, Landroidx/emoji2/emojipicker/PopupViewHelper$GridTemplate;->row:I

    return v0
.end method

.method public final getTemplate()[[I
    .locals 1

    .line 149
    iget-object v0, p0, Landroidx/emoji2/emojipicker/PopupViewHelper$GridTemplate;->template:[[I

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroidx/emoji2/emojipicker/PopupViewHelper$GridTemplate;->template:[[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/emoji2/emojipicker/PopupViewHelper$GridTemplate;->row:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/emoji2/emojipicker/PopupViewHelper$GridTemplate;->column:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GridTemplate(template="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/emoji2/emojipicker/PopupViewHelper$GridTemplate;->template:[[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", row="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/emoji2/emojipicker/PopupViewHelper$GridTemplate;->row:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", column="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/emoji2/emojipicker/PopupViewHelper$GridTemplate;->column:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
