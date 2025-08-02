.class Lcom/b44t/messenger/rpc/Rpc$Response;
.super Ljava/lang/Object;
.source "Rpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b44t/messenger/rpc/Rpc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Response"
.end annotation


# instance fields
.field public final error:Lcom/google/gson/JsonElement;

.field public final id:I

.field public final result:Lcom/google/gson/JsonElement;


# direct methods
.method public constructor <init>(ILcom/google/gson/JsonElement;Lcom/google/gson/JsonElement;)V
    .locals 0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput p1, p0, Lcom/b44t/messenger/rpc/Rpc$Response;->id:I

    .line 161
    iput-object p2, p0, Lcom/b44t/messenger/rpc/Rpc$Response;->result:Lcom/google/gson/JsonElement;

    .line 162
    iput-object p3, p0, Lcom/b44t/messenger/rpc/Rpc$Response;->error:Lcom/google/gson/JsonElement;

    return-void
.end method
