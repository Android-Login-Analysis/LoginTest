.class public final synthetic Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter;

.field public final synthetic f$1:Lorg/thoughtcrime/securesms/components/emoji/Emoji;

.field public final synthetic f$2:Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter$EmojiViewHolder;


# direct methods
.method public synthetic constructor <init>(Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter;Lorg/thoughtcrime/securesms/components/emoji/Emoji;Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter$EmojiViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter$$ExternalSyntheticLambda1;->f$0:Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter$$ExternalSyntheticLambda1;->f$1:Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    iput-object p3, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter$$ExternalSyntheticLambda1;->f$2:Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter$EmojiViewHolder;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 3

    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter$$ExternalSyntheticLambda1;->f$0:Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter$$ExternalSyntheticLambda1;->f$1:Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter$$ExternalSyntheticLambda1;->f$2:Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter$EmojiViewHolder;

    invoke-virtual {v0, v1, v2, p1}, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter;->lambda$onBindViewHolder$1$org-thoughtcrime-securesms-components-emoji-EmojiPageViewGridAdapter(Lorg/thoughtcrime/securesms/components/emoji/Emoji;Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter$EmojiViewHolder;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
