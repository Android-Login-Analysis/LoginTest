.class public Lcom/b44t/messenger/DcChatlist$Item;
.super Ljava/lang/Object;
.source "DcChatlist.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b44t/messenger/DcChatlist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Item"
.end annotation


# instance fields
.field public chatId:I

.field public msgId:I

.field public summary:Lcom/b44t/messenger/DcLot;

.field final synthetic this$0:Lcom/b44t/messenger/DcChatlist;


# direct methods
.method public constructor <init>(Lcom/b44t/messenger/DcChatlist;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/b44t/messenger/DcChatlist$Item;->this$0:Lcom/b44t/messenger/DcChatlist;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
