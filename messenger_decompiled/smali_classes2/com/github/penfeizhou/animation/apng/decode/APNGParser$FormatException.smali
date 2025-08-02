.class Lcom/github/penfeizhou/animation/apng/decode/APNGParser$FormatException;
.super Ljava/io/IOException;
.source "APNGParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/penfeizhou/animation/apng/decode/APNGParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FormatException"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    const-string v0, "APNG Format error"

    .line 23
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-void
.end method
