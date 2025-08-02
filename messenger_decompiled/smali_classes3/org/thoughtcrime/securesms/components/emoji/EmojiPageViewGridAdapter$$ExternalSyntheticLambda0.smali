.class public final synthetic Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter;

.field public final synthetic f$1:Lorg/thoughtcrime/securesms/components/emoji/Emoji;


# direct methods
.method public synthetic constructor <init>(Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter;Lorg/thoughtcrime/securesms/components/emoji/Emoji;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter$$ExternalSyntheticLambda0;->f$0:Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter$$ExternalSyntheticLambda0;->f$1:Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter$$ExternalSyntheticLambda0;->f$0:Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter$$ExternalSyntheticLambda0;->f$1:Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    invoke-virtual {v0, v1, p1}, Lorg/thoughtcrime/securesms/components/emoji/EmojiPageViewGridAdapter;->lambda$onBindViewHolder$0$org-thoughtcrime-securesms-components-emoji-EmojiPageViewGridAdapter(Lorg/thoughtcrime/securesms/components/emoji/Emoji;Landroid/view/View;)V

    return-void
.end method
