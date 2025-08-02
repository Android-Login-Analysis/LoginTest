.class public Lorg/thoughtcrime/securesms/components/VcardView;
.super Landroid/widget/FrameLayout;
.source "VcardView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VcardView"


# instance fields
.field private final address:Landroid/widget/TextView;

.field private final avatar:Lorg/thoughtcrime/securesms/components/AvatarView;

.field private final name:Landroid/widget/TextView;

.field private slide:Lorg/thoughtcrime/securesms/mms/VcardSlide;

.field private viewListener:Lorg/thoughtcrime/securesms/mms/SlideClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, v0}, Lorg/thoughtcrime/securesms/components/VcardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, p2, v0}, Lorg/thoughtcrime/securesms/components/VcardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p2, 0x7f0c010c

    .line 43
    invoke-static {p1, p2, p0}, Lorg/thoughtcrime/securesms/components/VcardView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f090074

    .line 45
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/components/VcardView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/thoughtcrime/securesms/components/AvatarView;

    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/VcardView;->avatar:Lorg/thoughtcrime/securesms/components/AvatarView;

    const p1, 0x7f090242

    .line 46
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/components/VcardView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/VcardView;->name:Landroid/widget/TextView;

    const p1, 0x7f09004c

    .line 47
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/components/VcardView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/VcardView;->address:Landroid/widget/TextView;

    .line 49
    new-instance p1, Lorg/thoughtcrime/securesms/components/VcardView$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/thoughtcrime/securesms/components/VcardView$$ExternalSyntheticLambda0;-><init>(Lorg/thoughtcrime/securesms/components/VcardView;)V

    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/components/VcardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 2

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/VcardView;->name:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/VcardView;->address:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$new$0$org-thoughtcrime-securesms-components-VcardView(Landroid/view/View;)V
    .locals 2

    .line 50
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/VcardView;->viewListener:Lorg/thoughtcrime/securesms/mms/SlideClickListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/VcardView;->slide:Lorg/thoughtcrime/securesms/mms/VcardSlide;

    if-eqz v1, :cond_0

    .line 51
    invoke-interface {v0, p1, v1}, Lorg/thoughtcrime/securesms/mms/SlideClickListener;->onClick(Landroid/view/View;Lorg/thoughtcrime/securesms/mms/Slide;)V

    :cond_0
    return-void
.end method

.method public setVcard(Lorg/thoughtcrime/securesms/mms/GlideRequests;Lorg/thoughtcrime/securesms/mms/VcardSlide;Lcom/b44t/messenger/rpc/Rpc;)V
    .locals 4

    .line 62
    :try_start_0
    invoke-virtual {p2}, Lorg/thoughtcrime/securesms/mms/VcardSlide;->asAttachment()Lorg/thoughtcrime/securesms/attachments/Attachment;

    move-result-object v0

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/VcardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/attachments/Attachment;->getRealPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/b44t/messenger/rpc/Rpc;->parseVcard(Ljava/lang/String;)Ljava/util/List;

    move-result-object p3

    const/4 v0, 0x0

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/b44t/messenger/rpc/VcardContact;

    .line 63
    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/VcardView;->name:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/b44t/messenger/rpc/VcardContact;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/VcardView;->address:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/b44t/messenger/rpc/VcardContact;->getAddr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/VcardView;->avatar:Lorg/thoughtcrime/securesms/components/AvatarView;

    new-instance v2, Lorg/thoughtcrime/securesms/recipients/Recipient;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/VcardView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p3}, Lorg/thoughtcrime/securesms/recipients/Recipient;-><init>(Landroid/content/Context;Lcom/b44t/messenger/rpc/VcardContact;)V

    invoke-virtual {v1, p1, v2, v0}, Lorg/thoughtcrime/securesms/components/AvatarView;->setAvatar(Lorg/thoughtcrime/securesms/mms/GlideRequests;Lorg/thoughtcrime/securesms/recipients/Recipient;Z)V

    .line 66
    iput-object p2, p0, Lorg/thoughtcrime/securesms/components/VcardView;->slide:Lorg/thoughtcrime/securesms/mms/VcardSlide;
    :try_end_0
    .catch Lcom/b44t/messenger/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 68
    sget-object p2, Lorg/thoughtcrime/securesms/components/VcardView;->TAG:Ljava/lang/String;

    const-string p3, "failed to parse vCard"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setVcardClickListener(Lorg/thoughtcrime/securesms/mms/SlideClickListener;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/VcardView;->viewListener:Lorg/thoughtcrime/securesms/mms/SlideClickListener;

    return-void
.end method
