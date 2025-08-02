.class public Lorg/thoughtcrime/securesms/video/recode/InputSurface;
.super Ljava/lang/Object;
.source "InputSurface.java"


# static fields
.field private static final EGL_OPENGL_ES2_BIT:I = 0x4

.field private static final EGL_RECORDABLE_ANDROID:I = 0x3142


# instance fields
.field private mEGLContext:Landroid/opengl/EGLContext;

.field private mEGLDisplay:Landroid/opengl/EGLDisplay;

.field private mEGLSurface:Landroid/opengl/EGLSurface;

.field private mSurface:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Landroid/view/Surface;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    iput-object p1, p0, Lorg/thoughtcrime/securesms/video/recode/InputSurface;->mSurface:Landroid/view/Surface;

    .line 43
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/video/recode/InputSurface;->eglSetup()V

    return-void
.end method

.method private checkEglError(Ljava/lang/String;)V
    .locals 2

    const/4 p1, 0x0

    .line 127
    :goto_0
    invoke-static {}, Lkotlinx/coroutines/time/TimeKt$$ExternalSyntheticApiModelOutline0;->m()I

    move-result v0

    const/16 v1, 0x3000

    if-eq v0, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 131
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "EGL error encountered (see log)"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private eglSetup()V
    .locals 13

    const/4 v0, 0x0

    .line 47
    invoke-static {v0}, Lcom/google/android/material/chip/Chip$$ExternalSyntheticApiModelOutline0;->m(I)Landroid/opengl/EGLDisplay;

    move-result-object v1

    iput-object v1, p0, Lorg/thoughtcrime/securesms/video/recode/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 48
    invoke-static {}, Lcom/google/android/material/chip/Chip$$ExternalSyntheticApiModelOutline0;->m()Landroid/opengl/EGLDisplay;

    move-result-object v2

    if-eq v1, v2, :cond_4

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 52
    iget-object v3, p0, Lorg/thoughtcrime/securesms/video/recode/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    const/4 v4, 0x1

    invoke-static {v3, v2, v0, v2, v4}, Lcom/google/android/material/chip/Chip$$ExternalSyntheticApiModelOutline0;->m(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0xb

    new-array v6, v2, [I

    .line 57
    fill-array-data v6, :array_0

    new-array v2, v4, [Landroid/opengl/EGLConfig;

    new-array v11, v4, [I

    .line 67
    iget-object v5, p0, Lorg/thoughtcrime/securesms/video/recode/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v10, 0x1

    move-object v8, v2

    invoke-static/range {v5 .. v12}, Lcom/google/android/material/chip/Chip$$ExternalSyntheticApiModelOutline0;->m(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x3098

    const/16 v4, 0x3038

    .line 72
    filled-new-array {v3, v1, v4}, [I

    move-result-object v1

    .line 77
    iget-object v3, p0, Lorg/thoughtcrime/securesms/video/recode/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    aget-object v5, v2, v0

    invoke-static {}, Lcom/google/android/material/chip/Chip$$ExternalSyntheticApiModelOutline0;->m()Landroid/opengl/EGLContext;

    move-result-object v6

    invoke-static {v3, v5, v6, v1, v0}, Lcom/google/android/material/chip/Chip$$ExternalSyntheticApiModelOutline0;->m(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v1

    iput-object v1, p0, Lorg/thoughtcrime/securesms/video/recode/InputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    const-string v1, "eglCreateContext"

    .line 78
    invoke-direct {p0, v1}, Lorg/thoughtcrime/securesms/video/recode/InputSurface;->checkEglError(Ljava/lang/String;)V

    .line 79
    iget-object v1, p0, Lorg/thoughtcrime/securesms/video/recode/InputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    if-eqz v1, :cond_1

    .line 83
    filled-new-array {v4}, [I

    move-result-object v1

    .line 86
    iget-object v3, p0, Lorg/thoughtcrime/securesms/video/recode/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    aget-object v2, v2, v0

    iget-object v4, p0, Lorg/thoughtcrime/securesms/video/recode/InputSurface;->mSurface:Landroid/view/Surface;

    invoke-static {v3, v2, v4, v1, v0}, Lkotlinx/coroutines/time/TimeKt$$ExternalSyntheticApiModelOutline0;->m(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lorg/thoughtcrime/securesms/video/recode/InputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    const-string v0, "eglCreateWindowSurface"

    .line 88
    invoke-direct {p0, v0}, Lorg/thoughtcrime/securesms/video/recode/InputSurface;->checkEglError(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lorg/thoughtcrime/securesms/video/recode/InputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    if-eqz v0, :cond_0

    return-void

    .line 90
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "surface was null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "null context"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unable to find RGB888+recordable ES2 EGL config"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lorg/thoughtcrime/securesms/video/recode/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 54
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unable to initialize EGL14"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unable to get EGL14 display"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3040
        0x4
        0x3142
        0x1
        0x3038
    .end array-data
.end method


# virtual methods
.method public getSurface()Landroid/view/Surface;
    .locals 1

    .line 118
    iget-object v0, p0, Lorg/thoughtcrime/securesms/video/recode/InputSurface;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public makeCurrent()V
    .locals 3

    .line 108
    iget-object v0, p0, Lorg/thoughtcrime/securesms/video/recode/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/video/recode/InputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/video/recode/InputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v1, v2}, Lcom/google/android/material/chip/Chip$$ExternalSyntheticApiModelOutline0;->m(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 109
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglMakeCurrent failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public release()V
    .locals 4

    .line 95
    invoke-static {}, Lkotlinx/coroutines/time/TimeKt$$ExternalSyntheticApiModelOutline0;->m()Landroid/opengl/EGLContext;

    move-result-object v0

    iget-object v1, p0, Lorg/thoughtcrime/securesms/video/recode/InputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Lkotlinx/coroutines/time/TimeKt$$ExternalSyntheticApiModelOutline0;->m(Landroid/opengl/EGLContext;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lorg/thoughtcrime/securesms/video/recode/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {}, Lcom/google/android/material/chip/Chip$$ExternalSyntheticApiModelOutline0;->m()Landroid/opengl/EGLSurface;

    move-result-object v1

    invoke-static {}, Lcom/google/android/material/chip/Chip$$ExternalSyntheticApiModelOutline0;->m()Landroid/opengl/EGLSurface;

    move-result-object v2

    invoke-static {}, Lcom/google/android/material/chip/Chip$$ExternalSyntheticApiModelOutline0;->m()Landroid/opengl/EGLContext;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/material/chip/Chip$$ExternalSyntheticApiModelOutline0;->m(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 98
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/video/recode/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/video/recode/InputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Lcom/google/android/material/chip/Chip$$ExternalSyntheticApiModelOutline0;->m(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 99
    iget-object v0, p0, Lorg/thoughtcrime/securesms/video/recode/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/video/recode/InputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Lcom/google/android/material/chip/Chip$$ExternalSyntheticApiModelOutline0;->m(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 100
    iget-object v0, p0, Lorg/thoughtcrime/securesms/video/recode/InputSurface;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    const/4 v0, 0x0

    .line 101
    iput-object v0, p0, Lorg/thoughtcrime/securesms/video/recode/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 102
    iput-object v0, p0, Lorg/thoughtcrime/securesms/video/recode/InputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    .line 103
    iput-object v0, p0, Lorg/thoughtcrime/securesms/video/recode/InputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 104
    iput-object v0, p0, Lorg/thoughtcrime/securesms/video/recode/InputSurface;->mSurface:Landroid/view/Surface;

    return-void
.end method

.method public setPresentationTime(J)V
    .locals 2

    .line 122
    iget-object v0, p0, Lorg/thoughtcrime/securesms/video/recode/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/video/recode/InputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1, p1, p2}, Lkotlinx/coroutines/time/TimeKt$$ExternalSyntheticApiModelOutline0;->m(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;J)Z

    return-void
.end method

.method public swapBuffers()Z
    .locals 2

    .line 114
    iget-object v0, p0, Lorg/thoughtcrime/securesms/video/recode/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/video/recode/InputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Lkotlinx/coroutines/time/TimeKt$$ExternalSyntheticApiModelOutline0;->m(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    move-result v0

    return v0
.end method
