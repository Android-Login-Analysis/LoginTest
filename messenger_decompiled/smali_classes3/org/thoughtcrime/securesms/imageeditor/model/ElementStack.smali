.class final Lorg/thoughtcrime/securesms/imageeditor/model/ElementStack;
.super Ljava/lang/Object;
.source "ElementStack.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/thoughtcrime/securesms/imageeditor/model/ElementStack;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final limit:I

.field private final stack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 104
    new-instance v0, Lorg/thoughtcrime/securesms/imageeditor/model/ElementStack$1;

    invoke-direct {v0}, Lorg/thoughtcrime/securesms/imageeditor/model/ElementStack$1;-><init>()V

    sput-object v0, Lorg/thoughtcrime/securesms/imageeditor/model/ElementStack;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(I)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/ElementStack;->stack:Ljava/util/Stack;

    .line 26
    iput p1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/ElementStack;->limit:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/thoughtcrime/securesms/imageeditor/model/ElementStack;-><init>(I)V

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 33
    iget-object v2, p0, Lorg/thoughtcrime/securesms/imageeditor/model/ElementStack;->stack:Ljava/util/Stack;

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/Stack;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lorg/thoughtcrime/securesms/imageeditor/model/ElementStack$1;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/imageeditor/model/ElementStack;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static getBytes(Landroid/os/Parcelable;)[B
    .locals 2

    .line 60
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    .line 63
    :try_start_0
    invoke-virtual {v0, p0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 64
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 67
    throw p0
.end method


# virtual methods
.method clear()V
    .locals 1

    .line 101
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/ElementStack;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method pop(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;
    .locals 4

    .line 75
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/ElementStack;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 77
    :cond_0
    invoke-static {p1}, Lorg/thoughtcrime/securesms/imageeditor/model/ElementStack;->getBytes(Landroid/os/Parcelable;)[B

    move-result-object p1

    move-object v0, v1

    .line 80
    :cond_1
    :goto_0
    iget-object v2, p0, Lorg/thoughtcrime/securesms/imageeditor/model/ElementStack;->stack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->empty()Z

    move-result v2

    if-nez v2, :cond_2

    if-nez v0, :cond_2

    .line 81
    iget-object v2, p0, Lorg/thoughtcrime/securesms/imageeditor/model/ElementStack;->stack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 83
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_1

    move-object v0, v2

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    return-object v1

    .line 90
    :cond_3
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p1

    .line 92
    :try_start_0
    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 93
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 94
    const-class v0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    .line 97
    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method stackContainsStateDifferentFrom(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)Z
    .locals 3

    .line 132
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/ElementStack;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 134
    :cond_0
    invoke-static {p1}, Lorg/thoughtcrime/securesms/imageeditor/model/ElementStack;->getBytes(Landroid/os/Parcelable;)[B

    move-result-object p1

    .line 136
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/ElementStack;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 137
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method tryPush(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;)Z
    .locals 3

    .line 47
    invoke-static {p1}, Lorg/thoughtcrime/securesms/imageeditor/model/ElementStack;->getBytes(Landroid/os/Parcelable;)[B

    move-result-object p1

    .line 48
    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/ElementStack;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/thoughtcrime/securesms/imageeditor/model/ElementStack;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 51
    iget-object v2, p0, Lorg/thoughtcrime/securesms/imageeditor/model/ElementStack;->stack:Ljava/util/Stack;

    invoke-virtual {v2, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/ElementStack;->stack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->size()I

    move-result p1

    iget v2, p0, Lorg/thoughtcrime/securesms/imageeditor/model/ElementStack;->limit:I

    if-le p1, v2, :cond_2

    .line 53
    iget-object p1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/ElementStack;->stack:Ljava/util/Stack;

    invoke-virtual {p1, v1}, Ljava/util/Stack;->remove(I)Ljava/lang/Object;

    :cond_2
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 123
    iget p2, p0, Lorg/thoughtcrime/securesms/imageeditor/model/ElementStack;->limit:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    iget-object p2, p0, Lorg/thoughtcrime/securesms/imageeditor/model/ElementStack;->stack:Ljava/util/Stack;

    invoke-virtual {p2}, Ljava/util/Stack;->size()I

    move-result p2

    .line 125
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 127
    iget-object v1, p0, Lorg/thoughtcrime/securesms/imageeditor/model/ElementStack;->stack:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
