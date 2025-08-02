.class public Lorg/thoughtcrime/securesms/ConversationListItemInboxZero;
.super Landroid/widget/LinearLayout;
.source "ConversationListItemInboxZero.java"

# interfaces
.implements Lorg/thoughtcrime/securesms/BindableConversationListItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public bind(Lorg/thoughtcrime/securesms/database/model/ThreadRecord;ILcom/b44t/messenger/DcLot;Lorg/thoughtcrime/securesms/mms/GlideRequests;Ljava/util/Locale;Ljava/util/Set;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/thoughtcrime/securesms/database/model/ThreadRecord;",
            "I",
            "Lcom/b44t/messenger/DcLot;",
            "Lorg/thoughtcrime/securesms/mms/GlideRequests;",
            "Ljava/util/Locale;",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    return-void
.end method

.method public unbind()V
    .locals 0

    return-void
.end method
