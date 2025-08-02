.class public final synthetic Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider$EmojiDrawable;

.field public final synthetic f$1:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider$EmojiDrawable;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider$1$$ExternalSyntheticLambda0;->f$0:Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider$EmojiDrawable;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider$1$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider$1$$ExternalSyntheticLambda0;->f$0:Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider$EmojiDrawable;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider$1$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider$1;->lambda$onSuccess$0(Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider$EmojiDrawable;Landroid/graphics/Bitmap;)V

    return-void
.end method
