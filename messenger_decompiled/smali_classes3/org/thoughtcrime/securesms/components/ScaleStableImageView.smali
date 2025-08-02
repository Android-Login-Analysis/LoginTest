.class public Lorg/thoughtcrime/securesms/components/ScaleStableImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "ScaleStableImageView.java"

# interfaces
.implements Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout$OnKeyboardShownListener;
.implements Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout$OnKeyboardHiddenListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ScaleStableImageView"


# instance fields
.field private currentDrawable:Landroid/graphics/drawable/Drawable;

.field private defaultDrawable:Landroid/graphics/drawable/Drawable;

.field private keyboardShown:Z

.field private landscapeHeight:I

.field private landscapeWidth:I

.field private portraitHeight:I

.field private portraitWidth:I

.field private final storedSizes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, v0}, Lorg/thoughtcrime/securesms/components/ScaleStableImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, p2, v0}, Lorg/thoughtcrime/securesms/components/ScaleStableImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/ScaleStableImageView;->storedSizes:Ljava/util/Map;

    const/4 p1, 0x0

    .line 68
    iput p1, p0, Lorg/thoughtcrime/securesms/components/ScaleStableImageView;->landscapeWidth:I

    .line 69
    iput p1, p0, Lorg/thoughtcrime/securesms/components/ScaleStableImageView;->landscapeHeight:I

    .line 70
    iput p1, p0, Lorg/thoughtcrime/securesms/components/ScaleStableImageView;->portraitWidth:I

    .line 71
    iput p1, p0, Lorg/thoughtcrime/securesms/components/ScaleStableImageView;->portraitHeight:I

    .line 72
    iput-boolean p1, p0, Lorg/thoughtcrime/securesms/components/ScaleStableImageView;->keyboardShown:Z

    return-void
.end method

.method private measureViewSize(IIIIZ)V
    .locals 2

    .line 146
    iget v0, p0, Lorg/thoughtcrime/securesms/components/ScaleStableImageView;->portraitWidth:I

    if-eqz v0, :cond_0

    iget v1, p0, Lorg/thoughtcrime/securesms/components/ScaleStableImageView;->portraitHeight:I

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/thoughtcrime/securesms/components/ScaleStableImageView;->landscapeWidth:I

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/thoughtcrime/securesms/components/ScaleStableImageView;->landscapeHeight:I

    if-eqz v1, :cond_0

    return-void

    :cond_0
    if-nez p3, :cond_2

    if-nez p4, :cond_2

    if-eqz p5, :cond_1

    .line 151
    iput p2, p0, Lorg/thoughtcrime/securesms/components/ScaleStableImageView;->portraitHeight:I

    .line 152
    iput p1, p0, Lorg/thoughtcrime/securesms/components/ScaleStableImageView;->portraitWidth:I

    goto :goto_0

    .line 154
    :cond_1
    iput p2, p0, Lorg/thoughtcrime/securesms/components/ScaleStableImageView;->landscapeHeight:I

    .line 155
    iput p1, p0, Lorg/thoughtcrime/securesms/components/ScaleStableImageView;->landscapeWidth:I

    goto :goto_0

    :cond_2
    if-ne p3, v0, :cond_3

    if-nez p5, :cond_4

    .line 160
    iput p2, p0, Lorg/thoughtcrime/securesms/components/ScaleStableImageView;->landscapeHeight:I

    .line 161
    iput p1, p0, Lorg/thoughtcrime/securesms/components/ScaleStableImageView;->landscapeWidth:I

    goto :goto_0

    .line 163
    :cond_3
    iget p3, p0, Lorg/thoughtcrime/securesms/components/ScaleStableImageView;->landscapeHeight:I

    if-ne p4, p3, :cond_4

    if-eqz p5, :cond_4

    .line 165
    iput p2, p0, Lorg/thoughtcrime/securesms/components/ScaleStableImageView;->portraitHeight:I

    .line 166
    iput p1, p0, Lorg/thoughtcrime/securesms/components/ScaleStableImageView;->portraitWidth:I

    :cond_4
    :goto_0
    return-void
.end method

.method private overrideDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/ScaleStableImageView;->currentDrawable:Landroid/graphics/drawable/Drawable;

    if-ne v0, p1, :cond_0

    return-void

    .line 64
    :cond_0
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/ScaleStableImageView;->currentDrawable:Landroid/graphics/drawable/Drawable;

    .line 65
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$onSizeChanged$0$org-thoughtcrime-securesms-components-ScaleStableImageView(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 135
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/components/ScaleStableImageView;->overrideDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method synthetic lambda$onSizeChanged$1$org-thoughtcrime-securesms-components-ScaleStableImageView(IILjava/lang/String;)V
    .locals 2

    .line 122
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/ScaleStableImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 123
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/ScaleStableImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 125
    :try_start_0
    invoke-static {v1}, Lorg/thoughtcrime/securesms/mms/GlideApp;->with(Landroid/content/Context;)Lorg/thoughtcrime/securesms/mms/GlideRequests;

    move-result-object v1

    .line 126
    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/mms/GlideRequests;->asBitmap()Lorg/thoughtcrime/securesms/mms/GlideRequest;

    move-result-object v1

    .line 127
    invoke-virtual {v1, v0}, Lorg/thoughtcrime/securesms/mms/GlideRequest;->load(Landroid/graphics/Bitmap;)Lorg/thoughtcrime/securesms/mms/GlideRequest;

    move-result-object v0

    .line 128
    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/mms/GlideRequest;->centerCrop()Lorg/thoughtcrime/securesms/mms/GlideRequest;

    move-result-object v0

    const/4 v1, 0x1

    .line 129
    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/mms/GlideRequest;->skipMemoryCache(Z)Lorg/thoughtcrime/securesms/mms/GlideRequest;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 130
    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/mms/GlideRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lorg/thoughtcrime/securesms/mms/GlideRequest;

    move-result-object v0

    .line 131
    invoke-virtual {v0, p1, p2}, Lorg/thoughtcrime/securesms/mms/GlideRequest;->submit(II)Lcom/bumptech/glide/request/FutureTarget;

    move-result-object p1

    .line 132
    invoke-interface {p1}, Lcom/bumptech/glide/request/FutureTarget;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    .line 133
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/ScaleStableImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 134
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/ScaleStableImageView;->storedSizes:Ljava/util/Map;

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    new-instance p1, Lorg/thoughtcrime/securesms/components/ScaleStableImageView$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, p2}, Lorg/thoughtcrime/securesms/components/ScaleStableImageView$$ExternalSyntheticLambda0;-><init>(Lorg/thoughtcrime/securesms/components/ScaleStableImageView;Landroid/graphics/drawable/Drawable;)V

    invoke-static {p1}, Lorg/thoughtcrime/securesms/util/Util;->runOnMain(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 137
    :goto_0
    sget-object p2, Lorg/thoughtcrime/securesms/components/ScaleStableImageView;->TAG:Ljava/lang/String;

    const-string p3, "could not rescale background"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public onKeyboardHidden()V
    .locals 2

    const/4 v0, 0x0

    .line 174
    iput-boolean v0, p0, Lorg/thoughtcrime/securesms/components/ScaleStableImageView;->keyboardShown:Z

    .line 175
    sget-object v0, Lorg/thoughtcrime/securesms/components/ScaleStableImageView;->TAG:Ljava/lang/String;

    const-string v1, "Keyboard hidden"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onKeyboardShown()V
    .locals 2

    const/4 v0, 0x1

    .line 180
    iput-boolean v0, p0, Lorg/thoughtcrime/securesms/components/ScaleStableImageView;->keyboardShown:Z

    .line 181
    sget-object v0, Lorg/thoughtcrime/securesms/components/ScaleStableImageView;->TAG:Ljava/lang/String;

    const-string v1, "Keyboard shown"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 11

    if-eqz p1, :cond_a

    if-nez p2, :cond_0

    goto/16 :goto_3

    .line 77
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/ScaleStableImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    if-ne v2, v3, :cond_9

    const/4 v3, 0x0

    .line 89
    :goto_0
    iget-object v2, p0, Lorg/thoughtcrime/securesms/components/ScaleStableImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v2, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v2, :cond_2

    return-void

    :cond_2
    move-object v5, p0

    move v6, p1

    move v7, p2

    move v8, p3

    move v9, p4

    move v10, v3

    .line 93
    invoke-direct/range {v5 .. v10}, Lorg/thoughtcrime/securesms/components/ScaleStableImageView;->measureViewSize(IIIIZ)V

    .line 95
    iget-object v2, p0, Lorg/thoughtcrime/securesms/components/ScaleStableImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    if-ne v2, p1, :cond_3

    iget-object v2, p0, Lorg/thoughtcrime/securesms/components/ScaleStableImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 96
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-ne v2, p2, :cond_3

    .line 97
    iget-object v2, p0, Lorg/thoughtcrime/securesms/components/ScaleStableImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v2}, Lorg/thoughtcrime/securesms/components/ScaleStableImageView;->overrideDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 101
    :cond_3
    iget-object v2, p0, Lorg/thoughtcrime/securesms/components/ScaleStableImageView;->storedSizes:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 102
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/ScaleStableImageView;->storedSizes:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 106
    :cond_4
    iget-boolean v2, p0, Lorg/thoughtcrime/securesms/components/ScaleStableImageView;->keyboardShown:Z

    if-eqz v2, :cond_7

    if-eqz v3, :cond_5

    .line 110
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/ScaleStableImageView;->storedSizes:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lorg/thoughtcrime/securesms/components/ScaleStableImageView;->portraitWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/thoughtcrime/securesms/components/ScaleStableImageView;->portraitHeight:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 112
    :cond_5
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/ScaleStableImageView;->storedSizes:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lorg/thoughtcrime/securesms/components/ScaleStableImageView;->landscapeWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/thoughtcrime/securesms/components/ScaleStableImageView;->landscapeHeight:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    :goto_1
    if-nez v0, :cond_6

    return-void

    .line 114
    :cond_6
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-gt p2, v1, :cond_8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-gt p1, v1, :cond_8

    .line 116
    invoke-static {v0, v4, v4, p1, p2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 117
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/ScaleStableImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 118
    invoke-direct {p0, v1}, Lorg/thoughtcrime/securesms/components/ScaleStableImageView;->overrideDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 121
    :cond_7
    new-instance v1, Lorg/thoughtcrime/securesms/components/ScaleStableImageView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2, v0}, Lorg/thoughtcrime/securesms/components/ScaleStableImageView$$ExternalSyntheticLambda1;-><init>(Lorg/thoughtcrime/securesms/components/ScaleStableImageView;IILjava/lang/String;)V

    invoke-static {v1}, Lorg/thoughtcrime/securesms/util/Util;->runOnBackground(Ljava/lang/Runnable;)V

    .line 142
    :cond_8
    :goto_2
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatImageView;->onSizeChanged(IIII)V

    return-void

    .line 85
    :cond_9
    sget-object p1, Lorg/thoughtcrime/securesms/components/ScaleStableImageView;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "orientation was: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_3
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/ScaleStableImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 58
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/ScaleStableImageView;->storedSizes:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 59
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/ScaleStableImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/components/ScaleStableImageView;->overrideDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
