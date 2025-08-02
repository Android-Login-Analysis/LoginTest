.class public Lorg/thoughtcrime/securesms/reactions/ReactionsConversationView;
.super Landroid/widget/LinearLayout;
.source "ReactionsConversationView.java"


# static fields
.field private static final OUTER_MARGIN:I


# instance fields
.field private isIncoming:Z

.field private final reactions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/b44t/messenger/rpc/Reaction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    .line 28
    invoke-static {v0}, Lorg/thoughtcrime/securesms/util/ViewUtil;->dpToPx(I)I

    move-result v0

    sput v0, Lorg/thoughtcrime/securesms/reactions/ReactionsConversationView;->OUTER_MARGIN:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 30
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/reactions/ReactionsConversationView;->reactions:Ljava/util/List;

    const/4 p1, 0x0

    .line 35
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/reactions/ReactionsConversationView;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/reactions/ReactionsConversationView;->reactions:Ljava/util/List;

    .line 40
    invoke-direct {p0, p2}, Lorg/thoughtcrime/securesms/reactions/ReactionsConversationView;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private static buildPill(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/b44t/messenger/rpc/Reaction;)Landroid/view/View;
    .locals 5

    .line 95
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00f2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0902cb

    .line 96
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;

    const v1, 0x7f0902ca

    .line 97
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0902cc

    .line 98
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 100
    invoke-virtual {p2}, Lcom/b44t/messenger/rpc/Reaction;->getEmoji()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x8

    if-eqz v3, :cond_1

    .line 101
    invoke-virtual {p2}, Lcom/b44t/messenger/rpc/Reaction;->getEmoji()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    invoke-virtual {p2}, Lcom/b44t/messenger/rpc/Reaction;->getCount()I

    move-result v0

    const/4 v3, 0x1

    if-le v0, v3, :cond_0

    .line 104
    invoke-virtual {p2}, Lcom/b44t/messenger/rpc/Reaction;->getCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 106
    :cond_0
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 107
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 110
    :cond_1
    invoke-virtual {v0, v4}, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->setVisibility(I)V

    .line 111
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "+"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/b44t/messenger/rpc/Reaction;->getCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    :goto_0
    invoke-virtual {p2}, Lcom/b44t/messenger/rpc/Reaction;->isFromSelf()Z

    move-result p2

    if-eqz p2, :cond_2

    const p2, 0x7f0801df

    .line 116
    invoke-static {p0, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const p2, 0x7f060344

    .line 117
    invoke-static {p0, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_2
    const p2, 0x7f0801de

    .line 119
    invoke-static {p0, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    return-object p1
.end method

.method private static buildShortenedReactionsList(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/b44t/messenger/rpc/Reaction;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/b44t/messenger/rpc/Reaction;",
            ">;"
        }
    .end annotation

    .line 76
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_3

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 78
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/b44t/messenger/rpc/Reaction;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    .line 79
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/b44t/messenger/rpc/Reaction;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 82
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_2

    .line 83
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/b44t/messenger/rpc/Reaction;

    invoke-virtual {v6}, Lcom/b44t/messenger/rpc/Reaction;->getCount()I

    move-result v6

    add-int/2addr v4, v6

    if-nez v5, :cond_1

    .line 84
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/b44t/messenger/rpc/Reaction;

    invoke-virtual {v5}, Lcom/b44t/messenger/rpc/Reaction;->isFromSelf()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v5, 0x1

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 86
    :cond_2
    new-instance p0, Lcom/b44t/messenger/rpc/Reaction;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v4, v5}, Lcom/b44t/messenger/rpc/Reaction;-><init>(Ljava/lang/String;IZ)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_3
    return-object p0
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 45
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/reactions/ReactionsConversationView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lorg/thoughtcrime/securesms/R$styleable;->ReactionsConversationView:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 46
    invoke-virtual {p1, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    iput-boolean v2, p0, Lorg/thoughtcrime/securesms/reactions/ReactionsConversationView;->isIncoming:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/thoughtcrime/securesms/reactions/ReactionsConversationView;->reactions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 52
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/reactions/ReactionsConversationView;->removeAllViews()V

    return-void
.end method

.method public setReactions(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/b44t/messenger/rpc/Reaction;",
            ">;)V"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lorg/thoughtcrime/securesms/reactions/ReactionsConversationView;->reactions:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 60
    :cond_0
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/reactions/ReactionsConversationView;->clear()V

    .line 61
    iget-object v0, p0, Lorg/thoughtcrime/securesms/reactions/ReactionsConversationView;->reactions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 63
    iget-object p1, p0, Lorg/thoughtcrime/securesms/reactions/ReactionsConversationView;->reactions:Ljava/util/List;

    invoke-static {p1}, Lorg/thoughtcrime/securesms/reactions/ReactionsConversationView;->buildShortenedReactionsList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b44t/messenger/rpc/Reaction;

    .line 64
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/reactions/ReactionsConversationView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p0, v0}, Lorg/thoughtcrime/securesms/reactions/ReactionsConversationView;->buildPill(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/b44t/messenger/rpc/Reaction;)Landroid/view/View;

    move-result-object v0

    .line 65
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/reactions/ReactionsConversationView;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 68
    :cond_1
    iget-boolean p1, p0, Lorg/thoughtcrime/securesms/reactions/ReactionsConversationView;->isIncoming:Z

    if-eqz p1, :cond_2

    .line 69
    sget p1, Lorg/thoughtcrime/securesms/reactions/ReactionsConversationView;->OUTER_MARGIN:I

    invoke-static {p0, p1}, Lorg/thoughtcrime/securesms/util/ViewUtil;->setLeftMargin(Landroid/view/View;I)V

    goto :goto_1

    .line 71
    :cond_2
    sget p1, Lorg/thoughtcrime/securesms/reactions/ReactionsConversationView;->OUTER_MARGIN:I

    invoke-static {p0, p1}, Lorg/thoughtcrime/securesms/util/ViewUtil;->setRightMargin(Landroid/view/View;I)V

    :goto_1
    return-void
.end method
