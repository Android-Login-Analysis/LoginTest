.class Lorg/thoughtcrime/securesms/components/emoji/EmojiPages;
.super Ljava/lang/Object;
.source "EmojiPages.java"


# static fields
.field static final DATA_PAGES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/thoughtcrime/securesms/components/emoji/EmojiPageModel;",
            ">;"
        }
    .end annotation
.end field

.field static final DISPLAY_PAGES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/thoughtcrime/securesms/components/emoji/EmojiPageModel;",
            ">;"
        }
    .end annotation
.end field

.field static final OBSOLETE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/thoughtcrime/securesms/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final PAGE_ACTIVITY:Lorg/thoughtcrime/securesms/components/emoji/EmojiPageModel;

.field private static final PAGE_EMOTICONS:Lorg/thoughtcrime/securesms/components/emoji/EmojiPageModel;

.field private static final PAGE_FLAGS:Lorg/thoughtcrime/securesms/components/emoji/EmojiPageModel;

.field private static final PAGE_FLAGS_0:Lorg/thoughtcrime/securesms/components/emoji/EmojiPageModel;

.field private static final PAGE_FLAGS_1:Lorg/thoughtcrime/securesms/components/emoji/EmojiPageModel;

.field private static final PAGE_FOODS:Lorg/thoughtcrime/securesms/components/emoji/EmojiPageModel;

.field private static final PAGE_NATURE:Lorg/thoughtcrime/securesms/components/emoji/EmojiPageModel;

.field private static final PAGE_OBJECTS:Lorg/thoughtcrime/securesms/components/emoji/EmojiPageModel;

.field private static final PAGE_PEOPLE:Lorg/thoughtcrime/securesms/components/emoji/EmojiPageModel;

.field private static final PAGE_PEOPLE_0:Lorg/thoughtcrime/securesms/components/emoji/EmojiPageModel;

.field private static final PAGE_PEOPLE_1:Lorg/thoughtcrime/securesms/components/emoji/EmojiPageModel;

.field private static final PAGE_PEOPLE_2:Lorg/thoughtcrime/securesms/components/emoji/EmojiPageModel;

.field private static final PAGE_PEOPLE_3:Lorg/thoughtcrime/securesms/components/emoji/EmojiPageModel;

.field private static final PAGE_PEOPLE_4:Lorg/thoughtcrime/securesms/components/emoji/EmojiPageModel;

.field private static final PAGE_PEOPLE_5:Lorg/thoughtcrime/securesms/components/emoji/EmojiPageModel;

.field private static final PAGE_PEOPLE_6:Lorg/thoughtcrime/securesms/components/emoji/EmojiPageModel;

.field private static final PAGE_PLACES:Lorg/thoughtcrime/securesms/components/emoji/EmojiPageModel;

.field private static final PAGE_SYMBOLS:Lorg/thoughtcrime/securesms/components/emoji/EmojiPageModel;


# direct methods
.method static constructor <clinit>()V
    .locals 42

    .line 14
    new-instance v0, Lorg/thoughtcrime/securesms/components/emoji/StaticEmojiPageModel;

    const/16 v1, 0xd2

    new-array v1, v1, [Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    const-string v5, "\ud83c\udf0d"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-direct {v2, v4}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    aput-object v2, v1, v6

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v4, v3, [Ljava/lang/String;

    const-string v5, "\ud83c\udf0e"

    aput-object v5, v4, v6

    invoke-direct {v2, v4}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    aput-object v2, v1, v3

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v4, v3, [Ljava/lang/String;

    const-string v5, "\ud83c\udf0f"

    aput-object v5, v4, v6

    invoke-direct {v2, v4}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x2

    aput-object v2, v1, v4

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v5, v3, [Ljava/lang/String;

    const-string v7, "\ud83c\udf10"

    aput-object v7, v5, v6

    invoke-direct {v2, v5}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x3

    aput-object v2, v1, v5

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v7, v3, [Ljava/lang/String;

    const-string v8, "\ud83d\uddfa\ufe0f"

    aput-object v8, v7, v6

    invoke-direct {v2, v7}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/4 v7, 0x4

    aput-object v2, v1, v7

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v8, v3, [Ljava/lang/String;

    const-string v9, "\ud83d\uddfe"

    aput-object v9, v8, v6

    invoke-direct {v2, v8}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/4 v8, 0x5

    aput-object v2, v1, v8

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v9, v3, [Ljava/lang/String;

    const-string v10, "\ud83e\udded"

    aput-object v10, v9, v6

    invoke-direct {v2, v9}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/4 v9, 0x6

    aput-object v2, v1, v9

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v10, v3, [Ljava/lang/String;

    const-string v11, "\ud83c\udfd4\ufe0f"

    aput-object v11, v10, v6

    invoke-direct {v2, v10}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/4 v10, 0x7

    aput-object v2, v1, v10

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v11, v3, [Ljava/lang/String;

    const-string v12, "\u26f0\ufe0f"

    aput-object v12, v11, v6

    invoke-direct {v2, v11}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v11, 0x8

    aput-object v2, v1, v11

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v12, v3, [Ljava/lang/String;

    const-string v13, "\ud83c\udf0b"

    aput-object v13, v12, v6

    invoke-direct {v2, v12}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v12, 0x9

    aput-object v2, v1, v12

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v13, v3, [Ljava/lang/String;

    const-string v14, "\ud83d\uddfb"

    aput-object v14, v13, v6

    invoke-direct {v2, v13}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v13, 0xa

    aput-object v2, v1, v13

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v3, [Ljava/lang/String;

    const-string v15, "\ud83c\udfd5\ufe0f"

    aput-object v15, v14, v6

    invoke-direct {v2, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xb

    aput-object v2, v1, v14

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v16, "\ud83c\udfd6\ufe0f"

    aput-object v16, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xc

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v17, "\ud83c\udfdc\ufe0f"

    aput-object v17, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xd

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v18, "\ud83c\udfdd\ufe0f"

    aput-object v18, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xe

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v19, "\ud83c\udfde\ufe0f"

    aput-object v19, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xf

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v20, "\ud83c\udfdf\ufe0f"

    aput-object v20, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x10

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v21, "\ud83c\udfdb\ufe0f"

    aput-object v21, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x11

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v22, "\ud83c\udfd7\ufe0f"

    aput-object v22, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x12

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v23, "\ud83e\uddf1"

    aput-object v23, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x13

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v24, "\ud83c\udfd8\ufe0f"

    aput-object v24, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x14

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v25, "\ud83c\udfda\ufe0f"

    aput-object v25, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x15

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83c\udfe0"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x16

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83c\udfe1"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x17

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83c\udfe2"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x18

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83c\udfe3"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x19

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83c\udfe4"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x1a

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83c\udfe5"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x1b

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83c\udfe6"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x1c

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83c\udfe8"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x1d

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83c\udfe9"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x1e

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83c\udfea"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x1f

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83c\udfeb"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x20

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83c\udfec"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x21

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83c\udfed"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x22

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83c\udfef"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x23

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83c\udff0"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x24

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83d\udc92"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x25

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83d\uddfc"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x26

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83d\uddfd"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x27

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\u26ea"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x28

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83d\udd4c"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x29

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83d\uded5"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x2a

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83d\udd4d"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x2b

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\u26e9\ufe0f"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x2c

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83d\udd4b"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x2d

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\u26f2"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x2e

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\u26fa"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x2f

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83c\udf01"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x30

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83c\udf03"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x31

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83c\udfd9\ufe0f"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x32

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83c\udf04"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x33

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83c\udf05"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x34

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83c\udf06"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x35

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83c\udf07"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x36

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83c\udf09"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x37

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\u2668\ufe0f"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x38

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83c\udfa0"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x39

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83c\udfa1"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x3a

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83c\udfa2"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x3b

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83d\udc88"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x3c

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83c\udfaa"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x3d

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83d\ude82"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x3e

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83d\ude83"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x3f

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83d\ude84"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x40

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83d\ude85"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x41

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83d\ude86"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x42

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83d\ude87"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x43

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83d\ude88"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x44

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83d\ude89"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x45

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83d\ude8a"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x46

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83d\ude9d"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x47

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83d\ude9e"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x48

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83d\ude8b"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x49

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83d\ude8c"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x4a

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83d\ude8d"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x4b

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83d\ude8e"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x4c

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83d\ude90"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x4d

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83d\ude91"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x4e

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83d\ude92"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x4f

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83d\ude93"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x50

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83d\ude94"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x51

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83d\ude95"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x52

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83d\ude96"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x53

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83d\ude97"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x54

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83d\ude98"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x55

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83d\ude99"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x56

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83d\ude9a"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x57

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83d\ude9b"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x58

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83d\ude9c"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x59

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83c\udfce\ufe0f"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x5a

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83c\udfcd\ufe0f"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x5b

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83d\udef5"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x5c

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83e\uddbd"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x5d

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83e\uddbc"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x5e

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83d\udefa"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x5f

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83d\udeb2"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x60

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83d\udef4"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x61

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83d\udef9"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x62

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83d\ude8f"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x63

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83d\udee3\ufe0f"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x64

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83d\udee4\ufe0f"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x65

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83d\udee2\ufe0f"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x66

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\u26fd"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x67

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83d\udea8"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x68

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83d\udea5"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x69

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83d\udea6"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x6a

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83d\uded1"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x6b

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83d\udea7"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x6c

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\u2693"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x6d

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\u26f5"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x6e

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83d\udef6"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x6f

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83d\udea4"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x70

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83d\udef3\ufe0f"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x71

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\u26f4\ufe0f"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x72

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83d\udee5\ufe0f"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x73

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83d\udea2"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x74

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\u2708\ufe0f"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x75

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83d\udee9\ufe0f"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x76

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83d\udeeb"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x77

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83d\udeec"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x78

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83e\ude82"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x79

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83d\udcba"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x7a

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83d\ude81"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x7b

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83d\ude9f"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x7c

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83d\udea0"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x7d

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83d\udea1"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x7e

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83d\udef0\ufe0f"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x7f

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83d\ude80"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x80

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83d\udef8"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x81

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83d\udece\ufe0f"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x82

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83e\uddf3"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x83

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\u231b"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x84

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\u23f3"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x85

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\u231a"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x86

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\u23f0"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x87

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\u23f1\ufe0f"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x88

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\u23f2\ufe0f"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x89

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83d\udd70\ufe0f"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x8a

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83d\udd5b"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x8b

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83d\udd67"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x8c

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83d\udd50"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x8d

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83d\udd5c"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x8e

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83d\udd51"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x8f

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83d\udd5d"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x90

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83d\udd52"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x91

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83d\udd5e"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x92

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83d\udd53"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x93

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83d\udd5f"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x94

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83d\udd54"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x95

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83d\udd60"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x96

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83d\udd55"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x97

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83d\udd61"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x98

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83d\udd56"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x99

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83d\udd62"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x9a

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83d\udd57"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x9b

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83d\udd63"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x9c

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83d\udd58"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x9d

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83d\udd64"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x9e

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83d\udd59"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x9f

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83d\udd65"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xa0

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83d\udd5a"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xa1

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83d\udd66"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xa2

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83c\udf11"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xa3

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83c\udf12"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xa4

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83c\udf13"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xa5

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83c\udf14"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xa6

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83c\udf15"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xa7

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83c\udf16"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xa8

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83c\udf17"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xa9

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83c\udf18"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xaa

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83c\udf19"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xab

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83c\udf1a"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xac

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83c\udf1b"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xad

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83c\udf1c"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xae

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83c\udf21\ufe0f"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xaf

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\u2600\ufe0f"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xb0

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83c\udf1d"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xb1

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83c\udf1e"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xb2

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83e\ude90"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xb3

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\u2b50"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xb4

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83c\udf1f"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xb5

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83c\udf20"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xb6

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83c\udf0c"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xb7

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\u2601\ufe0f"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xb8

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\u26c5"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xb9

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\u26c8\ufe0f"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xba

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83c\udf24\ufe0f"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xbb

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83c\udf25\ufe0f"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xbc

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83c\udf26\ufe0f"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xbd

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83c\udf27\ufe0f"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xbe

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83c\udf28\ufe0f"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xbf

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83c\udf29\ufe0f"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xc0

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83c\udf2a\ufe0f"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xc1

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83c\udf2b\ufe0f"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xc2

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83c\udf2c\ufe0f"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xc3

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83c\udf00"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xc4

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83c\udf08"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xc5

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83c\udf02"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xc6

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\u2602\ufe0f"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xc7

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\u2614"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xc8

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\u26f1\ufe0f"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xc9

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\u26a1"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xca

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\u2744\ufe0f"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xcb

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\u2603\ufe0f"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xcc

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\u26c4"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xcd

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\u2604\ufe0f"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xce

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83d\udd25"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xcf

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83d\udca7"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xd0

    aput-object v2, v1, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v26, "\ud83c\udf0a"

    aput-object v26, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xd1

    aput-object v2, v1, v15

    const-string v2, "emoji/Places.png"

    const v15, 0x7f04020e

    invoke-direct {v0, v15, v1, v2}, Lorg/thoughtcrime/securesms/components/emoji/StaticEmojiPageModel;-><init>(I[Lorg/thoughtcrime/securesms/components/emoji/Emoji;Ljava/lang/String;)V

    sput-object v0, Lorg/thoughtcrime/securesms/components/emoji/EmojiPages;->PAGE_PLACES:Lorg/thoughtcrime/securesms/components/emoji/EmojiPageModel;

    .line 18
    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/StaticEmojiPageModel;

    const/16 v2, 0x79

    new-array v2, v2, [Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-instance v15, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v3, [Ljava/lang/String;

    const-string v27, "\ud83c\udf47"

    aput-object v27, v14, v6

    invoke-direct {v15, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    aput-object v15, v2, v6

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83c\udf48"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    aput-object v14, v2, v3

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83c\udf49"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    aput-object v14, v2, v4

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83c\udf4a"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    aput-object v14, v2, v5

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83c\udf4b"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    aput-object v14, v2, v7

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83c\udf4c"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    aput-object v14, v2, v8

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83c\udf4d"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    aput-object v14, v2, v9

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83e\udd6d"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    aput-object v14, v2, v10

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83c\udf4e"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    aput-object v14, v2, v11

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83c\udf4f"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    aput-object v14, v2, v12

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83c\udf50"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    aput-object v14, v2, v13

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83c\udf51"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xb

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83c\udf52"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xc

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83c\udf53"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xd

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83e\udd5d"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xe

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83c\udf45"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xf

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83e\udd65"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x10

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83e\udd51"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x11

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83c\udf46"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x12

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83e\udd54"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x13

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83e\udd55"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x14

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83c\udf3d"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x15

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83c\udf36\ufe0f"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x16

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83e\udd52"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x17

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83e\udd6c"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x18

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83e\udd66"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x19

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83e\uddc4"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x1a

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83e\uddc5"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x1b

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83c\udf44"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x1c

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83e\udd5c"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x1d

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83c\udf30"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x1e

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83c\udf5e"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x1f

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83e\udd50"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x20

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83e\udd56"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x21

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83e\udd68"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x22

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83e\udd6f"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x23

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83e\udd5e"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x24

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83e\uddc7"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x25

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83e\uddc0"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x26

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83c\udf56"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x27

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83c\udf57"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x28

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83e\udd69"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x29

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83e\udd53"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x2a

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83c\udf54"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x2b

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83c\udf5f"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x2c

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83c\udf55"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x2d

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83c\udf2d"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x2e

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83e\udd6a"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x2f

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83c\udf2e"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x30

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83c\udf2f"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x31

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83e\udd59"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x32

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83e\uddc6"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x33

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83e\udd5a"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x34

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83c\udf73"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x35

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83e\udd58"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x36

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83c\udf72"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x37

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83e\udd63"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x38

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83e\udd57"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x39

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83c\udf7f"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x3a

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83e\uddc8"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x3b

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83e\uddc2"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x3c

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83e\udd6b"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x3d

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83c\udf71"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x3e

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83c\udf58"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x3f

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83c\udf59"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x40

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83c\udf5a"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x41

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83c\udf5b"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x42

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83c\udf5c"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x43

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83c\udf5d"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x44

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83c\udf60"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x45

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83c\udf62"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x46

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83c\udf63"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x47

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83c\udf64"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x48

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83c\udf65"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x49

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83e\udd6e"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x4a

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83c\udf61"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x4b

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83e\udd5f"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x4c

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83e\udd60"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x4d

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83e\udd61"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x4e

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83e\udd80"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x4f

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83e\udd9e"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x50

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83e\udd90"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x51

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83e\udd91"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x52

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83e\uddaa"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x53

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83c\udf66"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x54

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83c\udf67"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x55

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83c\udf68"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x56

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83c\udf69"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x57

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83c\udf6a"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x58

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83c\udf82"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x59

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83c\udf70"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x5a

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83e\uddc1"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x5b

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83e\udd67"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x5c

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83c\udf6b"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x5d

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83c\udf6c"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x5e

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83c\udf6d"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x5f

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83c\udf6e"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x60

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83c\udf6f"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x61

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83c\udf7c"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x62

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83e\udd5b"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x63

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\u2615"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x64

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83c\udf75"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x65

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83c\udf76"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x66

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83c\udf7e"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x67

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83c\udf77"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x68

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83c\udf78"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x69

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83c\udf79"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x6a

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83c\udf7a"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x6b

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83c\udf7b"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x6c

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83e\udd42"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x6d

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83e\udd43"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x6e

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83e\udd64"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x6f

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83e\uddc3"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x70

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83e\uddc9"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x71

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83e\uddca"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x72

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83e\udd62"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x73

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83c\udf7d\ufe0f"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x74

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83c\udf74"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x75

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83e\udd44"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x76

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83d\udd2a"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x77

    aput-object v14, v2, v15

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v27, "\ud83c\udffa"

    aput-object v27, v15, v6

    invoke-direct {v14, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x78

    aput-object v14, v2, v15

    const-string v14, "emoji/Foods.png"

    const v15, 0x7f04020a

    invoke-direct {v1, v15, v2, v14}, Lorg/thoughtcrime/securesms/components/emoji/StaticEmojiPageModel;-><init>(I[Lorg/thoughtcrime/securesms/components/emoji/Emoji;Ljava/lang/String;)V

    sput-object v1, Lorg/thoughtcrime/securesms/components/emoji/EmojiPages;->PAGE_FOODS:Lorg/thoughtcrime/securesms/components/emoji/EmojiPageModel;

    .line 22
    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/StaticEmojiPageModel;

    const/16 v14, 0x4f

    new-array v14, v14, [Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-instance v15, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v13, v3, [Ljava/lang/String;

    const-string v28, "\ud83c\udf83"

    aput-object v28, v13, v6

    invoke-direct {v15, v13}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    aput-object v15, v14, v6

    new-instance v13, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v28, "\ud83c\udf84"

    aput-object v28, v15, v6

    invoke-direct {v13, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    aput-object v13, v14, v3

    new-instance v13, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v28, "\ud83c\udf86"

    aput-object v28, v15, v6

    invoke-direct {v13, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    aput-object v13, v14, v4

    new-instance v13, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v28, "\ud83c\udf87"

    aput-object v28, v15, v6

    invoke-direct {v13, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    aput-object v13, v14, v5

    new-instance v13, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v28, "\ud83e\udde8"

    aput-object v28, v15, v6

    invoke-direct {v13, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    aput-object v13, v14, v7

    new-instance v13, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v28, "\u2728"

    aput-object v28, v15, v6

    invoke-direct {v13, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    aput-object v13, v14, v8

    new-instance v13, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v28, "\ud83c\udf88"

    aput-object v28, v15, v6

    invoke-direct {v13, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    aput-object v13, v14, v9

    new-instance v13, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v28, "\ud83c\udf89"

    aput-object v28, v15, v6

    invoke-direct {v13, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    aput-object v13, v14, v10

    new-instance v13, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v28, "\ud83c\udf8a"

    aput-object v28, v15, v6

    invoke-direct {v13, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    aput-object v13, v14, v11

    new-instance v13, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v28, "\ud83c\udf8b"

    aput-object v28, v15, v6

    invoke-direct {v13, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    aput-object v13, v14, v12

    new-instance v13, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v28, "\ud83c\udf8d"

    aput-object v28, v15, v6

    invoke-direct {v13, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xa

    aput-object v13, v14, v15

    new-instance v13, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v28, "\ud83c\udf8e"

    aput-object v28, v15, v6

    invoke-direct {v13, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xb

    aput-object v13, v14, v15

    new-instance v13, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v28, "\ud83c\udf8f"

    aput-object v28, v15, v6

    invoke-direct {v13, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xc

    aput-object v13, v14, v15

    new-instance v13, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v28, "\ud83c\udf90"

    aput-object v28, v15, v6

    invoke-direct {v13, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xd

    aput-object v13, v14, v15

    new-instance v13, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v28, "\ud83c\udf91"

    aput-object v28, v15, v6

    invoke-direct {v13, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xe

    aput-object v13, v14, v15

    new-instance v13, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v28, "\ud83e\udde7"

    aput-object v28, v15, v6

    invoke-direct {v13, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xf

    aput-object v13, v14, v15

    new-instance v13, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v28, "\ud83c\udf80"

    aput-object v28, v15, v6

    invoke-direct {v13, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x10

    aput-object v13, v14, v15

    new-instance v13, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v28, "\ud83c\udf81"

    aput-object v28, v15, v6

    invoke-direct {v13, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x11

    aput-object v13, v14, v15

    new-instance v13, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v28, "\ud83c\udf97\ufe0f"

    aput-object v28, v15, v6

    invoke-direct {v13, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x12

    aput-object v13, v14, v15

    new-instance v13, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v28, "\ud83c\udf9f\ufe0f"

    aput-object v28, v15, v6

    invoke-direct {v13, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x13

    aput-object v13, v14, v15

    new-instance v13, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v28, "\ud83c\udfab"

    aput-object v28, v15, v6

    invoke-direct {v13, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x14

    aput-object v13, v14, v15

    new-instance v13, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v28, "\ud83c\udf96\ufe0f"

    aput-object v28, v15, v6

    invoke-direct {v13, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x15

    aput-object v13, v14, v15

    new-instance v13, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v28, "\ud83c\udfc6"

    aput-object v28, v15, v6

    invoke-direct {v13, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x16

    aput-object v13, v14, v15

    new-instance v13, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v28, "\ud83c\udfc5"

    aput-object v28, v15, v6

    invoke-direct {v13, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x17

    aput-object v13, v14, v15

    new-instance v13, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v28, "\ud83e\udd47"

    aput-object v28, v15, v6

    invoke-direct {v13, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x18

    aput-object v13, v14, v15

    new-instance v13, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v28, "\ud83e\udd48"

    aput-object v28, v15, v6

    invoke-direct {v13, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x19

    aput-object v13, v14, v15

    new-instance v13, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v28, "\ud83e\udd49"

    aput-object v28, v15, v6

    invoke-direct {v13, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x1a

    aput-object v13, v14, v15

    new-instance v13, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v28, "\u26bd"

    aput-object v28, v15, v6

    invoke-direct {v13, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x1b

    aput-object v13, v14, v15

    new-instance v13, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v28, "\u26be"

    aput-object v28, v15, v6

    invoke-direct {v13, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x1c

    aput-object v13, v14, v15

    new-instance v13, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v28, "\ud83e\udd4e"

    aput-object v28, v15, v6

    invoke-direct {v13, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x1d

    aput-object v13, v14, v15

    new-instance v13, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v28, "\ud83c\udfc0"

    aput-object v28, v15, v6

    invoke-direct {v13, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x1e

    aput-object v13, v14, v15

    new-instance v13, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v28, "\ud83c\udfd0"

    aput-object v28, v15, v6

    invoke-direct {v13, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x1f

    aput-object v13, v14, v15

    new-instance v13, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v28, "\ud83c\udfc8"

    aput-object v28, v15, v6

    invoke-direct {v13, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x20

    aput-object v13, v14, v15

    new-instance v13, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v28, "\ud83c\udfc9"

    aput-object v28, v15, v6

    invoke-direct {v13, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x21

    aput-object v13, v14, v15

    new-instance v13, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v28, "\ud83c\udfbe"

    aput-object v28, v15, v6

    invoke-direct {v13, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x22

    aput-object v13, v14, v15

    new-instance v13, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v28, "\ud83e\udd4f"

    aput-object v28, v15, v6

    invoke-direct {v13, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x23

    aput-object v13, v14, v15

    new-instance v13, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v28, "\ud83c\udfb3"

    aput-object v28, v15, v6

    invoke-direct {v13, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x24

    aput-object v13, v14, v15

    new-instance v13, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v28, "\ud83c\udfcf"

    aput-object v28, v15, v6

    invoke-direct {v13, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x25

    aput-object v13, v14, v15

    new-instance v13, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v28, "\ud83c\udfd1"

    aput-object v28, v15, v6

    invoke-direct {v13, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x26

    aput-object v13, v14, v15

    new-instance v13, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v28, "\ud83c\udfd2"

    aput-object v28, v15, v6

    invoke-direct {v13, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x27

    aput-object v13, v14, v15

    new-instance v13, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v28, "\ud83e\udd4d"

    aput-object v28, v15, v6

    invoke-direct {v13, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x28

    aput-object v13, v14, v15

    new-instance v13, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v28, "\ud83c\udfd3"

    aput-object v28, v15, v6

    invoke-direct {v13, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x29

    aput-object v13, v14, v15

    new-instance v13, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v28, "\ud83c\udff8"

    aput-object v28, v15, v6

    invoke-direct {v13, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x2a

    aput-object v13, v14, v15

    new-instance v13, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v28, "\ud83e\udd4a"

    aput-object v28, v15, v6

    invoke-direct {v13, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x2b

    aput-object v13, v14, v15

    new-instance v13, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v28, "\ud83e\udd4b"

    aput-object v28, v15, v6

    invoke-direct {v13, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x2c

    aput-object v13, v14, v15

    new-instance v13, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v28, "\ud83e\udd45"

    aput-object v28, v15, v6

    invoke-direct {v13, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x2d

    aput-object v13, v14, v15

    new-instance v13, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v28, "\u26f3"

    aput-object v28, v15, v6

    invoke-direct {v13, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x2e

    aput-object v13, v14, v15

    new-instance v13, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v28, "\u26f8\ufe0f"

    aput-object v28, v15, v6

    invoke-direct {v13, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x2f

    aput-object v13, v14, v15

    new-instance v13, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v28, "\ud83c\udfa3"

    aput-object v28, v15, v6

    invoke-direct {v13, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x30

    aput-object v13, v14, v15

    new-instance v13, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v28, "\ud83e\udd3f"

    aput-object v28, v15, v6

    invoke-direct {v13, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x31

    aput-object v13, v14, v15

    new-instance v13, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v28, "\ud83c\udfbd"

    aput-object v28, v15, v6

    invoke-direct {v13, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x32

    aput-object v13, v14, v15

    new-instance v13, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v28, "\ud83c\udfbf"

    aput-object v28, v15, v6

    invoke-direct {v13, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x33

    aput-object v13, v14, v15

    new-instance v13, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v28, "\ud83d\udef7"

    aput-object v28, v15, v6

    invoke-direct {v13, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x34

    aput-object v13, v14, v15

    new-instance v13, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v28, "\ud83e\udd4c"

    aput-object v28, v15, v6

    invoke-direct {v13, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x35

    aput-object v13, v14, v15

    new-instance v13, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v28, "\ud83c\udfaf"

    aput-object v28, v15, v6

    invoke-direct {v13, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x36

    aput-object v13, v14, v15

    new-instance v13, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v28, "\ud83e\ude80"

    aput-object v28, v15, v6

    invoke-direct {v13, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x37

    aput-object v13, v14, v15

    new-instance v13, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v28, "\ud83e\ude81"

    aput-object v28, v15, v6

    invoke-direct {v13, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x38

    aput-object v13, v14, v15

    new-instance v13, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v28, "\ud83c\udfb1"

    aput-object v28, v15, v6

    invoke-direct {v13, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x39

    aput-object v13, v14, v15

    new-instance v13, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v28, "\ud83d\udd2e"

    aput-object v28, v15, v6

    invoke-direct {v13, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x3a

    aput-object v13, v14, v15

    new-instance v13, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v28, "\ud83e\uddff"

    aput-object v28, v15, v6

    invoke-direct {v13, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x3b

    aput-object v13, v14, v15

    new-instance v13, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v28, "\ud83c\udfae"

    aput-object v28, v15, v6

    invoke-direct {v13, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x3c

    aput-object v13, v14, v15

    new-instance v13, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v28, "\ud83d\udd79\ufe0f"

    aput-object v28, v15, v6

    invoke-direct {v13, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x3d

    aput-object v13, v14, v15

    new-instance v13, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v28, "\ud83c\udfb0"

    aput-object v28, v15, v6

    invoke-direct {v13, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x3e

    aput-object v13, v14, v15

    new-instance v13, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v28, "\ud83c\udfb2"

    aput-object v28, v15, v6

    invoke-direct {v13, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x3f

    aput-object v13, v14, v15

    new-instance v13, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v28, "\ud83e\udde9"

    aput-object v28, v15, v6

    invoke-direct {v13, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x40

    aput-object v13, v14, v15

    new-instance v13, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v28, "\ud83e\uddf8"

    aput-object v28, v15, v6

    invoke-direct {v13, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x41

    aput-object v13, v14, v15

    new-instance v13, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v28, "\u2660\ufe0f"

    aput-object v28, v15, v6

    invoke-direct {v13, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x42

    aput-object v13, v14, v15

    new-instance v13, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v28, "\u2665\ufe0f"

    aput-object v28, v15, v6

    invoke-direct {v13, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x43

    aput-object v13, v14, v15

    new-instance v13, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v28, "\u2666\ufe0f"

    aput-object v28, v15, v6

    invoke-direct {v13, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x44

    aput-object v13, v14, v15

    new-instance v13, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v28, "\u2663\ufe0f"

    aput-object v28, v15, v6

    invoke-direct {v13, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x45

    aput-object v13, v14, v15

    new-instance v13, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v28, "\u265f\ufe0f"

    aput-object v28, v15, v6

    invoke-direct {v13, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x46

    aput-object v13, v14, v15

    new-instance v13, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v28, "\ud83c\udccf"

    aput-object v28, v15, v6

    invoke-direct {v13, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x47

    aput-object v13, v14, v15

    new-instance v13, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v28, "\ud83c\udc04"

    aput-object v28, v15, v6

    invoke-direct {v13, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x48

    aput-object v13, v14, v15

    new-instance v13, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v28, "\ud83c\udfb4"

    aput-object v28, v15, v6

    invoke-direct {v13, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x49

    aput-object v13, v14, v15

    new-instance v13, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v28, "\ud83c\udfad"

    aput-object v28, v15, v6

    invoke-direct {v13, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x4a

    aput-object v13, v14, v15

    new-instance v13, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v28, "\ud83d\uddbc\ufe0f"

    aput-object v28, v15, v6

    invoke-direct {v13, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x4b

    aput-object v13, v14, v15

    new-instance v13, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v28, "\ud83c\udfa8"

    aput-object v28, v15, v6

    invoke-direct {v13, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x4c

    aput-object v13, v14, v15

    new-instance v13, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v28, "\ud83e\uddf5"

    aput-object v28, v15, v6

    invoke-direct {v13, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x4d

    aput-object v13, v14, v15

    new-instance v13, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v28, "\ud83e\uddf6"

    aput-object v28, v15, v6

    invoke-direct {v13, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x4e

    aput-object v13, v14, v15

    const-string v13, "emoji/Activity.png"

    const v15, 0x7f040207

    invoke-direct {v2, v15, v14, v13}, Lorg/thoughtcrime/securesms/components/emoji/StaticEmojiPageModel;-><init>(I[Lorg/thoughtcrime/securesms/components/emoji/Emoji;Ljava/lang/String;)V

    sput-object v2, Lorg/thoughtcrime/securesms/components/emoji/EmojiPages;->PAGE_ACTIVITY:Lorg/thoughtcrime/securesms/components/emoji/EmojiPageModel;

    .line 26
    new-instance v13, Lorg/thoughtcrime/securesms/components/emoji/StaticEmojiPageModel;

    const/16 v14, 0x100

    new-array v14, v14, [Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-instance v15, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v12, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\udfc1"

    aput-object v29, v12, v6

    invoke-direct {v15, v12}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    aput-object v15, v14, v6

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83d\udea9"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    aput-object v12, v14, v3

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\udf8c"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    aput-object v12, v14, v4

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\udff4"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    aput-object v12, v14, v5

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\udff3\ufe0f"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    aput-object v12, v14, v7

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\udff3\ufe0f\u200d\ud83c\udf08"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    aput-object v12, v14, v8

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\udff4\u200d\u2620\ufe0f"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    aput-object v12, v14, v9

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\udde6\ud83c\udde8"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    aput-object v12, v14, v10

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\udde6\ud83c\udde9"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    aput-object v12, v14, v11

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\udde6\ud83c\uddea"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x9

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\udde6\ud83c\uddeb"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xa

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\udde6\ud83c\uddec"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xb

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\udde6\ud83c\uddee"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xc

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\udde6\ud83c\uddf1"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xd

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\udde6\ud83c\uddf2"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xe

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\udde6\ud83c\uddf4"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xf

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\udde6\ud83c\uddf6"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x10

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\udde6\ud83c\uddf7"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x11

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\udde6\ud83c\uddf8"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x12

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\udde6\ud83c\uddf9"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x13

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\udde6\ud83c\uddfa"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x14

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\udde6\ud83c\uddfc"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x15

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\udde6\ud83c\uddfd"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x16

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\udde6\ud83c\uddff"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x17

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\udde7\ud83c\udde6"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x18

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\udde7\ud83c\udde7"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x19

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\udde7\ud83c\udde9"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x1a

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\udde7\ud83c\uddea"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x1b

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\udde7\ud83c\uddeb"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x1c

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\udde7\ud83c\uddec"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x1d

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\udde7\ud83c\udded"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x1e

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\udde7\ud83c\uddee"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x1f

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\udde7\ud83c\uddef"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x20

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\udde7\ud83c\uddf1"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x21

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\udde7\ud83c\uddf2"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x22

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\udde7\ud83c\uddf3"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x23

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\udde7\ud83c\uddf4"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x24

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\udde7\ud83c\uddf6"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x25

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\udde7\ud83c\uddf7"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x26

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\udde7\ud83c\uddf8"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x27

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\udde7\ud83c\uddf9"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x28

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\udde7\ud83c\uddfb"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x29

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\udde7\ud83c\uddfc"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x2a

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\udde7\ud83c\uddfe"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x2b

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\udde7\ud83c\uddff"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x2c

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\udde8\ud83c\udde6"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x2d

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\udde8\ud83c\udde8"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x2e

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\udde8\ud83c\udde9"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x2f

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\udde8\ud83c\uddeb"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x30

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\udde8\ud83c\uddec"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x31

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\udde8\ud83c\udded"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x32

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\udde8\ud83c\uddee"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x33

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\udde8\ud83c\uddf0"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x34

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\udde8\ud83c\uddf1"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x35

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\udde8\ud83c\uddf2"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x36

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\udde8\ud83c\uddf3"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x37

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\udde8\ud83c\uddf4"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x38

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\udde8\ud83c\uddf5"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x39

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\udde8\ud83c\uddf7"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x3a

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\udde8\ud83c\uddfa"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x3b

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\udde8\ud83c\uddfb"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x3c

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\udde8\ud83c\uddfc"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x3d

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\udde8\ud83c\uddfd"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x3e

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\udde8\ud83c\uddfe"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x3f

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\udde8\ud83c\uddff"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x40

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\udde9\ud83c\uddea"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x41

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\udde9\ud83c\uddec"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x42

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\udde9\ud83c\uddef"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x43

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\udde9\ud83c\uddf0"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x44

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\udde9\ud83c\uddf2"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x45

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\udde9\ud83c\uddf4"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x46

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\udde9\ud83c\uddff"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x47

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddea\ud83c\udde6"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x48

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddea\ud83c\udde8"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x49

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddea\ud83c\uddea"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x4a

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddea\ud83c\uddec"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x4b

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddea\ud83c\udded"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x4c

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddea\ud83c\uddf7"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x4d

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddea\ud83c\uddf8"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x4e

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddea\ud83c\uddf9"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x4f

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddea\ud83c\uddfa"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x50

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddeb\ud83c\uddee"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x51

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddeb\ud83c\uddef"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x52

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddeb\ud83c\uddf0"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x53

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddeb\ud83c\uddf2"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x54

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddeb\ud83c\uddf4"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x55

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddeb\ud83c\uddf7"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x56

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddec\ud83c\udde6"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x57

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddec\ud83c\udde7"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x58

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddec\ud83c\udde9"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x59

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddec\ud83c\uddea"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x5a

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddec\ud83c\uddeb"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x5b

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddec\ud83c\uddec"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x5c

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddec\ud83c\udded"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x5d

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddec\ud83c\uddee"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x5e

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddec\ud83c\uddf1"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x5f

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddec\ud83c\uddf2"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x60

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddec\ud83c\uddf3"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x61

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddec\ud83c\uddf5"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x62

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddec\ud83c\uddf6"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x63

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddec\ud83c\uddf7"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x64

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddec\ud83c\uddf8"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x65

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddec\ud83c\uddf9"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x66

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddec\ud83c\uddfa"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x67

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddec\ud83c\uddfc"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x68

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddec\ud83c\uddfe"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x69

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\udded\ud83c\uddf0"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x6a

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\udded\ud83c\uddf2"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x6b

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\udded\ud83c\uddf3"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x6c

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\udded\ud83c\uddf7"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x6d

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\udded\ud83c\uddf9"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x6e

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\udded\ud83c\uddfa"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x6f

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddee\ud83c\udde8"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x70

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddee\ud83c\udde9"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x71

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddee\ud83c\uddea"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x72

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddee\ud83c\uddf1"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x73

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddee\ud83c\uddf2"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x74

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddee\ud83c\uddf3"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x75

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddee\ud83c\uddf4"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x76

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddee\ud83c\uddf6"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x77

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddee\ud83c\uddf7"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x78

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddee\ud83c\uddf8"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x79

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddee\ud83c\uddf9"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x7a

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddef\ud83c\uddea"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x7b

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddef\ud83c\uddf2"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x7c

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddef\ud83c\uddf4"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x7d

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddef\ud83c\uddf5"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x7e

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf0\ud83c\uddea"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x7f

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf0\ud83c\uddec"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x80

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf0\ud83c\udded"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x81

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf0\ud83c\uddee"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x82

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf0\ud83c\uddf2"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x83

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf0\ud83c\uddf3"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x84

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf0\ud83c\uddf5"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x85

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf0\ud83c\uddf7"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x86

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf0\ud83c\uddfc"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x87

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf0\ud83c\uddfe"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x88

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf0\ud83c\uddff"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x89

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf1\ud83c\udde6"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x8a

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf1\ud83c\udde7"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x8b

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf1\ud83c\udde8"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x8c

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf1\ud83c\uddee"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x8d

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf1\ud83c\uddf0"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x8e

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf1\ud83c\uddf7"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x8f

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf1\ud83c\uddf8"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x90

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf1\ud83c\uddf9"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x91

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf1\ud83c\uddfa"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x92

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf1\ud83c\uddfb"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x93

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf1\ud83c\uddfe"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x94

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf2\ud83c\udde6"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x95

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf2\ud83c\udde8"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x96

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf2\ud83c\udde9"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x97

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf2\ud83c\uddea"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x98

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf2\ud83c\uddeb"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x99

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf2\ud83c\uddec"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x9a

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf2\ud83c\udded"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x9b

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf2\ud83c\uddf0"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x9c

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf2\ud83c\uddf1"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x9d

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf2\ud83c\uddf2"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x9e

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf2\ud83c\uddf3"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x9f

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf2\ud83c\uddf4"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xa0

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf2\ud83c\uddf5"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xa1

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf2\ud83c\uddf6"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xa2

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf2\ud83c\uddf7"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xa3

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf2\ud83c\uddf8"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xa4

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf2\ud83c\uddf9"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xa5

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf2\ud83c\uddfa"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xa6

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf2\ud83c\uddfb"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xa7

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf2\ud83c\uddfc"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xa8

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf2\ud83c\uddfd"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xa9

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf2\ud83c\uddfe"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xaa

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf2\ud83c\uddff"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xab

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf3\ud83c\udde6"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xac

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf3\ud83c\udde8"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xad

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf3\ud83c\uddea"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xae

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf3\ud83c\uddeb"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xaf

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf3\ud83c\uddec"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xb0

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf3\ud83c\uddee"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xb1

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf3\ud83c\uddf1"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xb2

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf3\ud83c\uddf4"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xb3

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf3\ud83c\uddf5"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xb4

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf3\ud83c\uddf7"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xb5

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf3\ud83c\uddfa"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xb6

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf3\ud83c\uddff"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xb7

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf4\ud83c\uddf2"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xb8

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf5\ud83c\udde6"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xb9

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf5\ud83c\uddea"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xba

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf5\ud83c\uddeb"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xbb

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf5\ud83c\uddec"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xbc

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf5\ud83c\udded"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xbd

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf5\ud83c\uddf0"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xbe

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf5\ud83c\uddf1"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xbf

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf5\ud83c\uddf2"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xc0

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf5\ud83c\uddf3"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xc1

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf5\ud83c\uddf7"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xc2

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf5\ud83c\uddf8"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xc3

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf5\ud83c\uddf9"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xc4

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf5\ud83c\uddfc"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xc5

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf5\ud83c\uddfe"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xc6

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf6\ud83c\udde6"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xc7

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf7\ud83c\uddea"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xc8

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf7\ud83c\uddf4"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xc9

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf7\ud83c\uddf8"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xca

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf7\ud83c\uddfa"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xcb

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf7\ud83c\uddfc"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xcc

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf8\ud83c\udde6"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xcd

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf8\ud83c\udde7"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xce

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf8\ud83c\udde8"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xcf

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf8\ud83c\udde9"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xd0

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf8\ud83c\uddea"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xd1

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf8\ud83c\uddec"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xd2

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf8\ud83c\udded"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xd3

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf8\ud83c\uddee"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xd4

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf8\ud83c\uddef"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xd5

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf8\ud83c\uddf0"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xd6

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf8\ud83c\uddf1"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xd7

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf8\ud83c\uddf2"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xd8

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf8\ud83c\uddf3"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xd9

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf8\ud83c\uddf4"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xda

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf8\ud83c\uddf7"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xdb

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf8\ud83c\uddf8"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xdc

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf8\ud83c\uddf9"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xdd

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf8\ud83c\uddfb"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xde

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf8\ud83c\uddfd"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xdf

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf8\ud83c\uddfe"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xe0

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf8\ud83c\uddff"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xe1

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf9\ud83c\udde6"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xe2

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf9\ud83c\udde8"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xe3

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf9\ud83c\udde9"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xe4

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf9\ud83c\uddeb"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xe5

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf9\ud83c\uddec"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xe6

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf9\ud83c\udded"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xe7

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf9\ud83c\uddef"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xe8

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf9\ud83c\uddf0"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xe9

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf9\ud83c\uddf1"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xea

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf9\ud83c\uddf2"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xeb

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf9\ud83c\uddf3"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xec

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf9\ud83c\uddf4"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xed

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf9\ud83c\uddf7"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xee

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf9\ud83c\uddf9"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xef

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf9\ud83c\uddfb"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xf0

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf9\ud83c\uddfc"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xf1

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddf9\ud83c\uddff"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xf2

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddfa\ud83c\udde6"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xf3

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddfa\ud83c\uddec"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xf4

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddfa\ud83c\uddf2"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xf5

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddfa\ud83c\uddf3"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xf6

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddfa\ud83c\uddf8"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xf7

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddfa\ud83c\uddfe"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xf8

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddfa\ud83c\uddff"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xf9

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddfb\ud83c\udde6"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xfa

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddfb\ud83c\udde8"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xfb

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddfb\ud83c\uddea"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xfc

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddfb\ud83c\uddec"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xfd

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddfb\ud83c\uddee"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xfe

    aput-object v12, v14, v15

    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v29, "\ud83c\uddfb\ud83c\uddf3"

    aput-object v29, v15, v6

    invoke-direct {v12, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xff

    aput-object v12, v14, v15

    const-string v12, "emoji/Flags_0.png"

    const v15, 0x7f040209

    invoke-direct {v13, v15, v14, v12}, Lorg/thoughtcrime/securesms/components/emoji/StaticEmojiPageModel;-><init>(I[Lorg/thoughtcrime/securesms/components/emoji/Emoji;Ljava/lang/String;)V

    sput-object v13, Lorg/thoughtcrime/securesms/components/emoji/EmojiPages;->PAGE_FLAGS_0:Lorg/thoughtcrime/securesms/components/emoji/EmojiPageModel;

    .line 30
    new-instance v12, Lorg/thoughtcrime/securesms/components/emoji/StaticEmojiPageModel;

    const/16 v14, 0xc

    new-array v15, v14, [Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v11, v3, [Ljava/lang/String;

    const-string v30, "\ud83c\uddfb\ud83c\uddfa"

    aput-object v30, v11, v6

    invoke-direct {v14, v11}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    aput-object v14, v15, v6

    new-instance v11, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v3, [Ljava/lang/String;

    const-string v30, "\ud83c\uddfc\ud83c\uddeb"

    aput-object v30, v14, v6

    invoke-direct {v11, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    aput-object v11, v15, v3

    new-instance v11, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v3, [Ljava/lang/String;

    const-string v30, "\ud83c\uddfc\ud83c\uddf8"

    aput-object v30, v14, v6

    invoke-direct {v11, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    aput-object v11, v15, v4

    new-instance v11, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v3, [Ljava/lang/String;

    const-string v30, "\ud83c\uddfd\ud83c\uddf0"

    aput-object v30, v14, v6

    invoke-direct {v11, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    aput-object v11, v15, v5

    new-instance v11, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v3, [Ljava/lang/String;

    const-string v30, "\ud83c\uddfe\ud83c\uddea"

    aput-object v30, v14, v6

    invoke-direct {v11, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    aput-object v11, v15, v7

    new-instance v11, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v3, [Ljava/lang/String;

    const-string v30, "\ud83c\uddfe\ud83c\uddf9"

    aput-object v30, v14, v6

    invoke-direct {v11, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    aput-object v11, v15, v8

    new-instance v11, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v3, [Ljava/lang/String;

    const-string v30, "\ud83c\uddff\ud83c\udde6"

    aput-object v30, v14, v6

    invoke-direct {v11, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    aput-object v11, v15, v9

    new-instance v11, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v3, [Ljava/lang/String;

    const-string v30, "\ud83c\uddff\ud83c\uddf2"

    aput-object v30, v14, v6

    invoke-direct {v11, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    aput-object v11, v15, v10

    new-instance v11, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v3, [Ljava/lang/String;

    const-string v30, "\ud83c\uddff\ud83c\uddfc"

    aput-object v30, v14, v6

    invoke-direct {v11, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x8

    aput-object v11, v15, v14

    new-instance v11, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v3, [Ljava/lang/String;

    const-string v30, "\ud83c\udff4\udb40\udc67\udb40\udc62\udb40\udc65\udb40\udc6e\udb40\udc67\udb40\udc7f"

    aput-object v30, v14, v6

    invoke-direct {v11, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x9

    aput-object v11, v15, v14

    new-instance v11, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v3, [Ljava/lang/String;

    const-string v30, "\ud83c\udff4\udb40\udc67\udb40\udc62\udb40\udc73\udb40\udc63\udb40\udc74\udb40\udc7f"

    aput-object v30, v14, v6

    invoke-direct {v11, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xa

    aput-object v11, v15, v14

    new-instance v11, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v3, [Ljava/lang/String;

    const-string v30, "\ud83c\udff4\udb40\udc67\udb40\udc62\udb40\udc77\udb40\udc6c\udb40\udc73\udb40\udc7f"

    aput-object v30, v14, v6

    invoke-direct {v11, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xb

    aput-object v11, v15, v14

    const-string v11, "emoji/Flags_1.png"

    const v14, 0x7f040209

    invoke-direct {v12, v14, v15, v11}, Lorg/thoughtcrime/securesms/components/emoji/StaticEmojiPageModel;-><init>(I[Lorg/thoughtcrime/securesms/components/emoji/Emoji;Ljava/lang/String;)V

    sput-object v12, Lorg/thoughtcrime/securesms/components/emoji/EmojiPages;->PAGE_FLAGS_1:Lorg/thoughtcrime/securesms/components/emoji/EmojiPageModel;

    .line 34
    new-instance v11, Lorg/thoughtcrime/securesms/components/emoji/StaticEmojiPageModel;

    const/16 v14, 0xd6

    new-array v14, v14, [Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-instance v15, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v10, v3, [Ljava/lang/String;

    const-string v31, "\ud83c\udfe7"

    aput-object v31, v10, v6

    invoke-direct {v15, v10}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    aput-object v15, v14, v6

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83d\udeae"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    aput-object v10, v14, v3

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83d\udeb0"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    aput-object v10, v14, v4

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\u267f"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    aput-object v10, v14, v5

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83d\udeb9"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    aput-object v10, v14, v7

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83d\udeba"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    aput-object v10, v14, v8

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83d\udebb"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    aput-object v10, v14, v9

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83d\udebc"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/4 v15, 0x7

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83d\udebe"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x8

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83d\udec2"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x9

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83d\udec3"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xa

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83d\udec4"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xb

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83d\udec5"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xc

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\u26a0\ufe0f"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xd

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83d\udeb8"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xe

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\u26d4"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xf

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83d\udeab"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x10

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83d\udeb3"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x11

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83d\udead"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x12

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83d\udeaf"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x13

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83d\udeb1"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x14

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83d\udeb7"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x15

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83d\udcf5"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x16

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83d\udd1e"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x17

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\u2622\ufe0f"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x18

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\u2623\ufe0f"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x19

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\u2b06\ufe0f"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x1a

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\u2197\ufe0f"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x1b

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\u27a1\ufe0f"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x1c

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\u2198\ufe0f"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x1d

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\u2b07\ufe0f"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x1e

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\u2199\ufe0f"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x1f

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\u2b05\ufe0f"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x20

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\u2196\ufe0f"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x21

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\u2195\ufe0f"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x22

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\u2194\ufe0f"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x23

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\u21a9\ufe0f"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x24

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\u21aa\ufe0f"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x25

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\u2934\ufe0f"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x26

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\u2935\ufe0f"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x27

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83d\udd03"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x28

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83d\udd04"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x29

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83d\udd19"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x2a

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83d\udd1a"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x2b

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83d\udd1b"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x2c

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83d\udd1c"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x2d

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83d\udd1d"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x2e

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83d\uded0"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x2f

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\u269b\ufe0f"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x30

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83d\udd49\ufe0f"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x31

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\u2721\ufe0f"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x32

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\u2638\ufe0f"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x33

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\u262f\ufe0f"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x34

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\u271d\ufe0f"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x35

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\u2626\ufe0f"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x36

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\u262a\ufe0f"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x37

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\u262e\ufe0f"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x38

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83d\udd4e"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x39

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83d\udd2f"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x3a

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\u2648"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x3b

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\u2649"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x3c

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\u264a"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x3d

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\u264b"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x3e

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\u264c"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x3f

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\u264d"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x40

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\u264e"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x41

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\u264f"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x42

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\u2650"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x43

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\u2651"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x44

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\u2652"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x45

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\u2653"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x46

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\u26ce"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x47

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83d\udd00"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x48

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83d\udd01"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x49

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83d\udd02"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x4a

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\u25b6\ufe0f"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x4b

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\u23e9"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x4c

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\u23ed\ufe0f"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x4d

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\u23ef\ufe0f"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x4e

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\u25c0\ufe0f"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x4f

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\u23ea"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x50

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\u23ee\ufe0f"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x51

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83d\udd3c"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x52

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\u23eb"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x53

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83d\udd3d"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x54

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\u23ec"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x55

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\u23f8\ufe0f"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x56

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\u23f9\ufe0f"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x57

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\u23fa\ufe0f"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x58

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\u23cf\ufe0f"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x59

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83c\udfa6"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x5a

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83d\udd05"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x5b

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83d\udd06"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x5c

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83d\udcf6"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x5d

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83d\udcf3"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x5e

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83d\udcf4"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x5f

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\u267e\ufe0f"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x60

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\u267b\ufe0f"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x61

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\u269c\ufe0f"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x62

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83d\udd31"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x63

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83d\udcdb"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x64

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83d\udd30"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x65

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\u2b55"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x66

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\u2705"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x67

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\u2611\ufe0f"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x68

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\u2714\ufe0f"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x69

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\u2716\ufe0f"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x6a

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\u274c"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x6b

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\u274e"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x6c

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\u2795"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x6d

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\u2796"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x6e

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\u2797"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x6f

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\u27b0"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x70

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\u27bf"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x71

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\u303d\ufe0f"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x72

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\u2733\ufe0f"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x73

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\u2734\ufe0f"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x74

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\u2747\ufe0f"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x75

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\u203c\ufe0f"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x76

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\u2049\ufe0f"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x77

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\u2753"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x78

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\u2754"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x79

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\u2755"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x7a

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\u2757"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x7b

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\u3030\ufe0f"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x7c

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\u00a9\ufe0f"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x7d

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\u00ae\ufe0f"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x7e

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\u2122\ufe0f"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x7f

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "#\ufe0f\u20e3"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x80

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "*\ufe0f\u20e3"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x81

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "0\ufe0f\u20e3"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x82

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "1\ufe0f\u20e3"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x83

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "2\ufe0f\u20e3"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x84

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "3\ufe0f\u20e3"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x85

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "4\ufe0f\u20e3"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x86

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "5\ufe0f\u20e3"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x87

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "6\ufe0f\u20e3"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x88

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "7\ufe0f\u20e3"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x89

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "8\ufe0f\u20e3"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x8a

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "9\ufe0f\u20e3"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x8b

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83d\udd1f"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x8c

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83d\udd20"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x8d

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83d\udd21"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x8e

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83d\udd22"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x8f

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83d\udd23"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x90

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83d\udd24"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x91

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83c\udd70\ufe0f"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x92

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83c\udd8e"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x93

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83c\udd71\ufe0f"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x94

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83c\udd91"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x95

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83c\udd92"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x96

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83c\udd93"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x97

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\u2139\ufe0f"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x98

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83c\udd94"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x99

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\u24c2\ufe0f"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x9a

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83c\udd95"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x9b

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83c\udd96"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x9c

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83c\udd7e\ufe0f"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x9d

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83c\udd97"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x9e

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83c\udd7f\ufe0f"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x9f

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83c\udd98"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xa0

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83c\udd99"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xa1

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83c\udd9a"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xa2

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83c\ude01"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xa3

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83c\ude02\ufe0f"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xa4

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83c\ude37\ufe0f"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xa5

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83c\ude36"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xa6

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83c\ude2f"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xa7

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83c\ude50"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xa8

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83c\ude39"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xa9

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83c\ude1a"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xaa

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83c\ude32"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xab

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83c\ude51"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xac

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83c\ude38"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xad

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83c\ude34"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xae

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83c\ude33"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xaf

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\u3297\ufe0f"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xb0

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\u3299\ufe0f"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xb1

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83c\ude3a"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xb2

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83c\ude35"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xb3

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83d\udd34"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xb4

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83d\udfe0"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xb5

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83d\udfe1"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xb6

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83d\udfe2"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xb7

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83d\udd35"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xb8

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83d\udfe3"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xb9

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83d\udfe4"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xba

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\u26ab"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xbb

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\u26aa"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xbc

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83d\udfe5"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xbd

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83d\udfe7"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xbe

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83d\udfe8"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xbf

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83d\udfe9"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xc0

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83d\udfe6"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xc1

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83d\udfea"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xc2

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83d\udfeb"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xc3

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\u2b1b"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xc4

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\u2b1c"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xc5

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\u25fc\ufe0f"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xc6

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\u25fb\ufe0f"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xc7

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\u25fe"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xc8

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\u25fd"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xc9

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\u25aa\ufe0f"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xca

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\u25ab\ufe0f"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xcb

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83d\udd36"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xcc

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83d\udd37"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xcd

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83d\udd38"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xce

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83d\udd39"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xcf

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83d\udd3a"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xd0

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83d\udd3b"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xd1

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83d\udca0"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xd2

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83d\udd18"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xd3

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83d\udd33"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xd4

    aput-object v10, v14, v15

    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v31, "\ud83d\udd32"

    aput-object v31, v15, v6

    invoke-direct {v10, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xd5

    aput-object v10, v14, v15

    const-string v10, "emoji/Symbols.png"

    const v15, 0x7f040210

    invoke-direct {v11, v15, v14, v10}, Lorg/thoughtcrime/securesms/components/emoji/StaticEmojiPageModel;-><init>(I[Lorg/thoughtcrime/securesms/components/emoji/Emoji;Ljava/lang/String;)V

    sput-object v11, Lorg/thoughtcrime/securesms/components/emoji/EmojiPages;->PAGE_SYMBOLS:Lorg/thoughtcrime/securesms/components/emoji/EmojiPageModel;

    .line 38
    new-instance v10, Lorg/thoughtcrime/securesms/components/emoji/StaticEmojiPageModel;

    const/16 v14, 0x7f

    new-array v14, v14, [Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-instance v15, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v9, v3, [Ljava/lang/String;

    const-string v32, "\ud83d\udc35"

    aput-object v32, v9, v6

    invoke-direct {v15, v9}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    aput-object v15, v14, v6

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83d\udc12"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    aput-object v9, v14, v3

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83e\udd8d"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    aput-object v9, v14, v4

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83e\udda7"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    aput-object v9, v14, v5

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83d\udc36"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    aput-object v9, v14, v7

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83d\udc15"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    aput-object v9, v14, v8

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83e\uddae"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/4 v15, 0x6

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83d\udc15\u200d\ud83e\uddba"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/4 v15, 0x7

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83d\udc29"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x8

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83d\udc3a"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x9

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83e\udd8a"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xa

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83e\udd9d"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xb

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83d\udc31"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xc

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83d\udc08"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xd

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83e\udd81"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xe

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83d\udc2f"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xf

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83d\udc05"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x10

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83d\udc06"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x11

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83d\udc34"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x12

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83d\udc0e"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x13

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83e\udd84"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x14

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83e\udd93"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x15

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83e\udd8c"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x16

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83d\udc2e"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x17

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83d\udc02"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x18

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83d\udc03"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x19

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83d\udc04"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x1a

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83d\udc37"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x1b

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83d\udc16"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x1c

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83d\udc17"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x1d

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83d\udc3d"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x1e

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83d\udc0f"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x1f

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83d\udc11"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x20

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83d\udc10"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x21

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83d\udc2a"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x22

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83d\udc2b"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x23

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83e\udd99"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x24

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83e\udd92"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x25

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83d\udc18"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x26

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83e\udd8f"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x27

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83e\udd9b"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x28

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83d\udc2d"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x29

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83d\udc01"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x2a

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83d\udc00"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x2b

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83d\udc39"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x2c

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83d\udc30"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x2d

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83d\udc07"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x2e

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83d\udc3f\ufe0f"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x2f

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83e\udd94"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x30

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83e\udd87"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x31

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83d\udc3b"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x32

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83d\udc28"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x33

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83d\udc3c"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x34

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83e\udda5"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x35

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83e\udda6"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x36

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83e\udda8"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x37

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83e\udd98"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x38

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83e\udda1"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x39

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83d\udc3e"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x3a

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83e\udd83"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x3b

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83d\udc14"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x3c

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83d\udc13"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x3d

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83d\udc23"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x3e

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83d\udc24"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x3f

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83d\udc25"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x40

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83d\udc26"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x41

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83d\udc27"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x42

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83d\udd4a\ufe0f"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x43

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83e\udd85"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x44

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83e\udd86"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x45

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83e\udda2"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x46

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83e\udd89"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x47

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83e\udda9"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x48

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83e\udd9a"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x49

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83e\udd9c"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x4a

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83d\udc38"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x4b

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83d\udc0a"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x4c

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83d\udc22"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x4d

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83e\udd8e"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x4e

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83d\udc0d"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x4f

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83d\udc32"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x50

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83d\udc09"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x51

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83e\udd95"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x52

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83e\udd96"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x53

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83d\udc33"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x54

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83d\udc0b"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x55

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83d\udc2c"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x56

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83d\udc1f"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x57

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83d\udc20"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x58

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83d\udc21"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x59

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83e\udd88"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x5a

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83d\udc19"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x5b

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83d\udc1a"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x5c

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83d\udc0c"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x5d

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83e\udd8b"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x5e

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83d\udc1b"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x5f

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83d\udc1c"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x60

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83d\udc1d"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x61

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83d\udc1e"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x62

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83e\udd97"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x63

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83d\udd77\ufe0f"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x64

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83d\udd78\ufe0f"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x65

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83e\udd82"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x66

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83e\udd9f"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x67

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83e\udda0"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x68

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83d\udc90"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x69

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83c\udf38"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x6a

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83d\udcae"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x6b

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83c\udff5\ufe0f"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x6c

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83c\udf39"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x6d

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83e\udd40"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x6e

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83c\udf3a"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x6f

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83c\udf3b"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x70

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83c\udf3c"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x71

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83c\udf37"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x72

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83c\udf31"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x73

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83c\udf32"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x74

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83c\udf33"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x75

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83c\udf34"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x76

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83c\udf35"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x77

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83c\udf3e"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x78

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83c\udf3f"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x79

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\u2618\ufe0f"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x7a

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83c\udf40"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x7b

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83c\udf41"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x7c

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83c\udf42"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x7d

    aput-object v9, v14, v15

    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v32, "\ud83c\udf43"

    aput-object v32, v15, v6

    invoke-direct {v9, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x7e

    aput-object v9, v14, v15

    const-string v9, "emoji/Nature.png"

    const v15, 0x7f04020b

    invoke-direct {v10, v15, v14, v9}, Lorg/thoughtcrime/securesms/components/emoji/StaticEmojiPageModel;-><init>(I[Lorg/thoughtcrime/securesms/components/emoji/Emoji;Ljava/lang/String;)V

    sput-object v10, Lorg/thoughtcrime/securesms/components/emoji/EmojiPages;->PAGE_NATURE:Lorg/thoughtcrime/securesms/components/emoji/EmojiPageModel;

    .line 42
    new-instance v9, Lorg/thoughtcrime/securesms/components/emoji/StaticEmojiPageModel;

    const/16 v14, 0xa6

    new-array v14, v14, [Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-instance v15, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v8, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\ude00"

    aput-object v33, v8, v6

    invoke-direct {v15, v8}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    aput-object v15, v14, v6

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\ude03"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    aput-object v8, v14, v3

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\ude04"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    aput-object v8, v14, v4

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\ude01"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    aput-object v8, v14, v5

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\ude06"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    aput-object v8, v14, v7

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\ude05"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/4 v15, 0x5

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83e\udd23"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/4 v15, 0x6

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\ude02"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/4 v15, 0x7

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\ude42"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x8

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\ude43"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x9

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\ude09"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xa

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\ude0a"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xb

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\ude07"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xc

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83e\udd70"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xd

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\ude0d"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xe

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83e\udd29"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xf

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\ude18"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x10

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\ude17"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x11

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\u263a\ufe0f"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x12

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\ude1a"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x13

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\ude19"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x14

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\ude0b"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x15

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\ude1b"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x16

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\ude1c"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x17

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83e\udd2a"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x18

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\ude1d"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x19

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83e\udd11"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x1a

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83e\udd17"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x1b

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83e\udd2d"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x1c

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83e\udd2b"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x1d

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83e\udd14"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x1e

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83e\udd10"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x1f

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83e\udd28"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x20

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\ude10"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x21

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\ude11"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x22

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\ude36"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x23

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\ude0f"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x24

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\ude12"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x25

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\ude44"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x26

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\ude2c"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x27

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83e\udd25"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x28

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\ude0c"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x29

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\ude14"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x2a

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\ude2a"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x2b

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83e\udd24"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x2c

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\ude34"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x2d

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\ude37"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x2e

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83e\udd12"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x2f

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83e\udd15"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x30

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83e\udd22"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x31

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83e\udd2e"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x32

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83e\udd27"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x33

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83e\udd75"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x34

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83e\udd76"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x35

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83e\udd74"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x36

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\ude35"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x37

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83e\udd2f"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x38

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83e\udd20"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x39

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83e\udd73"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x3a

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\ude0e"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x3b

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83e\udd13"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x3c

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83e\uddd0"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x3d

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\ude15"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x3e

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\ude1f"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x3f

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\ude41"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x40

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\u2639\ufe0f"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x41

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\ude2e"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x42

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\ude2f"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x43

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\ude32"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x44

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\ude33"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x45

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83e\udd7a"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x46

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\ude26"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x47

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\ude27"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x48

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\ude28"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x49

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\ude30"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x4a

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\ude25"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x4b

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\ude22"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x4c

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\ude2d"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x4d

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\ude31"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x4e

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\ude16"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x4f

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\ude23"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x50

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\ude1e"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x51

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\ude13"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x52

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\ude29"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x53

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\ude2b"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x54

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83e\udd71"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x55

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\ude24"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x56

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\ude21"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x57

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\ude20"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x58

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83e\udd2c"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x59

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\ude08"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x5a

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\udc7f"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x5b

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\udc80"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x5c

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\u2620\ufe0f"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x5d

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\udca9"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x5e

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83e\udd21"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x5f

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\udc79"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x60

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\udc7a"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x61

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\udc7b"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x62

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\udc7d"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x63

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\udc7e"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x64

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83e\udd16"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x65

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\ude3a"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x66

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\ude38"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x67

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\ude39"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x68

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\ude3b"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x69

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\ude3c"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x6a

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\ude3d"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x6b

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\ude40"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x6c

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\ude3f"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x6d

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\ude3e"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x6e

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\ude48"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x6f

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\ude49"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x70

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\ude4a"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x71

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\udc8b"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x72

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\udc8c"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x73

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\udc98"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x74

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\udc9d"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x75

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\udc96"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x76

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\udc97"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x77

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\udc93"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x78

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\udc9e"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x79

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\udc95"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x7a

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\udc9f"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x7b

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\u2763\ufe0f"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x7c

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\udc94"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x7d

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\u2764\ufe0f"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x7e

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83e\udde1"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x7f

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\udc9b"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x80

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\udc9a"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x81

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\udc99"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x82

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\udc9c"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x83

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83e\udd0e"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x84

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\udda4"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x85

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83e\udd0d"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x86

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\udcaf"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x87

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\udca2"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x88

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\udca5"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x89

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\udcab"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x8a

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\udca6"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x8b

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\udca8"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x8c

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\udd73\ufe0f"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x8d

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\udca3"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x8e

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\udcac"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x8f

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\udc41\ufe0f\u200d\ud83d\udde8\ufe0f"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x90

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\udde8\ufe0f"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x91

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\uddef\ufe0f"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x92

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\udcad"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x93

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v3, [Ljava/lang/String;

    const-string v33, "\ud83d\udca4"

    aput-object v33, v15, v6

    invoke-direct {v8, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x94

    aput-object v8, v14, v15

    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v15, 0x6

    new-array v7, v15, [Ljava/lang/String;

    const-string v15, "\ud83d\udc4b"

    aput-object v15, v7, v6

    const-string v15, "\ud83d\udc4b\ud83c\udffb"

    aput-object v15, v7, v3

    const-string v15, "\ud83d\udc4b\ud83c\udffc"

    aput-object v15, v7, v4

    const-string v15, "\ud83d\udc4b\ud83c\udffd"

    aput-object v15, v7, v5

    const-string v15, "\ud83d\udc4b\ud83c\udffe"

    const/16 v33, 0x4

    aput-object v15, v7, v33

    const-string v15, "\ud83d\udc4b\ud83c\udfff"

    const/16 v32, 0x5

    aput-object v15, v7, v32

    invoke-direct {v8, v7}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v7, 0x95

    aput-object v8, v14, v7

    new-instance v7, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v8, 0x6

    new-array v15, v8, [Ljava/lang/String;

    const-string v8, "\ud83e\udd1a"

    aput-object v8, v15, v6

    const-string v8, "\ud83e\udd1a\ud83c\udffb"

    aput-object v8, v15, v3

    const-string v8, "\ud83e\udd1a\ud83c\udffc"

    aput-object v8, v15, v4

    const-string v8, "\ud83e\udd1a\ud83c\udffd"

    aput-object v8, v15, v5

    const-string v8, "\ud83e\udd1a\ud83c\udffe"

    const/16 v33, 0x4

    aput-object v8, v15, v33

    const-string v8, "\ud83e\udd1a\ud83c\udfff"

    const/16 v32, 0x5

    aput-object v8, v15, v32

    invoke-direct {v7, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v8, 0x96

    aput-object v7, v14, v8

    new-instance v7, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v8, 0x6

    new-array v15, v8, [Ljava/lang/String;

    const-string v8, "\ud83d\udd90\ufe0f"

    aput-object v8, v15, v6

    const-string v8, "\ud83d\udd90\ud83c\udffb"

    aput-object v8, v15, v3

    const-string v8, "\ud83d\udd90\ud83c\udffc"

    aput-object v8, v15, v4

    const-string v8, "\ud83d\udd90\ud83c\udffd"

    aput-object v8, v15, v5

    const-string v8, "\ud83d\udd90\ud83c\udffe"

    const/16 v33, 0x4

    aput-object v8, v15, v33

    const-string v8, "\ud83d\udd90\ud83c\udfff"

    const/16 v32, 0x5

    aput-object v8, v15, v32

    invoke-direct {v7, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v8, 0x97

    aput-object v7, v14, v8

    new-instance v7, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v8, 0x6

    new-array v15, v8, [Ljava/lang/String;

    const-string v8, "\u270b"

    aput-object v8, v15, v6

    const-string v8, "\u270b\ud83c\udffb"

    aput-object v8, v15, v3

    const-string v8, "\u270b\ud83c\udffc"

    aput-object v8, v15, v4

    const-string v8, "\u270b\ud83c\udffd"

    aput-object v8, v15, v5

    const-string v8, "\u270b\ud83c\udffe"

    const/16 v33, 0x4

    aput-object v8, v15, v33

    const-string v8, "\u270b\ud83c\udfff"

    const/16 v32, 0x5

    aput-object v8, v15, v32

    invoke-direct {v7, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v8, 0x98

    aput-object v7, v14, v8

    new-instance v7, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v8, 0x6

    new-array v15, v8, [Ljava/lang/String;

    const-string v8, "\ud83d\udd96"

    aput-object v8, v15, v6

    const-string v8, "\ud83d\udd96\ud83c\udffb"

    aput-object v8, v15, v3

    const-string v8, "\ud83d\udd96\ud83c\udffc"

    aput-object v8, v15, v4

    const-string v8, "\ud83d\udd96\ud83c\udffd"

    aput-object v8, v15, v5

    const-string v8, "\ud83d\udd96\ud83c\udffe"

    const/16 v33, 0x4

    aput-object v8, v15, v33

    const-string v8, "\ud83d\udd96\ud83c\udfff"

    const/16 v32, 0x5

    aput-object v8, v15, v32

    invoke-direct {v7, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v8, 0x99

    aput-object v7, v14, v8

    new-instance v7, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v8, 0x6

    new-array v15, v8, [Ljava/lang/String;

    const-string v8, "\ud83d\udc4c"

    aput-object v8, v15, v6

    const-string v8, "\ud83d\udc4c\ud83c\udffb"

    aput-object v8, v15, v3

    const-string v8, "\ud83d\udc4c\ud83c\udffc"

    aput-object v8, v15, v4

    const-string v8, "\ud83d\udc4c\ud83c\udffd"

    aput-object v8, v15, v5

    const-string v8, "\ud83d\udc4c\ud83c\udffe"

    const/16 v33, 0x4

    aput-object v8, v15, v33

    const-string v8, "\ud83d\udc4c\ud83c\udfff"

    const/16 v32, 0x5

    aput-object v8, v15, v32

    invoke-direct {v7, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v8, 0x9a

    aput-object v7, v14, v8

    new-instance v7, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v8, 0x6

    new-array v15, v8, [Ljava/lang/String;

    const-string v8, "\ud83e\udd0f"

    aput-object v8, v15, v6

    const-string v8, "\ud83e\udd0f\ud83c\udffb"

    aput-object v8, v15, v3

    const-string v8, "\ud83e\udd0f\ud83c\udffc"

    aput-object v8, v15, v4

    const-string v8, "\ud83e\udd0f\ud83c\udffd"

    aput-object v8, v15, v5

    const-string v8, "\ud83e\udd0f\ud83c\udffe"

    const/16 v33, 0x4

    aput-object v8, v15, v33

    const-string v8, "\ud83e\udd0f\ud83c\udfff"

    const/16 v32, 0x5

    aput-object v8, v15, v32

    invoke-direct {v7, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v8, 0x9b

    aput-object v7, v14, v8

    new-instance v7, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v8, 0x6

    new-array v15, v8, [Ljava/lang/String;

    const-string v8, "\u270c\ufe0f"

    aput-object v8, v15, v6

    const-string v8, "\u270c\ud83c\udffb"

    aput-object v8, v15, v3

    const-string v8, "\u270c\ud83c\udffc"

    aput-object v8, v15, v4

    const-string v8, "\u270c\ud83c\udffd"

    aput-object v8, v15, v5

    const-string v8, "\u270c\ud83c\udffe"

    const/16 v33, 0x4

    aput-object v8, v15, v33

    const-string v8, "\u270c\ud83c\udfff"

    const/16 v32, 0x5

    aput-object v8, v15, v32

    invoke-direct {v7, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v8, 0x9c

    aput-object v7, v14, v8

    new-instance v7, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v8, 0x6

    new-array v15, v8, [Ljava/lang/String;

    const-string v8, "\ud83e\udd1e"

    aput-object v8, v15, v6

    const-string v8, "\ud83e\udd1e\ud83c\udffb"

    aput-object v8, v15, v3

    const-string v8, "\ud83e\udd1e\ud83c\udffc"

    aput-object v8, v15, v4

    const-string v8, "\ud83e\udd1e\ud83c\udffd"

    aput-object v8, v15, v5

    const-string v8, "\ud83e\udd1e\ud83c\udffe"

    const/16 v33, 0x4

    aput-object v8, v15, v33

    const-string v8, "\ud83e\udd1e\ud83c\udfff"

    const/16 v32, 0x5

    aput-object v8, v15, v32

    invoke-direct {v7, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v8, 0x9d

    aput-object v7, v14, v8

    new-instance v7, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v8, 0x6

    new-array v15, v8, [Ljava/lang/String;

    const-string v8, "\ud83e\udd1f"

    aput-object v8, v15, v6

    const-string v8, "\ud83e\udd1f\ud83c\udffb"

    aput-object v8, v15, v3

    const-string v8, "\ud83e\udd1f\ud83c\udffc"

    aput-object v8, v15, v4

    const-string v8, "\ud83e\udd1f\ud83c\udffd"

    aput-object v8, v15, v5

    const-string v8, "\ud83e\udd1f\ud83c\udffe"

    const/16 v33, 0x4

    aput-object v8, v15, v33

    const-string v8, "\ud83e\udd1f\ud83c\udfff"

    const/16 v32, 0x5

    aput-object v8, v15, v32

    invoke-direct {v7, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v8, 0x9e

    aput-object v7, v14, v8

    new-instance v7, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v8, 0x6

    new-array v15, v8, [Ljava/lang/String;

    const-string v8, "\ud83e\udd18"

    aput-object v8, v15, v6

    const-string v8, "\ud83e\udd18\ud83c\udffb"

    aput-object v8, v15, v3

    const-string v8, "\ud83e\udd18\ud83c\udffc"

    aput-object v8, v15, v4

    const-string v8, "\ud83e\udd18\ud83c\udffd"

    aput-object v8, v15, v5

    const-string v8, "\ud83e\udd18\ud83c\udffe"

    const/16 v33, 0x4

    aput-object v8, v15, v33

    const-string v8, "\ud83e\udd18\ud83c\udfff"

    const/16 v32, 0x5

    aput-object v8, v15, v32

    invoke-direct {v7, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v8, 0x9f

    aput-object v7, v14, v8

    new-instance v7, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v8, 0x6

    new-array v15, v8, [Ljava/lang/String;

    const-string v8, "\ud83e\udd19"

    aput-object v8, v15, v6

    const-string v8, "\ud83e\udd19\ud83c\udffb"

    aput-object v8, v15, v3

    const-string v8, "\ud83e\udd19\ud83c\udffc"

    aput-object v8, v15, v4

    const-string v8, "\ud83e\udd19\ud83c\udffd"

    aput-object v8, v15, v5

    const-string v8, "\ud83e\udd19\ud83c\udffe"

    const/16 v33, 0x4

    aput-object v8, v15, v33

    const-string v8, "\ud83e\udd19\ud83c\udfff"

    const/16 v32, 0x5

    aput-object v8, v15, v32

    invoke-direct {v7, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v8, 0xa0

    aput-object v7, v14, v8

    new-instance v7, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v8, 0x6

    new-array v15, v8, [Ljava/lang/String;

    const-string v8, "\ud83d\udc48"

    aput-object v8, v15, v6

    const-string v8, "\ud83d\udc48\ud83c\udffb"

    aput-object v8, v15, v3

    const-string v8, "\ud83d\udc48\ud83c\udffc"

    aput-object v8, v15, v4

    const-string v8, "\ud83d\udc48\ud83c\udffd"

    aput-object v8, v15, v5

    const-string v8, "\ud83d\udc48\ud83c\udffe"

    const/16 v33, 0x4

    aput-object v8, v15, v33

    const-string v8, "\ud83d\udc48\ud83c\udfff"

    const/16 v32, 0x5

    aput-object v8, v15, v32

    invoke-direct {v7, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v8, 0xa1

    aput-object v7, v14, v8

    new-instance v7, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v8, 0x6

    new-array v15, v8, [Ljava/lang/String;

    const-string v8, "\ud83d\udc49"

    aput-object v8, v15, v6

    const-string v8, "\ud83d\udc49\ud83c\udffb"

    aput-object v8, v15, v3

    const-string v8, "\ud83d\udc49\ud83c\udffc"

    aput-object v8, v15, v4

    const-string v8, "\ud83d\udc49\ud83c\udffd"

    aput-object v8, v15, v5

    const-string v8, "\ud83d\udc49\ud83c\udffe"

    const/16 v33, 0x4

    aput-object v8, v15, v33

    const-string v8, "\ud83d\udc49\ud83c\udfff"

    const/16 v32, 0x5

    aput-object v8, v15, v32

    invoke-direct {v7, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v8, 0xa2

    aput-object v7, v14, v8

    new-instance v7, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v8, 0x6

    new-array v15, v8, [Ljava/lang/String;

    const-string v8, "\ud83d\udc46"

    aput-object v8, v15, v6

    const-string v8, "\ud83d\udc46\ud83c\udffb"

    aput-object v8, v15, v3

    const-string v8, "\ud83d\udc46\ud83c\udffc"

    aput-object v8, v15, v4

    const-string v8, "\ud83d\udc46\ud83c\udffd"

    aput-object v8, v15, v5

    const-string v8, "\ud83d\udc46\ud83c\udffe"

    const/16 v33, 0x4

    aput-object v8, v15, v33

    const-string v8, "\ud83d\udc46\ud83c\udfff"

    const/16 v32, 0x5

    aput-object v8, v15, v32

    invoke-direct {v7, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v8, 0xa3

    aput-object v7, v14, v8

    new-instance v7, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v8, 0x6

    new-array v15, v8, [Ljava/lang/String;

    const-string v8, "\ud83d\udd95"

    aput-object v8, v15, v6

    const-string v8, "\ud83d\udd95\ud83c\udffb"

    aput-object v8, v15, v3

    const-string v8, "\ud83d\udd95\ud83c\udffc"

    aput-object v8, v15, v4

    const-string v8, "\ud83d\udd95\ud83c\udffd"

    aput-object v8, v15, v5

    const-string v8, "\ud83d\udd95\ud83c\udffe"

    const/16 v33, 0x4

    aput-object v8, v15, v33

    const-string v8, "\ud83d\udd95\ud83c\udfff"

    const/16 v32, 0x5

    aput-object v8, v15, v32

    invoke-direct {v7, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v8, 0xa4

    aput-object v7, v14, v8

    new-instance v7, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v8, 0x6

    new-array v15, v8, [Ljava/lang/String;

    const-string v8, "\ud83d\udc47"

    aput-object v8, v15, v6

    const-string v8, "\ud83d\udc47\ud83c\udffb"

    aput-object v8, v15, v3

    const-string v8, "\ud83d\udc47\ud83c\udffc"

    aput-object v8, v15, v4

    const-string v8, "\ud83d\udc47\ud83c\udffd"

    aput-object v8, v15, v5

    const-string v8, "\ud83d\udc47\ud83c\udffe"

    const/16 v33, 0x4

    aput-object v8, v15, v33

    const-string v8, "\ud83d\udc47\ud83c\udfff"

    const/16 v32, 0x5

    aput-object v8, v15, v32

    invoke-direct {v7, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v8, 0xa5

    aput-object v7, v14, v8

    const-string v7, "emoji/People_0.png"

    const v8, 0x7f04020d

    invoke-direct {v9, v8, v14, v7}, Lorg/thoughtcrime/securesms/components/emoji/StaticEmojiPageModel;-><init>(I[Lorg/thoughtcrime/securesms/components/emoji/Emoji;Ljava/lang/String;)V

    sput-object v9, Lorg/thoughtcrime/securesms/components/emoji/EmojiPages;->PAGE_PEOPLE_0:Lorg/thoughtcrime/securesms/components/emoji/EmojiPageModel;

    .line 46
    new-instance v7, Lorg/thoughtcrime/securesms/components/emoji/StaticEmojiPageModel;

    const/16 v8, 0x33

    new-array v8, v8, [Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v15, 0x6

    new-array v5, v15, [Ljava/lang/String;

    const-string v15, "\u261d\ufe0f"

    aput-object v15, v5, v6

    const-string v15, "\u261d\ud83c\udffb"

    aput-object v15, v5, v3

    const-string v15, "\u261d\ud83c\udffc"

    aput-object v15, v5, v4

    const-string v15, "\u261d\ud83c\udffd"

    const/16 v34, 0x3

    aput-object v15, v5, v34

    const-string v15, "\u261d\ud83c\udffe"

    const/16 v33, 0x4

    aput-object v15, v5, v33

    const-string v15, "\u261d\ud83c\udfff"

    const/16 v32, 0x5

    aput-object v15, v5, v32

    invoke-direct {v14, v5}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    aput-object v14, v8, v6

    new-instance v5, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\udc4d"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\udc4d\ud83c\udffb"

    aput-object v14, v15, v3

    const-string v14, "\ud83d\udc4d\ud83c\udffc"

    aput-object v14, v15, v4

    const-string v14, "\ud83d\udc4d\ud83c\udffd"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\udc4d\ud83c\udffe"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\udc4d\ud83c\udfff"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v5, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    aput-object v5, v8, v3

    new-instance v5, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\udc4e"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\udc4e\ud83c\udffb"

    aput-object v14, v15, v3

    const-string v14, "\ud83d\udc4e\ud83c\udffc"

    aput-object v14, v15, v4

    const-string v14, "\ud83d\udc4e\ud83c\udffd"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\udc4e\ud83c\udffe"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\udc4e\ud83c\udfff"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v5, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    aput-object v5, v8, v4

    new-instance v5, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\u270a"

    aput-object v14, v15, v6

    const-string v14, "\u270a\ud83c\udffb"

    aput-object v14, v15, v3

    const-string v14, "\u270a\ud83c\udffc"

    aput-object v14, v15, v4

    const-string v14, "\u270a\ud83c\udffd"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\u270a\ud83c\udffe"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\u270a\ud83c\udfff"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v5, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    aput-object v5, v8, v34

    new-instance v5, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\udc4a"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\udc4a\ud83c\udffb"

    aput-object v14, v15, v3

    const-string v14, "\ud83d\udc4a\ud83c\udffc"

    aput-object v14, v15, v4

    const-string v14, "\ud83d\udc4a\ud83c\udffd"

    aput-object v14, v15, v34

    const-string v14, "\ud83d\udc4a\ud83c\udffe"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\udc4a\ud83c\udfff"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v5, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    aput-object v5, v8, v33

    new-instance v5, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83e\udd1b"

    aput-object v14, v15, v6

    const-string v14, "\ud83e\udd1b\ud83c\udffb"

    aput-object v14, v15, v3

    const-string v14, "\ud83e\udd1b\ud83c\udffc"

    aput-object v14, v15, v4

    const-string v14, "\ud83e\udd1b\ud83c\udffd"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83e\udd1b\ud83c\udffe"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83e\udd1b\ud83c\udfff"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v5, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    aput-object v5, v8, v32

    new-instance v5, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83e\udd1c"

    aput-object v14, v15, v6

    const-string v14, "\ud83e\udd1c\ud83c\udffb"

    aput-object v14, v15, v3

    const-string v14, "\ud83e\udd1c\ud83c\udffc"

    aput-object v14, v15, v4

    const-string v14, "\ud83e\udd1c\ud83c\udffd"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83e\udd1c\ud83c\udffe"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83e\udd1c\ud83c\udfff"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v5, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/4 v14, 0x6

    aput-object v5, v8, v14

    new-instance v5, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\udc4f"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\udc4f\ud83c\udffb"

    aput-object v14, v15, v3

    const-string v14, "\ud83d\udc4f\ud83c\udffc"

    aput-object v14, v15, v4

    const-string v14, "\ud83d\udc4f\ud83c\udffd"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\udc4f\ud83c\udffe"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\udc4f\ud83c\udfff"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v5, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/4 v14, 0x7

    aput-object v5, v8, v14

    new-instance v5, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\ude4c"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\ude4c\ud83c\udffb"

    aput-object v14, v15, v3

    const-string v14, "\ud83d\ude4c\ud83c\udffc"

    aput-object v14, v15, v4

    const-string v14, "\ud83d\ude4c\ud83c\udffd"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\ude4c\ud83c\udffe"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\ude4c\ud83c\udfff"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v5, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x8

    aput-object v5, v8, v14

    new-instance v5, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\udc50"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\udc50\ud83c\udffb"

    aput-object v14, v15, v3

    const-string v14, "\ud83d\udc50\ud83c\udffc"

    aput-object v14, v15, v4

    const-string v14, "\ud83d\udc50\ud83c\udffd"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\udc50\ud83c\udffe"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\udc50\ud83c\udfff"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v5, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x9

    aput-object v5, v8, v14

    new-instance v5, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83e\udd32"

    aput-object v14, v15, v6

    const-string v14, "\ud83e\udd32\ud83c\udffb"

    aput-object v14, v15, v3

    const-string v14, "\ud83e\udd32\ud83c\udffc"

    aput-object v14, v15, v4

    const-string v14, "\ud83e\udd32\ud83c\udffd"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83e\udd32\ud83c\udffe"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83e\udd32\ud83c\udfff"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v5, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xa

    aput-object v5, v8, v14

    new-instance v5, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v3, [Ljava/lang/String;

    const-string v15, "\ud83e\udd1d"

    aput-object v15, v14, v6

    invoke-direct {v5, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xb

    aput-object v5, v8, v14

    new-instance v5, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\ude4f"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\ude4f\ud83c\udffb"

    aput-object v14, v15, v3

    const-string v14, "\ud83d\ude4f\ud83c\udffc"

    aput-object v14, v15, v4

    const-string v14, "\ud83d\ude4f\ud83c\udffd"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\ude4f\ud83c\udffe"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\ude4f\ud83c\udfff"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v5, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xc

    aput-object v5, v8, v14

    new-instance v5, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\u270d\ufe0f"

    aput-object v14, v15, v6

    const-string v14, "\u270d\ud83c\udffb"

    aput-object v14, v15, v3

    const-string v14, "\u270d\ud83c\udffc"

    aput-object v14, v15, v4

    const-string v14, "\u270d\ud83c\udffd"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\u270d\ud83c\udffe"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\u270d\ud83c\udfff"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v5, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xd

    aput-object v5, v8, v14

    new-instance v5, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\udc85"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\udc85\ud83c\udffb"

    aput-object v14, v15, v3

    const-string v14, "\ud83d\udc85\ud83c\udffc"

    aput-object v14, v15, v4

    const-string v14, "\ud83d\udc85\ud83c\udffd"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\udc85\ud83c\udffe"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\udc85\ud83c\udfff"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v5, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xe

    aput-object v5, v8, v14

    new-instance v5, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83e\udd33"

    aput-object v14, v15, v6

    const-string v14, "\ud83e\udd33\ud83c\udffb"

    aput-object v14, v15, v3

    const-string v14, "\ud83e\udd33\ud83c\udffc"

    aput-object v14, v15, v4

    const-string v14, "\ud83e\udd33\ud83c\udffd"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83e\udd33\ud83c\udffe"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83e\udd33\ud83c\udfff"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v5, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xf

    aput-object v5, v8, v14

    new-instance v5, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\udcaa"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\udcaa\ud83c\udffb"

    aput-object v14, v15, v3

    const-string v14, "\ud83d\udcaa\ud83c\udffc"

    aput-object v14, v15, v4

    const-string v14, "\ud83d\udcaa\ud83c\udffd"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\udcaa\ud83c\udffe"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\udcaa\ud83c\udfff"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v5, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x10

    aput-object v5, v8, v14

    new-instance v5, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v3, [Ljava/lang/String;

    const-string v15, "\ud83e\uddbe"

    aput-object v15, v14, v6

    invoke-direct {v5, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x11

    aput-object v5, v8, v14

    new-instance v5, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v3, [Ljava/lang/String;

    const-string v15, "\ud83e\uddbf"

    aput-object v15, v14, v6

    invoke-direct {v5, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x12

    aput-object v5, v8, v14

    new-instance v5, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83e\uddb5"

    aput-object v14, v15, v6

    const-string v14, "\ud83e\uddb5\ud83c\udffb"

    aput-object v14, v15, v3

    const-string v14, "\ud83e\uddb5\ud83c\udffc"

    aput-object v14, v15, v4

    const-string v14, "\ud83e\uddb5\ud83c\udffd"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83e\uddb5\ud83c\udffe"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83e\uddb5\ud83c\udfff"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v5, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x13

    aput-object v5, v8, v14

    new-instance v5, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83e\uddb6"

    aput-object v14, v15, v6

    const-string v14, "\ud83e\uddb6\ud83c\udffb"

    aput-object v14, v15, v3

    const-string v14, "\ud83e\uddb6\ud83c\udffc"

    aput-object v14, v15, v4

    const-string v14, "\ud83e\uddb6\ud83c\udffd"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83e\uddb6\ud83c\udffe"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83e\uddb6\ud83c\udfff"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v5, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x14

    aput-object v5, v8, v14

    new-instance v5, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\udc42"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\udc42\ud83c\udffb"

    aput-object v14, v15, v3

    const-string v14, "\ud83d\udc42\ud83c\udffc"

    aput-object v14, v15, v4

    const-string v14, "\ud83d\udc42\ud83c\udffd"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\udc42\ud83c\udffe"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\udc42\ud83c\udfff"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v5, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x15

    aput-object v5, v8, v14

    new-instance v5, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83e\uddbb"

    aput-object v14, v15, v6

    const-string v14, "\ud83e\uddbb\ud83c\udffb"

    aput-object v14, v15, v3

    const-string v14, "\ud83e\uddbb\ud83c\udffc"

    aput-object v14, v15, v4

    const-string v14, "\ud83e\uddbb\ud83c\udffd"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83e\uddbb\ud83c\udffe"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83e\uddbb\ud83c\udfff"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v5, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x16

    aput-object v5, v8, v14

    new-instance v5, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\udc43"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\udc43\ud83c\udffb"

    aput-object v14, v15, v3

    const-string v14, "\ud83d\udc43\ud83c\udffc"

    aput-object v14, v15, v4

    const-string v14, "\ud83d\udc43\ud83c\udffd"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\udc43\ud83c\udffe"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\udc43\ud83c\udfff"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v5, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x17

    aput-object v5, v8, v14

    new-instance v5, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v3, [Ljava/lang/String;

    const-string v15, "\ud83e\udde0"

    aput-object v15, v14, v6

    invoke-direct {v5, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x18

    aput-object v5, v8, v14

    new-instance v5, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v3, [Ljava/lang/String;

    const-string v15, "\ud83e\uddb7"

    aput-object v15, v14, v6

    invoke-direct {v5, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x19

    aput-object v5, v8, v14

    new-instance v5, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v3, [Ljava/lang/String;

    const-string v15, "\ud83e\uddb4"

    aput-object v15, v14, v6

    invoke-direct {v5, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x1a

    aput-object v5, v8, v14

    new-instance v5, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v3, [Ljava/lang/String;

    const-string v15, "\ud83d\udc40"

    aput-object v15, v14, v6

    invoke-direct {v5, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x1b

    aput-object v5, v8, v14

    new-instance v5, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v3, [Ljava/lang/String;

    const-string v15, "\ud83d\udc41\ufe0f"

    aput-object v15, v14, v6

    invoke-direct {v5, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x1c

    aput-object v5, v8, v14

    new-instance v5, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v3, [Ljava/lang/String;

    const-string v15, "\ud83d\udc45"

    aput-object v15, v14, v6

    invoke-direct {v5, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x1d

    aput-object v5, v8, v14

    new-instance v5, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v3, [Ljava/lang/String;

    const-string v15, "\ud83d\udc44"

    aput-object v15, v14, v6

    invoke-direct {v5, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x1e

    aput-object v5, v8, v14

    new-instance v5, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\udc76"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\udc76\ud83c\udffb"

    aput-object v14, v15, v3

    const-string v14, "\ud83d\udc76\ud83c\udffc"

    aput-object v14, v15, v4

    const-string v14, "\ud83d\udc76\ud83c\udffd"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\udc76\ud83c\udffe"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\udc76\ud83c\udfff"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v5, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x1f

    aput-object v5, v8, v14

    new-instance v5, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83e\uddd2"

    aput-object v14, v15, v6

    const-string v14, "\ud83e\uddd2\ud83c\udffb"

    aput-object v14, v15, v3

    const-string v14, "\ud83e\uddd2\ud83c\udffc"

    aput-object v14, v15, v4

    const-string v14, "\ud83e\uddd2\ud83c\udffd"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83e\uddd2\ud83c\udffe"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83e\uddd2\ud83c\udfff"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v5, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x20

    aput-object v5, v8, v14

    new-instance v5, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\udc66"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\udc66\ud83c\udffb"

    aput-object v14, v15, v3

    const-string v14, "\ud83d\udc66\ud83c\udffc"

    aput-object v14, v15, v4

    const-string v14, "\ud83d\udc66\ud83c\udffd"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\udc66\ud83c\udffe"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\udc66\ud83c\udfff"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v5, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x21

    aput-object v5, v8, v14

    new-instance v5, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\udc67"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\udc67\ud83c\udffb"

    aput-object v14, v15, v3

    const-string v14, "\ud83d\udc67\ud83c\udffc"

    aput-object v14, v15, v4

    const-string v14, "\ud83d\udc67\ud83c\udffd"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\udc67\ud83c\udffe"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\udc67\ud83c\udfff"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v5, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x22

    aput-object v5, v8, v14

    new-instance v5, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83e\uddd1"

    aput-object v14, v15, v6

    const-string v14, "\ud83e\uddd1\ud83c\udffb"

    aput-object v14, v15, v3

    const-string v14, "\ud83e\uddd1\ud83c\udffc"

    aput-object v14, v15, v4

    const-string v14, "\ud83e\uddd1\ud83c\udffd"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83e\uddd1\ud83c\udffe"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83e\uddd1\ud83c\udfff"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v5, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x23

    aput-object v5, v8, v14

    new-instance v5, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\udc68"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\udc68\ud83c\udffb"

    aput-object v14, v15, v3

    const-string v14, "\ud83d\udc68\ud83c\udffc"

    aput-object v14, v15, v4

    const-string v14, "\ud83d\udc68\ud83c\udffd"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\udc68\ud83c\udffe"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\udc68\ud83c\udfff"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v5, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x24

    aput-object v5, v8, v14

    new-instance v5, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83e\uddd4"

    aput-object v14, v15, v6

    const-string v14, "\ud83e\uddd4\ud83c\udffb"

    aput-object v14, v15, v3

    const-string v14, "\ud83e\uddd4\ud83c\udffc"

    aput-object v14, v15, v4

    const-string v14, "\ud83e\uddd4\ud83c\udffd"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83e\uddd4\ud83c\udffe"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83e\uddd4\ud83c\udfff"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v5, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x25

    aput-object v5, v8, v14

    new-instance v5, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\udc68\u200d\ud83e\uddb0"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\udc68\ud83c\udffb\u200d\ud83e\uddb0"

    aput-object v14, v15, v3

    const-string v14, "\ud83d\udc68\ud83c\udffc\u200d\ud83e\uddb0"

    aput-object v14, v15, v4

    const-string v14, "\ud83d\udc68\ud83c\udffd\u200d\ud83e\uddb0"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\udc68\ud83c\udffe\u200d\ud83e\uddb0"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\udc68\ud83c\udfff\u200d\ud83e\uddb0"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v5, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x26

    aput-object v5, v8, v14

    new-instance v5, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\udc68\u200d\ud83e\uddb1"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\udc68\ud83c\udffb\u200d\ud83e\uddb1"

    aput-object v14, v15, v3

    const-string v14, "\ud83d\udc68\ud83c\udffc\u200d\ud83e\uddb1"

    aput-object v14, v15, v4

    const-string v14, "\ud83d\udc68\ud83c\udffd\u200d\ud83e\uddb1"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\udc68\ud83c\udffe\u200d\ud83e\uddb1"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\udc68\ud83c\udfff\u200d\ud83e\uddb1"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v5, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x27

    aput-object v5, v8, v14

    new-instance v5, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\udc68\u200d\ud83e\uddb3"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\udc68\ud83c\udffb\u200d\ud83e\uddb3"

    aput-object v14, v15, v3

    const-string v14, "\ud83d\udc68\ud83c\udffc\u200d\ud83e\uddb3"

    aput-object v14, v15, v4

    const-string v14, "\ud83d\udc68\ud83c\udffd\u200d\ud83e\uddb3"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\udc68\ud83c\udffe\u200d\ud83e\uddb3"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\udc68\ud83c\udfff\u200d\ud83e\uddb3"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v5, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x28

    aput-object v5, v8, v14

    new-instance v5, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\udc68\u200d\ud83e\uddb2"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\udc68\ud83c\udffb\u200d\ud83e\uddb2"

    aput-object v14, v15, v3

    const-string v14, "\ud83d\udc68\ud83c\udffc\u200d\ud83e\uddb2"

    aput-object v14, v15, v4

    const-string v14, "\ud83d\udc68\ud83c\udffd\u200d\ud83e\uddb2"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\udc68\ud83c\udffe\u200d\ud83e\uddb2"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\udc68\ud83c\udfff\u200d\ud83e\uddb2"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v5, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x29

    aput-object v5, v8, v14

    new-instance v5, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\udc69"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\udc69\ud83c\udffb"

    aput-object v14, v15, v3

    const-string v14, "\ud83d\udc69\ud83c\udffc"

    aput-object v14, v15, v4

    const-string v14, "\ud83d\udc69\ud83c\udffd"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\udc69\ud83c\udffe"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\udc69\ud83c\udfff"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v5, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x2a

    aput-object v5, v8, v14

    new-instance v5, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\udc69\u200d\ud83e\uddb0"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\udc69\ud83c\udffb\u200d\ud83e\uddb0"

    aput-object v14, v15, v3

    const-string v14, "\ud83d\udc69\ud83c\udffc\u200d\ud83e\uddb0"

    aput-object v14, v15, v4

    const-string v14, "\ud83d\udc69\ud83c\udffd\u200d\ud83e\uddb0"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\udc69\ud83c\udffe\u200d\ud83e\uddb0"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\udc69\ud83c\udfff\u200d\ud83e\uddb0"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v5, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x2b

    aput-object v5, v8, v14

    new-instance v5, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83e\uddd1\u200d\ud83e\uddb0"

    aput-object v14, v15, v6

    const-string v14, "\ud83e\uddd1\ud83c\udffb\u200d\ud83e\uddb0"

    aput-object v14, v15, v3

    const-string v14, "\ud83e\uddd1\ud83c\udffc\u200d\ud83e\uddb0"

    aput-object v14, v15, v4

    const-string v14, "\ud83e\uddd1\ud83c\udffd\u200d\ud83e\uddb0"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83e\uddd1\ud83c\udffe\u200d\ud83e\uddb0"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83e\uddd1\ud83c\udfff\u200d\ud83e\uddb0"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v5, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x2c

    aput-object v5, v8, v14

    new-instance v5, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\udc69\u200d\ud83e\uddb1"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\udc69\ud83c\udffb\u200d\ud83e\uddb1"

    aput-object v14, v15, v3

    const-string v14, "\ud83d\udc69\ud83c\udffc\u200d\ud83e\uddb1"

    aput-object v14, v15, v4

    const-string v14, "\ud83d\udc69\ud83c\udffd\u200d\ud83e\uddb1"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\udc69\ud83c\udffe\u200d\ud83e\uddb1"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\udc69\ud83c\udfff\u200d\ud83e\uddb1"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v5, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x2d

    aput-object v5, v8, v14

    new-instance v5, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83e\uddd1\u200d\ud83e\uddb1"

    aput-object v14, v15, v6

    const-string v14, "\ud83e\uddd1\ud83c\udffb\u200d\ud83e\uddb1"

    aput-object v14, v15, v3

    const-string v14, "\ud83e\uddd1\ud83c\udffc\u200d\ud83e\uddb1"

    aput-object v14, v15, v4

    const-string v14, "\ud83e\uddd1\ud83c\udffd\u200d\ud83e\uddb1"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83e\uddd1\ud83c\udffe\u200d\ud83e\uddb1"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83e\uddd1\ud83c\udfff\u200d\ud83e\uddb1"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v5, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x2e

    aput-object v5, v8, v14

    new-instance v5, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\udc69\u200d\ud83e\uddb3"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\udc69\ud83c\udffb\u200d\ud83e\uddb3"

    aput-object v14, v15, v3

    const-string v14, "\ud83d\udc69\ud83c\udffc\u200d\ud83e\uddb3"

    aput-object v14, v15, v4

    const-string v14, "\ud83d\udc69\ud83c\udffd\u200d\ud83e\uddb3"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\udc69\ud83c\udffe\u200d\ud83e\uddb3"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\udc69\ud83c\udfff\u200d\ud83e\uddb3"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v5, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x2f

    aput-object v5, v8, v14

    new-instance v5, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83e\uddd1\u200d\ud83e\uddb3"

    aput-object v14, v15, v6

    const-string v14, "\ud83e\uddd1\ud83c\udffb\u200d\ud83e\uddb3"

    aput-object v14, v15, v3

    const-string v14, "\ud83e\uddd1\ud83c\udffc\u200d\ud83e\uddb3"

    aput-object v14, v15, v4

    const-string v14, "\ud83e\uddd1\ud83c\udffd\u200d\ud83e\uddb3"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83e\uddd1\ud83c\udffe\u200d\ud83e\uddb3"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83e\uddd1\ud83c\udfff\u200d\ud83e\uddb3"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v5, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x30

    aput-object v5, v8, v14

    new-instance v5, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\udc69\u200d\ud83e\uddb2"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\udc69\ud83c\udffb\u200d\ud83e\uddb2"

    aput-object v14, v15, v3

    const-string v14, "\ud83d\udc69\ud83c\udffc\u200d\ud83e\uddb2"

    aput-object v14, v15, v4

    const-string v14, "\ud83d\udc69\ud83c\udffd\u200d\ud83e\uddb2"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\udc69\ud83c\udffe\u200d\ud83e\uddb2"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\udc69\ud83c\udfff\u200d\ud83e\uddb2"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v5, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x31

    aput-object v5, v8, v14

    new-instance v5, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83e\uddd1\u200d\ud83e\uddb2"

    aput-object v14, v15, v6

    const-string v14, "\ud83e\uddd1\ud83c\udffb\u200d\ud83e\uddb2"

    aput-object v14, v15, v3

    const-string v14, "\ud83e\uddd1\ud83c\udffc\u200d\ud83e\uddb2"

    aput-object v14, v15, v4

    const-string v14, "\ud83e\uddd1\ud83c\udffd\u200d\ud83e\uddb2"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83e\uddd1\ud83c\udffe\u200d\ud83e\uddb2"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83e\uddd1\ud83c\udfff\u200d\ud83e\uddb2"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v5, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x32

    aput-object v5, v8, v14

    const-string v5, "emoji/People_1.png"

    const v14, 0x7f04020d

    invoke-direct {v7, v14, v8, v5}, Lorg/thoughtcrime/securesms/components/emoji/StaticEmojiPageModel;-><init>(I[Lorg/thoughtcrime/securesms/components/emoji/Emoji;Ljava/lang/String;)V

    sput-object v7, Lorg/thoughtcrime/securesms/components/emoji/EmojiPages;->PAGE_PEOPLE_1:Lorg/thoughtcrime/securesms/components/emoji/EmojiPageModel;

    .line 50
    new-instance v5, Lorg/thoughtcrime/securesms/components/emoji/StaticEmojiPageModel;

    const/16 v8, 0x2a

    new-array v8, v8, [Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v15, 0x6

    new-array v4, v15, [Ljava/lang/String;

    const-string v15, "\ud83d\udc71\u200d\u2640\ufe0f"

    aput-object v15, v4, v6

    const-string v15, "\ud83d\udc71\ud83c\udffb\u200d\u2640\ufe0f"

    aput-object v15, v4, v3

    const-string v15, "\ud83d\udc71\ud83c\udffc\u200d\u2640\ufe0f"

    const/16 v35, 0x2

    aput-object v15, v4, v35

    const-string v15, "\ud83d\udc71\ud83c\udffd\u200d\u2640\ufe0f"

    const/16 v34, 0x3

    aput-object v15, v4, v34

    const-string v15, "\ud83d\udc71\ud83c\udffe\u200d\u2640\ufe0f"

    const/16 v33, 0x4

    aput-object v15, v4, v33

    const-string v15, "\ud83d\udc71\ud83c\udfff\u200d\u2640\ufe0f"

    const/16 v32, 0x5

    aput-object v15, v4, v32

    invoke-direct {v14, v4}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    aput-object v14, v8, v6

    new-instance v4, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\udc71\u200d\u2642\ufe0f"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\udc71\ud83c\udffb\u200d\u2642\ufe0f"

    aput-object v14, v15, v3

    const-string v14, "\ud83d\udc71\ud83c\udffc\u200d\u2642\ufe0f"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83d\udc71\ud83c\udffd\u200d\u2642\ufe0f"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\udc71\ud83c\udffe\u200d\u2642\ufe0f"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\udc71\ud83c\udfff\u200d\u2642\ufe0f"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v4, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    aput-object v4, v8, v3

    new-instance v4, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83e\uddd3"

    aput-object v14, v15, v6

    const-string v14, "\ud83e\uddd3\ud83c\udffb"

    aput-object v14, v15, v3

    const-string v14, "\ud83e\uddd3\ud83c\udffc"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83e\uddd3\ud83c\udffd"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83e\uddd3\ud83c\udffe"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83e\uddd3\ud83c\udfff"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v4, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    aput-object v4, v8, v35

    new-instance v4, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\udc74"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\udc74\ud83c\udffb"

    aput-object v14, v15, v3

    const-string v14, "\ud83d\udc74\ud83c\udffc"

    aput-object v14, v15, v35

    const-string v14, "\ud83d\udc74\ud83c\udffd"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\udc74\ud83c\udffe"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\udc74\ud83c\udfff"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v4, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    aput-object v4, v8, v34

    new-instance v4, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\udc75"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\udc75\ud83c\udffb"

    aput-object v14, v15, v3

    const-string v14, "\ud83d\udc75\ud83c\udffc"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83d\udc75\ud83c\udffd"

    aput-object v14, v15, v34

    const-string v14, "\ud83d\udc75\ud83c\udffe"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\udc75\ud83c\udfff"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v4, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    aput-object v4, v8, v33

    new-instance v4, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\ude4d\u200d\u2642\ufe0f"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\ude4d\ud83c\udffb\u200d\u2642\ufe0f"

    aput-object v14, v15, v3

    const-string v14, "\ud83d\ude4d\ud83c\udffc\u200d\u2642\ufe0f"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83d\ude4d\ud83c\udffd\u200d\u2642\ufe0f"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\ude4d\ud83c\udffe\u200d\u2642\ufe0f"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\ude4d\ud83c\udfff\u200d\u2642\ufe0f"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v4, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    aput-object v4, v8, v32

    new-instance v4, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\ude4d\u200d\u2640\ufe0f"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\ude4d\ud83c\udffb\u200d\u2640\ufe0f"

    aput-object v14, v15, v3

    const-string v14, "\ud83d\ude4d\ud83c\udffc\u200d\u2640\ufe0f"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83d\ude4d\ud83c\udffd\u200d\u2640\ufe0f"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\ude4d\ud83c\udffe\u200d\u2640\ufe0f"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\ude4d\ud83c\udfff\u200d\u2640\ufe0f"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v4, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/4 v14, 0x6

    aput-object v4, v8, v14

    new-instance v4, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\ude4e\u200d\u2642\ufe0f"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\ude4e\ud83c\udffb\u200d\u2642\ufe0f"

    aput-object v14, v15, v3

    const-string v14, "\ud83d\ude4e\ud83c\udffc\u200d\u2642\ufe0f"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83d\ude4e\ud83c\udffd\u200d\u2642\ufe0f"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\ude4e\ud83c\udffe\u200d\u2642\ufe0f"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\ude4e\ud83c\udfff\u200d\u2642\ufe0f"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v4, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/4 v14, 0x7

    aput-object v4, v8, v14

    new-instance v4, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\ude4e\u200d\u2640\ufe0f"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\ude4e\ud83c\udffb\u200d\u2640\ufe0f"

    aput-object v14, v15, v3

    const-string v14, "\ud83d\ude4e\ud83c\udffc\u200d\u2640\ufe0f"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83d\ude4e\ud83c\udffd\u200d\u2640\ufe0f"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\ude4e\ud83c\udffe\u200d\u2640\ufe0f"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\ude4e\ud83c\udfff\u200d\u2640\ufe0f"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v4, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x8

    aput-object v4, v8, v14

    new-instance v4, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\ude45\u200d\u2642\ufe0f"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\ude45\ud83c\udffb\u200d\u2642\ufe0f"

    aput-object v14, v15, v3

    const-string v14, "\ud83d\ude45\ud83c\udffc\u200d\u2642\ufe0f"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83d\ude45\ud83c\udffd\u200d\u2642\ufe0f"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\ude45\ud83c\udffe\u200d\u2642\ufe0f"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\ude45\ud83c\udfff\u200d\u2642\ufe0f"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v4, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x9

    aput-object v4, v8, v14

    new-instance v4, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\ude45\u200d\u2640\ufe0f"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\ude45\ud83c\udffb\u200d\u2640\ufe0f"

    aput-object v14, v15, v3

    const-string v14, "\ud83d\ude45\ud83c\udffc\u200d\u2640\ufe0f"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83d\ude45\ud83c\udffd\u200d\u2640\ufe0f"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\ude45\ud83c\udffe\u200d\u2640\ufe0f"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\ude45\ud83c\udfff\u200d\u2640\ufe0f"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v4, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xa

    aput-object v4, v8, v14

    new-instance v4, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\ude46\u200d\u2642\ufe0f"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\ude46\ud83c\udffb\u200d\u2642\ufe0f"

    aput-object v14, v15, v3

    const-string v14, "\ud83d\ude46\ud83c\udffc\u200d\u2642\ufe0f"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83d\ude46\ud83c\udffd\u200d\u2642\ufe0f"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\ude46\ud83c\udffe\u200d\u2642\ufe0f"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\ude46\ud83c\udfff\u200d\u2642\ufe0f"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v4, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xb

    aput-object v4, v8, v14

    new-instance v4, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\ude46\u200d\u2640\ufe0f"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\ude46\ud83c\udffb\u200d\u2640\ufe0f"

    aput-object v14, v15, v3

    const-string v14, "\ud83d\ude46\ud83c\udffc\u200d\u2640\ufe0f"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83d\ude46\ud83c\udffd\u200d\u2640\ufe0f"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\ude46\ud83c\udffe\u200d\u2640\ufe0f"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\ude46\ud83c\udfff\u200d\u2640\ufe0f"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v4, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xc

    aput-object v4, v8, v14

    new-instance v4, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\udc81\u200d\u2642\ufe0f"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\udc81\ud83c\udffb\u200d\u2642\ufe0f"

    aput-object v14, v15, v3

    const-string v14, "\ud83d\udc81\ud83c\udffc\u200d\u2642\ufe0f"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83d\udc81\ud83c\udffd\u200d\u2642\ufe0f"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\udc81\ud83c\udffe\u200d\u2642\ufe0f"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\udc81\ud83c\udfff\u200d\u2642\ufe0f"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v4, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xd

    aput-object v4, v8, v14

    new-instance v4, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\udc81\u200d\u2640\ufe0f"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\udc81\ud83c\udffb\u200d\u2640\ufe0f"

    aput-object v14, v15, v3

    const-string v14, "\ud83d\udc81\ud83c\udffc\u200d\u2640\ufe0f"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83d\udc81\ud83c\udffd\u200d\u2640\ufe0f"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\udc81\ud83c\udffe\u200d\u2640\ufe0f"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\udc81\ud83c\udfff\u200d\u2640\ufe0f"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v4, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xe

    aput-object v4, v8, v14

    new-instance v4, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\ude4b\u200d\u2642\ufe0f"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\ude4b\ud83c\udffb\u200d\u2642\ufe0f"

    aput-object v14, v15, v3

    const-string v14, "\ud83d\ude4b\ud83c\udffc\u200d\u2642\ufe0f"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83d\ude4b\ud83c\udffd\u200d\u2642\ufe0f"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\ude4b\ud83c\udffe\u200d\u2642\ufe0f"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\ude4b\ud83c\udfff\u200d\u2642\ufe0f"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v4, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xf

    aput-object v4, v8, v14

    new-instance v4, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\ude4b\u200d\u2640\ufe0f"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\ude4b\ud83c\udffb\u200d\u2640\ufe0f"

    aput-object v14, v15, v3

    const-string v14, "\ud83d\ude4b\ud83c\udffc\u200d\u2640\ufe0f"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83d\ude4b\ud83c\udffd\u200d\u2640\ufe0f"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\ude4b\ud83c\udffe\u200d\u2640\ufe0f"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\ude4b\ud83c\udfff\u200d\u2640\ufe0f"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v4, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x10

    aput-object v4, v8, v14

    new-instance v4, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83e\uddcf"

    aput-object v14, v15, v6

    const-string v14, "\ud83e\uddcf\ud83c\udffb"

    aput-object v14, v15, v3

    const-string v14, "\ud83e\uddcf\ud83c\udffc"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83e\uddcf\ud83c\udffd"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83e\uddcf\ud83c\udffe"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83e\uddcf\ud83c\udfff"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v4, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x11

    aput-object v4, v8, v14

    new-instance v4, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83e\uddcf\u200d\u2642\ufe0f"

    aput-object v14, v15, v6

    const-string v14, "\ud83e\uddcf\ud83c\udffb\u200d\u2642\ufe0f"

    aput-object v14, v15, v3

    const-string v14, "\ud83e\uddcf\ud83c\udffc\u200d\u2642\ufe0f"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83e\uddcf\ud83c\udffd\u200d\u2642\ufe0f"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83e\uddcf\ud83c\udffe\u200d\u2642\ufe0f"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83e\uddcf\ud83c\udfff\u200d\u2642\ufe0f"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v4, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x12

    aput-object v4, v8, v14

    new-instance v4, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83e\uddcf\u200d\u2640\ufe0f"

    aput-object v14, v15, v6

    const-string v14, "\ud83e\uddcf\ud83c\udffb\u200d\u2640\ufe0f"

    aput-object v14, v15, v3

    const-string v14, "\ud83e\uddcf\ud83c\udffc\u200d\u2640\ufe0f"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83e\uddcf\ud83c\udffd\u200d\u2640\ufe0f"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83e\uddcf\ud83c\udffe\u200d\u2640\ufe0f"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83e\uddcf\ud83c\udfff\u200d\u2640\ufe0f"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v4, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x13

    aput-object v4, v8, v14

    new-instance v4, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\ude47\u200d\u2642\ufe0f"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\ude47\ud83c\udffb\u200d\u2642\ufe0f"

    aput-object v14, v15, v3

    const-string v14, "\ud83d\ude47\ud83c\udffc\u200d\u2642\ufe0f"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83d\ude47\ud83c\udffd\u200d\u2642\ufe0f"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\ude47\ud83c\udffe\u200d\u2642\ufe0f"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\ude47\ud83c\udfff\u200d\u2642\ufe0f"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v4, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x14

    aput-object v4, v8, v14

    new-instance v4, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\ude47\u200d\u2640\ufe0f"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\ude47\ud83c\udffb\u200d\u2640\ufe0f"

    aput-object v14, v15, v3

    const-string v14, "\ud83d\ude47\ud83c\udffc\u200d\u2640\ufe0f"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83d\ude47\ud83c\udffd\u200d\u2640\ufe0f"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\ude47\ud83c\udffe\u200d\u2640\ufe0f"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\ude47\ud83c\udfff\u200d\u2640\ufe0f"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v4, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x15

    aput-object v4, v8, v14

    new-instance v4, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83e\udd26"

    aput-object v14, v15, v6

    const-string v14, "\ud83e\udd26\ud83c\udffb"

    aput-object v14, v15, v3

    const-string v14, "\ud83e\udd26\ud83c\udffc"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83e\udd26\ud83c\udffd"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83e\udd26\ud83c\udffe"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83e\udd26\ud83c\udfff"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v4, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x16

    aput-object v4, v8, v14

    new-instance v4, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83e\udd26\u200d\u2642\ufe0f"

    aput-object v14, v15, v6

    const-string v14, "\ud83e\udd26\ud83c\udffb\u200d\u2642\ufe0f"

    aput-object v14, v15, v3

    const-string v14, "\ud83e\udd26\ud83c\udffc\u200d\u2642\ufe0f"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83e\udd26\ud83c\udffd\u200d\u2642\ufe0f"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83e\udd26\ud83c\udffe\u200d\u2642\ufe0f"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83e\udd26\ud83c\udfff\u200d\u2642\ufe0f"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v4, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x17

    aput-object v4, v8, v14

    new-instance v4, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83e\udd26\u200d\u2640\ufe0f"

    aput-object v14, v15, v6

    const-string v14, "\ud83e\udd26\ud83c\udffb\u200d\u2640\ufe0f"

    aput-object v14, v15, v3

    const-string v14, "\ud83e\udd26\ud83c\udffc\u200d\u2640\ufe0f"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83e\udd26\ud83c\udffd\u200d\u2640\ufe0f"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83e\udd26\ud83c\udffe\u200d\u2640\ufe0f"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83e\udd26\ud83c\udfff\u200d\u2640\ufe0f"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v4, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x18

    aput-object v4, v8, v14

    new-instance v4, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83e\udd37"

    aput-object v14, v15, v6

    const-string v14, "\ud83e\udd37\ud83c\udffb"

    aput-object v14, v15, v3

    const-string v14, "\ud83e\udd37\ud83c\udffc"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83e\udd37\ud83c\udffd"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83e\udd37\ud83c\udffe"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83e\udd37\ud83c\udfff"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v4, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x19

    aput-object v4, v8, v14

    new-instance v4, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83e\udd37\u200d\u2642\ufe0f"

    aput-object v14, v15, v6

    const-string v14, "\ud83e\udd37\ud83c\udffb\u200d\u2642\ufe0f"

    aput-object v14, v15, v3

    const-string v14, "\ud83e\udd37\ud83c\udffc\u200d\u2642\ufe0f"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83e\udd37\ud83c\udffd\u200d\u2642\ufe0f"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83e\udd37\ud83c\udffe\u200d\u2642\ufe0f"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83e\udd37\ud83c\udfff\u200d\u2642\ufe0f"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v4, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x1a

    aput-object v4, v8, v14

    new-instance v4, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83e\udd37\u200d\u2640\ufe0f"

    aput-object v14, v15, v6

    const-string v14, "\ud83e\udd37\ud83c\udffb\u200d\u2640\ufe0f"

    aput-object v14, v15, v3

    const-string v14, "\ud83e\udd37\ud83c\udffc\u200d\u2640\ufe0f"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83e\udd37\ud83c\udffd\u200d\u2640\ufe0f"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83e\udd37\ud83c\udffe\u200d\u2640\ufe0f"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83e\udd37\ud83c\udfff\u200d\u2640\ufe0f"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v4, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x1b

    aput-object v4, v8, v14

    new-instance v4, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83e\uddd1\u200d\u2695\ufe0f"

    aput-object v14, v15, v6

    const-string v14, "\ud83e\uddd1\ud83c\udffb\u200d\u2695\ufe0f"

    aput-object v14, v15, v3

    const-string v14, "\ud83e\uddd1\ud83c\udffc\u200d\u2695\ufe0f"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83e\uddd1\ud83c\udffd\u200d\u2695\ufe0f"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83e\uddd1\ud83c\udffe\u200d\u2695\ufe0f"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83e\uddd1\ud83c\udfff\u200d\u2695\ufe0f"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v4, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x1c

    aput-object v4, v8, v14

    new-instance v4, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\udc68\u200d\u2695\ufe0f"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\udc68\ud83c\udffb\u200d\u2695\ufe0f"

    aput-object v14, v15, v3

    const-string v14, "\ud83d\udc68\ud83c\udffc\u200d\u2695\ufe0f"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83d\udc68\ud83c\udffd\u200d\u2695\ufe0f"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\udc68\ud83c\udffe\u200d\u2695\ufe0f"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\udc68\ud83c\udfff\u200d\u2695\ufe0f"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v4, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x1d

    aput-object v4, v8, v14

    new-instance v4, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\udc69\u200d\u2695\ufe0f"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\udc69\ud83c\udffb\u200d\u2695\ufe0f"

    aput-object v14, v15, v3

    const-string v14, "\ud83d\udc69\ud83c\udffc\u200d\u2695\ufe0f"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83d\udc69\ud83c\udffd\u200d\u2695\ufe0f"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\udc69\ud83c\udffe\u200d\u2695\ufe0f"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\udc69\ud83c\udfff\u200d\u2695\ufe0f"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v4, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x1e

    aput-object v4, v8, v14

    new-instance v4, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83e\uddd1\u200d\ud83c\udf93"

    aput-object v14, v15, v6

    const-string v14, "\ud83e\uddd1\ud83c\udffb\u200d\ud83c\udf93"

    aput-object v14, v15, v3

    const-string v14, "\ud83e\uddd1\ud83c\udffc\u200d\ud83c\udf93"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83e\uddd1\ud83c\udffd\u200d\ud83c\udf93"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83e\uddd1\ud83c\udffe\u200d\ud83c\udf93"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83e\uddd1\ud83c\udfff\u200d\ud83c\udf93"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v4, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x1f

    aput-object v4, v8, v14

    new-instance v4, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\udc68\u200d\ud83c\udf93"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\udc68\ud83c\udffb\u200d\ud83c\udf93"

    aput-object v14, v15, v3

    const-string v14, "\ud83d\udc68\ud83c\udffc\u200d\ud83c\udf93"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83d\udc68\ud83c\udffd\u200d\ud83c\udf93"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\udc68\ud83c\udffe\u200d\ud83c\udf93"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\udc68\ud83c\udfff\u200d\ud83c\udf93"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v4, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x20

    aput-object v4, v8, v14

    new-instance v4, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\udc69\u200d\ud83c\udf93"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\udc69\ud83c\udffb\u200d\ud83c\udf93"

    aput-object v14, v15, v3

    const-string v14, "\ud83d\udc69\ud83c\udffc\u200d\ud83c\udf93"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83d\udc69\ud83c\udffd\u200d\ud83c\udf93"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\udc69\ud83c\udffe\u200d\ud83c\udf93"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\udc69\ud83c\udfff\u200d\ud83c\udf93"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v4, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x21

    aput-object v4, v8, v14

    new-instance v4, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83e\uddd1\u200d\ud83c\udfeb"

    aput-object v14, v15, v6

    const-string v14, "\ud83e\uddd1\ud83c\udffb\u200d\ud83c\udfeb"

    aput-object v14, v15, v3

    const-string v14, "\ud83e\uddd1\ud83c\udffc\u200d\ud83c\udfeb"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83e\uddd1\ud83c\udffd\u200d\ud83c\udfeb"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83e\uddd1\ud83c\udffe\u200d\ud83c\udfeb"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83e\uddd1\ud83c\udfff\u200d\ud83c\udfeb"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v4, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x22

    aput-object v4, v8, v14

    new-instance v4, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\udc68\u200d\ud83c\udfeb"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\udc68\ud83c\udffb\u200d\ud83c\udfeb"

    aput-object v14, v15, v3

    const-string v14, "\ud83d\udc68\ud83c\udffc\u200d\ud83c\udfeb"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83d\udc68\ud83c\udffd\u200d\ud83c\udfeb"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\udc68\ud83c\udffe\u200d\ud83c\udfeb"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\udc68\ud83c\udfff\u200d\ud83c\udfeb"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v4, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x23

    aput-object v4, v8, v14

    new-instance v4, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\udc69\u200d\ud83c\udfeb"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\udc69\ud83c\udffb\u200d\ud83c\udfeb"

    aput-object v14, v15, v3

    const-string v14, "\ud83d\udc69\ud83c\udffc\u200d\ud83c\udfeb"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83d\udc69\ud83c\udffd\u200d\ud83c\udfeb"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\udc69\ud83c\udffe\u200d\ud83c\udfeb"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\udc69\ud83c\udfff\u200d\ud83c\udfeb"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v4, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x24

    aput-object v4, v8, v14

    new-instance v4, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83e\uddd1\u200d\u2696\ufe0f"

    aput-object v14, v15, v6

    const-string v14, "\ud83e\uddd1\ud83c\udffb\u200d\u2696\ufe0f"

    aput-object v14, v15, v3

    const-string v14, "\ud83e\uddd1\ud83c\udffc\u200d\u2696\ufe0f"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83e\uddd1\ud83c\udffd\u200d\u2696\ufe0f"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83e\uddd1\ud83c\udffe\u200d\u2696\ufe0f"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83e\uddd1\ud83c\udfff\u200d\u2696\ufe0f"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v4, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x25

    aput-object v4, v8, v14

    new-instance v4, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\udc68\u200d\u2696\ufe0f"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\udc68\ud83c\udffb\u200d\u2696\ufe0f"

    aput-object v14, v15, v3

    const-string v14, "\ud83d\udc68\ud83c\udffc\u200d\u2696\ufe0f"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83d\udc68\ud83c\udffd\u200d\u2696\ufe0f"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\udc68\ud83c\udffe\u200d\u2696\ufe0f"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\udc68\ud83c\udfff\u200d\u2696\ufe0f"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v4, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x26

    aput-object v4, v8, v14

    new-instance v4, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\udc69\u200d\u2696\ufe0f"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\udc69\ud83c\udffb\u200d\u2696\ufe0f"

    aput-object v14, v15, v3

    const-string v14, "\ud83d\udc69\ud83c\udffc\u200d\u2696\ufe0f"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83d\udc69\ud83c\udffd\u200d\u2696\ufe0f"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\udc69\ud83c\udffe\u200d\u2696\ufe0f"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\udc69\ud83c\udfff\u200d\u2696\ufe0f"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v4, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x27

    aput-object v4, v8, v14

    new-instance v4, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83e\uddd1\u200d\ud83c\udf3e"

    aput-object v14, v15, v6

    const-string v14, "\ud83e\uddd1\ud83c\udffb\u200d\ud83c\udf3e"

    aput-object v14, v15, v3

    const-string v14, "\ud83e\uddd1\ud83c\udffc\u200d\ud83c\udf3e"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83e\uddd1\ud83c\udffd\u200d\ud83c\udf3e"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83e\uddd1\ud83c\udffe\u200d\ud83c\udf3e"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83e\uddd1\ud83c\udfff\u200d\ud83c\udf3e"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v4, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x28

    aput-object v4, v8, v14

    new-instance v4, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\udc68\u200d\ud83c\udf3e"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\udc68\ud83c\udffb\u200d\ud83c\udf3e"

    aput-object v14, v15, v3

    const-string v14, "\ud83d\udc68\ud83c\udffc\u200d\ud83c\udf3e"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83d\udc68\ud83c\udffd\u200d\ud83c\udf3e"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\udc68\ud83c\udffe\u200d\ud83c\udf3e"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\udc68\ud83c\udfff\u200d\ud83c\udf3e"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v4, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x29

    aput-object v4, v8, v14

    const-string v4, "emoji/People_2.png"

    const v14, 0x7f04020d

    invoke-direct {v5, v14, v8, v4}, Lorg/thoughtcrime/securesms/components/emoji/StaticEmojiPageModel;-><init>(I[Lorg/thoughtcrime/securesms/components/emoji/Emoji;Ljava/lang/String;)V

    sput-object v5, Lorg/thoughtcrime/securesms/components/emoji/EmojiPages;->PAGE_PEOPLE_2:Lorg/thoughtcrime/securesms/components/emoji/EmojiPageModel;

    .line 54
    new-instance v4, Lorg/thoughtcrime/securesms/components/emoji/StaticEmojiPageModel;

    const/16 v8, 0x2a

    new-array v8, v8, [Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v15, 0x6

    new-array v3, v15, [Ljava/lang/String;

    const-string v15, "\ud83d\udc69\u200d\ud83c\udf3e"

    aput-object v15, v3, v6

    const-string v15, "\ud83d\udc69\ud83c\udffb\u200d\ud83c\udf3e"

    const/16 v36, 0x1

    aput-object v15, v3, v36

    const-string v15, "\ud83d\udc69\ud83c\udffc\u200d\ud83c\udf3e"

    const/16 v35, 0x2

    aput-object v15, v3, v35

    const-string v15, "\ud83d\udc69\ud83c\udffd\u200d\ud83c\udf3e"

    const/16 v34, 0x3

    aput-object v15, v3, v34

    const-string v15, "\ud83d\udc69\ud83c\udffe\u200d\ud83c\udf3e"

    const/16 v33, 0x4

    aput-object v15, v3, v33

    const-string v15, "\ud83d\udc69\ud83c\udfff\u200d\ud83c\udf3e"

    const/16 v32, 0x5

    aput-object v15, v3, v32

    invoke-direct {v14, v3}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    aput-object v14, v8, v6

    new-instance v3, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83e\uddd1\u200d\ud83c\udf73"

    aput-object v14, v15, v6

    const-string v14, "\ud83e\uddd1\ud83c\udffb\u200d\ud83c\udf73"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83e\uddd1\ud83c\udffc\u200d\ud83c\udf73"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83e\uddd1\ud83c\udffd\u200d\ud83c\udf73"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83e\uddd1\ud83c\udffe\u200d\ud83c\udf73"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83e\uddd1\ud83c\udfff\u200d\ud83c\udf73"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v3, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    aput-object v3, v8, v36

    new-instance v3, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\udc68\u200d\ud83c\udf73"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\udc68\ud83c\udffb\u200d\ud83c\udf73"

    aput-object v14, v15, v36

    const-string v14, "\ud83d\udc68\ud83c\udffc\u200d\ud83c\udf73"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83d\udc68\ud83c\udffd\u200d\ud83c\udf73"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\udc68\ud83c\udffe\u200d\ud83c\udf73"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\udc68\ud83c\udfff\u200d\ud83c\udf73"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v3, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    aput-object v3, v8, v35

    new-instance v3, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\udc69\u200d\ud83c\udf73"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\udc69\ud83c\udffb\u200d\ud83c\udf73"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83d\udc69\ud83c\udffc\u200d\ud83c\udf73"

    aput-object v14, v15, v35

    const-string v14, "\ud83d\udc69\ud83c\udffd\u200d\ud83c\udf73"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\udc69\ud83c\udffe\u200d\ud83c\udf73"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\udc69\ud83c\udfff\u200d\ud83c\udf73"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v3, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    aput-object v3, v8, v34

    new-instance v3, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83e\uddd1\u200d\ud83d\udd27"

    aput-object v14, v15, v6

    const-string v14, "\ud83e\uddd1\ud83c\udffb\u200d\ud83d\udd27"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83e\uddd1\ud83c\udffc\u200d\ud83d\udd27"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83e\uddd1\ud83c\udffd\u200d\ud83d\udd27"

    aput-object v14, v15, v34

    const-string v14, "\ud83e\uddd1\ud83c\udffe\u200d\ud83d\udd27"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83e\uddd1\ud83c\udfff\u200d\ud83d\udd27"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v3, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    aput-object v3, v8, v33

    new-instance v3, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\udc68\u200d\ud83d\udd27"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\udc68\ud83c\udffb\u200d\ud83d\udd27"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83d\udc68\ud83c\udffc\u200d\ud83d\udd27"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83d\udc68\ud83c\udffd\u200d\ud83d\udd27"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\udc68\ud83c\udffe\u200d\ud83d\udd27"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\udc68\ud83c\udfff\u200d\ud83d\udd27"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v3, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    aput-object v3, v8, v32

    new-instance v3, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\udc69\u200d\ud83d\udd27"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\udc69\ud83c\udffb\u200d\ud83d\udd27"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83d\udc69\ud83c\udffc\u200d\ud83d\udd27"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83d\udc69\ud83c\udffd\u200d\ud83d\udd27"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\udc69\ud83c\udffe\u200d\ud83d\udd27"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\udc69\ud83c\udfff\u200d\ud83d\udd27"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v3, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/4 v14, 0x6

    aput-object v3, v8, v14

    new-instance v3, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83e\uddd1\u200d\ud83c\udfed"

    aput-object v14, v15, v6

    const-string v14, "\ud83e\uddd1\ud83c\udffb\u200d\ud83c\udfed"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83e\uddd1\ud83c\udffc\u200d\ud83c\udfed"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83e\uddd1\ud83c\udffd\u200d\ud83c\udfed"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83e\uddd1\ud83c\udffe\u200d\ud83c\udfed"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83e\uddd1\ud83c\udfff\u200d\ud83c\udfed"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v3, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/4 v14, 0x7

    aput-object v3, v8, v14

    new-instance v3, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\udc68\u200d\ud83c\udfed"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\udc68\ud83c\udffb\u200d\ud83c\udfed"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83d\udc68\ud83c\udffc\u200d\ud83c\udfed"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83d\udc68\ud83c\udffd\u200d\ud83c\udfed"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\udc68\ud83c\udffe\u200d\ud83c\udfed"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\udc68\ud83c\udfff\u200d\ud83c\udfed"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v3, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x8

    aput-object v3, v8, v14

    new-instance v3, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\udc69\u200d\ud83c\udfed"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\udc69\ud83c\udffb\u200d\ud83c\udfed"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83d\udc69\ud83c\udffc\u200d\ud83c\udfed"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83d\udc69\ud83c\udffd\u200d\ud83c\udfed"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\udc69\ud83c\udffe\u200d\ud83c\udfed"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\udc69\ud83c\udfff\u200d\ud83c\udfed"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v3, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x9

    aput-object v3, v8, v14

    new-instance v3, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83e\uddd1\u200d\ud83d\udcbc"

    aput-object v14, v15, v6

    const-string v14, "\ud83e\uddd1\ud83c\udffb\u200d\ud83d\udcbc"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83e\uddd1\ud83c\udffc\u200d\ud83d\udcbc"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83e\uddd1\ud83c\udffd\u200d\ud83d\udcbc"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83e\uddd1\ud83c\udffe\u200d\ud83d\udcbc"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83e\uddd1\ud83c\udfff\u200d\ud83d\udcbc"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v3, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xa

    aput-object v3, v8, v14

    new-instance v3, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\udc68\u200d\ud83d\udcbc"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\udc68\ud83c\udffb\u200d\ud83d\udcbc"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83d\udc68\ud83c\udffc\u200d\ud83d\udcbc"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83d\udc68\ud83c\udffd\u200d\ud83d\udcbc"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\udc68\ud83c\udffe\u200d\ud83d\udcbc"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\udc68\ud83c\udfff\u200d\ud83d\udcbc"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v3, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xb

    aput-object v3, v8, v14

    new-instance v3, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\udc69\u200d\ud83d\udcbc"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\udc69\ud83c\udffb\u200d\ud83d\udcbc"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83d\udc69\ud83c\udffc\u200d\ud83d\udcbc"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83d\udc69\ud83c\udffd\u200d\ud83d\udcbc"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\udc69\ud83c\udffe\u200d\ud83d\udcbc"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\udc69\ud83c\udfff\u200d\ud83d\udcbc"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v3, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xc

    aput-object v3, v8, v14

    new-instance v3, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83e\uddd1\u200d\ud83d\udd2c"

    aput-object v14, v15, v6

    const-string v14, "\ud83e\uddd1\ud83c\udffb\u200d\ud83d\udd2c"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83e\uddd1\ud83c\udffc\u200d\ud83d\udd2c"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83e\uddd1\ud83c\udffd\u200d\ud83d\udd2c"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83e\uddd1\ud83c\udffe\u200d\ud83d\udd2c"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83e\uddd1\ud83c\udfff\u200d\ud83d\udd2c"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v3, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xd

    aput-object v3, v8, v14

    new-instance v3, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\udc68\u200d\ud83d\udd2c"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\udc68\ud83c\udffb\u200d\ud83d\udd2c"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83d\udc68\ud83c\udffc\u200d\ud83d\udd2c"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83d\udc68\ud83c\udffd\u200d\ud83d\udd2c"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\udc68\ud83c\udffe\u200d\ud83d\udd2c"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\udc68\ud83c\udfff\u200d\ud83d\udd2c"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v3, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xe

    aput-object v3, v8, v14

    new-instance v3, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\udc69\u200d\ud83d\udd2c"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\udc69\ud83c\udffb\u200d\ud83d\udd2c"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83d\udc69\ud83c\udffc\u200d\ud83d\udd2c"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83d\udc69\ud83c\udffd\u200d\ud83d\udd2c"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\udc69\ud83c\udffe\u200d\ud83d\udd2c"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\udc69\ud83c\udfff\u200d\ud83d\udd2c"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v3, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xf

    aput-object v3, v8, v14

    new-instance v3, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83e\uddd1\u200d\ud83d\udcbb"

    aput-object v14, v15, v6

    const-string v14, "\ud83e\uddd1\ud83c\udffb\u200d\ud83d\udcbb"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83e\uddd1\ud83c\udffc\u200d\ud83d\udcbb"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83e\uddd1\ud83c\udffd\u200d\ud83d\udcbb"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83e\uddd1\ud83c\udffe\u200d\ud83d\udcbb"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83e\uddd1\ud83c\udfff\u200d\ud83d\udcbb"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v3, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x10

    aput-object v3, v8, v14

    new-instance v3, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\udc68\u200d\ud83d\udcbb"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\udc68\ud83c\udffb\u200d\ud83d\udcbb"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83d\udc68\ud83c\udffc\u200d\ud83d\udcbb"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83d\udc68\ud83c\udffd\u200d\ud83d\udcbb"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\udc68\ud83c\udffe\u200d\ud83d\udcbb"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\udc68\ud83c\udfff\u200d\ud83d\udcbb"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v3, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x11

    aput-object v3, v8, v14

    new-instance v3, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\udc69\u200d\ud83d\udcbb"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\udc69\ud83c\udffb\u200d\ud83d\udcbb"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83d\udc69\ud83c\udffc\u200d\ud83d\udcbb"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83d\udc69\ud83c\udffd\u200d\ud83d\udcbb"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\udc69\ud83c\udffe\u200d\ud83d\udcbb"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\udc69\ud83c\udfff\u200d\ud83d\udcbb"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v3, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x12

    aput-object v3, v8, v14

    new-instance v3, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83e\uddd1\u200d\ud83c\udfa4"

    aput-object v14, v15, v6

    const-string v14, "\ud83e\uddd1\ud83c\udffb\u200d\ud83c\udfa4"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83e\uddd1\ud83c\udffc\u200d\ud83c\udfa4"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83e\uddd1\ud83c\udffd\u200d\ud83c\udfa4"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83e\uddd1\ud83c\udffe\u200d\ud83c\udfa4"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83e\uddd1\ud83c\udfff\u200d\ud83c\udfa4"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v3, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x13

    aput-object v3, v8, v14

    new-instance v3, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\udc68\u200d\ud83c\udfa4"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\udc68\ud83c\udffb\u200d\ud83c\udfa4"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83d\udc68\ud83c\udffc\u200d\ud83c\udfa4"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83d\udc68\ud83c\udffd\u200d\ud83c\udfa4"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\udc68\ud83c\udffe\u200d\ud83c\udfa4"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\udc68\ud83c\udfff\u200d\ud83c\udfa4"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v3, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x14

    aput-object v3, v8, v14

    new-instance v3, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\udc69\u200d\ud83c\udfa4"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\udc69\ud83c\udffb\u200d\ud83c\udfa4"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83d\udc69\ud83c\udffc\u200d\ud83c\udfa4"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83d\udc69\ud83c\udffd\u200d\ud83c\udfa4"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\udc69\ud83c\udffe\u200d\ud83c\udfa4"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\udc69\ud83c\udfff\u200d\ud83c\udfa4"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v3, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x15

    aput-object v3, v8, v14

    new-instance v3, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83e\uddd1\u200d\ud83c\udfa8"

    aput-object v14, v15, v6

    const-string v14, "\ud83e\uddd1\ud83c\udffb\u200d\ud83c\udfa8"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83e\uddd1\ud83c\udffc\u200d\ud83c\udfa8"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83e\uddd1\ud83c\udffd\u200d\ud83c\udfa8"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83e\uddd1\ud83c\udffe\u200d\ud83c\udfa8"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83e\uddd1\ud83c\udfff\u200d\ud83c\udfa8"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v3, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x16

    aput-object v3, v8, v14

    new-instance v3, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\udc68\u200d\ud83c\udfa8"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\udc68\ud83c\udffb\u200d\ud83c\udfa8"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83d\udc68\ud83c\udffc\u200d\ud83c\udfa8"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83d\udc68\ud83c\udffd\u200d\ud83c\udfa8"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\udc68\ud83c\udffe\u200d\ud83c\udfa8"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\udc68\ud83c\udfff\u200d\ud83c\udfa8"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v3, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x17

    aput-object v3, v8, v14

    new-instance v3, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\udc69\u200d\ud83c\udfa8"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\udc69\ud83c\udffb\u200d\ud83c\udfa8"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83d\udc69\ud83c\udffc\u200d\ud83c\udfa8"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83d\udc69\ud83c\udffd\u200d\ud83c\udfa8"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\udc69\ud83c\udffe\u200d\ud83c\udfa8"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\udc69\ud83c\udfff\u200d\ud83c\udfa8"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v3, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x18

    aput-object v3, v8, v14

    new-instance v3, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83e\uddd1\u200d\u2708\ufe0f"

    aput-object v14, v15, v6

    const-string v14, "\ud83e\uddd1\ud83c\udffb\u200d\u2708\ufe0f"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83e\uddd1\ud83c\udffc\u200d\u2708\ufe0f"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83e\uddd1\ud83c\udffd\u200d\u2708\ufe0f"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83e\uddd1\ud83c\udffe\u200d\u2708\ufe0f"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83e\uddd1\ud83c\udfff\u200d\u2708\ufe0f"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v3, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x19

    aput-object v3, v8, v14

    new-instance v3, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\udc68\u200d\u2708\ufe0f"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\udc68\ud83c\udffb\u200d\u2708\ufe0f"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83d\udc68\ud83c\udffc\u200d\u2708\ufe0f"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83d\udc68\ud83c\udffd\u200d\u2708\ufe0f"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\udc68\ud83c\udffe\u200d\u2708\ufe0f"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\udc68\ud83c\udfff\u200d\u2708\ufe0f"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v3, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x1a

    aput-object v3, v8, v14

    new-instance v3, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\udc69\u200d\u2708\ufe0f"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\udc69\ud83c\udffb\u200d\u2708\ufe0f"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83d\udc69\ud83c\udffc\u200d\u2708\ufe0f"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83d\udc69\ud83c\udffd\u200d\u2708\ufe0f"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\udc69\ud83c\udffe\u200d\u2708\ufe0f"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\udc69\ud83c\udfff\u200d\u2708\ufe0f"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v3, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x1b

    aput-object v3, v8, v14

    new-instance v3, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83e\uddd1\u200d\ud83d\ude80"

    aput-object v14, v15, v6

    const-string v14, "\ud83e\uddd1\ud83c\udffb\u200d\ud83d\ude80"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83e\uddd1\ud83c\udffc\u200d\ud83d\ude80"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83e\uddd1\ud83c\udffd\u200d\ud83d\ude80"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83e\uddd1\ud83c\udffe\u200d\ud83d\ude80"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83e\uddd1\ud83c\udfff\u200d\ud83d\ude80"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v3, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x1c

    aput-object v3, v8, v14

    new-instance v3, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\udc68\u200d\ud83d\ude80"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\udc68\ud83c\udffb\u200d\ud83d\ude80"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83d\udc68\ud83c\udffc\u200d\ud83d\ude80"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83d\udc68\ud83c\udffd\u200d\ud83d\ude80"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\udc68\ud83c\udffe\u200d\ud83d\ude80"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\udc68\ud83c\udfff\u200d\ud83d\ude80"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v3, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x1d

    aput-object v3, v8, v14

    new-instance v3, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\udc69\u200d\ud83d\ude80"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\udc69\ud83c\udffb\u200d\ud83d\ude80"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83d\udc69\ud83c\udffc\u200d\ud83d\ude80"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83d\udc69\ud83c\udffd\u200d\ud83d\ude80"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\udc69\ud83c\udffe\u200d\ud83d\ude80"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\udc69\ud83c\udfff\u200d\ud83d\ude80"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v3, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x1e

    aput-object v3, v8, v14

    new-instance v3, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83e\uddd1\u200d\ud83d\ude92"

    aput-object v14, v15, v6

    const-string v14, "\ud83e\uddd1\ud83c\udffb\u200d\ud83d\ude92"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83e\uddd1\ud83c\udffc\u200d\ud83d\ude92"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83e\uddd1\ud83c\udffd\u200d\ud83d\ude92"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83e\uddd1\ud83c\udffe\u200d\ud83d\ude92"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83e\uddd1\ud83c\udfff\u200d\ud83d\ude92"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v3, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x1f

    aput-object v3, v8, v14

    new-instance v3, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\udc68\u200d\ud83d\ude92"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\udc68\ud83c\udffb\u200d\ud83d\ude92"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83d\udc68\ud83c\udffc\u200d\ud83d\ude92"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83d\udc68\ud83c\udffd\u200d\ud83d\ude92"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\udc68\ud83c\udffe\u200d\ud83d\ude92"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\udc68\ud83c\udfff\u200d\ud83d\ude92"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v3, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x20

    aput-object v3, v8, v14

    new-instance v3, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\udc69\u200d\ud83d\ude92"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\udc69\ud83c\udffb\u200d\ud83d\ude92"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83d\udc69\ud83c\udffc\u200d\ud83d\ude92"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83d\udc69\ud83c\udffd\u200d\ud83d\ude92"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\udc69\ud83c\udffe\u200d\ud83d\ude92"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\udc69\ud83c\udfff\u200d\ud83d\ude92"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v3, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x21

    aput-object v3, v8, v14

    new-instance v3, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\udc6e\u200d\u2642\ufe0f"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\udc6e\ud83c\udffb\u200d\u2642\ufe0f"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83d\udc6e\ud83c\udffc\u200d\u2642\ufe0f"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83d\udc6e\ud83c\udffd\u200d\u2642\ufe0f"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\udc6e\ud83c\udffe\u200d\u2642\ufe0f"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\udc6e\ud83c\udfff\u200d\u2642\ufe0f"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v3, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x22

    aput-object v3, v8, v14

    new-instance v3, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\udc6e\u200d\u2640\ufe0f"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\udc6e\ud83c\udffb\u200d\u2640\ufe0f"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83d\udc6e\ud83c\udffc\u200d\u2640\ufe0f"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83d\udc6e\ud83c\udffd\u200d\u2640\ufe0f"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\udc6e\ud83c\udffe\u200d\u2640\ufe0f"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\udc6e\ud83c\udfff\u200d\u2640\ufe0f"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v3, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x23

    aput-object v3, v8, v14

    new-instance v3, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\udd75\ufe0f\u200d\u2642\ufe0f"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\udd75\ud83c\udffb\u200d\u2642\ufe0f"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83d\udd75\ud83c\udffc\u200d\u2642\ufe0f"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83d\udd75\ud83c\udffd\u200d\u2642\ufe0f"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\udd75\ud83c\udffe\u200d\u2642\ufe0f"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\udd75\ud83c\udfff\u200d\u2642\ufe0f"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v3, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x24

    aput-object v3, v8, v14

    new-instance v3, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\udd75\ufe0f\u200d\u2640\ufe0f"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\udd75\ud83c\udffb\u200d\u2640\ufe0f"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83d\udd75\ud83c\udffc\u200d\u2640\ufe0f"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83d\udd75\ud83c\udffd\u200d\u2640\ufe0f"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\udd75\ud83c\udffe\u200d\u2640\ufe0f"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\udd75\ud83c\udfff\u200d\u2640\ufe0f"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v3, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x25

    aput-object v3, v8, v14

    new-instance v3, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\udc82\u200d\u2642\ufe0f"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\udc82\ud83c\udffb\u200d\u2642\ufe0f"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83d\udc82\ud83c\udffc\u200d\u2642\ufe0f"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83d\udc82\ud83c\udffd\u200d\u2642\ufe0f"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\udc82\ud83c\udffe\u200d\u2642\ufe0f"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\udc82\ud83c\udfff\u200d\u2642\ufe0f"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v3, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x26

    aput-object v3, v8, v14

    new-instance v3, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\udc82\u200d\u2640\ufe0f"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\udc82\ud83c\udffb\u200d\u2640\ufe0f"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83d\udc82\ud83c\udffc\u200d\u2640\ufe0f"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83d\udc82\ud83c\udffd\u200d\u2640\ufe0f"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\udc82\ud83c\udffe\u200d\u2640\ufe0f"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\udc82\ud83c\udfff\u200d\u2640\ufe0f"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v3, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x27

    aput-object v3, v8, v14

    new-instance v3, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\udc77\u200d\u2642\ufe0f"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\udc77\ud83c\udffb\u200d\u2642\ufe0f"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83d\udc77\ud83c\udffc\u200d\u2642\ufe0f"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83d\udc77\ud83c\udffd\u200d\u2642\ufe0f"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\udc77\ud83c\udffe\u200d\u2642\ufe0f"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\udc77\ud83c\udfff\u200d\u2642\ufe0f"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v3, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x28

    aput-object v3, v8, v14

    new-instance v3, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\udc77\u200d\u2640\ufe0f"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\udc77\ud83c\udffb\u200d\u2640\ufe0f"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83d\udc77\ud83c\udffc\u200d\u2640\ufe0f"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83d\udc77\ud83c\udffd\u200d\u2640\ufe0f"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\udc77\ud83c\udffe\u200d\u2640\ufe0f"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\udc77\ud83c\udfff\u200d\u2640\ufe0f"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v3, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x29

    aput-object v3, v8, v14

    const-string v3, "emoji/People_3.png"

    const v14, 0x7f04020d

    invoke-direct {v4, v14, v8, v3}, Lorg/thoughtcrime/securesms/components/emoji/StaticEmojiPageModel;-><init>(I[Lorg/thoughtcrime/securesms/components/emoji/Emoji;Ljava/lang/String;)V

    sput-object v4, Lorg/thoughtcrime/securesms/components/emoji/EmojiPages;->PAGE_PEOPLE_3:Lorg/thoughtcrime/securesms/components/emoji/EmojiPageModel;

    .line 58
    new-instance v3, Lorg/thoughtcrime/securesms/components/emoji/StaticEmojiPageModel;

    const/16 v8, 0x2e

    new-array v8, v8, [Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    move-object/from16 v37, v11

    const/4 v15, 0x6

    new-array v11, v15, [Ljava/lang/String;

    const-string v15, "\ud83e\udd34"

    aput-object v15, v11, v6

    const-string v15, "\ud83e\udd34\ud83c\udffb"

    const/16 v36, 0x1

    aput-object v15, v11, v36

    const-string v15, "\ud83e\udd34\ud83c\udffc"

    const/16 v35, 0x2

    aput-object v15, v11, v35

    const-string v15, "\ud83e\udd34\ud83c\udffd"

    const/16 v34, 0x3

    aput-object v15, v11, v34

    const-string v15, "\ud83e\udd34\ud83c\udffe"

    const/16 v33, 0x4

    aput-object v15, v11, v33

    const-string v15, "\ud83e\udd34\ud83c\udfff"

    const/16 v32, 0x5

    aput-object v15, v11, v32

    invoke-direct {v14, v11}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    aput-object v14, v8, v6

    new-instance v11, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\udc78"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\udc78\ud83c\udffb"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83d\udc78\ud83c\udffc"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83d\udc78\ud83c\udffd"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\udc78\ud83c\udffe"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\udc78\ud83c\udfff"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v11, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    aput-object v11, v8, v36

    new-instance v11, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\udc73\u200d\u2642\ufe0f"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\udc73\ud83c\udffb\u200d\u2642\ufe0f"

    aput-object v14, v15, v36

    const-string v14, "\ud83d\udc73\ud83c\udffc\u200d\u2642\ufe0f"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83d\udc73\ud83c\udffd\u200d\u2642\ufe0f"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\udc73\ud83c\udffe\u200d\u2642\ufe0f"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\udc73\ud83c\udfff\u200d\u2642\ufe0f"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v11, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    aput-object v11, v8, v35

    new-instance v11, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\udc73\u200d\u2640\ufe0f"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\udc73\ud83c\udffb\u200d\u2640\ufe0f"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83d\udc73\ud83c\udffc\u200d\u2640\ufe0f"

    aput-object v14, v15, v35

    const-string v14, "\ud83d\udc73\ud83c\udffd\u200d\u2640\ufe0f"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\udc73\ud83c\udffe\u200d\u2640\ufe0f"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\udc73\ud83c\udfff\u200d\u2640\ufe0f"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v11, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    aput-object v11, v8, v34

    new-instance v11, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\udc72"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\udc72\ud83c\udffb"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83d\udc72\ud83c\udffc"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83d\udc72\ud83c\udffd"

    aput-object v14, v15, v34

    const-string v14, "\ud83d\udc72\ud83c\udffe"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\udc72\ud83c\udfff"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v11, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    aput-object v11, v8, v33

    new-instance v11, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83e\uddd5"

    aput-object v14, v15, v6

    const-string v14, "\ud83e\uddd5\ud83c\udffb"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83e\uddd5\ud83c\udffc"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83e\uddd5\ud83c\udffd"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83e\uddd5\ud83c\udffe"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83e\uddd5\ud83c\udfff"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v11, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    aput-object v11, v8, v32

    new-instance v11, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83e\udd35"

    aput-object v14, v15, v6

    const-string v14, "\ud83e\udd35\ud83c\udffb"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83e\udd35\ud83c\udffc"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83e\udd35\ud83c\udffd"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83e\udd35\ud83c\udffe"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83e\udd35\ud83c\udfff"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v11, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/4 v14, 0x6

    aput-object v11, v8, v14

    new-instance v11, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\udc70"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\udc70\ud83c\udffb"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83d\udc70\ud83c\udffc"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83d\udc70\ud83c\udffd"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\udc70\ud83c\udffe"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\udc70\ud83c\udfff"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v11, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/4 v14, 0x7

    aput-object v11, v8, v14

    new-instance v11, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83e\udd30"

    aput-object v14, v15, v6

    const-string v14, "\ud83e\udd30\ud83c\udffb"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83e\udd30\ud83c\udffc"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83e\udd30\ud83c\udffd"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83e\udd30\ud83c\udffe"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83e\udd30\ud83c\udfff"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v11, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x8

    aput-object v11, v8, v14

    new-instance v11, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83e\udd31"

    aput-object v14, v15, v6

    const-string v14, "\ud83e\udd31\ud83c\udffb"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83e\udd31\ud83c\udffc"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83e\udd31\ud83c\udffd"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83e\udd31\ud83c\udffe"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83e\udd31\ud83c\udfff"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v11, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x9

    aput-object v11, v8, v14

    new-instance v11, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\udc7c"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\udc7c\ud83c\udffb"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83d\udc7c\ud83c\udffc"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83d\udc7c\ud83c\udffd"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\udc7c\ud83c\udffe"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\udc7c\ud83c\udfff"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v11, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xa

    aput-object v11, v8, v14

    new-instance v11, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83c\udf85"

    aput-object v14, v15, v6

    const-string v14, "\ud83c\udf85\ud83c\udffb"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83c\udf85\ud83c\udffc"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83c\udf85\ud83c\udffd"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83c\udf85\ud83c\udffe"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83c\udf85\ud83c\udfff"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v11, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xb

    aput-object v11, v8, v14

    new-instance v11, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83e\udd36"

    aput-object v14, v15, v6

    const-string v14, "\ud83e\udd36\ud83c\udffb"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83e\udd36\ud83c\udffc"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83e\udd36\ud83c\udffd"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83e\udd36\ud83c\udffe"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83e\udd36\ud83c\udfff"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v11, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xc

    aput-object v11, v8, v14

    new-instance v11, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83e\uddb8"

    aput-object v14, v15, v6

    const-string v14, "\ud83e\uddb8\ud83c\udffb"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83e\uddb8\ud83c\udffc"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83e\uddb8\ud83c\udffd"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83e\uddb8\ud83c\udffe"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83e\uddb8\ud83c\udfff"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v11, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xd

    aput-object v11, v8, v14

    new-instance v11, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83e\uddb8\u200d\u2642\ufe0f"

    aput-object v14, v15, v6

    const-string v14, "\ud83e\uddb8\ud83c\udffb\u200d\u2642\ufe0f"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83e\uddb8\ud83c\udffc\u200d\u2642\ufe0f"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83e\uddb8\ud83c\udffd\u200d\u2642\ufe0f"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83e\uddb8\ud83c\udffe\u200d\u2642\ufe0f"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83e\uddb8\ud83c\udfff\u200d\u2642\ufe0f"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v11, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xe

    aput-object v11, v8, v14

    new-instance v11, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83e\uddb8\u200d\u2640\ufe0f"

    aput-object v14, v15, v6

    const-string v14, "\ud83e\uddb8\ud83c\udffb\u200d\u2640\ufe0f"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83e\uddb8\ud83c\udffc\u200d\u2640\ufe0f"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83e\uddb8\ud83c\udffd\u200d\u2640\ufe0f"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83e\uddb8\ud83c\udffe\u200d\u2640\ufe0f"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83e\uddb8\ud83c\udfff\u200d\u2640\ufe0f"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v11, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xf

    aput-object v11, v8, v14

    new-instance v11, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83e\uddb9"

    aput-object v14, v15, v6

    const-string v14, "\ud83e\uddb9\ud83c\udffb"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83e\uddb9\ud83c\udffc"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83e\uddb9\ud83c\udffd"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83e\uddb9\ud83c\udffe"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83e\uddb9\ud83c\udfff"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v11, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x10

    aput-object v11, v8, v14

    new-instance v11, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83e\uddb9\u200d\u2642\ufe0f"

    aput-object v14, v15, v6

    const-string v14, "\ud83e\uddb9\ud83c\udffb\u200d\u2642\ufe0f"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83e\uddb9\ud83c\udffc\u200d\u2642\ufe0f"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83e\uddb9\ud83c\udffd\u200d\u2642\ufe0f"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83e\uddb9\ud83c\udffe\u200d\u2642\ufe0f"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83e\uddb9\ud83c\udfff\u200d\u2642\ufe0f"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v11, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x11

    aput-object v11, v8, v14

    new-instance v11, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83e\uddb9\u200d\u2640\ufe0f"

    aput-object v14, v15, v6

    const-string v14, "\ud83e\uddb9\ud83c\udffb\u200d\u2640\ufe0f"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83e\uddb9\ud83c\udffc\u200d\u2640\ufe0f"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83e\uddb9\ud83c\udffd\u200d\u2640\ufe0f"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83e\uddb9\ud83c\udffe\u200d\u2640\ufe0f"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83e\uddb9\ud83c\udfff\u200d\u2640\ufe0f"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v11, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x12

    aput-object v11, v8, v14

    new-instance v11, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83e\uddd9\u200d\u2642\ufe0f"

    aput-object v14, v15, v6

    const-string v14, "\ud83e\uddd9\ud83c\udffb\u200d\u2642\ufe0f"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83e\uddd9\ud83c\udffc\u200d\u2642\ufe0f"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83e\uddd9\ud83c\udffd\u200d\u2642\ufe0f"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83e\uddd9\ud83c\udffe\u200d\u2642\ufe0f"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83e\uddd9\ud83c\udfff\u200d\u2642\ufe0f"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v11, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x13

    aput-object v11, v8, v14

    new-instance v11, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83e\uddd9\u200d\u2640\ufe0f"

    aput-object v14, v15, v6

    const-string v14, "\ud83e\uddd9\ud83c\udffb\u200d\u2640\ufe0f"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83e\uddd9\ud83c\udffc\u200d\u2640\ufe0f"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83e\uddd9\ud83c\udffd\u200d\u2640\ufe0f"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83e\uddd9\ud83c\udffe\u200d\u2640\ufe0f"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83e\uddd9\ud83c\udfff\u200d\u2640\ufe0f"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v11, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x14

    aput-object v11, v8, v14

    new-instance v11, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83e\uddda\u200d\u2642\ufe0f"

    aput-object v14, v15, v6

    const-string v14, "\ud83e\uddda\ud83c\udffb\u200d\u2642\ufe0f"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83e\uddda\ud83c\udffc\u200d\u2642\ufe0f"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83e\uddda\ud83c\udffd\u200d\u2642\ufe0f"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83e\uddda\ud83c\udffe\u200d\u2642\ufe0f"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83e\uddda\ud83c\udfff\u200d\u2642\ufe0f"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v11, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x15

    aput-object v11, v8, v14

    new-instance v11, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83e\uddda\u200d\u2640\ufe0f"

    aput-object v14, v15, v6

    const-string v14, "\ud83e\uddda\ud83c\udffb\u200d\u2640\ufe0f"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83e\uddda\ud83c\udffc\u200d\u2640\ufe0f"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83e\uddda\ud83c\udffd\u200d\u2640\ufe0f"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83e\uddda\ud83c\udffe\u200d\u2640\ufe0f"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83e\uddda\ud83c\udfff\u200d\u2640\ufe0f"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v11, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x16

    aput-object v11, v8, v14

    new-instance v11, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83e\udddb\u200d\u2642\ufe0f"

    aput-object v14, v15, v6

    const-string v14, "\ud83e\udddb\ud83c\udffb\u200d\u2642\ufe0f"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83e\udddb\ud83c\udffc\u200d\u2642\ufe0f"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83e\udddb\ud83c\udffd\u200d\u2642\ufe0f"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83e\udddb\ud83c\udffe\u200d\u2642\ufe0f"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83e\udddb\ud83c\udfff\u200d\u2642\ufe0f"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v11, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x17

    aput-object v11, v8, v14

    new-instance v11, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83e\udddb\u200d\u2640\ufe0f"

    aput-object v14, v15, v6

    const-string v14, "\ud83e\udddb\ud83c\udffb\u200d\u2640\ufe0f"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83e\udddb\ud83c\udffc\u200d\u2640\ufe0f"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83e\udddb\ud83c\udffd\u200d\u2640\ufe0f"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83e\udddb\ud83c\udffe\u200d\u2640\ufe0f"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83e\udddb\ud83c\udfff\u200d\u2640\ufe0f"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v11, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x18

    aput-object v11, v8, v14

    new-instance v11, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83e\udddc\u200d\u2642\ufe0f"

    aput-object v14, v15, v6

    const-string v14, "\ud83e\udddc\ud83c\udffb\u200d\u2642\ufe0f"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83e\udddc\ud83c\udffc\u200d\u2642\ufe0f"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83e\udddc\ud83c\udffd\u200d\u2642\ufe0f"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83e\udddc\ud83c\udffe\u200d\u2642\ufe0f"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83e\udddc\ud83c\udfff\u200d\u2642\ufe0f"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v11, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x19

    aput-object v11, v8, v14

    new-instance v11, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83e\udddc\u200d\u2640\ufe0f"

    aput-object v14, v15, v6

    const-string v14, "\ud83e\udddc\ud83c\udffb\u200d\u2640\ufe0f"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83e\udddc\ud83c\udffc\u200d\u2640\ufe0f"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83e\udddc\ud83c\udffd\u200d\u2640\ufe0f"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83e\udddc\ud83c\udffe\u200d\u2640\ufe0f"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83e\udddc\ud83c\udfff\u200d\u2640\ufe0f"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v11, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x1a

    aput-object v11, v8, v14

    new-instance v11, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83e\udddd\u200d\u2642\ufe0f"

    aput-object v14, v15, v6

    const-string v14, "\ud83e\udddd\ud83c\udffb\u200d\u2642\ufe0f"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83e\udddd\ud83c\udffc\u200d\u2642\ufe0f"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83e\udddd\ud83c\udffd\u200d\u2642\ufe0f"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83e\udddd\ud83c\udffe\u200d\u2642\ufe0f"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83e\udddd\ud83c\udfff\u200d\u2642\ufe0f"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v11, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x1b

    aput-object v11, v8, v14

    new-instance v11, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83e\udddd\u200d\u2640\ufe0f"

    aput-object v14, v15, v6

    const-string v14, "\ud83e\udddd\ud83c\udffb\u200d\u2640\ufe0f"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83e\udddd\ud83c\udffc\u200d\u2640\ufe0f"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83e\udddd\ud83c\udffd\u200d\u2640\ufe0f"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83e\udddd\ud83c\udffe\u200d\u2640\ufe0f"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83e\udddd\ud83c\udfff\u200d\u2640\ufe0f"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v11, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x1c

    aput-object v11, v8, v14

    new-instance v11, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x1

    new-array v15, v14, [Ljava/lang/String;

    const-string v36, "\ud83e\uddde\u200d\u2642\ufe0f"

    aput-object v36, v15, v6

    invoke-direct {v11, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x1d

    aput-object v11, v8, v15

    new-instance v11, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v14, [Ljava/lang/String;

    const-string v36, "\ud83e\uddde\u200d\u2640\ufe0f"

    aput-object v36, v15, v6

    invoke-direct {v11, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x1e

    aput-object v11, v8, v15

    new-instance v11, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v14, [Ljava/lang/String;

    const-string v36, "\ud83e\udddf\u200d\u2642\ufe0f"

    aput-object v36, v15, v6

    invoke-direct {v11, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x1f

    aput-object v11, v8, v15

    new-instance v11, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v14, [Ljava/lang/String;

    const-string v36, "\ud83e\udddf\u200d\u2640\ufe0f"

    aput-object v36, v15, v6

    invoke-direct {v11, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x20

    aput-object v11, v8, v15

    new-instance v11, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v15, 0x6

    new-array v14, v15, [Ljava/lang/String;

    const-string v15, "\ud83d\udc86\u200d\u2642\ufe0f"

    aput-object v15, v14, v6

    const-string v15, "\ud83d\udc86\ud83c\udffb\u200d\u2642\ufe0f"

    const/16 v36, 0x1

    aput-object v15, v14, v36

    const-string v15, "\ud83d\udc86\ud83c\udffc\u200d\u2642\ufe0f"

    const/16 v35, 0x2

    aput-object v15, v14, v35

    const-string v15, "\ud83d\udc86\ud83c\udffd\u200d\u2642\ufe0f"

    const/16 v34, 0x3

    aput-object v15, v14, v34

    const-string v15, "\ud83d\udc86\ud83c\udffe\u200d\u2642\ufe0f"

    const/16 v33, 0x4

    aput-object v15, v14, v33

    const-string v15, "\ud83d\udc86\ud83c\udfff\u200d\u2642\ufe0f"

    const/16 v32, 0x5

    aput-object v15, v14, v32

    invoke-direct {v11, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x21

    aput-object v11, v8, v14

    new-instance v11, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\udc86\u200d\u2640\ufe0f"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\udc86\ud83c\udffb\u200d\u2640\ufe0f"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83d\udc86\ud83c\udffc\u200d\u2640\ufe0f"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83d\udc86\ud83c\udffd\u200d\u2640\ufe0f"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\udc86\ud83c\udffe\u200d\u2640\ufe0f"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\udc86\ud83c\udfff\u200d\u2640\ufe0f"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v11, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x22

    aput-object v11, v8, v14

    new-instance v11, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\udc87\u200d\u2642\ufe0f"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\udc87\ud83c\udffb\u200d\u2642\ufe0f"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83d\udc87\ud83c\udffc\u200d\u2642\ufe0f"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83d\udc87\ud83c\udffd\u200d\u2642\ufe0f"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\udc87\ud83c\udffe\u200d\u2642\ufe0f"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\udc87\ud83c\udfff\u200d\u2642\ufe0f"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v11, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x23

    aput-object v11, v8, v14

    new-instance v11, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\udc87\u200d\u2640\ufe0f"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\udc87\ud83c\udffb\u200d\u2640\ufe0f"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83d\udc87\ud83c\udffc\u200d\u2640\ufe0f"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83d\udc87\ud83c\udffd\u200d\u2640\ufe0f"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\udc87\ud83c\udffe\u200d\u2640\ufe0f"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\udc87\ud83c\udfff\u200d\u2640\ufe0f"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v11, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x24

    aput-object v11, v8, v14

    new-instance v11, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\udeb6\u200d\u2642\ufe0f"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\udeb6\ud83c\udffb\u200d\u2642\ufe0f"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83d\udeb6\ud83c\udffc\u200d\u2642\ufe0f"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83d\udeb6\ud83c\udffd\u200d\u2642\ufe0f"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\udeb6\ud83c\udffe\u200d\u2642\ufe0f"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\udeb6\ud83c\udfff\u200d\u2642\ufe0f"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v11, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x25

    aput-object v11, v8, v14

    new-instance v11, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\udeb6\u200d\u2640\ufe0f"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\udeb6\ud83c\udffb\u200d\u2640\ufe0f"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83d\udeb6\ud83c\udffc\u200d\u2640\ufe0f"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83d\udeb6\ud83c\udffd\u200d\u2640\ufe0f"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\udeb6\ud83c\udffe\u200d\u2640\ufe0f"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\udeb6\ud83c\udfff\u200d\u2640\ufe0f"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v11, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x26

    aput-object v11, v8, v14

    new-instance v11, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83e\uddcd"

    aput-object v14, v15, v6

    const-string v14, "\ud83e\uddcd\ud83c\udffb"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83e\uddcd\ud83c\udffc"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83e\uddcd\ud83c\udffd"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83e\uddcd\ud83c\udffe"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83e\uddcd\ud83c\udfff"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v11, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x27

    aput-object v11, v8, v14

    new-instance v11, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83e\uddcd\u200d\u2642\ufe0f"

    aput-object v14, v15, v6

    const-string v14, "\ud83e\uddcd\ud83c\udffb\u200d\u2642\ufe0f"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83e\uddcd\ud83c\udffc\u200d\u2642\ufe0f"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83e\uddcd\ud83c\udffd\u200d\u2642\ufe0f"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83e\uddcd\ud83c\udffe\u200d\u2642\ufe0f"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83e\uddcd\ud83c\udfff\u200d\u2642\ufe0f"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v11, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x28

    aput-object v11, v8, v14

    new-instance v11, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83e\uddcd\u200d\u2640\ufe0f"

    aput-object v14, v15, v6

    const-string v14, "\ud83e\uddcd\ud83c\udffb\u200d\u2640\ufe0f"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83e\uddcd\ud83c\udffc\u200d\u2640\ufe0f"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83e\uddcd\ud83c\udffd\u200d\u2640\ufe0f"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83e\uddcd\ud83c\udffe\u200d\u2640\ufe0f"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83e\uddcd\ud83c\udfff\u200d\u2640\ufe0f"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v11, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x29

    aput-object v11, v8, v14

    new-instance v11, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83e\uddce"

    aput-object v14, v15, v6

    const-string v14, "\ud83e\uddce\ud83c\udffb"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83e\uddce\ud83c\udffc"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83e\uddce\ud83c\udffd"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83e\uddce\ud83c\udffe"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83e\uddce\ud83c\udfff"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v11, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x2a

    aput-object v11, v8, v14

    new-instance v11, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83e\uddce\u200d\u2642\ufe0f"

    aput-object v14, v15, v6

    const-string v14, "\ud83e\uddce\ud83c\udffb\u200d\u2642\ufe0f"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83e\uddce\ud83c\udffc\u200d\u2642\ufe0f"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83e\uddce\ud83c\udffd\u200d\u2642\ufe0f"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83e\uddce\ud83c\udffe\u200d\u2642\ufe0f"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83e\uddce\ud83c\udfff\u200d\u2642\ufe0f"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v11, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x2b

    aput-object v11, v8, v14

    new-instance v11, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83e\uddce\u200d\u2640\ufe0f"

    aput-object v14, v15, v6

    const-string v14, "\ud83e\uddce\ud83c\udffb\u200d\u2640\ufe0f"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83e\uddce\ud83c\udffc\u200d\u2640\ufe0f"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83e\uddce\ud83c\udffd\u200d\u2640\ufe0f"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83e\uddce\ud83c\udffe\u200d\u2640\ufe0f"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83e\uddce\ud83c\udfff\u200d\u2640\ufe0f"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v11, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x2c

    aput-object v11, v8, v14

    new-instance v11, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83e\uddd1\u200d\ud83e\uddaf"

    aput-object v14, v15, v6

    const-string v14, "\ud83e\uddd1\ud83c\udffb\u200d\ud83e\uddaf"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83e\uddd1\ud83c\udffc\u200d\ud83e\uddaf"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83e\uddd1\ud83c\udffd\u200d\ud83e\uddaf"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83e\uddd1\ud83c\udffe\u200d\ud83e\uddaf"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83e\uddd1\ud83c\udfff\u200d\ud83e\uddaf"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v11, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x2d

    aput-object v11, v8, v14

    const-string v11, "emoji/People_4.png"

    const v14, 0x7f04020d

    invoke-direct {v3, v14, v8, v11}, Lorg/thoughtcrime/securesms/components/emoji/StaticEmojiPageModel;-><init>(I[Lorg/thoughtcrime/securesms/components/emoji/Emoji;Ljava/lang/String;)V

    sput-object v3, Lorg/thoughtcrime/securesms/components/emoji/EmojiPages;->PAGE_PEOPLE_4:Lorg/thoughtcrime/securesms/components/emoji/EmojiPageModel;

    .line 62
    new-instance v8, Lorg/thoughtcrime/securesms/components/emoji/StaticEmojiPageModel;

    const/16 v11, 0x30

    new-array v11, v11, [Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v15, 0x6

    move-object/from16 v38, v0

    new-array v0, v15, [Ljava/lang/String;

    const-string v15, "\ud83d\udc68\u200d\ud83e\uddaf"

    aput-object v15, v0, v6

    const-string v15, "\ud83d\udc68\ud83c\udffb\u200d\ud83e\uddaf"

    const/16 v36, 0x1

    aput-object v15, v0, v36

    const-string v15, "\ud83d\udc68\ud83c\udffc\u200d\ud83e\uddaf"

    const/16 v35, 0x2

    aput-object v15, v0, v35

    const-string v15, "\ud83d\udc68\ud83c\udffd\u200d\ud83e\uddaf"

    const/16 v34, 0x3

    aput-object v15, v0, v34

    const-string v15, "\ud83d\udc68\ud83c\udffe\u200d\ud83e\uddaf"

    const/16 v33, 0x4

    aput-object v15, v0, v33

    const-string v15, "\ud83d\udc68\ud83c\udfff\u200d\ud83e\uddaf"

    const/16 v32, 0x5

    aput-object v15, v0, v32

    invoke-direct {v14, v0}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    aput-object v14, v11, v6

    new-instance v0, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\udc69\u200d\ud83e\uddaf"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\udc69\ud83c\udffb\u200d\ud83e\uddaf"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83d\udc69\ud83c\udffc\u200d\ud83e\uddaf"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83d\udc69\ud83c\udffd\u200d\ud83e\uddaf"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\udc69\ud83c\udffe\u200d\ud83e\uddaf"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\udc69\ud83c\udfff\u200d\ud83e\uddaf"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v0, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    aput-object v0, v11, v36

    new-instance v0, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83e\uddd1\u200d\ud83e\uddbc"

    aput-object v14, v15, v6

    const-string v14, "\ud83e\uddd1\ud83c\udffb\u200d\ud83e\uddbc"

    aput-object v14, v15, v36

    const-string v14, "\ud83e\uddd1\ud83c\udffc\u200d\ud83e\uddbc"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83e\uddd1\ud83c\udffd\u200d\ud83e\uddbc"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83e\uddd1\ud83c\udffe\u200d\ud83e\uddbc"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83e\uddd1\ud83c\udfff\u200d\ud83e\uddbc"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v0, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    aput-object v0, v11, v35

    new-instance v0, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\udc68\u200d\ud83e\uddbc"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\udc68\ud83c\udffb\u200d\ud83e\uddbc"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83d\udc68\ud83c\udffc\u200d\ud83e\uddbc"

    aput-object v14, v15, v35

    const-string v14, "\ud83d\udc68\ud83c\udffd\u200d\ud83e\uddbc"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\udc68\ud83c\udffe\u200d\ud83e\uddbc"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\udc68\ud83c\udfff\u200d\ud83e\uddbc"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v0, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    aput-object v0, v11, v34

    new-instance v0, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\udc69\u200d\ud83e\uddbc"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\udc69\ud83c\udffb\u200d\ud83e\uddbc"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83d\udc69\ud83c\udffc\u200d\ud83e\uddbc"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83d\udc69\ud83c\udffd\u200d\ud83e\uddbc"

    aput-object v14, v15, v34

    const-string v14, "\ud83d\udc69\ud83c\udffe\u200d\ud83e\uddbc"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\udc69\ud83c\udfff\u200d\ud83e\uddbc"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v0, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    aput-object v0, v11, v33

    new-instance v0, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83e\uddd1\u200d\ud83e\uddbd"

    aput-object v14, v15, v6

    const-string v14, "\ud83e\uddd1\ud83c\udffb\u200d\ud83e\uddbd"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83e\uddd1\ud83c\udffc\u200d\ud83e\uddbd"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83e\uddd1\ud83c\udffd\u200d\ud83e\uddbd"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83e\uddd1\ud83c\udffe\u200d\ud83e\uddbd"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83e\uddd1\ud83c\udfff\u200d\ud83e\uddbd"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v0, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    aput-object v0, v11, v32

    new-instance v0, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\udc68\u200d\ud83e\uddbd"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\udc68\ud83c\udffb\u200d\ud83e\uddbd"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83d\udc68\ud83c\udffc\u200d\ud83e\uddbd"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83d\udc68\ud83c\udffd\u200d\ud83e\uddbd"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\udc68\ud83c\udffe\u200d\ud83e\uddbd"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\udc68\ud83c\udfff\u200d\ud83e\uddbd"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v0, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/4 v14, 0x6

    aput-object v0, v11, v14

    new-instance v0, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\udc69\u200d\ud83e\uddbd"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\udc69\ud83c\udffb\u200d\ud83e\uddbd"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83d\udc69\ud83c\udffc\u200d\ud83e\uddbd"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83d\udc69\ud83c\udffd\u200d\ud83e\uddbd"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\udc69\ud83c\udffe\u200d\ud83e\uddbd"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\udc69\ud83c\udfff\u200d\ud83e\uddbd"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v0, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/4 v14, 0x7

    aput-object v0, v11, v14

    new-instance v0, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83c\udfc3\u200d\u2642\ufe0f"

    aput-object v14, v15, v6

    const-string v14, "\ud83c\udfc3\ud83c\udffb\u200d\u2642\ufe0f"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83c\udfc3\ud83c\udffc\u200d\u2642\ufe0f"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83c\udfc3\ud83c\udffd\u200d\u2642\ufe0f"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83c\udfc3\ud83c\udffe\u200d\u2642\ufe0f"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83c\udfc3\ud83c\udfff\u200d\u2642\ufe0f"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v0, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x8

    aput-object v0, v11, v14

    new-instance v0, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83c\udfc3\u200d\u2640\ufe0f"

    aput-object v14, v15, v6

    const-string v14, "\ud83c\udfc3\ud83c\udffb\u200d\u2640\ufe0f"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83c\udfc3\ud83c\udffc\u200d\u2640\ufe0f"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83c\udfc3\ud83c\udffd\u200d\u2640\ufe0f"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83c\udfc3\ud83c\udffe\u200d\u2640\ufe0f"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83c\udfc3\ud83c\udfff\u200d\u2640\ufe0f"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v0, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x9

    aput-object v0, v11, v14

    new-instance v0, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\udc83"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\udc83\ud83c\udffb"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83d\udc83\ud83c\udffc"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83d\udc83\ud83c\udffd"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\udc83\ud83c\udffe"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\udc83\ud83c\udfff"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v0, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xa

    aput-object v0, v11, v14

    new-instance v0, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\udd7a"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\udd7a\ud83c\udffb"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83d\udd7a\ud83c\udffc"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83d\udd7a\ud83c\udffd"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\udd7a\ud83c\udffe"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\udd7a\ud83c\udfff"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v0, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xb

    aput-object v0, v11, v14

    new-instance v0, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\udd74\ufe0f"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\udd74\ud83c\udffb"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83d\udd74\ud83c\udffc"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83d\udd74\ud83c\udffd"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\udd74\ud83c\udffe"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\udd74\ud83c\udfff"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v0, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xc

    aput-object v0, v11, v14

    new-instance v0, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x1

    new-array v15, v14, [Ljava/lang/String;

    const-string v36, "\ud83d\udc6f\u200d\u2642\ufe0f"

    aput-object v36, v15, v6

    invoke-direct {v0, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xd

    aput-object v0, v11, v15

    new-instance v0, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v14, [Ljava/lang/String;

    const-string v36, "\ud83d\udc6f\u200d\u2640\ufe0f"

    aput-object v36, v15, v6

    invoke-direct {v0, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xe

    aput-object v0, v11, v15

    new-instance v0, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v15, 0x6

    new-array v14, v15, [Ljava/lang/String;

    const-string v15, "\ud83e\uddd6\u200d\u2642\ufe0f"

    aput-object v15, v14, v6

    const-string v15, "\ud83e\uddd6\ud83c\udffb\u200d\u2642\ufe0f"

    const/16 v36, 0x1

    aput-object v15, v14, v36

    const-string v15, "\ud83e\uddd6\ud83c\udffc\u200d\u2642\ufe0f"

    const/16 v35, 0x2

    aput-object v15, v14, v35

    const-string v15, "\ud83e\uddd6\ud83c\udffd\u200d\u2642\ufe0f"

    const/16 v34, 0x3

    aput-object v15, v14, v34

    const-string v15, "\ud83e\uddd6\ud83c\udffe\u200d\u2642\ufe0f"

    const/16 v33, 0x4

    aput-object v15, v14, v33

    const-string v15, "\ud83e\uddd6\ud83c\udfff\u200d\u2642\ufe0f"

    const/16 v32, 0x5

    aput-object v15, v14, v32

    invoke-direct {v0, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xf

    aput-object v0, v11, v14

    new-instance v0, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83e\uddd6\u200d\u2640\ufe0f"

    aput-object v14, v15, v6

    const-string v14, "\ud83e\uddd6\ud83c\udffb\u200d\u2640\ufe0f"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83e\uddd6\ud83c\udffc\u200d\u2640\ufe0f"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83e\uddd6\ud83c\udffd\u200d\u2640\ufe0f"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83e\uddd6\ud83c\udffe\u200d\u2640\ufe0f"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83e\uddd6\ud83c\udfff\u200d\u2640\ufe0f"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v0, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x10

    aput-object v0, v11, v14

    new-instance v0, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83e\uddd7\u200d\u2642\ufe0f"

    aput-object v14, v15, v6

    const-string v14, "\ud83e\uddd7\ud83c\udffb\u200d\u2642\ufe0f"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83e\uddd7\ud83c\udffc\u200d\u2642\ufe0f"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83e\uddd7\ud83c\udffd\u200d\u2642\ufe0f"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83e\uddd7\ud83c\udffe\u200d\u2642\ufe0f"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83e\uddd7\ud83c\udfff\u200d\u2642\ufe0f"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v0, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x11

    aput-object v0, v11, v14

    new-instance v0, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83e\uddd7\u200d\u2640\ufe0f"

    aput-object v14, v15, v6

    const-string v14, "\ud83e\uddd7\ud83c\udffb\u200d\u2640\ufe0f"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83e\uddd7\ud83c\udffc\u200d\u2640\ufe0f"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83e\uddd7\ud83c\udffd\u200d\u2640\ufe0f"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83e\uddd7\ud83c\udffe\u200d\u2640\ufe0f"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83e\uddd7\ud83c\udfff\u200d\u2640\ufe0f"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v0, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x12

    aput-object v0, v11, v14

    new-instance v0, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x1

    new-array v15, v14, [Ljava/lang/String;

    const-string v36, "\ud83e\udd3a"

    aput-object v36, v15, v6

    invoke-direct {v0, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x13

    aput-object v0, v11, v15

    new-instance v0, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v15, 0x6

    new-array v14, v15, [Ljava/lang/String;

    const-string v15, "\ud83c\udfc7"

    aput-object v15, v14, v6

    const-string v15, "\ud83c\udfc7\ud83c\udffb"

    const/16 v36, 0x1

    aput-object v15, v14, v36

    const-string v15, "\ud83c\udfc7\ud83c\udffc"

    const/16 v35, 0x2

    aput-object v15, v14, v35

    const-string v15, "\ud83c\udfc7\ud83c\udffd"

    const/16 v34, 0x3

    aput-object v15, v14, v34

    const-string v15, "\ud83c\udfc7\ud83c\udffe"

    const/16 v33, 0x4

    aput-object v15, v14, v33

    const-string v15, "\ud83c\udfc7\ud83c\udfff"

    const/16 v32, 0x5

    aput-object v15, v14, v32

    invoke-direct {v0, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x14

    aput-object v0, v11, v14

    new-instance v0, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x1

    new-array v15, v14, [Ljava/lang/String;

    const-string v36, "\u26f7\ufe0f"

    aput-object v36, v15, v6

    invoke-direct {v0, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x15

    aput-object v0, v11, v15

    new-instance v0, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v15, 0x6

    new-array v14, v15, [Ljava/lang/String;

    const-string v15, "\ud83c\udfc2"

    aput-object v15, v14, v6

    const-string v15, "\ud83c\udfc2\ud83c\udffb"

    const/16 v36, 0x1

    aput-object v15, v14, v36

    const-string v15, "\ud83c\udfc2\ud83c\udffc"

    const/16 v35, 0x2

    aput-object v15, v14, v35

    const-string v15, "\ud83c\udfc2\ud83c\udffd"

    const/16 v34, 0x3

    aput-object v15, v14, v34

    const-string v15, "\ud83c\udfc2\ud83c\udffe"

    const/16 v33, 0x4

    aput-object v15, v14, v33

    const-string v15, "\ud83c\udfc2\ud83c\udfff"

    const/16 v32, 0x5

    aput-object v15, v14, v32

    invoke-direct {v0, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x16

    aput-object v0, v11, v14

    new-instance v0, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83c\udfcc\ufe0f\u200d\u2642\ufe0f"

    aput-object v14, v15, v6

    const-string v14, "\ud83c\udfcc\ud83c\udffb\u200d\u2642\ufe0f"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83c\udfcc\ud83c\udffc\u200d\u2642\ufe0f"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83c\udfcc\ud83c\udffd\u200d\u2642\ufe0f"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83c\udfcc\ud83c\udffe\u200d\u2642\ufe0f"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83c\udfcc\ud83c\udfff\u200d\u2642\ufe0f"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v0, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x17

    aput-object v0, v11, v14

    new-instance v0, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83c\udfcc\ufe0f\u200d\u2640\ufe0f"

    aput-object v14, v15, v6

    const-string v14, "\ud83c\udfcc\ud83c\udffb\u200d\u2640\ufe0f"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83c\udfcc\ud83c\udffc\u200d\u2640\ufe0f"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83c\udfcc\ud83c\udffd\u200d\u2640\ufe0f"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83c\udfcc\ud83c\udffe\u200d\u2640\ufe0f"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83c\udfcc\ud83c\udfff\u200d\u2640\ufe0f"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v0, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x18

    aput-object v0, v11, v14

    new-instance v0, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83c\udfc4\u200d\u2642\ufe0f"

    aput-object v14, v15, v6

    const-string v14, "\ud83c\udfc4\ud83c\udffb\u200d\u2642\ufe0f"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83c\udfc4\ud83c\udffc\u200d\u2642\ufe0f"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83c\udfc4\ud83c\udffd\u200d\u2642\ufe0f"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83c\udfc4\ud83c\udffe\u200d\u2642\ufe0f"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83c\udfc4\ud83c\udfff\u200d\u2642\ufe0f"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v0, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x19

    aput-object v0, v11, v14

    new-instance v0, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83c\udfc4\u200d\u2640\ufe0f"

    aput-object v14, v15, v6

    const-string v14, "\ud83c\udfc4\ud83c\udffb\u200d\u2640\ufe0f"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83c\udfc4\ud83c\udffc\u200d\u2640\ufe0f"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83c\udfc4\ud83c\udffd\u200d\u2640\ufe0f"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83c\udfc4\ud83c\udffe\u200d\u2640\ufe0f"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83c\udfc4\ud83c\udfff\u200d\u2640\ufe0f"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v0, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x1a

    aput-object v0, v11, v14

    new-instance v0, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\udea3\u200d\u2642\ufe0f"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\udea3\ud83c\udffb\u200d\u2642\ufe0f"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83d\udea3\ud83c\udffc\u200d\u2642\ufe0f"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83d\udea3\ud83c\udffd\u200d\u2642\ufe0f"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\udea3\ud83c\udffe\u200d\u2642\ufe0f"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\udea3\ud83c\udfff\u200d\u2642\ufe0f"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v0, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x1b

    aput-object v0, v11, v14

    new-instance v0, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\udea3\u200d\u2640\ufe0f"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\udea3\ud83c\udffb\u200d\u2640\ufe0f"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83d\udea3\ud83c\udffc\u200d\u2640\ufe0f"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83d\udea3\ud83c\udffd\u200d\u2640\ufe0f"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\udea3\ud83c\udffe\u200d\u2640\ufe0f"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\udea3\ud83c\udfff\u200d\u2640\ufe0f"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v0, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x1c

    aput-object v0, v11, v14

    new-instance v0, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83c\udfca\u200d\u2642\ufe0f"

    aput-object v14, v15, v6

    const-string v14, "\ud83c\udfca\ud83c\udffb\u200d\u2642\ufe0f"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83c\udfca\ud83c\udffc\u200d\u2642\ufe0f"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83c\udfca\ud83c\udffd\u200d\u2642\ufe0f"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83c\udfca\ud83c\udffe\u200d\u2642\ufe0f"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83c\udfca\ud83c\udfff\u200d\u2642\ufe0f"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v0, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x1d

    aput-object v0, v11, v14

    new-instance v0, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83c\udfca\u200d\u2640\ufe0f"

    aput-object v14, v15, v6

    const-string v14, "\ud83c\udfca\ud83c\udffb\u200d\u2640\ufe0f"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83c\udfca\ud83c\udffc\u200d\u2640\ufe0f"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83c\udfca\ud83c\udffd\u200d\u2640\ufe0f"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83c\udfca\ud83c\udffe\u200d\u2640\ufe0f"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83c\udfca\ud83c\udfff\u200d\u2640\ufe0f"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v0, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x1e

    aput-object v0, v11, v14

    new-instance v0, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\u26f9\ufe0f\u200d\u2642\ufe0f"

    aput-object v14, v15, v6

    const-string v14, "\u26f9\ud83c\udffb\u200d\u2642\ufe0f"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\u26f9\ud83c\udffc\u200d\u2642\ufe0f"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\u26f9\ud83c\udffd\u200d\u2642\ufe0f"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\u26f9\ud83c\udffe\u200d\u2642\ufe0f"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\u26f9\ud83c\udfff\u200d\u2642\ufe0f"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v0, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x1f

    aput-object v0, v11, v14

    new-instance v0, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\u26f9\ufe0f\u200d\u2640\ufe0f"

    aput-object v14, v15, v6

    const-string v14, "\u26f9\ud83c\udffb\u200d\u2640\ufe0f"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\u26f9\ud83c\udffc\u200d\u2640\ufe0f"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\u26f9\ud83c\udffd\u200d\u2640\ufe0f"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\u26f9\ud83c\udffe\u200d\u2640\ufe0f"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\u26f9\ud83c\udfff\u200d\u2640\ufe0f"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v0, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x20

    aput-object v0, v11, v14

    new-instance v0, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83c\udfcb\ufe0f\u200d\u2642\ufe0f"

    aput-object v14, v15, v6

    const-string v14, "\ud83c\udfcb\ud83c\udffb\u200d\u2642\ufe0f"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83c\udfcb\ud83c\udffc\u200d\u2642\ufe0f"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83c\udfcb\ud83c\udffd\u200d\u2642\ufe0f"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83c\udfcb\ud83c\udffe\u200d\u2642\ufe0f"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83c\udfcb\ud83c\udfff\u200d\u2642\ufe0f"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v0, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x21

    aput-object v0, v11, v14

    new-instance v0, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83c\udfcb\ufe0f\u200d\u2640\ufe0f"

    aput-object v14, v15, v6

    const-string v14, "\ud83c\udfcb\ud83c\udffb\u200d\u2640\ufe0f"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83c\udfcb\ud83c\udffc\u200d\u2640\ufe0f"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83c\udfcb\ud83c\udffd\u200d\u2640\ufe0f"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83c\udfcb\ud83c\udffe\u200d\u2640\ufe0f"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83c\udfcb\ud83c\udfff\u200d\u2640\ufe0f"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v0, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x22

    aput-object v0, v11, v14

    new-instance v0, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\udeb4\u200d\u2642\ufe0f"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\udeb4\ud83c\udffb\u200d\u2642\ufe0f"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83d\udeb4\ud83c\udffc\u200d\u2642\ufe0f"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83d\udeb4\ud83c\udffd\u200d\u2642\ufe0f"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\udeb4\ud83c\udffe\u200d\u2642\ufe0f"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\udeb4\ud83c\udfff\u200d\u2642\ufe0f"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v0, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x23

    aput-object v0, v11, v14

    new-instance v0, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\udeb4\u200d\u2640\ufe0f"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\udeb4\ud83c\udffb\u200d\u2640\ufe0f"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83d\udeb4\ud83c\udffc\u200d\u2640\ufe0f"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83d\udeb4\ud83c\udffd\u200d\u2640\ufe0f"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\udeb4\ud83c\udffe\u200d\u2640\ufe0f"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\udeb4\ud83c\udfff\u200d\u2640\ufe0f"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v0, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x24

    aput-object v0, v11, v14

    new-instance v0, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\udeb5\u200d\u2642\ufe0f"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\udeb5\ud83c\udffb\u200d\u2642\ufe0f"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83d\udeb5\ud83c\udffc\u200d\u2642\ufe0f"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83d\udeb5\ud83c\udffd\u200d\u2642\ufe0f"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\udeb5\ud83c\udffe\u200d\u2642\ufe0f"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\udeb5\ud83c\udfff\u200d\u2642\ufe0f"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v0, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x25

    aput-object v0, v11, v14

    new-instance v0, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\udeb5\u200d\u2640\ufe0f"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\udeb5\ud83c\udffb\u200d\u2640\ufe0f"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83d\udeb5\ud83c\udffc\u200d\u2640\ufe0f"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83d\udeb5\ud83c\udffd\u200d\u2640\ufe0f"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\udeb5\ud83c\udffe\u200d\u2640\ufe0f"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\udeb5\ud83c\udfff\u200d\u2640\ufe0f"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v0, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x26

    aput-object v0, v11, v14

    new-instance v0, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83e\udd38"

    aput-object v14, v15, v6

    const-string v14, "\ud83e\udd38\ud83c\udffb"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83e\udd38\ud83c\udffc"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83e\udd38\ud83c\udffd"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83e\udd38\ud83c\udffe"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83e\udd38\ud83c\udfff"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v0, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x27

    aput-object v0, v11, v14

    new-instance v0, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83e\udd38\u200d\u2642\ufe0f"

    aput-object v14, v15, v6

    const-string v14, "\ud83e\udd38\ud83c\udffb\u200d\u2642\ufe0f"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83e\udd38\ud83c\udffc\u200d\u2642\ufe0f"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83e\udd38\ud83c\udffd\u200d\u2642\ufe0f"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83e\udd38\ud83c\udffe\u200d\u2642\ufe0f"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83e\udd38\ud83c\udfff\u200d\u2642\ufe0f"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v0, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x28

    aput-object v0, v11, v14

    new-instance v0, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83e\udd38\u200d\u2640\ufe0f"

    aput-object v14, v15, v6

    const-string v14, "\ud83e\udd38\ud83c\udffb\u200d\u2640\ufe0f"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83e\udd38\ud83c\udffc\u200d\u2640\ufe0f"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83e\udd38\ud83c\udffd\u200d\u2640\ufe0f"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83e\udd38\ud83c\udffe\u200d\u2640\ufe0f"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83e\udd38\ud83c\udfff\u200d\u2640\ufe0f"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v0, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x29

    aput-object v0, v11, v14

    new-instance v0, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x1

    new-array v15, v14, [Ljava/lang/String;

    const-string v36, "\ud83e\udd3c"

    aput-object v36, v15, v6

    invoke-direct {v0, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x2a

    aput-object v0, v11, v15

    new-instance v0, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v14, [Ljava/lang/String;

    const-string v36, "\ud83e\udd3c\u200d\u2642\ufe0f"

    aput-object v36, v15, v6

    invoke-direct {v0, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x2b

    aput-object v0, v11, v15

    new-instance v0, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v14, [Ljava/lang/String;

    const-string v36, "\ud83e\udd3c\u200d\u2640\ufe0f"

    aput-object v36, v15, v6

    invoke-direct {v0, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x2c

    aput-object v0, v11, v15

    new-instance v0, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v15, 0x6

    new-array v14, v15, [Ljava/lang/String;

    const-string v15, "\ud83e\udd3d"

    aput-object v15, v14, v6

    const-string v15, "\ud83e\udd3d\ud83c\udffb"

    const/16 v36, 0x1

    aput-object v15, v14, v36

    const-string v15, "\ud83e\udd3d\ud83c\udffc"

    const/16 v35, 0x2

    aput-object v15, v14, v35

    const-string v15, "\ud83e\udd3d\ud83c\udffd"

    const/16 v34, 0x3

    aput-object v15, v14, v34

    const-string v15, "\ud83e\udd3d\ud83c\udffe"

    const/16 v33, 0x4

    aput-object v15, v14, v33

    const-string v15, "\ud83e\udd3d\ud83c\udfff"

    const/16 v32, 0x5

    aput-object v15, v14, v32

    invoke-direct {v0, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x2d

    aput-object v0, v11, v14

    new-instance v0, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83e\udd3d\u200d\u2642\ufe0f"

    aput-object v14, v15, v6

    const-string v14, "\ud83e\udd3d\ud83c\udffb\u200d\u2642\ufe0f"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83e\udd3d\ud83c\udffc\u200d\u2642\ufe0f"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83e\udd3d\ud83c\udffd\u200d\u2642\ufe0f"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83e\udd3d\ud83c\udffe\u200d\u2642\ufe0f"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83e\udd3d\ud83c\udfff\u200d\u2642\ufe0f"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v0, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x2e

    aput-object v0, v11, v14

    new-instance v0, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83e\udd3d\u200d\u2640\ufe0f"

    aput-object v14, v15, v6

    const-string v14, "\ud83e\udd3d\ud83c\udffb\u200d\u2640\ufe0f"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83e\udd3d\ud83c\udffc\u200d\u2640\ufe0f"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83e\udd3d\ud83c\udffd\u200d\u2640\ufe0f"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83e\udd3d\ud83c\udffe\u200d\u2640\ufe0f"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83e\udd3d\ud83c\udfff\u200d\u2640\ufe0f"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v0, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x2f

    aput-object v0, v11, v14

    const-string v0, "emoji/People_5.png"

    const v14, 0x7f04020d

    invoke-direct {v8, v14, v11, v0}, Lorg/thoughtcrime/securesms/components/emoji/StaticEmojiPageModel;-><init>(I[Lorg/thoughtcrime/securesms/components/emoji/Emoji;Ljava/lang/String;)V

    sput-object v8, Lorg/thoughtcrime/securesms/components/emoji/EmojiPages;->PAGE_PEOPLE_5:Lorg/thoughtcrime/securesms/components/emoji/EmojiPageModel;

    .line 66
    new-instance v0, Lorg/thoughtcrime/securesms/components/emoji/StaticEmojiPageModel;

    const/16 v11, 0x31

    new-array v11, v11, [Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    move-object/from16 v39, v2

    const/4 v15, 0x6

    new-array v2, v15, [Ljava/lang/String;

    const-string v15, "\ud83e\udd3e"

    aput-object v15, v2, v6

    const-string v15, "\ud83e\udd3e\ud83c\udffb"

    const/16 v36, 0x1

    aput-object v15, v2, v36

    const-string v15, "\ud83e\udd3e\ud83c\udffc"

    const/16 v35, 0x2

    aput-object v15, v2, v35

    const-string v15, "\ud83e\udd3e\ud83c\udffd"

    const/16 v34, 0x3

    aput-object v15, v2, v34

    const-string v15, "\ud83e\udd3e\ud83c\udffe"

    const/16 v33, 0x4

    aput-object v15, v2, v33

    const-string v15, "\ud83e\udd3e\ud83c\udfff"

    const/16 v32, 0x5

    aput-object v15, v2, v32

    invoke-direct {v14, v2}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    aput-object v14, v11, v6

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83e\udd3e\u200d\u2642\ufe0f"

    aput-object v14, v15, v6

    const-string v14, "\ud83e\udd3e\ud83c\udffb\u200d\u2642\ufe0f"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83e\udd3e\ud83c\udffc\u200d\u2642\ufe0f"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83e\udd3e\ud83c\udffd\u200d\u2642\ufe0f"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83e\udd3e\ud83c\udffe\u200d\u2642\ufe0f"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83e\udd3e\ud83c\udfff\u200d\u2642\ufe0f"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    aput-object v2, v11, v36

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83e\udd3e\u200d\u2640\ufe0f"

    aput-object v14, v15, v6

    const-string v14, "\ud83e\udd3e\ud83c\udffb\u200d\u2640\ufe0f"

    aput-object v14, v15, v36

    const-string v14, "\ud83e\udd3e\ud83c\udffc\u200d\u2640\ufe0f"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83e\udd3e\ud83c\udffd\u200d\u2640\ufe0f"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83e\udd3e\ud83c\udffe\u200d\u2640\ufe0f"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83e\udd3e\ud83c\udfff\u200d\u2640\ufe0f"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    aput-object v2, v11, v35

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83e\udd39"

    aput-object v14, v15, v6

    const-string v14, "\ud83e\udd39\ud83c\udffb"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83e\udd39\ud83c\udffc"

    aput-object v14, v15, v35

    const-string v14, "\ud83e\udd39\ud83c\udffd"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83e\udd39\ud83c\udffe"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83e\udd39\ud83c\udfff"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    aput-object v2, v11, v34

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83e\udd39\u200d\u2642\ufe0f"

    aput-object v14, v15, v6

    const-string v14, "\ud83e\udd39\ud83c\udffb\u200d\u2642\ufe0f"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83e\udd39\ud83c\udffc\u200d\u2642\ufe0f"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83e\udd39\ud83c\udffd\u200d\u2642\ufe0f"

    aput-object v14, v15, v34

    const-string v14, "\ud83e\udd39\ud83c\udffe\u200d\u2642\ufe0f"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83e\udd39\ud83c\udfff\u200d\u2642\ufe0f"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    aput-object v2, v11, v33

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83e\udd39\u200d\u2640\ufe0f"

    aput-object v14, v15, v6

    const-string v14, "\ud83e\udd39\ud83c\udffb\u200d\u2640\ufe0f"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83e\udd39\ud83c\udffc\u200d\u2640\ufe0f"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83e\udd39\ud83c\udffd\u200d\u2640\ufe0f"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83e\udd39\ud83c\udffe\u200d\u2640\ufe0f"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83e\udd39\ud83c\udfff\u200d\u2640\ufe0f"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    aput-object v2, v11, v32

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83e\uddd8\u200d\u2642\ufe0f"

    aput-object v14, v15, v6

    const-string v14, "\ud83e\uddd8\ud83c\udffb\u200d\u2642\ufe0f"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83e\uddd8\ud83c\udffc\u200d\u2642\ufe0f"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83e\uddd8\ud83c\udffd\u200d\u2642\ufe0f"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83e\uddd8\ud83c\udffe\u200d\u2642\ufe0f"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83e\uddd8\ud83c\udfff\u200d\u2642\ufe0f"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/4 v14, 0x6

    aput-object v2, v11, v14

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83e\uddd8\u200d\u2640\ufe0f"

    aput-object v14, v15, v6

    const-string v14, "\ud83e\uddd8\ud83c\udffb\u200d\u2640\ufe0f"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83e\uddd8\ud83c\udffc\u200d\u2640\ufe0f"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83e\uddd8\ud83c\udffd\u200d\u2640\ufe0f"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83e\uddd8\ud83c\udffe\u200d\u2640\ufe0f"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83e\uddd8\ud83c\udfff\u200d\u2640\ufe0f"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/4 v14, 0x7

    aput-object v2, v11, v14

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\udec0"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\udec0\ud83c\udffb"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83d\udec0\ud83c\udffc"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83d\udec0\ud83c\udffd"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\udec0\ud83c\udffe"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\udec0\ud83c\udfff"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x8

    aput-object v2, v11, v14

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\udecc"

    aput-object v14, v15, v6

    const-string v14, "\ud83d\udecc\ud83c\udffb"

    const/16 v36, 0x1

    aput-object v14, v15, v36

    const-string v14, "\ud83d\udecc\ud83c\udffc"

    const/16 v35, 0x2

    aput-object v14, v15, v35

    const-string v14, "\ud83d\udecc\ud83c\udffd"

    const/16 v34, 0x3

    aput-object v14, v15, v34

    const-string v14, "\ud83d\udecc\ud83c\udffe"

    const/16 v33, 0x4

    aput-object v14, v15, v33

    const-string v14, "\ud83d\udecc\ud83c\udfff"

    const/16 v32, 0x5

    aput-object v14, v15, v32

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x9

    aput-object v2, v11, v14

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/16 v14, 0x1a

    new-array v14, v14, [Ljava/lang/String;

    const-string v15, "\ud83e\uddd1\u200d\ud83e\udd1d\u200d\ud83e\uddd1"

    aput-object v15, v14, v6

    const-string v15, "\ud83e\uddd1\ud83c\udffb\u200d\ud83e\udd1d\u200d\ud83e\uddd1\ud83c\udffb"

    const/16 v36, 0x1

    aput-object v15, v14, v36

    const-string v15, "\ud83e\uddd1\ud83c\udffb\u200d\ud83e\udd1d\u200d\ud83e\uddd1\ud83c\udffc"

    const/16 v35, 0x2

    aput-object v15, v14, v35

    const-string v15, "\ud83e\uddd1\ud83c\udffb\u200d\ud83e\udd1d\u200d\ud83e\uddd1\ud83c\udffd"

    const/16 v34, 0x3

    aput-object v15, v14, v34

    const-string v15, "\ud83e\uddd1\ud83c\udffb\u200d\ud83e\udd1d\u200d\ud83e\uddd1\ud83c\udffe"

    const/16 v33, 0x4

    aput-object v15, v14, v33

    const-string v15, "\ud83e\uddd1\ud83c\udffb\u200d\ud83e\udd1d\u200d\ud83e\uddd1\ud83c\udfff"

    const/16 v32, 0x5

    aput-object v15, v14, v32

    const-string v15, "\ud83e\uddd1\ud83c\udffc\u200d\ud83e\udd1d\u200d\ud83e\uddd1\ud83c\udffb"

    const/16 v31, 0x6

    aput-object v15, v14, v31

    const-string v15, "\ud83e\uddd1\ud83c\udffc\u200d\ud83e\udd1d\u200d\ud83e\uddd1\ud83c\udffc"

    const/16 v30, 0x7

    aput-object v15, v14, v30

    const-string v15, "\ud83e\uddd1\ud83c\udffc\u200d\ud83e\udd1d\u200d\ud83e\uddd1\ud83c\udffd"

    const/16 v29, 0x8

    aput-object v15, v14, v29

    const-string v15, "\ud83e\uddd1\ud83c\udffc\u200d\ud83e\udd1d\u200d\ud83e\uddd1\ud83c\udffe"

    const/16 v28, 0x9

    aput-object v15, v14, v28

    const-string v15, "\ud83e\uddd1\ud83c\udffc\u200d\ud83e\udd1d\u200d\ud83e\uddd1\ud83c\udfff"

    const/16 v27, 0xa

    aput-object v15, v14, v27

    const-string v15, "\ud83e\uddd1\ud83c\udffd\u200d\ud83e\udd1d\u200d\ud83e\uddd1\ud83c\udffb"

    const/16 v26, 0xb

    aput-object v15, v14, v26

    const-string v15, "\ud83e\uddd1\ud83c\udffd\u200d\ud83e\udd1d\u200d\ud83e\uddd1\ud83c\udffc"

    const/16 v16, 0xc

    aput-object v15, v14, v16

    const-string v15, "\ud83e\uddd1\ud83c\udffd\u200d\ud83e\udd1d\u200d\ud83e\uddd1\ud83c\udffd"

    const/16 v17, 0xd

    aput-object v15, v14, v17

    const-string v15, "\ud83e\uddd1\ud83c\udffd\u200d\ud83e\udd1d\u200d\ud83e\uddd1\ud83c\udffe"

    const/16 v18, 0xe

    aput-object v15, v14, v18

    const-string v15, "\ud83e\uddd1\ud83c\udffd\u200d\ud83e\udd1d\u200d\ud83e\uddd1\ud83c\udfff"

    const/16 v19, 0xf

    aput-object v15, v14, v19

    const-string v15, "\ud83e\uddd1\ud83c\udffe\u200d\ud83e\udd1d\u200d\ud83e\uddd1\ud83c\udffb"

    const/16 v20, 0x10

    aput-object v15, v14, v20

    const-string v15, "\ud83e\uddd1\ud83c\udffe\u200d\ud83e\udd1d\u200d\ud83e\uddd1\ud83c\udffc"

    const/16 v21, 0x11

    aput-object v15, v14, v21

    const-string v15, "\ud83e\uddd1\ud83c\udffe\u200d\ud83e\udd1d\u200d\ud83e\uddd1\ud83c\udffd"

    const/16 v22, 0x12

    aput-object v15, v14, v22

    const-string v15, "\ud83e\uddd1\ud83c\udffe\u200d\ud83e\udd1d\u200d\ud83e\uddd1\ud83c\udffe"

    const/16 v23, 0x13

    aput-object v15, v14, v23

    const-string v15, "\ud83e\uddd1\ud83c\udffe\u200d\ud83e\udd1d\u200d\ud83e\uddd1\ud83c\udfff"

    const/16 v24, 0x14

    aput-object v15, v14, v24

    const-string v15, "\ud83e\uddd1\ud83c\udfff\u200d\ud83e\udd1d\u200d\ud83e\uddd1\ud83c\udffb"

    const/16 v25, 0x15

    aput-object v15, v14, v25

    const/16 v15, 0x16

    const-string v40, "\ud83e\uddd1\ud83c\udfff\u200d\ud83e\udd1d\u200d\ud83e\uddd1\ud83c\udffc"

    aput-object v40, v14, v15

    const/16 v15, 0x17

    const-string v40, "\ud83e\uddd1\ud83c\udfff\u200d\ud83e\udd1d\u200d\ud83e\uddd1\ud83c\udffd"

    aput-object v40, v14, v15

    const/16 v15, 0x18

    const-string v40, "\ud83e\uddd1\ud83c\udfff\u200d\ud83e\udd1d\u200d\ud83e\uddd1\ud83c\udffe"

    aput-object v40, v14, v15

    const/16 v15, 0x19

    const-string v40, "\ud83e\uddd1\ud83c\udfff\u200d\ud83e\udd1d\u200d\ud83e\uddd1\ud83c\udfff"

    aput-object v40, v14, v15

    invoke-direct {v2, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xa

    aput-object v2, v11, v14

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/16 v14, 0x1a

    new-array v14, v14, [Ljava/lang/String;

    const-string v15, "\ud83d\udc6d"

    aput-object v15, v14, v6

    const-string v15, "\ud83d\udc6d\ud83c\udffb"

    const/16 v36, 0x1

    aput-object v15, v14, v36

    const-string v15, "\ud83d\udc6d\ud83c\udffc"

    const/16 v35, 0x2

    aput-object v15, v14, v35

    const-string v15, "\ud83d\udc6d\ud83c\udffd"

    const/16 v34, 0x3

    aput-object v15, v14, v34

    const-string v15, "\ud83d\udc6d\ud83c\udffe"

    const/16 v33, 0x4

    aput-object v15, v14, v33

    const-string v15, "\ud83d\udc6d\ud83c\udfff"

    const/16 v32, 0x5

    aput-object v15, v14, v32

    const-string v15, "\ud83d\udc69\ud83c\udffb\u200d\ud83e\udd1d\u200d\ud83d\udc69\ud83c\udffc"

    const/16 v31, 0x6

    aput-object v15, v14, v31

    const-string v15, "\ud83d\udc69\ud83c\udffb\u200d\ud83e\udd1d\u200d\ud83d\udc69\ud83c\udffd"

    const/16 v30, 0x7

    aput-object v15, v14, v30

    const-string v15, "\ud83d\udc69\ud83c\udffb\u200d\ud83e\udd1d\u200d\ud83d\udc69\ud83c\udffe"

    const/16 v29, 0x8

    aput-object v15, v14, v29

    const-string v15, "\ud83d\udc69\ud83c\udffb\u200d\ud83e\udd1d\u200d\ud83d\udc69\ud83c\udfff"

    const/16 v28, 0x9

    aput-object v15, v14, v28

    const-string v15, "\ud83d\udc69\ud83c\udffc\u200d\ud83e\udd1d\u200d\ud83d\udc69\ud83c\udffb"

    const/16 v27, 0xa

    aput-object v15, v14, v27

    const-string v15, "\ud83d\udc69\ud83c\udffc\u200d\ud83e\udd1d\u200d\ud83d\udc69\ud83c\udffd"

    const/16 v26, 0xb

    aput-object v15, v14, v26

    const-string v15, "\ud83d\udc69\ud83c\udffc\u200d\ud83e\udd1d\u200d\ud83d\udc69\ud83c\udffe"

    const/16 v16, 0xc

    aput-object v15, v14, v16

    const-string v15, "\ud83d\udc69\ud83c\udffc\u200d\ud83e\udd1d\u200d\ud83d\udc69\ud83c\udfff"

    const/16 v17, 0xd

    aput-object v15, v14, v17

    const-string v15, "\ud83d\udc69\ud83c\udffd\u200d\ud83e\udd1d\u200d\ud83d\udc69\ud83c\udffb"

    const/16 v18, 0xe

    aput-object v15, v14, v18

    const-string v15, "\ud83d\udc69\ud83c\udffd\u200d\ud83e\udd1d\u200d\ud83d\udc69\ud83c\udffc"

    const/16 v19, 0xf

    aput-object v15, v14, v19

    const-string v15, "\ud83d\udc69\ud83c\udffd\u200d\ud83e\udd1d\u200d\ud83d\udc69\ud83c\udffe"

    const/16 v20, 0x10

    aput-object v15, v14, v20

    const-string v15, "\ud83d\udc69\ud83c\udffd\u200d\ud83e\udd1d\u200d\ud83d\udc69\ud83c\udfff"

    const/16 v21, 0x11

    aput-object v15, v14, v21

    const-string v15, "\ud83d\udc69\ud83c\udffe\u200d\ud83e\udd1d\u200d\ud83d\udc69\ud83c\udffb"

    const/16 v22, 0x12

    aput-object v15, v14, v22

    const-string v15, "\ud83d\udc69\ud83c\udffe\u200d\ud83e\udd1d\u200d\ud83d\udc69\ud83c\udffc"

    const/16 v23, 0x13

    aput-object v15, v14, v23

    const-string v15, "\ud83d\udc69\ud83c\udffe\u200d\ud83e\udd1d\u200d\ud83d\udc69\ud83c\udffd"

    const/16 v24, 0x14

    aput-object v15, v14, v24

    const-string v15, "\ud83d\udc69\ud83c\udffe\u200d\ud83e\udd1d\u200d\ud83d\udc69\ud83c\udfff"

    const/16 v25, 0x15

    aput-object v15, v14, v25

    const/16 v15, 0x16

    const-string v40, "\ud83d\udc69\ud83c\udfff\u200d\ud83e\udd1d\u200d\ud83d\udc69\ud83c\udffb"

    aput-object v40, v14, v15

    const/16 v15, 0x17

    const-string v40, "\ud83d\udc69\ud83c\udfff\u200d\ud83e\udd1d\u200d\ud83d\udc69\ud83c\udffc"

    aput-object v40, v14, v15

    const/16 v15, 0x18

    const-string v40, "\ud83d\udc69\ud83c\udfff\u200d\ud83e\udd1d\u200d\ud83d\udc69\ud83c\udffd"

    aput-object v40, v14, v15

    const/16 v15, 0x19

    const-string v40, "\ud83d\udc69\ud83c\udfff\u200d\ud83e\udd1d\u200d\ud83d\udc69\ud83c\udffe"

    aput-object v40, v14, v15

    invoke-direct {v2, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xb

    aput-object v2, v11, v14

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/16 v14, 0x1a

    new-array v14, v14, [Ljava/lang/String;

    const-string v15, "\ud83d\udc6b"

    aput-object v15, v14, v6

    const-string v15, "\ud83d\udc6b\ud83c\udffb"

    const/16 v36, 0x1

    aput-object v15, v14, v36

    const-string v15, "\ud83d\udc6b\ud83c\udffc"

    const/16 v35, 0x2

    aput-object v15, v14, v35

    const-string v15, "\ud83d\udc6b\ud83c\udffd"

    const/16 v34, 0x3

    aput-object v15, v14, v34

    const-string v15, "\ud83d\udc6b\ud83c\udffe"

    const/16 v33, 0x4

    aput-object v15, v14, v33

    const-string v15, "\ud83d\udc6b\ud83c\udfff"

    const/16 v32, 0x5

    aput-object v15, v14, v32

    const-string v15, "\ud83d\udc69\ud83c\udffb\u200d\ud83e\udd1d\u200d\ud83d\udc68\ud83c\udffc"

    const/16 v31, 0x6

    aput-object v15, v14, v31

    const-string v15, "\ud83d\udc69\ud83c\udffb\u200d\ud83e\udd1d\u200d\ud83d\udc68\ud83c\udffd"

    const/16 v30, 0x7

    aput-object v15, v14, v30

    const-string v15, "\ud83d\udc69\ud83c\udffb\u200d\ud83e\udd1d\u200d\ud83d\udc68\ud83c\udffe"

    const/16 v29, 0x8

    aput-object v15, v14, v29

    const-string v15, "\ud83d\udc69\ud83c\udffb\u200d\ud83e\udd1d\u200d\ud83d\udc68\ud83c\udfff"

    const/16 v28, 0x9

    aput-object v15, v14, v28

    const-string v15, "\ud83d\udc69\ud83c\udffc\u200d\ud83e\udd1d\u200d\ud83d\udc68\ud83c\udffb"

    const/16 v27, 0xa

    aput-object v15, v14, v27

    const-string v15, "\ud83d\udc69\ud83c\udffc\u200d\ud83e\udd1d\u200d\ud83d\udc68\ud83c\udffd"

    const/16 v26, 0xb

    aput-object v15, v14, v26

    const-string v15, "\ud83d\udc69\ud83c\udffc\u200d\ud83e\udd1d\u200d\ud83d\udc68\ud83c\udffe"

    const/16 v16, 0xc

    aput-object v15, v14, v16

    const-string v15, "\ud83d\udc69\ud83c\udffc\u200d\ud83e\udd1d\u200d\ud83d\udc68\ud83c\udfff"

    const/16 v17, 0xd

    aput-object v15, v14, v17

    const-string v15, "\ud83d\udc69\ud83c\udffd\u200d\ud83e\udd1d\u200d\ud83d\udc68\ud83c\udffb"

    const/16 v18, 0xe

    aput-object v15, v14, v18

    const-string v15, "\ud83d\udc69\ud83c\udffd\u200d\ud83e\udd1d\u200d\ud83d\udc68\ud83c\udffc"

    const/16 v19, 0xf

    aput-object v15, v14, v19

    const-string v15, "\ud83d\udc69\ud83c\udffd\u200d\ud83e\udd1d\u200d\ud83d\udc68\ud83c\udffe"

    const/16 v20, 0x10

    aput-object v15, v14, v20

    const-string v15, "\ud83d\udc69\ud83c\udffd\u200d\ud83e\udd1d\u200d\ud83d\udc68\ud83c\udfff"

    const/16 v21, 0x11

    aput-object v15, v14, v21

    const-string v15, "\ud83d\udc69\ud83c\udffe\u200d\ud83e\udd1d\u200d\ud83d\udc68\ud83c\udffb"

    const/16 v22, 0x12

    aput-object v15, v14, v22

    const-string v15, "\ud83d\udc69\ud83c\udffe\u200d\ud83e\udd1d\u200d\ud83d\udc68\ud83c\udffc"

    const/16 v23, 0x13

    aput-object v15, v14, v23

    const-string v15, "\ud83d\udc69\ud83c\udffe\u200d\ud83e\udd1d\u200d\ud83d\udc68\ud83c\udffd"

    const/16 v24, 0x14

    aput-object v15, v14, v24

    const-string v15, "\ud83d\udc69\ud83c\udffe\u200d\ud83e\udd1d\u200d\ud83d\udc68\ud83c\udfff"

    const/16 v25, 0x15

    aput-object v15, v14, v25

    const/16 v15, 0x16

    const-string v40, "\ud83d\udc69\ud83c\udfff\u200d\ud83e\udd1d\u200d\ud83d\udc68\ud83c\udffb"

    aput-object v40, v14, v15

    const/16 v15, 0x17

    const-string v40, "\ud83d\udc69\ud83c\udfff\u200d\ud83e\udd1d\u200d\ud83d\udc68\ud83c\udffc"

    aput-object v40, v14, v15

    const/16 v15, 0x18

    const-string v40, "\ud83d\udc69\ud83c\udfff\u200d\ud83e\udd1d\u200d\ud83d\udc68\ud83c\udffd"

    aput-object v40, v14, v15

    const/16 v15, 0x19

    const-string v40, "\ud83d\udc69\ud83c\udfff\u200d\ud83e\udd1d\u200d\ud83d\udc68\ud83c\udffe"

    aput-object v40, v14, v15

    invoke-direct {v2, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xc

    aput-object v2, v11, v14

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/16 v14, 0x1a

    new-array v14, v14, [Ljava/lang/String;

    const-string v15, "\ud83d\udc6c"

    aput-object v15, v14, v6

    const-string v15, "\ud83d\udc6c\ud83c\udffb"

    const/16 v36, 0x1

    aput-object v15, v14, v36

    const-string v15, "\ud83d\udc6c\ud83c\udffc"

    const/16 v35, 0x2

    aput-object v15, v14, v35

    const-string v15, "\ud83d\udc6c\ud83c\udffd"

    const/16 v34, 0x3

    aput-object v15, v14, v34

    const-string v15, "\ud83d\udc6c\ud83c\udffe"

    const/16 v33, 0x4

    aput-object v15, v14, v33

    const-string v15, "\ud83d\udc6c\ud83c\udfff"

    const/16 v32, 0x5

    aput-object v15, v14, v32

    const-string v15, "\ud83d\udc68\ud83c\udffb\u200d\ud83e\udd1d\u200d\ud83d\udc68\ud83c\udffc"

    const/16 v31, 0x6

    aput-object v15, v14, v31

    const-string v15, "\ud83d\udc68\ud83c\udffb\u200d\ud83e\udd1d\u200d\ud83d\udc68\ud83c\udffd"

    const/16 v30, 0x7

    aput-object v15, v14, v30

    const-string v15, "\ud83d\udc68\ud83c\udffb\u200d\ud83e\udd1d\u200d\ud83d\udc68\ud83c\udffe"

    const/16 v29, 0x8

    aput-object v15, v14, v29

    const-string v15, "\ud83d\udc68\ud83c\udffb\u200d\ud83e\udd1d\u200d\ud83d\udc68\ud83c\udfff"

    const/16 v28, 0x9

    aput-object v15, v14, v28

    const-string v15, "\ud83d\udc68\ud83c\udffc\u200d\ud83e\udd1d\u200d\ud83d\udc68\ud83c\udffb"

    const/16 v27, 0xa

    aput-object v15, v14, v27

    const-string v15, "\ud83d\udc68\ud83c\udffc\u200d\ud83e\udd1d\u200d\ud83d\udc68\ud83c\udffd"

    const/16 v26, 0xb

    aput-object v15, v14, v26

    const-string v15, "\ud83d\udc68\ud83c\udffc\u200d\ud83e\udd1d\u200d\ud83d\udc68\ud83c\udffe"

    const/16 v16, 0xc

    aput-object v15, v14, v16

    const-string v15, "\ud83d\udc68\ud83c\udffc\u200d\ud83e\udd1d\u200d\ud83d\udc68\ud83c\udfff"

    const/16 v17, 0xd

    aput-object v15, v14, v17

    const-string v15, "\ud83d\udc68\ud83c\udffd\u200d\ud83e\udd1d\u200d\ud83d\udc68\ud83c\udffb"

    const/16 v18, 0xe

    aput-object v15, v14, v18

    const-string v15, "\ud83d\udc68\ud83c\udffd\u200d\ud83e\udd1d\u200d\ud83d\udc68\ud83c\udffc"

    const/16 v19, 0xf

    aput-object v15, v14, v19

    const-string v15, "\ud83d\udc68\ud83c\udffd\u200d\ud83e\udd1d\u200d\ud83d\udc68\ud83c\udffe"

    const/16 v20, 0x10

    aput-object v15, v14, v20

    const-string v15, "\ud83d\udc68\ud83c\udffd\u200d\ud83e\udd1d\u200d\ud83d\udc68\ud83c\udfff"

    const/16 v21, 0x11

    aput-object v15, v14, v21

    const-string v15, "\ud83d\udc68\ud83c\udffe\u200d\ud83e\udd1d\u200d\ud83d\udc68\ud83c\udffb"

    const/16 v22, 0x12

    aput-object v15, v14, v22

    const-string v15, "\ud83d\udc68\ud83c\udffe\u200d\ud83e\udd1d\u200d\ud83d\udc68\ud83c\udffc"

    const/16 v23, 0x13

    aput-object v15, v14, v23

    const-string v15, "\ud83d\udc68\ud83c\udffe\u200d\ud83e\udd1d\u200d\ud83d\udc68\ud83c\udffd"

    const/16 v24, 0x14

    aput-object v15, v14, v24

    const-string v15, "\ud83d\udc68\ud83c\udffe\u200d\ud83e\udd1d\u200d\ud83d\udc68\ud83c\udfff"

    const/16 v25, 0x15

    aput-object v15, v14, v25

    const/16 v15, 0x16

    const-string v40, "\ud83d\udc68\ud83c\udfff\u200d\ud83e\udd1d\u200d\ud83d\udc68\ud83c\udffb"

    aput-object v40, v14, v15

    const/16 v15, 0x17

    const-string v40, "\ud83d\udc68\ud83c\udfff\u200d\ud83e\udd1d\u200d\ud83d\udc68\ud83c\udffc"

    aput-object v40, v14, v15

    const/16 v15, 0x18

    const-string v40, "\ud83d\udc68\ud83c\udfff\u200d\ud83e\udd1d\u200d\ud83d\udc68\ud83c\udffd"

    aput-object v40, v14, v15

    const/16 v15, 0x19

    const-string v40, "\ud83d\udc68\ud83c\udfff\u200d\ud83e\udd1d\u200d\ud83d\udc68\ud83c\udffe"

    aput-object v40, v14, v15

    invoke-direct {v2, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xd

    aput-object v2, v11, v14

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    const/4 v14, 0x1

    new-array v15, v14, [Ljava/lang/String;

    const-string v36, "\ud83d\udc69\u200d\u2764\ufe0f\u200d\ud83d\udc8b\u200d\ud83d\udc68"

    aput-object v36, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xe

    aput-object v2, v11, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v14, [Ljava/lang/String;

    const-string v36, "\ud83d\udc68\u200d\u2764\ufe0f\u200d\ud83d\udc8b\u200d\ud83d\udc68"

    aput-object v36, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0xf

    aput-object v2, v11, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v14, [Ljava/lang/String;

    const-string v36, "\ud83d\udc69\u200d\u2764\ufe0f\u200d\ud83d\udc8b\u200d\ud83d\udc69"

    aput-object v36, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x10

    aput-object v2, v11, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v14, [Ljava/lang/String;

    const-string v36, "\ud83d\udc69\u200d\u2764\ufe0f\u200d\ud83d\udc68"

    aput-object v36, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x11

    aput-object v2, v11, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v14, [Ljava/lang/String;

    const-string v36, "\ud83d\udc68\u200d\u2764\ufe0f\u200d\ud83d\udc68"

    aput-object v36, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x12

    aput-object v2, v11, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v14, [Ljava/lang/String;

    const-string v36, "\ud83d\udc69\u200d\u2764\ufe0f\u200d\ud83d\udc69"

    aput-object v36, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x13

    aput-object v2, v11, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v14, [Ljava/lang/String;

    const-string v36, "\ud83d\udc68\u200d\ud83d\udc69\u200d\ud83d\udc66"

    aput-object v36, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x14

    aput-object v2, v11, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v14, [Ljava/lang/String;

    const-string v36, "\ud83d\udc68\u200d\ud83d\udc69\u200d\ud83d\udc67"

    aput-object v36, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x15

    aput-object v2, v11, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v14, [Ljava/lang/String;

    const-string v36, "\ud83d\udc68\u200d\ud83d\udc69\u200d\ud83d\udc67\u200d\ud83d\udc66"

    aput-object v36, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x16

    aput-object v2, v11, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v14, [Ljava/lang/String;

    const-string v36, "\ud83d\udc68\u200d\ud83d\udc69\u200d\ud83d\udc66\u200d\ud83d\udc66"

    aput-object v36, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x17

    aput-object v2, v11, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v14, [Ljava/lang/String;

    const-string v36, "\ud83d\udc68\u200d\ud83d\udc69\u200d\ud83d\udc67\u200d\ud83d\udc67"

    aput-object v36, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x18

    aput-object v2, v11, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v14, [Ljava/lang/String;

    const-string v36, "\ud83d\udc68\u200d\ud83d\udc68\u200d\ud83d\udc66"

    aput-object v36, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x19

    aput-object v2, v11, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v14, [Ljava/lang/String;

    const-string v36, "\ud83d\udc68\u200d\ud83d\udc68\u200d\ud83d\udc67"

    aput-object v36, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x1a

    aput-object v2, v11, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v14, [Ljava/lang/String;

    const-string v36, "\ud83d\udc68\u200d\ud83d\udc68\u200d\ud83d\udc67\u200d\ud83d\udc66"

    aput-object v36, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x1b

    aput-object v2, v11, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v14, [Ljava/lang/String;

    const-string v36, "\ud83d\udc68\u200d\ud83d\udc68\u200d\ud83d\udc66\u200d\ud83d\udc66"

    aput-object v36, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x1c

    aput-object v2, v11, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v14, [Ljava/lang/String;

    const-string v36, "\ud83d\udc68\u200d\ud83d\udc68\u200d\ud83d\udc67\u200d\ud83d\udc67"

    aput-object v36, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x1d

    aput-object v2, v11, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v14, [Ljava/lang/String;

    const-string v36, "\ud83d\udc69\u200d\ud83d\udc69\u200d\ud83d\udc66"

    aput-object v36, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x1e

    aput-object v2, v11, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v14, [Ljava/lang/String;

    const-string v36, "\ud83d\udc69\u200d\ud83d\udc69\u200d\ud83d\udc67"

    aput-object v36, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x1f

    aput-object v2, v11, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v14, [Ljava/lang/String;

    const-string v36, "\ud83d\udc69\u200d\ud83d\udc69\u200d\ud83d\udc67\u200d\ud83d\udc66"

    aput-object v36, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x20

    aput-object v2, v11, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v14, [Ljava/lang/String;

    const-string v36, "\ud83d\udc69\u200d\ud83d\udc69\u200d\ud83d\udc66\u200d\ud83d\udc66"

    aput-object v36, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x21

    aput-object v2, v11, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v14, [Ljava/lang/String;

    const-string v36, "\ud83d\udc69\u200d\ud83d\udc69\u200d\ud83d\udc67\u200d\ud83d\udc67"

    aput-object v36, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x22

    aput-object v2, v11, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v14, [Ljava/lang/String;

    const-string v36, "\ud83d\udc68\u200d\ud83d\udc66"

    aput-object v36, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x23

    aput-object v2, v11, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v14, [Ljava/lang/String;

    const-string v36, "\ud83d\udc68\u200d\ud83d\udc66\u200d\ud83d\udc66"

    aput-object v36, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x24

    aput-object v2, v11, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v14, [Ljava/lang/String;

    const-string v36, "\ud83d\udc68\u200d\ud83d\udc67"

    aput-object v36, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x25

    aput-object v2, v11, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v14, [Ljava/lang/String;

    const-string v36, "\ud83d\udc68\u200d\ud83d\udc67\u200d\ud83d\udc66"

    aput-object v36, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x26

    aput-object v2, v11, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v14, [Ljava/lang/String;

    const-string v36, "\ud83d\udc68\u200d\ud83d\udc67\u200d\ud83d\udc67"

    aput-object v36, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x27

    aput-object v2, v11, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v14, [Ljava/lang/String;

    const-string v36, "\ud83d\udc69\u200d\ud83d\udc66"

    aput-object v36, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x28

    aput-object v2, v11, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v14, [Ljava/lang/String;

    const-string v36, "\ud83d\udc69\u200d\ud83d\udc66\u200d\ud83d\udc66"

    aput-object v36, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x29

    aput-object v2, v11, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v14, [Ljava/lang/String;

    const-string v36, "\ud83d\udc69\u200d\ud83d\udc67"

    aput-object v36, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x2a

    aput-object v2, v11, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v14, [Ljava/lang/String;

    const-string v36, "\ud83d\udc69\u200d\ud83d\udc67\u200d\ud83d\udc66"

    aput-object v36, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x2b

    aput-object v2, v11, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v14, [Ljava/lang/String;

    const-string v36, "\ud83d\udc69\u200d\ud83d\udc67\u200d\ud83d\udc67"

    aput-object v36, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x2c

    aput-object v2, v11, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v14, [Ljava/lang/String;

    const-string v36, "\ud83d\udde3\ufe0f"

    aput-object v36, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x2d

    aput-object v2, v11, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v14, [Ljava/lang/String;

    const-string v36, "\ud83d\udc64"

    aput-object v36, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x2e

    aput-object v2, v11, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v14, [Ljava/lang/String;

    const-string v36, "\ud83d\udc65"

    aput-object v36, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v15, 0x2f

    aput-object v2, v11, v15

    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v15, v14, [Ljava/lang/String;

    const-string v14, "\ud83d\udc63"

    aput-object v14, v15, v6

    invoke-direct {v2, v15}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x30

    aput-object v2, v11, v14

    const-string v2, "emoji/People_6.png"

    const v14, 0x7f04020d

    invoke-direct {v0, v14, v11, v2}, Lorg/thoughtcrime/securesms/components/emoji/StaticEmojiPageModel;-><init>(I[Lorg/thoughtcrime/securesms/components/emoji/Emoji;Ljava/lang/String;)V

    sput-object v0, Lorg/thoughtcrime/securesms/components/emoji/EmojiPages;->PAGE_PEOPLE_6:Lorg/thoughtcrime/securesms/components/emoji/EmojiPageModel;

    .line 70
    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/StaticEmojiPageModel;

    const/16 v11, 0xe9

    new-array v11, v11, [Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    move-object/from16 v40, v1

    const/4 v15, 0x1

    new-array v1, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udc53"

    aput-object v36, v1, v6

    invoke-direct {v14, v1}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    aput-object v14, v11, v6

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udd76\ufe0f"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    aput-object v1, v11, v15

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83e\udd7d"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/4 v14, 0x2

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83e\udd7c"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/4 v14, 0x3

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83e\uddba"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/4 v14, 0x4

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udc54"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/4 v14, 0x5

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udc55"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/4 v14, 0x6

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udc56"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/4 v14, 0x7

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83e\udde3"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x8

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83e\udde4"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x9

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83e\udde5"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xa

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83e\udde6"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xb

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udc57"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xc

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udc58"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xd

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83e\udd7b"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xe

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83e\ude71"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xf

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83e\ude72"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x10

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83e\ude73"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x11

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udc59"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x12

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udc5a"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x13

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udc5b"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x14

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udc5c"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x15

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udc5d"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x16

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udecd\ufe0f"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x17

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83c\udf92"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x18

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udc5e"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x19

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udc5f"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x1a

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83e\udd7e"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x1b

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83e\udd7f"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x1c

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udc60"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x1d

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udc61"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x1e

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83e\ude70"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x1f

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udc62"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x20

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udc51"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x21

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udc52"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x22

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83c\udfa9"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x23

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83c\udf93"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x24

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83e\udde2"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x25

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\u26d1\ufe0f"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x26

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udcff"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x27

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udc84"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x28

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udc8d"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x29

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udc8e"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x2a

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udd07"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x2b

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udd08"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x2c

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udd09"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x2d

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udd0a"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x2e

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udce2"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x2f

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udce3"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x30

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udcef"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x31

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udd14"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x32

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udd15"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x33

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83c\udfbc"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x34

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83c\udfb5"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x35

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83c\udfb6"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x36

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83c\udf99\ufe0f"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x37

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83c\udf9a\ufe0f"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x38

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83c\udf9b\ufe0f"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x39

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83c\udfa4"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x3a

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83c\udfa7"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x3b

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udcfb"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x3c

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83c\udfb7"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x3d

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83c\udfb8"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x3e

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83c\udfb9"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x3f

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83c\udfba"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x40

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83c\udfbb"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x41

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83e\ude95"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x42

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83e\udd41"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x43

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udcf1"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x44

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udcf2"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x45

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\u260e\ufe0f"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x46

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udcde"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x47

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udcdf"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x48

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udce0"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x49

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udd0b"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x4a

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udd0c"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x4b

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udcbb"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x4c

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udda5\ufe0f"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x4d

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udda8\ufe0f"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x4e

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\u2328\ufe0f"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x4f

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\uddb1\ufe0f"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x50

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\uddb2\ufe0f"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x51

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udcbd"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x52

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udcbe"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x53

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udcbf"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x54

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udcc0"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x55

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83e\uddee"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x56

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83c\udfa5"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x57

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83c\udf9e\ufe0f"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x58

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udcfd\ufe0f"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x59

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83c\udfac"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x5a

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udcfa"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x5b

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udcf7"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x5c

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udcf8"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x5d

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udcf9"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x5e

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udcfc"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x5f

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udd0d"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x60

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udd0e"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x61

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udd6f\ufe0f"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x62

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udca1"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x63

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udd26"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x64

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83c\udfee"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x65

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83e\ude94"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x66

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udcd4"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x67

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udcd5"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x68

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udcd6"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x69

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udcd7"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x6a

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udcd8"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x6b

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udcd9"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x6c

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udcda"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x6d

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udcd3"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x6e

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udcd2"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x6f

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udcc3"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x70

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udcdc"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x71

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udcc4"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x72

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udcf0"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x73

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\uddde\ufe0f"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x74

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udcd1"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x75

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udd16"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x76

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83c\udff7\ufe0f"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x77

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udcb0"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x78

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udcb4"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x79

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udcb5"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x7a

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udcb6"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x7b

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udcb7"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x7c

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udcb8"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x7d

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udcb3"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x7e

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83e\uddfe"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x7f

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udcb9"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x80

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udcb1"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x81

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udcb2"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x82

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\u2709\ufe0f"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x83

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udce7"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x84

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udce8"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x85

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udce9"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x86

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udce4"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x87

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udce5"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x88

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udce6"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x89

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udceb"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x8a

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udcea"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x8b

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udcec"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x8c

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udced"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x8d

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udcee"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x8e

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\uddf3\ufe0f"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x8f

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\u270f\ufe0f"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x90

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\u2712\ufe0f"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x91

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udd8b\ufe0f"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x92

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udd8a\ufe0f"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x93

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udd8c\ufe0f"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x94

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udd8d\ufe0f"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x95

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udcdd"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x96

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udcbc"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x97

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udcc1"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x98

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udcc2"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x99

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\uddc2\ufe0f"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x9a

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udcc5"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x9b

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udcc6"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x9c

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\uddd2\ufe0f"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x9d

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\uddd3\ufe0f"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x9e

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udcc7"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0x9f

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udcc8"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xa0

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udcc9"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xa1

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udcca"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xa2

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udccb"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xa3

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udccc"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xa4

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udccd"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xa5

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udcce"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xa6

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udd87\ufe0f"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xa7

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udccf"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xa8

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udcd0"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xa9

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\u2702\ufe0f"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xaa

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\uddc3\ufe0f"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xab

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\uddc4\ufe0f"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xac

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\uddd1\ufe0f"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xad

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udd12"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xae

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udd13"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xaf

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udd0f"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xb0

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udd10"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xb1

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udd11"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xb2

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udddd\ufe0f"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xb3

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udd28"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xb4

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83e\ude93"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xb5

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\u26cf\ufe0f"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xb6

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\u2692\ufe0f"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xb7

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udee0\ufe0f"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xb8

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udde1\ufe0f"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xb9

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\u2694\ufe0f"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xba

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udd2b"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xbb

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83c\udff9"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xbc

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udee1\ufe0f"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xbd

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udd27"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xbe

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udd29"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xbf

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\u2699\ufe0f"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xc0

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udddc\ufe0f"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xc1

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\u2696\ufe0f"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xc2

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83e\uddaf"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xc3

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udd17"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xc4

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\u26d3\ufe0f"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xc5

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83e\uddf0"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xc6

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83e\uddf2"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xc7

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\u2697\ufe0f"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xc8

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83e\uddea"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xc9

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83e\uddeb"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xca

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83e\uddec"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xcb

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udd2c"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xcc

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udd2d"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xcd

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udce1"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xce

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udc89"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xcf

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83e\ude78"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xd0

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udc8a"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xd1

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83e\ude79"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xd2

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83e\ude7a"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xd3

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udeaa"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xd4

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udecf\ufe0f"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xd5

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udecb\ufe0f"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xd6

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83e\ude91"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xd7

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udebd"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xd8

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udebf"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xd9

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udec1"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xda

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83e\ude92"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xdb

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83e\uddf4"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xdc

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83e\uddf7"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xdd

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83e\uddf9"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xde

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83e\uddfa"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xdf

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83e\uddfb"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xe0

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83e\uddfc"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xe1

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83e\uddfd"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xe2

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83e\uddef"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xe3

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\uded2"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xe4

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\ud83d\udeac"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xe5

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\u26b0\ufe0f"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xe6

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v36, "\u26b1\ufe0f"

    aput-object v36, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xe7

    aput-object v1, v11, v14

    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/Emoji;

    new-array v14, v15, [Ljava/lang/String;

    const-string v15, "\ud83d\uddff"

    aput-object v15, v14, v6

    invoke-direct {v1, v14}, Lorg/thoughtcrime/securesms/components/emoji/Emoji;-><init>([Ljava/lang/String;)V

    const/16 v14, 0xe8

    aput-object v1, v11, v14

    const-string v1, "emoji/Objects.png"

    const v14, 0x7f04020c

    invoke-direct {v2, v14, v11, v1}, Lorg/thoughtcrime/securesms/components/emoji/StaticEmojiPageModel;-><init>(I[Lorg/thoughtcrime/securesms/components/emoji/Emoji;Ljava/lang/String;)V

    sput-object v2, Lorg/thoughtcrime/securesms/components/emoji/EmojiPages;->PAGE_OBJECTS:Lorg/thoughtcrime/securesms/components/emoji/EmojiPageModel;

    .line 74
    new-instance v1, Lorg/thoughtcrime/securesms/components/emoji/CompositeEmojiPageModel;

    const/4 v11, 0x7

    new-array v14, v11, [Lorg/thoughtcrime/securesms/components/emoji/EmojiPageModel;

    aput-object v9, v14, v6

    const/4 v11, 0x1

    aput-object v7, v14, v11

    const/4 v11, 0x2

    aput-object v5, v14, v11

    const/4 v15, 0x3

    aput-object v4, v14, v15

    const/4 v15, 0x4

    aput-object v3, v14, v15

    const/4 v15, 0x5

    aput-object v8, v14, v15

    const/4 v15, 0x6

    aput-object v0, v14, v15

    const v15, 0x7f04020d

    invoke-direct {v1, v15, v14}, Lorg/thoughtcrime/securesms/components/emoji/CompositeEmojiPageModel;-><init>(I[Lorg/thoughtcrime/securesms/components/emoji/EmojiPageModel;)V

    sput-object v1, Lorg/thoughtcrime/securesms/components/emoji/EmojiPages;->PAGE_PEOPLE:Lorg/thoughtcrime/securesms/components/emoji/EmojiPageModel;

    .line 76
    new-instance v14, Lorg/thoughtcrime/securesms/components/emoji/CompositeEmojiPageModel;

    new-array v15, v11, [Lorg/thoughtcrime/securesms/components/emoji/EmojiPageModel;

    aput-object v13, v15, v6

    const/4 v11, 0x1

    aput-object v12, v15, v11

    const v11, 0x7f040209

    invoke-direct {v14, v11, v15}, Lorg/thoughtcrime/securesms/components/emoji/CompositeEmojiPageModel;-><init>(I[Lorg/thoughtcrime/securesms/components/emoji/EmojiPageModel;)V

    sput-object v14, Lorg/thoughtcrime/securesms/components/emoji/EmojiPages;->PAGE_FLAGS:Lorg/thoughtcrime/securesms/components/emoji/EmojiPageModel;

    .line 78
    new-instance v11, Lorg/thoughtcrime/securesms/components/emoji/StaticEmojiPageModel;

    const/16 v15, 0x2f

    new-array v15, v15, [Ljava/lang/String;

    const-string v41, ":-)"

    aput-object v41, v15, v6

    const-string v41, ";-)"

    const/16 v36, 0x1

    aput-object v41, v15, v36

    const-string v41, "(-:"

    const/16 v35, 0x2

    aput-object v41, v15, v35

    const-string v41, ":->"

    const/16 v34, 0x3

    aput-object v41, v15, v34

    const-string v41, ":-D"

    const/16 v33, 0x4

    aput-object v41, v15, v33

    const-string v41, "\\o/"

    const/16 v32, 0x5

    aput-object v41, v15, v32

    const-string v41, ":-P"

    const/16 v31, 0x6

    aput-object v41, v15, v31

    const-string v41, "B-)"

    const/16 v30, 0x7

    aput-object v41, v15, v30

    const-string v41, ":-$"

    const/16 v29, 0x8

    aput-object v41, v15, v29

    const-string v41, ":-*"

    const/16 v28, 0x9

    aput-object v41, v15, v28

    const-string v41, "O:-)"

    const/16 v27, 0xa

    aput-object v41, v15, v27

    const-string v41, "=-O"

    const/16 v26, 0xb

    aput-object v41, v15, v26

    const-string v41, "O_O"

    const/16 v16, 0xc

    aput-object v41, v15, v16

    const-string v41, "O_o"

    const/16 v17, 0xd

    aput-object v41, v15, v17

    const-string v41, "o_O"

    const/16 v18, 0xe

    aput-object v41, v15, v18

    const-string v41, ":O"

    const/16 v19, 0xf

    aput-object v41, v15, v19

    const-string v41, ":-!"

    const/16 v20, 0x10

    aput-object v41, v15, v20

    const-string v41, ":-x"

    const/16 v21, 0x11

    aput-object v41, v15, v21

    const-string v21, ":-|"

    const/16 v22, 0x12

    aput-object v21, v15, v22

    const-string v21, ":-\\"

    const/16 v22, 0x13

    aput-object v21, v15, v22

    const-string v21, ":-("

    const/16 v22, 0x14

    aput-object v21, v15, v22

    const-string v21, ":\'("

    const/16 v22, 0x15

    aput-object v21, v15, v22

    const/16 v21, 0x16

    const-string v22, ":-["

    aput-object v22, v15, v21

    const/16 v21, 0x17

    const-string v22, ">:-("

    aput-object v22, v15, v21

    const/16 v21, 0x18

    const-string v22, "^.^"

    aput-object v22, v15, v21

    const/16 v21, 0x19

    const-string v22, "^_^"

    aput-object v22, v15, v21

    const/16 v21, 0x1a

    const-string v22, "\\(\u02c6\u02da\u02c6)/"

    aput-object v22, v15, v21

    const/16 v21, 0x1b

    const-string v22, "\u30fd(\u00b0\u25c7\u00b0 )\u30ce"

    aput-object v22, v15, v21

    const/16 v21, 0x1c

    const-string v22, "\u00af\\(\u00b0_o)/\u00af"

    aput-object v22, v15, v21

    const/16 v21, 0x1d

    const-string v22, "\u00af\\_(\u30c4)_/\u00af"

    aput-object v22, v15, v21

    const/16 v21, 0x1e

    const-string v22, "(\u00ac_\u00ac)"

    aput-object v22, v15, v21

    const/16 v21, 0x1f

    const-string v22, "(>_<)"

    aput-object v22, v15, v21

    const/16 v21, 0x20

    const-string v22, "(\u2565\ufe4f\u2565)"

    aput-object v22, v15, v21

    const/16 v21, 0x21

    const-string v22, "(\u261e\uff9f\u30ee\uff9f)\u261e"

    aput-object v22, v15, v21

    const/16 v21, 0x22

    const-string v22, "\u261c(\uff9f\u30ee\uff9f\u261c)"

    aput-object v22, v15, v21

    const/16 v21, 0x23

    const-string v22, "\u261c(\u2312\u25bd\u2312)\u261e"

    aput-object v22, v15, v21

    const/16 v21, 0x24

    const-string v22, "(\u256f\u00b0\u25a1\u00b0)\u256f\ufe35"

    aput-object v22, v15, v21

    const/16 v21, 0x25

    const-string v22, "\u253b\u2501\u253b"

    aput-object v22, v15, v21

    const/16 v21, 0x26

    const-string v22, "\u252c\u2500\u252c"

    aput-object v22, v15, v21

    const/16 v21, 0x27

    const-string v22, "\u30ce(\u00b0\u2013\u00b0\u30ce)"

    aput-object v22, v15, v21

    const/16 v21, 0x28

    const-string v22, "(^._.^)\uff89"

    aput-object v22, v15, v21

    const/16 v21, 0x29

    const-string v22, "\u0e05^\u2022\ufecc\u2022^\u0e05"

    aput-object v22, v15, v21

    const/16 v21, 0x2a

    const-string v22, "\u0295\u2022\u1d25\u2022\u0294"

    aput-object v22, v15, v21

    const/16 v21, 0x2b

    const-string v22, "(\u2022_\u2022)"

    aput-object v22, v15, v21

    const/16 v21, 0x2c

    const-string v22, " \u25a0-\u25a0\u00ac <(\u2022_\u2022) "

    aput-object v22, v15, v21

    const/16 v21, 0x2d

    const-string v22, "(\u25a0_\u25a0\u00ac)"

    aput-object v22, v15, v21

    const/16 v21, 0x2e

    const-string v22, "\u01aa(\u0693\u05f2)\u200e\u01aa\u200b\u200b"

    aput-object v22, v15, v21

    const/4 v6, 0x0

    move-object/from16 v22, v12

    const v12, 0x7f040208

    invoke-direct {v11, v12, v15, v6}, Lorg/thoughtcrime/securesms/components/emoji/StaticEmojiPageModel;-><init>(I[Ljava/lang/String;Ljava/lang/String;)V

    sput-object v11, Lorg/thoughtcrime/securesms/components/emoji/EmojiPages;->PAGE_EMOTICONS:Lorg/thoughtcrime/securesms/components/emoji/EmojiPageModel;

    const/16 v6, 0x9

    new-array v12, v6, [Lorg/thoughtcrime/securesms/components/emoji/EmojiPageModel;

    const/4 v6, 0x0

    aput-object v1, v12, v6

    const/4 v1, 0x1

    aput-object v10, v12, v1

    const/4 v1, 0x2

    aput-object v40, v12, v1

    const/4 v1, 0x3

    aput-object v39, v12, v1

    const/4 v1, 0x4

    aput-object v38, v12, v1

    const/4 v1, 0x5

    aput-object v2, v12, v1

    const/4 v1, 0x6

    aput-object v37, v12, v1

    const/4 v1, 0x7

    aput-object v14, v12, v1

    const/16 v1, 0x8

    aput-object v11, v12, v1

    .line 96
    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lorg/thoughtcrime/securesms/components/emoji/EmojiPages;->DISPLAY_PAGES:Ljava/util/List;

    const/16 v1, 0x10

    new-array v1, v1, [Lorg/thoughtcrime/securesms/components/emoji/EmojiPageModel;

    const/4 v6, 0x0

    aput-object v9, v1, v6

    const/4 v6, 0x1

    aput-object v7, v1, v6

    const/4 v6, 0x2

    aput-object v5, v1, v6

    const/4 v5, 0x3

    aput-object v4, v1, v5

    const/4 v4, 0x4

    aput-object v3, v1, v4

    const/4 v3, 0x5

    aput-object v8, v1, v3

    const/4 v3, 0x6

    aput-object v0, v1, v3

    const/4 v0, 0x7

    aput-object v10, v1, v0

    const/16 v0, 0x8

    aput-object v40, v1, v0

    const/16 v0, 0x9

    aput-object v39, v1, v0

    const/16 v0, 0xa

    aput-object v38, v1, v0

    const/16 v0, 0xb

    aput-object v2, v1, v0

    const/16 v0, 0xc

    aput-object v37, v1, v0

    const/16 v0, 0xd

    aput-object v13, v1, v0

    const/16 v0, 0xe

    aput-object v22, v1, v0

    const/16 v0, 0xf

    aput-object v11, v1, v0

    .line 98
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/thoughtcrime/securesms/components/emoji/EmojiPages;->DATA_PAGES:Ljava/util/List;

    .line 100
    new-instance v0, Lorg/thoughtcrime/securesms/components/emoji/EmojiPages$1;

    invoke-direct {v0}, Lorg/thoughtcrime/securesms/components/emoji/EmojiPages$1;-><init>()V

    sput-object v0, Lorg/thoughtcrime/securesms/components/emoji/EmojiPages;->OBSOLETE:Ljava/util/List;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
