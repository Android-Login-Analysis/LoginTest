.class Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider$1;
.super Ljava/lang/Object;
.source "EmojiProvider.java"

# interfaces
.implements Lorg/thoughtcrime/securesms/util/FutureTaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider;->getEmojiDrawable(Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiDrawInfo;Z)Landroid/graphics/drawable/Drawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/thoughtcrime/securesms/util/FutureTaskListener<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider;

.field final synthetic val$drawable:Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider$EmojiDrawable;


# direct methods
.method constructor <init>(Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider;Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider$EmojiDrawable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 137
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider$1;->this$0:Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider$1;->val$drawable:Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider$EmojiDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onSuccess$0(Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider$EmojiDrawable;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 139
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider$EmojiDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/util/concurrent/ExecutionException;)V
    .locals 1

    .line 143
    invoke-static {}, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider;->access$100()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public onSuccess(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 139
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider$1;->val$drawable:Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider$EmojiDrawable;

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p1}, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider$1$$ExternalSyntheticLambda0;-><init>(Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider$EmojiDrawable;Landroid/graphics/Bitmap;)V

    invoke-static {v1}, Lorg/thoughtcrime/securesms/util/Util;->runOnMain(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 137
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider$1;->onSuccess(Landroid/graphics/Bitmap;)V

    return-void
.end method
