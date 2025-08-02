.class Lorg/thoughtcrime/securesms/database/CursorRecyclerViewAdapter$AdapterDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "CursorRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/database/CursorRecyclerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdapterDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/database/CursorRecyclerViewAdapter;


# direct methods
.method private constructor <init>(Lorg/thoughtcrime/securesms/database/CursorRecyclerViewAdapter;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lorg/thoughtcrime/securesms/database/CursorRecyclerViewAdapter$AdapterDataSetObserver;->this$0:Lorg/thoughtcrime/securesms/database/CursorRecyclerViewAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/thoughtcrime/securesms/database/CursorRecyclerViewAdapter;Lorg/thoughtcrime/securesms/database/CursorRecyclerViewAdapter$1;)V
    .locals 0

    .line 222
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/database/CursorRecyclerViewAdapter$AdapterDataSetObserver;-><init>(Lorg/thoughtcrime/securesms/database/CursorRecyclerViewAdapter;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .line 225
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 226
    iget-object v0, p0, Lorg/thoughtcrime/securesms/database/CursorRecyclerViewAdapter$AdapterDataSetObserver;->this$0:Lorg/thoughtcrime/securesms/database/CursorRecyclerViewAdapter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/thoughtcrime/securesms/database/CursorRecyclerViewAdapter;->access$102(Lorg/thoughtcrime/securesms/database/CursorRecyclerViewAdapter;Z)Z

    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .line 231
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 232
    iget-object v0, p0, Lorg/thoughtcrime/securesms/database/CursorRecyclerViewAdapter$AdapterDataSetObserver;->this$0:Lorg/thoughtcrime/securesms/database/CursorRecyclerViewAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/thoughtcrime/securesms/database/CursorRecyclerViewAdapter;->access$102(Lorg/thoughtcrime/securesms/database/CursorRecyclerViewAdapter;Z)Z

    return-void
.end method
