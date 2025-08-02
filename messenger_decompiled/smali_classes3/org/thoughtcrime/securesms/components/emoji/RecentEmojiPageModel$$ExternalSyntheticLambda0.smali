.class public final synthetic Lorg/thoughtcrime/securesms/components/emoji/RecentEmojiPageModel$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/annimon/stream/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/components/emoji/RecentEmojiPageModel;->lambda$getDisplayEmoji$0(Ljava/lang/String;)Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    move-result-object p1

    return-object p1
.end method
