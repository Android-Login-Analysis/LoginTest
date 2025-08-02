.class public Lorg/thoughtcrime/securesms/components/DocumentView;
.super Landroid/widget/FrameLayout;
.source "DocumentView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/components/DocumentView$OpenClickedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DocumentView"


# instance fields
.field private final container:Landroid/view/View;

.field private final fileName:Landroid/widget/TextView;

.field private final fileSize:Landroid/widget/TextView;

.field private viewListener:Lorg/thoughtcrime/securesms/mms/SlideClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, v0}, Lorg/thoughtcrime/securesms/components/DocumentView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2, v0}, Lorg/thoughtcrime/securesms/components/DocumentView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p2, 0x7f0c0061

    .line 40
    invoke-static {p1, p2, p0}, Lorg/thoughtcrime/securesms/components/DocumentView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f0900f6

    .line 42
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/components/DocumentView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/DocumentView;->container:Landroid/view/View;

    const p1, 0x7f090144

    .line 43
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/components/DocumentView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/DocumentView;->fileName:Landroid/widget/TextView;

    const p1, 0x7f090145

    .line 44
    invoke-virtual {p0, p1}, Lorg/thoughtcrime/securesms/components/DocumentView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/DocumentView;->fileSize:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$100(Lorg/thoughtcrime/securesms/components/DocumentView;)Lorg/thoughtcrime/securesms/mms/SlideClickListener;
    .locals 0

    .line 20
    iget-object p0, p0, Lorg/thoughtcrime/securesms/components/DocumentView;->viewListener:Lorg/thoughtcrime/securesms/mms/SlideClickListener;

    return-object p0
.end method

.method private getFileType(Lorg/thoughtcrime/securesms/util/guava/Optional;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/thoughtcrime/securesms/util/guava/Optional<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 85
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/util/guava/Optional;->isPresent()Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 87
    :cond_0
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/util/guava/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 89
    array-length v0, p1

    const/4 v2, 0x2

    if-ge v0, v2, :cond_1

    return-object v1

    .line 93
    :cond_1
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-object p1, p1, v0

    .line 95
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x4

    if-gt v0, v2, :cond_2

    return-object p1

    :cond_2
    return-object v1
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 3

    .line 63
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/DocumentView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120164

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/components/DocumentView;->fileName:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/DocumentView;->fileSize:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setClickable(Z)V
    .locals 0

    .line 76
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    return-void
.end method

.method public setDocument(Lorg/thoughtcrime/securesms/mms/DocumentSlide;)V
    .locals 4

    .line 53
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/DocumentView;->fileName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/mms/DocumentSlide;->getFileName()Lorg/thoughtcrime/securesms/util/guava/Optional;

    move-result-object v1

    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/components/DocumentView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f120411

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/thoughtcrime/securesms/util/guava/Optional;->or(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/mms/DocumentSlide;->getFileSize()J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/thoughtcrime/securesms/util/Util;->getPrettyFileSize(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {p1}, Lorg/thoughtcrime/securesms/mms/DocumentSlide;->getFileName()Lorg/thoughtcrime/securesms/util/guava/Optional;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/thoughtcrime/securesms/components/DocumentView;->getFileType(Lorg/thoughtcrime/securesms/util/guava/Optional;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 57
    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/DocumentView;->fileSize:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    new-instance v0, Lorg/thoughtcrime/securesms/components/DocumentView$OpenClickedListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/thoughtcrime/securesms/components/DocumentView$OpenClickedListener;-><init>(Lorg/thoughtcrime/securesms/components/DocumentView;Lorg/thoughtcrime/securesms/mms/DocumentSlide;Lorg/thoughtcrime/securesms/components/DocumentView$1;)V

    invoke-virtual {p0, v0}, Lorg/thoughtcrime/securesms/components/DocumentView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setDocumentClickListener(Lorg/thoughtcrime/securesms/mms/SlideClickListener;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/DocumentView;->viewListener:Lorg/thoughtcrime/securesms/mms/SlideClickListener;

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 81
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    return-void
.end method

.method public setFocusable(Z)V
    .locals 0

    .line 71
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    return-void
.end method
