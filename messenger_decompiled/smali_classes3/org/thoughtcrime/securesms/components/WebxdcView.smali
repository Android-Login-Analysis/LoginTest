.class public Lorg/thoughtcrime/securesms/components/WebxdcView;
.super Landroid/widget/FrameLayout;
.source "WebxdcView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/components/WebxdcView$OpenClickedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WebxdcView"


# instance fields
.field private final appName:Landroid/widget/TextView;

.field private final appSubtitle:Landroid/widget/TextView;

.field private final icon:Landroidx/appcompat/widget/AppCompatImageView;

.field private viewListener:Lorg/thoughtcrime/securesms/mms/SlideClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, v0}, Lorg/thoughtcrime/securesms/components/WebxdcView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, p2, v0}, Lorg/thoughtcrime/securesms/components/WebxdcView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p3

    sget-object v0, Lorg/thoughtcrime/securesms/R$styleable;->WebxdcView:[I

    const/4 v1, 0x0

    invoke-virtual {p3, p2, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 50
    invoke-virtual {p2, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    if-eqz p2, :cond_0

    const p2, 0x7f0c010f

    .line 52
    invoke-static {p1, p2, p0}, Lorg/thoughtcrime/securesms/components/WebxdcView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0

    :cond_0
    const p2, 0x7f0c0110

    .line 54
    invoke-static {p1, p2, p0}, Lorg/thoughtcrime/securesms/components/WebxdcView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    :goto_0
    const p1, 0x7f0903e2

    .line 57
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/components/WebxdcView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/WebxdcView;->icon:Landroidx/appcompat/widget/AppCompatImageView;

    const p1, 0x7f0903e0

    .line 58
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/components/WebxdcView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/WebxdcView;->appName:Landroid/widget/TextView;

    const p1, 0x7f0903e3

    .line 59
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/components/WebxdcView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/WebxdcView;->appSubtitle:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$100(Lorg/thoughtcrime/securesms/components/WebxdcView;)Lorg/thoughtcrime/securesms/mms/SlideClickListener;
    .locals 0

    .line 28
    iget-object p0, p0, Lorg/thoughtcrime/securesms/components/WebxdcView;->viewListener:Lorg/thoughtcrime/securesms/mms/SlideClickListener;

    return-object p0
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 5

    .line 93
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/WebxdcView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120434

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/thoughtcrime/securesms/components/WebxdcView;->appName:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 95
    iget-object v3, p0, Lorg/thoughtcrime/securesms/components/WebxdcView;->appSubtitle:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/thoughtcrime/securesms/components/WebxdcView;->appSubtitle:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/thoughtcrime/securesms/components/WebxdcView;->appSubtitle:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/WebxdcView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/WebxdcView;->appSubtitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    return-object v2
.end method

.method public setWebxdc(Lcom/b44t/messenger/DcMsg;Ljava/lang/String;)V
    .locals 4

    .line 68
    invoke-virtual {p1}, Lcom/b44t/messenger/DcMsg;->getWebxdcInfo()Lorg/json/JSONObject;

    move-result-object v0

    .line 69
    new-instance v1, Lorg/thoughtcrime/securesms/components/WebxdcView$OpenClickedListener;

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/WebxdcView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, p1, v3}, Lorg/thoughtcrime/securesms/components/WebxdcView$OpenClickedListener;-><init>(Lorg/thoughtcrime/securesms/components/WebxdcView;Landroid/content/Context;Lcom/b44t/messenger/DcMsg;Lorg/thoughtcrime/securesms/components/WebxdcView$1;)V

    invoke-virtual {p0, v1}, Lorg/thoughtcrime/securesms/components/WebxdcView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v1, "icon"

    .line 72
    invoke-static {v0, v1}, Lorg/thoughtcrime/securesms/util/JsonUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/b44t/messenger/DcMsg;->getWebxdcBlob(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_0

    .line 74
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 75
    invoke-static {v2, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 76
    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/WebxdcView;->icon:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v1, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const-string p1, "document"

    .line 80
    invoke-static {v0, p1}, Lorg/thoughtcrime/securesms/util/JsonUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "name"

    .line 81
    invoke-static {v0, v1}, Lorg/thoughtcrime/securesms/util/JsonUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 82
    iget-object v2, p0, Lorg/thoughtcrime/securesms/components/WebxdcView;->appName:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " \u2013 "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "summary"

    .line 85
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 86
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move-object p2, p1

    .line 89
    :goto_1
    iget-object p1, p0, Lorg/thoughtcrime/securesms/components/WebxdcView;->appSubtitle:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setWebxdcClickListener(Lorg/thoughtcrime/securesms/mms/SlideClickListener;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/WebxdcView;->viewListener:Lorg/thoughtcrime/securesms/mms/SlideClickListener;

    return-void
.end method
