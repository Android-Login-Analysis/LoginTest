.class public Lorg/thoughtcrime/securesms/contacts/avatars/ResourceContactPhoto;
.super Ljava/lang/Object;
.source "ResourceContactPhoto.java"

# interfaces
.implements Lorg/thoughtcrime/securesms/contacts/avatars/FallbackContactPhoto;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/contacts/avatars/ResourceContactPhoto$ExpandingLayerDrawable;
    }
.end annotation


# instance fields
.field private final callCardResourceId:I

.field private final resourceId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p1}, Lorg/thoughtcrime/securesms/contacts/avatars/ResourceContactPhoto;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lorg/thoughtcrime/securesms/contacts/avatars/ResourceContactPhoto;->resourceId:I

    .line 24
    iput p2, p0, Lorg/thoughtcrime/securesms/contacts/avatars/ResourceContactPhoto;->callCardResourceId:I

    return-void
.end method


# virtual methods
.method public asCallCard(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 39
    iget v0, p0, Lorg/thoughtcrime/securesms/contacts/avatars/ResourceContactPhoto;->callCardResourceId:I

    invoke-static {p1, v0}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public asDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 29
    invoke-static {}, Lcom/amulyakhare/textdrawable/TextDrawable;->builder()Lcom/amulyakhare/textdrawable/TextDrawable$IShapeBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-interface {v0, v1, p2}, Lcom/amulyakhare/textdrawable/TextDrawable$IShapeBuilder;->buildRound(Ljava/lang/String;I)Lcom/amulyakhare/textdrawable/TextDrawable;

    move-result-object p2

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v0, p0, Lorg/thoughtcrime/securesms/contacts/avatars/ResourceContactPhoto;->resourceId:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p1}, Lcom/makeramen/roundedimageview/RoundedDrawable;->fromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Lcom/makeramen/roundedimageview/RoundedDrawable;

    .line 32
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Lcom/makeramen/roundedimageview/RoundedDrawable;->setScaleType(Landroid/widget/ImageView$ScaleType;)Lcom/makeramen/roundedimageview/RoundedDrawable;

    .line 34
    new-instance v0, Lorg/thoughtcrime/securesms/contacts/avatars/ResourceContactPhoto$ExpandingLayerDrawable;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    aput-object p1, v1, p2

    invoke-direct {v0, v1}, Lorg/thoughtcrime/securesms/contacts/avatars/ResourceContactPhoto$ExpandingLayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method
