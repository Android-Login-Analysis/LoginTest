.class public final Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;
.super Ljava/lang/Object;
.source "EditorFlags.java"


# static fields
.field private static final ASPECT_LOCK:I = 0x1

.field private static final CHILDREN_VISIBLE:I = 0x10

.field private static final EDITABLE:I = 0x20

.field private static final ROTATE_LOCK:I = 0x2

.field private static final SELECTABLE:I = 0x4

.field private static final VISIBLE:I = 0x8


# instance fields
.field private flags:I

.field private markedFlags:I

.field private persistedFlags:I


# direct methods
.method constructor <init>()V
    .locals 1

    const/16 v0, 0x3d

    .line 26
    invoke-direct {p0, v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;-><init>(I)V

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;->flags:I

    .line 31
    iput p1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;->persistedFlags:I

    return-void
.end method

.method private isFlagSet(I)Z
    .locals 1

    .line 97
    iget v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;->flags:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private setFlag(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    .line 90
    iget p2, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;->flags:I

    or-int/2addr p1, p2

    iput p1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;->flags:I

    goto :goto_0

    .line 92
    :cond_0
    iget p2, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;->flags:I

    xor-int/lit8 p1, p1, -0x1

    and-int/2addr p1, p2

    iput p1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;->flags:I

    :goto_0
    return-void
.end method


# virtual methods
.method asInt()I
    .locals 1

    .line 101
    iget v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;->persistedFlags:I

    return v0
.end method

.method getCurrentState()I
    .locals 1

    .line 105
    iget v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;->flags:I

    return v0
.end method

.method public isAspectLocked()Z
    .locals 1

    const/4 v0, 0x1

    .line 49
    invoke-direct {p0, v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public isChildrenVisible()Z
    .locals 1

    const/16 v0, 0x10

    .line 85
    invoke-direct {p0, v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public isEditable()Z
    .locals 1

    const/16 v0, 0x20

    .line 67
    invoke-direct {p0, v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public isRotateLocked()Z
    .locals 1

    const/4 v0, 0x2

    .line 40
    invoke-direct {p0, v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public isSelectable()Z
    .locals 1

    const/4 v0, 0x4

    .line 58
    invoke-direct {p0, v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    const/16 v0, 0x8

    .line 76
    invoke-direct {p0, v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method mark()V
    .locals 1

    .line 121
    iget v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;->flags:I

    iput v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;->markedFlags:I

    return-void
.end method

.method public persist()V
    .locals 1

    .line 109
    iget v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;->flags:I

    iput v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;->persistedFlags:I

    return-void
.end method

.method public reset()V
    .locals 1

    .line 113
    iget v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;->persistedFlags:I

    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;->restoreState(I)V

    return-void
.end method

.method restore()V
    .locals 1

    .line 125
    iget v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;->markedFlags:I

    iput v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;->flags:I

    return-void
.end method

.method restoreState(I)V
    .locals 0

    .line 117
    iput p1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;->flags:I

    return-void
.end method

.method public set(Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;)V
    .locals 1

    .line 129
    iget v0, p1, Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;->persistedFlags:I

    iput v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;->persistedFlags:I

    .line 130
    iget p1, p1, Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;->flags:I

    iput p1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;->flags:I

    return-void
.end method

.method public setAspectLocked(Z)Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;
    .locals 1

    const/4 v0, 0x1

    .line 44
    invoke-direct {p0, v0, p1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;->setFlag(IZ)V

    return-object p0
.end method

.method public setChildrenVisible(Z)Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;
    .locals 1

    const/16 v0, 0x10

    .line 80
    invoke-direct {p0, v0, p1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;->setFlag(IZ)V

    return-object p0
.end method

.method public setEditable(Z)Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;
    .locals 1

    const/16 v0, 0x20

    .line 62
    invoke-direct {p0, v0, p1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;->setFlag(IZ)V

    return-object p0
.end method

.method public setRotateLocked(Z)Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;
    .locals 1

    const/4 v0, 0x2

    .line 35
    invoke-direct {p0, v0, p1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;->setFlag(IZ)V

    return-object p0
.end method

.method public setSelectable(Z)Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;
    .locals 1

    const/4 v0, 0x4

    .line 53
    invoke-direct {p0, v0, p1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;->setFlag(IZ)V

    return-object p0
.end method

.method public setVisible(Z)Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;
    .locals 1

    const/16 v0, 0x8

    .line 71
    invoke-direct {p0, v0, p1}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorFlags;->setFlag(IZ)V

    return-object p0
.end method
