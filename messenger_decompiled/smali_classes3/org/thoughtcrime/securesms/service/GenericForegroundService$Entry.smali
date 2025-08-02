.class Lorg/thoughtcrime/securesms/service/GenericForegroundService$Entry;
.super Ljava/lang/Object;
.source "GenericForegroundService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/service/GenericForegroundService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Entry"
.end annotation


# instance fields
.field final channelId:Ljava/lang/String;

.field final contentText:Ljava/lang/String;

.field final iconRes:I

.field final id:I

.field final indeterminate:Z

.field final progress:I

.field final progressMax:I

.field final title:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIZ)V
    .locals 0

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    iput-object p1, p0, Lorg/thoughtcrime/securesms/service/GenericForegroundService$Entry;->title:Ljava/lang/String;

    .line 212
    iput-object p2, p0, Lorg/thoughtcrime/securesms/service/GenericForegroundService$Entry;->contentText:Ljava/lang/String;

    .line 213
    iput-object p3, p0, Lorg/thoughtcrime/securesms/service/GenericForegroundService$Entry;->channelId:Ljava/lang/String;

    .line 214
    iput p4, p0, Lorg/thoughtcrime/securesms/service/GenericForegroundService$Entry;->iconRes:I

    .line 215
    iput p5, p0, Lorg/thoughtcrime/securesms/service/GenericForegroundService$Entry;->id:I

    .line 216
    iput p7, p0, Lorg/thoughtcrime/securesms/service/GenericForegroundService$Entry;->progress:I

    .line 217
    iput p6, p0, Lorg/thoughtcrime/securesms/service/GenericForegroundService$Entry;->progressMax:I

    .line 218
    iput-boolean p8, p0, Lorg/thoughtcrime/securesms/service/GenericForegroundService$Entry;->indeterminate:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIZLorg/thoughtcrime/securesms/service/GenericForegroundService$1;)V
    .locals 0

    .line 200
    invoke-direct/range {p0 .. p8}, Lorg/thoughtcrime/securesms/service/GenericForegroundService$Entry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIZ)V

    return-void
.end method

.method static synthetic access$100(Landroid/content/Intent;)Lorg/thoughtcrime/securesms/service/GenericForegroundService$Entry;
    .locals 0

    .line 200
    invoke-static {p0}, Lorg/thoughtcrime/securesms/service/GenericForegroundService$Entry;->fromIntent(Landroid/content/Intent;)Lorg/thoughtcrime/securesms/service/GenericForegroundService$Entry;

    move-result-object p0

    return-object p0
.end method

.method private static fromIntent(Landroid/content/Intent;)Lorg/thoughtcrime/securesms/service/GenericForegroundService$Entry;
    .locals 11

    .line 222
    invoke-static {}, Lorg/thoughtcrime/securesms/service/GenericForegroundService;->access$200()Lorg/thoughtcrime/securesms/service/GenericForegroundService$Entry;

    move-result-object v0

    iget v0, v0, Lorg/thoughtcrime/securesms/service/GenericForegroundService$Entry;->id:I

    const-string v1, "extra_id"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const-string v0, "extra_title"

    .line 224
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 225
    invoke-static {}, Lorg/thoughtcrime/securesms/service/GenericForegroundService;->access$200()Lorg/thoughtcrime/securesms/service/GenericForegroundService$Entry;

    move-result-object v0

    iget-object v0, v0, Lorg/thoughtcrime/securesms/service/GenericForegroundService$Entry;->title:Ljava/lang/String;

    :cond_0
    move-object v3, v0

    const-string v0, "extra_content_text"

    .line 227
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 228
    invoke-static {}, Lorg/thoughtcrime/securesms/service/GenericForegroundService;->access$200()Lorg/thoughtcrime/securesms/service/GenericForegroundService$Entry;

    move-result-object v0

    iget-object v0, v0, Lorg/thoughtcrime/securesms/service/GenericForegroundService$Entry;->contentText:Ljava/lang/String;

    :cond_1
    move-object v4, v0

    const-string v0, "extra_channel_id"

    .line 230
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 231
    invoke-static {}, Lorg/thoughtcrime/securesms/service/GenericForegroundService;->access$200()Lorg/thoughtcrime/securesms/service/GenericForegroundService$Entry;

    move-result-object v0

    iget-object v0, v0, Lorg/thoughtcrime/securesms/service/GenericForegroundService$Entry;->channelId:Ljava/lang/String;

    :cond_2
    move-object v5, v0

    .line 233
    invoke-static {}, Lorg/thoughtcrime/securesms/service/GenericForegroundService;->access$200()Lorg/thoughtcrime/securesms/service/GenericForegroundService$Entry;

    move-result-object v0

    iget v0, v0, Lorg/thoughtcrime/securesms/service/GenericForegroundService$Entry;->iconRes:I

    const-string v1, "extra_icon_res"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 234
    invoke-static {}, Lorg/thoughtcrime/securesms/service/GenericForegroundService;->access$200()Lorg/thoughtcrime/securesms/service/GenericForegroundService$Entry;

    move-result-object v0

    iget v0, v0, Lorg/thoughtcrime/securesms/service/GenericForegroundService$Entry;->progress:I

    const-string v1, "extra_progress"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 235
    invoke-static {}, Lorg/thoughtcrime/securesms/service/GenericForegroundService;->access$200()Lorg/thoughtcrime/securesms/service/GenericForegroundService$Entry;

    move-result-object v0

    iget v0, v0, Lorg/thoughtcrime/securesms/service/GenericForegroundService$Entry;->progressMax:I

    const-string v1, "extra_progress_max"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 236
    invoke-static {}, Lorg/thoughtcrime/securesms/service/GenericForegroundService;->access$200()Lorg/thoughtcrime/securesms/service/GenericForegroundService$Entry;

    move-result-object v0

    iget-boolean v0, v0, Lorg/thoughtcrime/securesms/service/GenericForegroundService$Entry;->indeterminate:Z

    const-string v1, "extra_progress_indeterminate"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    .line 238
    new-instance p0, Lorg/thoughtcrime/securesms/service/GenericForegroundService$Entry;

    move-object v2, p0

    invoke-direct/range {v2 .. v10}, Lorg/thoughtcrime/securesms/service/GenericForegroundService$Entry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIZ)V

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 249
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 251
    :cond_1
    check-cast p1, Lorg/thoughtcrime/securesms/service/GenericForegroundService$Entry;

    .line 252
    iget v2, p0, Lorg/thoughtcrime/securesms/service/GenericForegroundService$Entry;->id:I

    iget v3, p1, Lorg/thoughtcrime/securesms/service/GenericForegroundService$Entry;->id:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lorg/thoughtcrime/securesms/service/GenericForegroundService$Entry;->iconRes:I

    iget v3, p1, Lorg/thoughtcrime/securesms/service/GenericForegroundService$Entry;->iconRes:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lorg/thoughtcrime/securesms/service/GenericForegroundService$Entry;->progress:I

    iget v3, p1, Lorg/thoughtcrime/securesms/service/GenericForegroundService$Entry;->progress:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lorg/thoughtcrime/securesms/service/GenericForegroundService$Entry;->progressMax:I

    iget v3, p1, Lorg/thoughtcrime/securesms/service/GenericForegroundService$Entry;->progressMax:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lorg/thoughtcrime/securesms/service/GenericForegroundService$Entry;->indeterminate:Z

    iget-boolean v3, p1, Lorg/thoughtcrime/securesms/service/GenericForegroundService$Entry;->indeterminate:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lorg/thoughtcrime/securesms/service/GenericForegroundService$Entry;->title:Ljava/lang/String;

    iget-object v3, p1, Lorg/thoughtcrime/securesms/service/GenericForegroundService$Entry;->title:Ljava/lang/String;

    .line 257
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/thoughtcrime/securesms/service/GenericForegroundService$Entry;->contentText:Ljava/lang/String;

    iget-object v3, p1, Lorg/thoughtcrime/securesms/service/GenericForegroundService$Entry;->contentText:Ljava/lang/String;

    .line 258
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/thoughtcrime/securesms/service/GenericForegroundService$Entry;->channelId:Ljava/lang/String;

    iget-object p1, p1, Lorg/thoughtcrime/securesms/service/GenericForegroundService$Entry;->channelId:Ljava/lang/String;

    .line 259
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 264
    iget-object v0, p0, Lorg/thoughtcrime/securesms/service/GenericForegroundService$Entry;->title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 266
    iget-object v1, p0, Lorg/thoughtcrime/securesms/service/GenericForegroundService$Entry;->channelId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 268
    iget v1, p0, Lorg/thoughtcrime/securesms/service/GenericForegroundService$Entry;->id:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 270
    iget v1, p0, Lorg/thoughtcrime/securesms/service/GenericForegroundService$Entry;->iconRes:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 272
    iget v1, p0, Lorg/thoughtcrime/securesms/service/GenericForegroundService$Entry;->progress:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 274
    iget v1, p0, Lorg/thoughtcrime/securesms/service/GenericForegroundService$Entry;->progressMax:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 276
    iget-boolean v1, p0, Lorg/thoughtcrime/securesms/service/GenericForegroundService$Entry;->indeterminate:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 243
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/thoughtcrime/securesms/service/GenericForegroundService$Entry;->channelId:Ljava/lang/String;

    aput-object v3, v1, v2

    iget v2, p0, Lorg/thoughtcrime/securesms/service/GenericForegroundService$Entry;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p0, Lorg/thoughtcrime/securesms/service/GenericForegroundService$Entry;->progress:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget v2, p0, Lorg/thoughtcrime/securesms/service/GenericForegroundService$Entry;->progressMax:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lorg/thoughtcrime/securesms/service/GenericForegroundService$Entry;->indeterminate:Z

    if-eqz v2, :cond_0

    const-string v2, "indeterminate"

    goto :goto_0

    :cond_0
    const-string v2, "determinate"

    :goto_0
    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string v2, "ChannelId: %s  Id: %d Progress: %d/%d %s"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
