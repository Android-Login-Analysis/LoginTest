.class public final synthetic Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/thoughtcrime/securesms/scribbles/widget/ColorPaletteAdapter$EventListener;


# instance fields
.field public final synthetic f$0:Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;


# direct methods
.method public synthetic constructor <init>(Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$$ExternalSyntheticLambda2;->f$0:Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;

    return-void
.end method


# virtual methods
.method public final onColorSelected(I)V
    .locals 1

    iget-object v0, p0, Lorg/thoughtcrime/securesms/scribbles/ImageEditorHud$$ExternalSyntheticLambda2;->f$0:Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/scribbles/widget/VerticalSlideColorPicker;->setActiveColor(I)V

    return-void
.end method
