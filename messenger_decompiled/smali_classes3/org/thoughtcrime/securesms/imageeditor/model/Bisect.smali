.class final Lorg/thoughtcrime/securesms/imageeditor/model/Bisect;
.super Ljava/lang/Object;
.source "Bisect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/thoughtcrime/securesms/imageeditor/model/Bisect$Predicate;,
        Lorg/thoughtcrime/securesms/imageeditor/model/Bisect$ModifyElement;
    }
.end annotation


# static fields
.field static final ACCURACY:F = 0.001f

.field private static final MAX_ITERATIONS:I = 0x10


# direct methods
.method constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static bisectToTest(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;FFLorg/thoughtcrime/securesms/imageeditor/model/Bisect$Predicate;Lorg/thoughtcrime/securesms/imageeditor/model/Bisect$ModifyElement;)Landroid/graphics/Matrix;
    .locals 9

    .line 67
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->getLocalMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    .line 68
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0, p0}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 69
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v2, p2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_0
    const/4 v6, 0x1

    add-int/2addr v3, v6

    .line 79
    invoke-interface {p4, p0, p2}, Lorg/thoughtcrime/securesms/imageeditor/model/Bisect$ModifyElement;->applyFactor(Landroid/graphics/Matrix;F)V

    .line 82
    :try_start_0
    invoke-interface {p3}, Lorg/thoughtcrime/securesms/imageeditor/model/Bisect$Predicate;->test()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_3

    if-eqz v4, :cond_2

    sub-float v2, p2, p1

    .line 86
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float v7, v5, p1

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v2, v2, v7

    if-gez v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, p2

    goto :goto_1

    .line 89
    :cond_2
    :goto_0
    invoke-virtual {v1, p0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, p2

    move v5, v2

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    if-ne v3, v6, :cond_4

    .line 100
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    return-object v8

    :cond_4
    move p1, p2

    :goto_1
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    add-float p2, v2, p1

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr p2, v6

    const/16 v6, 0x10

    if-ge v3, v6, :cond_5

    sub-float v6, v2, p1

    .line 105
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const v7, 0x3a83126f    # 0.001f

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_0

    :cond_5
    if-eqz v4, :cond_6

    return-object v1

    :cond_6
    return-object v8

    :catchall_0
    move-exception p1

    .line 100
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 101
    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method static bisectToTest(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;FFLorg/thoughtcrime/securesms/imageeditor/model/Bisect$Predicate;Lorg/thoughtcrime/securesms/imageeditor/model/Bisect$ModifyElement;Ljava/lang/Runnable;)Z
    .locals 0

    .line 40
    invoke-static {p0, p1, p2, p3, p4}, Lorg/thoughtcrime/securesms/imageeditor/model/Bisect;->bisectToTest(Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;FFLorg/thoughtcrime/securesms/imageeditor/model/Bisect$Predicate;Lorg/thoughtcrime/securesms/imageeditor/model/Bisect$ModifyElement;)Landroid/graphics/Matrix;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 43
    invoke-virtual {p0, p1, p5}, Lorg/thoughtcrime/securesms/imageeditor/model/EditorElement;->animateLocalTo(Landroid/graphics/Matrix;Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
