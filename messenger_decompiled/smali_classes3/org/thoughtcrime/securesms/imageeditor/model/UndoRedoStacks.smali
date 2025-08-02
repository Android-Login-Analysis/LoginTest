.class final Lorg/thoughtcrime/securesms/imageeditor/model/UndoRedoStacks;
.super Ljava/lang/Object;
.source "UndoRedoStacks.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/thoughtcrime/securesms/imageeditor/model/UndoRedoStacks;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final redoStack:Lorg/thoughtcrime/securesms/imageeditor/model/ElementStack;

.field private unchangedState:[B

.field private final undoStack:Lorg/thoughtcrime/securesms/imageeditor/model/ElementStack;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lorg/thoughtcrime/securesms/imageeditor/model/UndoRedoStacks$1;

    invoke-direct {v0}, Lorg/thoughtcrime/securesms/imageeditor/model/UndoRedoStacks$1;-><init>()V

    sput-object v0, Lorg/thoughtcrime/securesms/imageeditor/model/UndoRedoStacks;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(I)V
    .locals 2

    .line 19
    new-instance v0, Lorg/thoughtcrime/securesms/imageeditor/model/ElementStack;

    invoke-direct {v0, p1}, Lorg/thoughtcrime/securesms/imageeditor/model/ElementStack;-><init>(I)V

    new-instance v1, Lorg/thoughtcrime/securesms/imageeditor/model/ElementStack;

    invoke-direct {v1, p1}, Lorg/thoughtcrime/securesms/imageeditor/model/ElementStack;-><init>(I)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lorg/thoughtcrime/securesms/imageeditor/model/UndoRedoStacks;-><init>(Lorg/thoughtcrime/securesms/imageeditor/model/ElementStack;Lorg/thoughtcrime/securesms/imageeditor/model/ElementStack;[B)V

    return-void
.end method

.method private constructor <init>(Lorg/thoughtcrime/securesms/imageeditor/model/ElementStack;Lorg/thoughtcrime/securesms/imageeditor/model/ElementStack;[B)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/UndoRedoStacks;->undoStack:Lorg/thoughtcrime/securesms/imageeditor/model/ElementStack;

    .line 24
    iput-object p2, p0, Lorg/thoughtcrime/securesms/imageeditor/model/UndoRedoStacks;->redoStack:Lorg/thoughtcrime/securesms/imageeditor/model/ElementStack;

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    new-array p3, p1, [B

    .line 25
    :goto_0
    iput-object p3, p0, Lorg/thoughtcrime/securesms/imageeditor/model/UndoRedoStacks;->unchangedState:[B

    return-void
.end method

.method synthetic constructor <init>(Lorg/thoughtcrime/securesms/imageeditor/model/ElementStack;Lorg/thoughtcrime/securesms/imageeditor/model/ElementStack;[BLorg/thoughtcrime/securesms/imageeditor/model/UndoRedoStacks$1;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2, p3}, Lorg/thoughtcrime/securesms/imageeditor/model/UndoRedoStacks;-><init>(Lorg/thoughtcrime/securesms/imageeditor/model/ElementStack;Lorg/thoughtcrime/securesms/imageeditor/model/ElementStack;[B)V

    return-void
.end method


# virtual methods
.method canRedo(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)Z
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/UndoRedoStacks;->redoStack:Lorg/thoughtcrime/securesms/imageeditor/model/ElementStack;

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/imageeditor/model/ElementStack;->stackContainsStateDifferentFrom(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)Z

    move-result p1

    return p1
.end method

.method canUndo(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)Z
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/UndoRedoStacks;->undoStack:Lorg/thoughtcrime/securesms/imageeditor/model/ElementStack;

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/imageeditor/model/ElementStack;->stackContainsStateDifferentFrom(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)Z

    move-result p1

    return p1
.end method

.method clear(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)V
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/UndoRedoStacks;->undoStack:Lorg/thoughtcrime/securesms/imageeditor/model/ElementStack;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/imageeditor/model/ElementStack;->clear()V

    .line 72
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/UndoRedoStacks;->redoStack:Lorg/thoughtcrime/securesms/imageeditor/model/ElementStack;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/imageeditor/model/ElementStack;->clear()V

    .line 73
    invoke-static {p1}, Lorg/thoughtcrime/securesms/imageeditor/model/ElementStack;->getBytes(Landroid/os/Parcelable;)[B

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/UndoRedoStacks;->unchangedState:[B

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method getRedoStack()Lorg/thoughtcrime/securesms/imageeditor/model/ElementStack;
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/UndoRedoStacks;->redoStack:Lorg/thoughtcrime/securesms/imageeditor/model/ElementStack;

    return-object v0
.end method

.method getUndoStack()Lorg/thoughtcrime/securesms/imageeditor/model/ElementStack;
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/UndoRedoStacks;->undoStack:Lorg/thoughtcrime/securesms/imageeditor/model/ElementStack;

    return-object v0
.end method

.method isChanged(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)Z
    .locals 1

    .line 77
    invoke-static {p1}, Lorg/thoughtcrime/securesms/imageeditor/model/ElementStack;->getBytes(Landroid/os/Parcelable;)[B

    move-result-object p1

    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/UndoRedoStacks;->unchangedState:[B

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method pushState(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)V
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/UndoRedoStacks;->undoStack:Lorg/thoughtcrime/securesms/imageeditor/model/ElementStack;

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/imageeditor/model/ElementStack;->tryPush(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 66
    iget-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/UndoRedoStacks;->redoStack:Lorg/thoughtcrime/securesms/imageeditor/model/ElementStack;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/imageeditor/model/ElementStack;->clear()V

    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/UndoRedoStacks;->undoStack:Lorg/thoughtcrime/securesms/imageeditor/model/ElementStack;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 47
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/UndoRedoStacks;->redoStack:Lorg/thoughtcrime/securesms/imageeditor/model/ElementStack;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 48
    iget-object p2, p0, Lorg/thoughtcrime/securesms/imageeditor/model/UndoRedoStacks;->unchangedState:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
