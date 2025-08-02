.class public abstract Lcom/github/penfeizhou/animation/decode/Frame;
.super Ljava/lang/Object;
.source "Frame.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/github/penfeizhou/animation/io/Reader;",
        "W::",
        "Lcom/github/penfeizhou/animation/io/Writer;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final dstRect:Landroid/graphics/Rect;

.field public frameDuration:I

.field public frameHeight:I

.field public frameWidth:I

.field public frameX:I

.field public frameY:I

.field protected final reader:Lcom/github/penfeizhou/animation/io/Reader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field protected final srcRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/github/penfeizhou/animation/io/Reader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/github/penfeizhou/animation/decode/Frame;->srcRect:Landroid/graphics/Rect;

    .line 26
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/github/penfeizhou/animation/decode/Frame;->dstRect:Landroid/graphics/Rect;

    .line 29
    iput-object p1, p0, Lcom/github/penfeizhou/animation/decode/Frame;->reader:Lcom/github/penfeizhou/animation/io/Reader;

    return-void
.end method


# virtual methods
.method public abstract draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;ILandroid/graphics/Bitmap;Lcom/github/penfeizhou/animation/io/Writer;)Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Paint;",
            "I",
            "Landroid/graphics/Bitmap;",
            "TW;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation
.end method
