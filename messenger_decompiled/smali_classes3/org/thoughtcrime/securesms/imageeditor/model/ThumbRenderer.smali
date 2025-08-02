.class public interface abstract Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer;
.super Ljava/lang/Object;
.source "ThumbRenderer.java"

# interfaces
.implements Lorg/thoughtcrime/securesms/imageeditor/Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;
    }
.end annotation


# virtual methods
.method public abstract getControlPoint()Lorg/thoughtcrime/securesms/imageeditor/model/ThumbRenderer$ControlPoint;
.end method

.method public abstract getElementToControl()Ljava/util/UUID;
.end method
