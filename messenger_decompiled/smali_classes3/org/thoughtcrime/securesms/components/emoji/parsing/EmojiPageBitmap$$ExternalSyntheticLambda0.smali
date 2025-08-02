.class public final synthetic Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiPageBitmap$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiPageBitmap;


# direct methods
.method public synthetic constructor <init>(Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiPageBitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiPageBitmap$$ExternalSyntheticLambda0;->f$0:Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiPageBitmap;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiPageBitmap$$ExternalSyntheticLambda0;->f$0:Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiPageBitmap;

    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/components/emoji/parsing/EmojiPageBitmap;->lambda$get$0$org-thoughtcrime-securesms-components-emoji-parsing-EmojiPageBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
