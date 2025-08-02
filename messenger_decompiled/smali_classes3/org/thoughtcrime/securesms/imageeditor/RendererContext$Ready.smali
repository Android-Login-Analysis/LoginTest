.class public interface abstract Lorg/thoughtcrime/securesms/imageeditor/RendererContext$Ready;
.super Ljava/lang/Object;
.source "RendererContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/imageeditor/RendererContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Ready"
.end annotation


# static fields
.field public static final NULL:Lorg/thoughtcrime/securesms/imageeditor/RendererContext$Ready;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 130
    new-instance v0, Lorg/thoughtcrime/securesms/imageeditor/RendererContext$Ready$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/thoughtcrime/securesms/imageeditor/RendererContext$Ready$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lorg/thoughtcrime/securesms/imageeditor/RendererContext$Ready;->NULL:Lorg/thoughtcrime/securesms/imageeditor/RendererContext$Ready;

    return-void
.end method


# virtual methods
.method public abstract onReady(Lorg/thoughtcrime/securesms/imageeditor/Renderer;Landroid/graphics/Matrix;Landroid/graphics/Point;)V
.end method
