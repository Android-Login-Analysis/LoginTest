.class public Lorg/thoughtcrime/securesms/reactions/AddReactionView;
.super Landroid/widget/LinearLayout;
.source "AddReactionView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/reactions/AddReactionView$AddReactionListener;
    }
.end annotation


# instance fields
.field private anyReactionClearsReaction:Z

.field private anyReactionView:Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;

.field private context:Landroid/content/Context;

.field private dcContext:Lcom/b44t/messenger/DcContext;

.field private defaultReactionViews:[Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;

.field private listener:Lorg/thoughtcrime/securesms/reactions/AddReactionView$AddReactionListener;

.field private msgToReactTo:Lcom/b44t/messenger/DcMsg;

.field private rpc:Lcom/b44t/messenger/rpc/Rpc;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private anyReactionClicked()V
    .locals 4

    .line 151
    iget-boolean v0, p0, Lorg/thoughtcrime/securesms/reactions/AddReactionView;->anyReactionClearsReaction:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 152
    invoke-direct {p0, v1}, Lorg/thoughtcrime/securesms/reactions/AddReactionView;->sendReaction(Ljava/lang/String;)V

    goto :goto_0

    .line 154
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/reactions/AddReactionView;->context:Landroid/content/Context;

    const v2, 0x7f0c00ef

    invoke-static {v0, v2, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 156
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v3, p0, Lorg/thoughtcrime/securesms/reactions/AddReactionView;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 157
    invoke-virtual {v2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f120397

    .line 158
    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f120097

    .line 159
    invoke-virtual {v2, v3, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 160
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    const v2, 0x7f090114

    .line 162
    invoke-static {v0, v2}, Lorg/thoughtcrime/securesms/util/ViewUtil;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/emoji2/emojipicker/EmojiPickerView;

    .line 163
    new-instance v2, Lorg/thoughtcrime/securesms/reactions/AddReactionView$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v1}, Lorg/thoughtcrime/securesms/reactions/AddReactionView$$ExternalSyntheticLambda2;-><init>(Lorg/thoughtcrime/securesms/reactions/AddReactionView;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v0, v2}, Landroidx/emoji2/emojipicker/EmojiPickerView;->setOnEmojiPickedListener(Landroidx/core/util/Consumer;)V

    .line 168
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 171
    :goto_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/reactions/AddReactionView;->listener:Lorg/thoughtcrime/securesms/reactions/AddReactionView$AddReactionListener;

    if-eqz v0, :cond_1

    .line 172
    invoke-interface {v0}, Lorg/thoughtcrime/securesms/reactions/AddReactionView$AddReactionListener;->onShallHide()V

    :cond_1
    return-void
.end method

.method private defaultReactionClicked(I)V
    .locals 1

    .line 142
    iget-object v0, p0, Lorg/thoughtcrime/securesms/reactions/AddReactionView;->defaultReactionViews:[Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 143
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/reactions/AddReactionView;->sendReaction(Ljava/lang/String;)V

    .line 145
    iget-object p1, p0, Lorg/thoughtcrime/securesms/reactions/AddReactionView;->listener:Lorg/thoughtcrime/securesms/reactions/AddReactionView$AddReactionListener;

    if-eqz p1, :cond_0

    .line 146
    invoke-interface {p1}, Lorg/thoughtcrime/securesms/reactions/AddReactionView$AddReactionListener;->onShallHide()V

    :cond_0
    return-void
.end method

.method private getSelfReaction()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 129
    :try_start_0
    iget-object v1, p0, Lorg/thoughtcrime/securesms/reactions/AddReactionView;->rpc:Lcom/b44t/messenger/rpc/Rpc;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/reactions/AddReactionView;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {v2}, Lcom/b44t/messenger/DcContext;->getAccountId()I

    move-result v2

    iget-object v3, p0, Lorg/thoughtcrime/securesms/reactions/AddReactionView;->msgToReactTo:Lcom/b44t/messenger/DcMsg;

    invoke-virtual {v3}, Lcom/b44t/messenger/DcMsg;->getId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/b44t/messenger/rpc/Rpc;->getMsgReactions(II)Lcom/b44t/messenger/rpc/Reactions;

    move-result-object v1

    .line 130
    invoke-virtual {v1}, Lcom/b44t/messenger/rpc/Reactions;->getReactionsByContact()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x1

    .line 131
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 132
    array-length v2, v1

    if-lez v2, :cond_0

    const/4 v2, 0x0

    .line 133
    aget-object v0, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 136
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0
.end method

.method private init()V
    .locals 4

    .line 45
    iget-object v0, p0, Lorg/thoughtcrime/securesms/reactions/AddReactionView;->context:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 46
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/reactions/AddReactionView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/thoughtcrime/securesms/reactions/AddReactionView;->context:Landroid/content/Context;

    .line 47
    invoke-static {v0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getContext(Landroid/content/Context;)Lcom/b44t/messenger/DcContext;

    move-result-object v0

    iput-object v0, p0, Lorg/thoughtcrime/securesms/reactions/AddReactionView;->dcContext:Lcom/b44t/messenger/DcContext;

    .line 48
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/reactions/AddReactionView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/thoughtcrime/securesms/connect/DcHelper;->getRpc(Landroid/content/Context;)Lcom/b44t/messenger/rpc/Rpc;

    move-result-object v0

    iput-object v0, p0, Lorg/thoughtcrime/securesms/reactions/AddReactionView;->rpc:Lcom/b44t/messenger/rpc/Rpc;

    const/4 v0, 0x5

    new-array v0, v0, [Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;

    const v1, 0x7f0902c4

    .line 50
    invoke-virtual {p0, v1}, Lorg/thoughtcrime/securesms/reactions/AddReactionView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f0902c5

    .line 51
    invoke-virtual {p0, v1}, Lorg/thoughtcrime/securesms/reactions/AddReactionView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const v1, 0x7f0902c6

    .line 52
    invoke-virtual {p0, v1}, Lorg/thoughtcrime/securesms/reactions/AddReactionView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const v1, 0x7f0902c7

    .line 53
    invoke-virtual {p0, v1}, Lorg/thoughtcrime/securesms/reactions/AddReactionView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;

    const/4 v3, 0x3

    aput-object v1, v0, v3

    const v1, 0x7f0902c8

    .line 54
    invoke-virtual {p0, v1}, Lorg/thoughtcrime/securesms/reactions/AddReactionView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;

    const/4 v3, 0x4

    aput-object v1, v0, v3

    iput-object v0, p0, Lorg/thoughtcrime/securesms/reactions/AddReactionView;->defaultReactionViews:[Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;

    .line 56
    :goto_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/reactions/AddReactionView;->defaultReactionViews:[Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;

    array-length v1, v0

    if-ge v2, v1, :cond_0

    .line 58
    aget-object v0, v0, v2

    new-instance v1, Lorg/thoughtcrime/securesms/reactions/AddReactionView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v2}, Lorg/thoughtcrime/securesms/reactions/AddReactionView$$ExternalSyntheticLambda0;-><init>(Lorg/thoughtcrime/securesms/reactions/AddReactionView;I)V

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const v0, 0x7f0902c9

    .line 60
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/reactions/AddReactionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/reactions/AddReactionView;->anyReactionView:Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;

    .line 61
    new-instance v1, Lorg/thoughtcrime/securesms/reactions/AddReactionView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/thoughtcrime/securesms/reactions/AddReactionView$$ExternalSyntheticLambda1;-><init>(Lorg/thoughtcrime/securesms/reactions/AddReactionView;)V

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    .line 63
    iget-object v0, p0, Lorg/thoughtcrime/securesms/reactions/AddReactionView;->anyReactionView:Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private sendReaction(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 178
    :try_start_0
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/reactions/AddReactionView;->getSelfReaction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 181
    :cond_0
    iget-object v2, p0, Lorg/thoughtcrime/securesms/reactions/AddReactionView;->rpc:Lcom/b44t/messenger/rpc/Rpc;

    iget-object v3, p0, Lorg/thoughtcrime/securesms/reactions/AddReactionView;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {v3}, Lcom/b44t/messenger/DcContext;->getAccountId()I

    move-result v3

    iget-object v4, p0, Lorg/thoughtcrime/securesms/reactions/AddReactionView;->msgToReactTo:Lcom/b44t/messenger/DcMsg;

    invoke-virtual {v4}, Lcom/b44t/messenger/DcMsg;->getId()I

    move-result v4

    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v0

    invoke-virtual {v2, v3, v4, v1}, Lcom/b44t/messenger/rpc/Rpc;->sendReaction(II[Ljava/lang/String;)I

    goto :goto_1

    .line 179
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/thoughtcrime/securesms/reactions/AddReactionView;->rpc:Lcom/b44t/messenger/rpc/Rpc;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/reactions/AddReactionView;->dcContext:Lcom/b44t/messenger/DcContext;

    invoke-virtual {v2}, Lcom/b44t/messenger/DcContext;->getAccountId()I

    move-result v2

    iget-object v3, p0, Lorg/thoughtcrime/securesms/reactions/AddReactionView;->msgToReactTo:Lcom/b44t/messenger/DcMsg;

    invoke-virtual {v3}, Lcom/b44t/messenger/DcMsg;->getId()I

    move-result v3

    new-array v1, v1, [Ljava/lang/String;

    const-string v4, ""

    aput-object v4, v1, v0

    invoke-virtual {p1, v2, v3, v1}, Lcom/b44t/messenger/rpc/Rpc;->sendReaction(II[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 184
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 1

    const/16 v0, 0x8

    .line 117
    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/reactions/AddReactionView;->setVisibility(I)V

    return-void
.end method

.method synthetic lambda$anyReactionClicked$2$org-thoughtcrime-securesms-reactions-AddReactionView(Landroidx/appcompat/app/AlertDialog;Landroidx/emoji2/emojipicker/EmojiViewItem;)V
    .locals 0

    .line 164
    invoke-virtual {p2}, Landroidx/emoji2/emojipicker/EmojiViewItem;->getEmoji()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/thoughtcrime/securesms/reactions/AddReactionView;->sendReaction(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    return-void
.end method

.method synthetic lambda$init$0$org-thoughtcrime-securesms-reactions-AddReactionView(ILandroid/view/View;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/reactions/AddReactionView;->defaultReactionClicked(I)V

    return-void
.end method

.method synthetic lambda$init$1$org-thoughtcrime-securesms-reactions-AddReactionView(Landroid/view/View;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/reactions/AddReactionView;->anyReactionClicked()V

    return-void
.end method

.method public move(I)V
    .locals 1

    .line 121
    iget-object v0, p0, Lorg/thoughtcrime/securesms/reactions/AddReactionView;->msgToReactTo:Lcom/b44t/messenger/DcMsg;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/reactions/AddReactionView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 122
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/reactions/AddReactionView;->getY()F

    move-result v0

    float-to-int v0, v0

    sub-int/2addr v0, p1

    invoke-static {p0, v0}, Lorg/thoughtcrime/securesms/util/ViewUtil;->setTopMargin(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public show(Lcom/b44t/messenger/DcMsg;Landroid/view/View;Lorg/thoughtcrime/securesms/reactions/AddReactionView$AddReactionListener;)V
    .locals 10

    .line 69
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/reactions/AddReactionView;->init()V

    .line 71
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->isInfo()Z

    move-result v0

    if-nez v0, :cond_5

    .line 72
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getType()I

    move-result v0

    const/16 v1, 0x46

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lorg/thoughtcrime/securesms/reactions/AddReactionView;->dcContext:Lcom/b44t/messenger/DcContext;

    .line 73
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getChatId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/b44t/messenger/DcContext;->getChat(I)Lcom/b44t/messenger/DcChat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b44t/messenger/DcChat;->canSend()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 77
    :cond_0
    iput-object p1, p0, Lorg/thoughtcrime/securesms/reactions/AddReactionView;->msgToReactTo:Lcom/b44t/messenger/DcMsg;

    .line 78
    iput-object p3, p0, Lorg/thoughtcrime/securesms/reactions/AddReactionView;->listener:Lorg/thoughtcrime/securesms/reactions/AddReactionView$AddReactionListener;

    .line 80
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/reactions/AddReactionView;->getSelfReaction()Ljava/lang/String;

    move-result-object p3

    .line 82
    iget-object v0, p0, Lorg/thoughtcrime/securesms/reactions/AddReactionView;->defaultReactionViews:[Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const v5, 0x7f0801df

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ge v3, v1, :cond_2

    aget-object v8, v0, v3

    .line 83
    invoke-virtual {v8}, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 84
    iget-object v4, p0, Lorg/thoughtcrime/securesms/reactions/AddReactionView;->context:Landroid/content/Context;

    invoke-static {v4, v5}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v8, v4}, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v4, 0x1

    goto :goto_1

    .line 87
    :cond_1
    invoke-virtual {v8, v6}, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    if-nez v4, :cond_3

    .line 92
    iget-object v0, p0, Lorg/thoughtcrime/securesms/reactions/AddReactionView;->anyReactionView:Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;

    invoke-virtual {v0, p3}, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object p3, p0, Lorg/thoughtcrime/securesms/reactions/AddReactionView;->anyReactionView:Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;

    iget-object v0, p0, Lorg/thoughtcrime/securesms/reactions/AddReactionView;->context:Landroid/content/Context;

    invoke-static {v0, v5}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p3, v0}, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 94
    iput-boolean v7, p0, Lorg/thoughtcrime/securesms/reactions/AddReactionView;->anyReactionClearsReaction:Z

    goto :goto_2

    .line 96
    :cond_3
    iget-object p3, p0, Lorg/thoughtcrime/securesms/reactions/AddReactionView;->anyReactionView:Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;

    const-string v0, "\u22ef"

    invoke-virtual {p3, v0}, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object p3, p0, Lorg/thoughtcrime/securesms/reactions/AddReactionView;->anyReactionView:Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;

    invoke-virtual {p3, v6}, Lorg/thoughtcrime/securesms/components/emoji/EmojiTextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 98
    iput-boolean v2, p0, Lorg/thoughtcrime/securesms/reactions/AddReactionView;->anyReactionClearsReaction:Z

    .line 101
    :goto_2
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/reactions/AddReactionView;->getHeight()I

    move-result p3

    int-to-double v0, p3

    const-wide v3, 0x3fe54fdf3b645a1dL    # 0.666

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v3

    double-to-int p3, v0

    .line 102
    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 103
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->isOutgoing()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 104
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p1

    sub-int/2addr p1, p3

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/reactions/AddReactionView;->getWidth()I

    move-result v1

    sub-int/2addr p1, v1

    add-int/2addr v0, p1

    goto :goto_3

    :cond_4
    add-int/2addr v0, p3

    .line 108
    :goto_3
    invoke-static {p0, v0}, Lorg/thoughtcrime/securesms/util/ViewUtil;->setLeftMargin(Landroid/view/View;I)V

    .line 110
    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result p1

    float-to-int p1, p1

    sub-int/2addr p1, p3

    div-int/lit8 p3, p3, 0x2

    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 111
    invoke-static {p0, p1}, Lorg/thoughtcrime/securesms/util/ViewUtil;->setTopMargin(Landroid/view/View;I)V

    .line 113
    invoke-virtual {p0, v2}, Lorg/thoughtcrime/securesms/reactions/AddReactionView;->setVisibility(I)V

    :cond_5
    :goto_4
    return-void
.end method
