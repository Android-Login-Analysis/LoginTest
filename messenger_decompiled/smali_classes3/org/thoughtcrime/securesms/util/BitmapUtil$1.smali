.class Lorg/thoughtcrime/securesms/util/BitmapUtil$1;
.super Ljava/lang/Object;
.source "BitmapUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/thoughtcrime/securesms/util/BitmapUtil;->createFromDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$created:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic val$drawable:Landroid/graphics/drawable/Drawable;

.field final synthetic val$height:I

.field final synthetic val$result:[Landroid/graphics/Bitmap;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Landroid/graphics/drawable/Drawable;[Landroid/graphics/Bitmap;IILjava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 183
    iput-object p1, p0, Lorg/thoughtcrime/securesms/util/BitmapUtil$1;->val$drawable:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/util/BitmapUtil$1;->val$result:[Landroid/graphics/Bitmap;

    iput p3, p0, Lorg/thoughtcrime/securesms/util/BitmapUtil$1;->val$width:I

    iput p4, p0, Lorg/thoughtcrime/securesms/util/BitmapUtil$1;->val$height:I

    iput-object p5, p0, Lorg/thoughtcrime/securesms/util/BitmapUtil$1;->val$created:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 186
    iget-object v0, p0, Lorg/thoughtcrime/securesms/util/BitmapUtil$1;->val$drawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 187
    iget-object v1, p0, Lorg/thoughtcrime/securesms/util/BitmapUtil$1;->val$result:[Landroid/graphics/Bitmap;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    aput-object v0, v1, v2

    goto :goto_1

    .line 189
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    if-gtz v0, :cond_1

    .line 190
    iget v0, p0, Lorg/thoughtcrime/securesms/util/BitmapUtil$1;->val$width:I

    .line 192
    :cond_1
    iget-object v1, p0, Lorg/thoughtcrime/securesms/util/BitmapUtil$1;->val$drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-gtz v1, :cond_2

    .line 193
    iget v1, p0, Lorg/thoughtcrime/securesms/util/BitmapUtil$1;->val$height:I

    .line 198
    :cond_2
    :try_start_0
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 199
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 200
    iget-object v3, p0, Lorg/thoughtcrime/securesms/util/BitmapUtil$1;->val$drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    invoke-virtual {v3, v2, v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 201
    iget-object v3, p0, Lorg/thoughtcrime/securesms/util/BitmapUtil$1;->val$drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 203
    invoke-static {}, Lorg/thoughtcrime/securesms/util/BitmapUtil;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    .line 207
    :goto_0
    iget-object v1, p0, Lorg/thoughtcrime/securesms/util/BitmapUtil$1;->val$result:[Landroid/graphics/Bitmap;

    aput-object v0, v1, v2

    .line 210
    :goto_1
    iget-object v0, p0, Lorg/thoughtcrime/securesms/util/BitmapUtil$1;->val$result:[Landroid/graphics/Bitmap;

    monitor-enter v0

    .line 211
    :try_start_1
    iget-object v1, p0, Lorg/thoughtcrime/securesms/util/BitmapUtil$1;->val$created:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 212
    iget-object v1, p0, Lorg/thoughtcrime/securesms/util/BitmapUtil$1;->val$result:[Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 213
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
