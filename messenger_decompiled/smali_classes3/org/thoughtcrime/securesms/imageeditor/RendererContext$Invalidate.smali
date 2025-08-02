.class public interface abstract Lorg/thoughtcrime/securesms/imageeditor/RendererContext$Invalidate;
.super Ljava/lang/Object;
.source "RendererContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/thoughtcrime/securesms/imageeditor/RendererContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Invalidate"
.end annotation


# static fields
.field public static final NULL:Lorg/thoughtcrime/securesms/imageeditor/RendererContext$Invalidate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 138
    new-instance v0, Lorg/thoughtcrime/securesms/imageeditor/RendererContext$Invalidate$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/thoughtcrime/securesms/imageeditor/RendererContext$Invalidate$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lorg/thoughtcrime/securesms/imageeditor/RendererContext$Invalidate;->NULL:Lorg/thoughtcrime/securesms/imageeditor/RendererContext$Invalidate;

    return-void
.end method


# virtual methods
.method public abstract onInvalidate(Lorg/thoughtcrime/securesms/imageeditor/Renderer;)V
.end method
