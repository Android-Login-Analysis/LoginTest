.class public Lorg/thoughtcrime/securesms/contacts/avatars/GeneratedContactPhoto;
.super Ljava/lang/Object;
.source "GeneratedContactPhoto.java"

# interfaces
.implements Lorg/thoughtcrime/securesms/contacts/avatars/FallbackContactPhoto;


# static fields
.field private static final PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "[^\\p{L}\\p{Nd}\\p{P}\\p{S}]+"

    .line 17
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/thoughtcrime/securesms/contacts/avatars/GeneratedContactPhoto;->PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lorg/thoughtcrime/securesms/contacts/avatars/GeneratedContactPhoto;->name:Ljava/lang/String;

    return-void
.end method

.method private getCharacter(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 45
    sget-object v0, Lorg/thoughtcrime/securesms/contacts/avatars/GeneratedContactPhoto;->PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 47
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "#"

    return-object p1

    .line 50
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public asCallCard(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1

    const v0, 0x7f08014a

    .line 56
    invoke-static {p1, v0}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public asDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x1

    .line 27
    invoke-virtual {p0, p1, p2, v0}, Lorg/thoughtcrime/securesms/contacts/avatars/GeneratedContactPhoto;->asDrawable(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public asDrawable(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07005f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 33
    invoke-static {}, Lcom/amulyakhare/textdrawable/TextDrawable;->builder()Lcom/amulyakhare/textdrawable/TextDrawable$IShapeBuilder;

    move-result-object v0

    .line 34
    invoke-interface {v0}, Lcom/amulyakhare/textdrawable/TextDrawable$IShapeBuilder;->beginConfig()Lcom/amulyakhare/textdrawable/TextDrawable$IConfigBuilder;

    move-result-object v0

    .line 35
    invoke-interface {v0, p1}, Lcom/amulyakhare/textdrawable/TextDrawable$IConfigBuilder;->width(I)Lcom/amulyakhare/textdrawable/TextDrawable$IConfigBuilder;

    move-result-object v0

    .line 36
    invoke-interface {v0, p1}, Lcom/amulyakhare/textdrawable/TextDrawable$IConfigBuilder;->height(I)Lcom/amulyakhare/textdrawable/TextDrawable$IConfigBuilder;

    move-result-object p1

    const/4 v0, -0x1

    .line 37
    invoke-interface {p1, v0}, Lcom/amulyakhare/textdrawable/TextDrawable$IConfigBuilder;->textColor(I)Lcom/amulyakhare/textdrawable/TextDrawable$IConfigBuilder;

    move-result-object p1

    .line 38
    invoke-interface {p1}, Lcom/amulyakhare/textdrawable/TextDrawable$IConfigBuilder;->bold()Lcom/amulyakhare/textdrawable/TextDrawable$IConfigBuilder;

    move-result-object p1

    .line 39
    invoke-interface {p1}, Lcom/amulyakhare/textdrawable/TextDrawable$IConfigBuilder;->toUpperCase()Lcom/amulyakhare/textdrawable/TextDrawable$IConfigBuilder;

    move-result-object p1

    .line 40
    invoke-interface {p1}, Lcom/amulyakhare/textdrawable/TextDrawable$IConfigBuilder;->endConfig()Lcom/amulyakhare/textdrawable/TextDrawable$IShapeBuilder;

    move-result-object p1

    if-eqz p3, :cond_0

    .line 41
    iget-object p3, p0, Lorg/thoughtcrime/securesms/contacts/avatars/GeneratedContactPhoto;->name:Ljava/lang/String;

    invoke-direct {p0, p3}, Lorg/thoughtcrime/securesms/contacts/avatars/GeneratedContactPhoto;->getCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3, p2}, Lcom/amulyakhare/textdrawable/TextDrawable$IShapeBuilder;->buildRound(Ljava/lang/String;I)Lcom/amulyakhare/textdrawable/TextDrawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lorg/thoughtcrime/securesms/contacts/avatars/GeneratedContactPhoto;->name:Ljava/lang/String;

    invoke-direct {p0, p3}, Lorg/thoughtcrime/securesms/contacts/avatars/GeneratedContactPhoto;->getCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3, p2}, Lcom/amulyakhare/textdrawable/TextDrawable$IShapeBuilder;->buildRect(Ljava/lang/String;I)Lcom/amulyakhare/textdrawable/TextDrawable;

    move-result-object p1

    :goto_0
    return-object p1
.end method
