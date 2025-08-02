.class public Lorg/thoughtcrime/securesms/components/emoji/EmojiVariationSelectorPopup;
.super Landroid/widget/PopupWindow;
.source "EmojiVariationSelectorPopup.java"


# instance fields
.field private final context:Landroid/content/Context;

.field private final list:Landroid/view/ViewGroup;

.field private final listener:Lorg/thoughtcrime/securesms/components/emoji/EmojiKeyboardProvider$EmojiEventListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/thoughtcrime/securesms/components/emoji/EmojiKeyboardProvider$EmojiEventListener;)V
    .locals 3

    .line 23
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0069

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const/4 v1, -0x2

    invoke-direct {p0, v0, v1, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 26
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiVariationSelectorPopup;->context:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiVariationSelectorPopup;->listener:Lorg/thoughtcrime/securesms/components/emoji/EmojiKeyboardProvider$EmojiEventListener;

    .line 28
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/emoji/EmojiVariationSelectorPopup;->getContentView()Landroid/view/View;

    move-result-object p1

    const p2, 0x7f09011c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiVariationSelectorPopup;->list:Landroid/view/ViewGroup;

    .line 30
    invoke-virtual {p0, v2}, Lorg/thoughtcrime/securesms/components/emoji/EmojiVariationSelectorPopup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x1

    .line 31
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/components/emoji/EmojiVariationSelectorPopup;->setOutsideTouchable(Z)V

    .line 33
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x15

    if-lt p1, p2, :cond_0

    const/high16 p1, 0x41a00000    # 20.0f

    .line 34
    invoke-static {p0, p1}, Lkotlinx/coroutines/time/TimeKt$$ExternalSyntheticApiModelOutline0;->m(Lorg/thoughtcrime/securesms/components/emoji/EmojiVariationSelectorPopup;F)V

    :cond_0
    return-void
.end method


# virtual methods
.method synthetic lambda$setVariations$0$org-thoughtcrime-securesms-components-emoji-EmojiVariationSelectorPopup(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 45
    iget-object p2, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiVariationSelectorPopup;->listener:Lorg/thoughtcrime/securesms/components/emoji/EmojiKeyboardProvider$EmojiEventListener;

    invoke-interface {p2, p1}, Lorg/thoughtcrime/securesms/components/emoji/EmojiKeyboardProvider$EmojiEventListener;->onEmojiSelected(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/emoji/EmojiVariationSelectorPopup;->dismiss()V

    return-void
.end method

.method public setVariations(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiVariationSelectorPopup;->list:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 41
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 42
    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiVariationSelectorPopup;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiVariationSelectorPopup;->list:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    const v4, 0x7f0c006a

    invoke-virtual {v1, v4, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 43
    iget-object v2, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiVariationSelectorPopup;->context:Landroid/content/Context;

    invoke-static {v2}, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider;->getInstance(Landroid/content/Context;)Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/thoughtcrime/securesms/components/emoji/EmojiProvider;->getEmojiDrawable(Ljava/lang/CharSequence;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 44
    new-instance v2, Lorg/thoughtcrime/securesms/components/emoji/EmojiVariationSelectorPopup$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lorg/thoughtcrime/securesms/components/emoji/EmojiVariationSelectorPopup$$ExternalSyntheticLambda1;-><init>(Lorg/thoughtcrime/securesms/components/emoji/EmojiVariationSelectorPopup;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/emoji/EmojiVariationSelectorPopup;->list:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    return-void
.end method
