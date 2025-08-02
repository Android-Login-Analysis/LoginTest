.class Lorg/thoughtcrime/securesms/components/ContactFilterToolbar$3;
.super Ljava/lang/Object;
.source "ContactFilterToolbar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/thoughtcrime/securesms/components/ContactFilterToolbar;->expandTapArea(Landroid/view/View;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/components/ContactFilterToolbar;

.field final synthetic val$child:Landroid/view/View;

.field final synthetic val$container:Landroid/view/View;

.field final synthetic val$padding:I


# direct methods
.method constructor <init>(Lorg/thoughtcrime/securesms/components/ContactFilterToolbar;Landroid/view/View;ILandroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 118
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/ContactFilterToolbar$3;->this$0:Lorg/thoughtcrime/securesms/components/ContactFilterToolbar;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/components/ContactFilterToolbar$3;->val$child:Landroid/view/View;

    iput p3, p0, Lorg/thoughtcrime/securesms/components/ContactFilterToolbar$3;->val$padding:I

    iput-object p4, p0, Lorg/thoughtcrime/securesms/components/ContactFilterToolbar$3;->val$container:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 121
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 122
    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/ContactFilterToolbar$3;->val$child:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 124
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lorg/thoughtcrime/securesms/components/ContactFilterToolbar$3;->val$padding:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 125
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lorg/thoughtcrime/securesms/components/ContactFilterToolbar$3;->val$padding:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 126
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lorg/thoughtcrime/securesms/components/ContactFilterToolbar$3;->val$padding:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 127
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lorg/thoughtcrime/securesms/components/ContactFilterToolbar$3;->val$padding:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 129
    iget-object v1, p0, Lorg/thoughtcrime/securesms/components/ContactFilterToolbar$3;->val$container:Landroid/view/View;

    new-instance v2, Landroid/view/TouchDelegate;

    iget-object v3, p0, Lorg/thoughtcrime/securesms/components/ContactFilterToolbar$3;->val$child:Landroid/view/View;

    invoke-direct {v2, v0, v3}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    return-void
.end method
