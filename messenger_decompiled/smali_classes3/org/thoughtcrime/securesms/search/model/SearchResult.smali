.class public Lorg/thoughtcrime/securesms/search/model/SearchResult;
.super Ljava/lang/Object;
.source "SearchResult.java"


# static fields
.field public static final EMPTY:Lorg/thoughtcrime/securesms/search/model/SearchResult;


# instance fields
.field private final contacts:[I

.field private final conversations:Lcom/b44t/messenger/DcChatlist;

.field private final messages:[I

.field private final query:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 13
    new-instance v0, Lorg/thoughtcrime/securesms/search/model/SearchResult;

    const/4 v1, 0x0

    new-array v2, v1, [I

    new-instance v3, Lcom/b44t/messenger/DcChatlist;

    const-wide/16 v4, 0x0

    invoke-direct {v3, v1, v4, v5}, Lcom/b44t/messenger/DcChatlist;-><init>(IJ)V

    new-array v1, v1, [I

    const-string v4, ""

    invoke-direct {v0, v4, v2, v3, v1}, Lorg/thoughtcrime/securesms/search/model/SearchResult;-><init>(Ljava/lang/String;[ILcom/b44t/messenger/DcChatlist;[I)V

    sput-object v0, Lorg/thoughtcrime/securesms/search/model/SearchResult;->EMPTY:Lorg/thoughtcrime/securesms/search/model/SearchResult;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[ILcom/b44t/messenger/DcChatlist;[I)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lorg/thoughtcrime/securesms/search/model/SearchResult;->query:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lorg/thoughtcrime/securesms/search/model/SearchResult;->contacts:[I

    .line 27
    iput-object p3, p0, Lorg/thoughtcrime/securesms/search/model/SearchResult;->conversations:Lcom/b44t/messenger/DcChatlist;

    .line 28
    iput-object p4, p0, Lorg/thoughtcrime/securesms/search/model/SearchResult;->messages:[I

    return-void
.end method


# virtual methods
.method public getChats()Lcom/b44t/messenger/DcChatlist;
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/thoughtcrime/securesms/search/model/SearchResult;->conversations:Lcom/b44t/messenger/DcChatlist;

    return-object v0
.end method

.method public getContacts()[I
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/thoughtcrime/securesms/search/model/SearchResult;->contacts:[I

    return-object v0
.end method

.method public getMessages()[I
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/thoughtcrime/securesms/search/model/SearchResult;->messages:[I

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/thoughtcrime/securesms/search/model/SearchResult;->query:Ljava/lang/String;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 52
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/search/model/SearchResult;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public size()I
    .locals 2

    .line 48
    iget-object v0, p0, Lorg/thoughtcrime/securesms/search/model/SearchResult;->contacts:[I

    array-length v0, v0

    iget-object v1, p0, Lorg/thoughtcrime/securesms/search/model/SearchResult;->conversations:Lcom/b44t/messenger/DcChatlist;

    invoke-virtual {v1}, Lcom/b44t/messenger/DcChatlist;->getCnt()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/thoughtcrime/securesms/search/model/SearchResult;->messages:[I

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method
