.class public interface abstract Lorg/thoughtcrime/securesms/components/emoji/EmojiPageModel;
.super Ljava/lang/Object;
.source "EmojiPageModel.java"


# virtual methods
.method public abstract getDisplayEmoji()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/thoughtcrime/securesms/components/emoji/Emoji;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEmoji()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getIconAttr()I
.end method

.method public abstract getSprite()Ljava/lang/String;
.end method

.method public abstract hasSpriteMap()Z
.end method

.method public abstract isDynamic()Z
.end method
