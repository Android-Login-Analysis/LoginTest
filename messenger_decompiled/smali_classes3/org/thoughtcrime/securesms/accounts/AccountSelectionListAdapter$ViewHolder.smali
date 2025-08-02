.class public abstract Lorg/thoughtcrime/securesms/accounts/AccountSelectionListAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "AccountSelectionListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/accounts/AccountSelectionListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ViewHolder"
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public abstract bind(Lorg/thoughtcrime/securesms/mms/GlideRequests;ILcom/b44t/messenger/DcContact;Ljava/lang/String;Ljava/lang/String;IZ)V
.end method

.method public abstract unbind(Lorg/thoughtcrime/securesms/mms/GlideRequests;)V
.end method
