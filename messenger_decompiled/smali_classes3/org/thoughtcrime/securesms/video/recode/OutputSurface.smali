.class public Lorg/thoughtcrime/securesms/video/recode/OutputSurface;
.super Ljava/lang/Object;
.source "OutputSurface.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# static fields
.field private static final EGL_CONTEXT_CLIENT_VERSION:I = 0x3098

.field private static final EGL_OPENGL_ES2_BIT:I = 0x4


# instance fields
.field private mEGL:Ljavax/microedition/khronos/egl/EGL10;

.field private mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private mFrameAvailable:Z

.field private final mFrameSyncObject:Ljava/lang/Object;

.field private mHeight:I

.field private mPixelBuf:Ljava/nio/ByteBuffer;

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mTextureRender:Lorg/thoughtcrime/securesms/video/recode/TextureRenderer;

.field private mWidth:I

.field private rotateRender:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lorg/thoughtcrime/securesms/video/recode/OutputSurface;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 40
    iput-object v0, p0, Lorg/thoughtcrime/securesms/video/recode/OutputSurface;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 41
    iput-object v0, p0, Lorg/thoughtcrime/securesms/video/recode/OutputSurface;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/video/recode/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 49
    iput v0, p0, Lorg/thoughtcrime/securesms/video/recode/OutputSurface;->rotateRender:I

    .line 67
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/video/recode/OutputSurface;->setup()V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lorg/thoughtcrime/securesms/video/recode/OutputSurface;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 40
    iput-object v0, p0, Lorg/thoughtcrime/securesms/video/recode/OutputSurface;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 41
    iput-object v0, p0, Lorg/thoughtcrime/securesms/video/recode/OutputSurface;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/video/recode/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 49
    iput v0, p0, Lorg/thoughtcrime/securesms/video/recode/OutputSurface;->rotateRender:I

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 56
    iput p1, p0, Lorg/thoughtcrime/securesms/video/recode/OutputSurface;->mWidth:I

    .line 57
    iput p2, p0, Lorg/thoughtcrime/securesms/video/recode/OutputSurface;->mHeight:I

    .line 58
    iput p3, p0, Lorg/thoughtcrime/securesms/video/recode/OutputSurface;->rotateRender:I

    mul-int p3, p1, p2

    mul-int/lit8 p3, p3, 0x4

    .line 59
    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p3

    iput-object p3, p0, Lorg/thoughtcrime/securesms/video/recode/OutputSurface;->mPixelBuf:Ljava/nio/ByteBuffer;

    .line 60
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p3, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 61
    invoke-direct {p0, p1, p2}, Lorg/thoughtcrime/securesms/video/recode/OutputSurface;->eglSetup(II)V

    .line 62
    invoke-virtual {p0}, Lorg/thoughtcrime/securesms/video/recode/OutputSurface;->makeCurrent()V

    .line 63
    invoke-direct {p0}, Lorg/thoughtcrime/securesms/video/recode/OutputSurface;->setup()V

    return-void

    .line 54
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private checkEglError(Ljava/lang/String;)V
    .locals 1

    .line 203
    iget-object p1, p0, Lorg/thoughtcrime/securesms/video/recode/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result p1

    const/16 v0, 0x3000

    if-ne p1, v0, :cond_0

    return-void

    .line 204
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "EGL error encountered (see log)"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private eglSetup(II)V
    .locals 8

    .line 79
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lorg/thoughtcrime/securesms/video/recode/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    .line 80
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lorg/thoughtcrime/securesms/video/recode/OutputSurface;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 82
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eq v0, v1, :cond_4

    .line 86
    iget-object v0, p0, Lorg/thoughtcrime/securesms/video/recode/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/video/recode/OutputSurface;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0xd

    new-array v3, v0, [I

    .line 91
    fill-array-data v3, :array_0

    const/4 v0, 0x1

    new-array v7, v0, [Ljavax/microedition/khronos/egl/EGLConfig;

    new-array v6, v0, [I

    .line 102
    iget-object v1, p0, Lorg/thoughtcrime/securesms/video/recode/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/video/recode/OutputSurface;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v5, 0x1

    move-object v4, v7

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x3098

    const/4 v1, 0x2

    const/16 v2, 0x3038

    .line 105
    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    .line 109
    iget-object v1, p0, Lorg/thoughtcrime/securesms/video/recode/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lorg/thoughtcrime/securesms/video/recode/OutputSurface;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v4, 0x0

    aget-object v5, v7, v4

    sget-object v6, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v3, v5, v6, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lorg/thoughtcrime/securesms/video/recode/OutputSurface;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    const-string v0, "eglCreateContext"

    .line 110
    invoke-direct {p0, v0}, Lorg/thoughtcrime/securesms/video/recode/OutputSurface;->checkEglError(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lorg/thoughtcrime/securesms/video/recode/OutputSurface;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_1

    const/16 v0, 0x3057

    const/16 v1, 0x3056

    .line 114
    filled-new-array {v0, p1, v1, p2, v2}, [I

    move-result-object p1

    .line 119
    iget-object p2, p0, Lorg/thoughtcrime/securesms/video/recode/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v0, p0, Lorg/thoughtcrime/securesms/video/recode/OutputSurface;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    aget-object v1, v7, v4

    invoke-interface {p2, v0, v1, p1}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object p1

    iput-object p1, p0, Lorg/thoughtcrime/securesms/video/recode/OutputSurface;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    const-string p1, "eglCreatePbufferSurface"

    .line 120
    invoke-direct {p0, p1}, Lorg/thoughtcrime/securesms/video/recode/OutputSurface;->checkEglError(Ljava/lang/String;)V

    .line 121
    iget-object p1, p0, Lorg/thoughtcrime/securesms/video/recode/OutputSurface;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz p1, :cond_0

    return-void

    .line 122
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "surface was null"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 112
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "null context"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 103
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "unable to find RGB888+pbuffer EGL config"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 87
    :cond_3
    iput-object v2, p0, Lorg/thoughtcrime/securesms/video/recode/OutputSurface;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 88
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "unable to initialize EGL10"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 83
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "unable to get EGL10 display"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :array_0
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3033
        0x1
        0x3040
        0x4
        0x3038
    .end array-data
.end method

.method private setup()V
    .locals 2

    .line 71
    new-instance v0, Lorg/thoughtcrime/securesms/video/recode/TextureRenderer;

    iget v1, p0, Lorg/thoughtcrime/securesms/video/recode/OutputSurface;->rotateRender:I

    invoke-direct {v0, v1}, Lorg/thoughtcrime/securesms/video/recode/TextureRenderer;-><init>(I)V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/video/recode/OutputSurface;->mTextureRender:Lorg/thoughtcrime/securesms/video/recode/TextureRenderer;

    .line 72
    invoke-virtual {v0}, Lorg/thoughtcrime/securesms/video/recode/TextureRenderer;->surfaceCreated()V

    .line 73
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/video/recode/OutputSurface;->mTextureRender:Lorg/thoughtcrime/securesms/video/recode/TextureRenderer;

    invoke-virtual {v1}, Lorg/thoughtcrime/securesms/video/recode/TextureRenderer;->getTextureId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/video/recode/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 74
    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 75
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/video/recode/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lorg/thoughtcrime/securesms/video/recode/OutputSurface;->mSurface:Landroid/view/Surface;

    return-void
.end method


# virtual methods
.method public awaitNewImage()V
    .locals 4

    .line 164
    iget-object v0, p0, Lorg/thoughtcrime/securesms/video/recode/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    monitor-enter v0

    .line 165
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lorg/thoughtcrime/securesms/video/recode/OutputSurface;->mFrameAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 167
    :try_start_1
    iget-object v1, p0, Lorg/thoughtcrime/securesms/video/recode/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    const-wide/16 v2, 0x9c4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 168
    iget-boolean v1, p0, Lorg/thoughtcrime/securesms/video/recode/OutputSurface;->mFrameAvailable:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 169
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Surface frame wait timed out"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    move-exception v1

    .line 172
    :try_start_2
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_1
    const/4 v1, 0x0

    .line 175
    iput-boolean v1, p0, Lorg/thoughtcrime/securesms/video/recode/OutputSurface;->mFrameAvailable:Z

    .line 176
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 177
    iget-object v0, p0, Lorg/thoughtcrime/securesms/video/recode/OutputSurface;->mTextureRender:Lorg/thoughtcrime/securesms/video/recode/TextureRenderer;

    const-string v1, "before updateTexImage"

    invoke-virtual {v0, v1}, Lorg/thoughtcrime/securesms/video/recode/TextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lorg/thoughtcrime/securesms/video/recode/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    return-void

    :catchall_0
    move-exception v1

    .line 176
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public changeFragmentShader(Ljava/lang/String;)V
    .locals 1

    .line 159
    iget-object v0, p0, Lorg/thoughtcrime/securesms/video/recode/OutputSurface;->mTextureRender:Lorg/thoughtcrime/securesms/video/recode/TextureRenderer;

    invoke-virtual {v0, p1}, Lorg/thoughtcrime/securesms/video/recode/TextureRenderer;->changeFragmentShader(Ljava/lang/String;)V

    return-void
.end method

.method public drawImage(Z)V
    .locals 2

    .line 182
    iget-object v0, p0, Lorg/thoughtcrime/securesms/video/recode/OutputSurface;->mTextureRender:Lorg/thoughtcrime/securesms/video/recode/TextureRenderer;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/video/recode/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1, p1}, Lorg/thoughtcrime/securesms/video/recode/TextureRenderer;->drawFrame(Landroid/graphics/SurfaceTexture;Z)V

    return-void
.end method

.method public getFrame()Ljava/nio/ByteBuffer;
    .locals 8

    .line 197
    iget-object v0, p0, Lorg/thoughtcrime/securesms/video/recode/OutputSurface;->mPixelBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 198
    iget v3, p0, Lorg/thoughtcrime/securesms/video/recode/OutputSurface;->mWidth:I

    iget v4, p0, Lorg/thoughtcrime/securesms/video/recode/OutputSurface;->mHeight:I

    const/16 v5, 0x1908

    const/16 v6, 0x1401

    iget-object v7, p0, Lorg/thoughtcrime/securesms/video/recode/OutputSurface;->mPixelBuf:Ljava/nio/ByteBuffer;

    invoke-static/range {v1 .. v7}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 199
    iget-object v0, p0, Lorg/thoughtcrime/securesms/video/recode/OutputSurface;->mPixelBuf:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    .line 155
    iget-object v0, p0, Lorg/thoughtcrime/securesms/video/recode/OutputSurface;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public makeCurrent()V
    .locals 4

    .line 145
    iget-object v0, p0, Lorg/thoughtcrime/securesms/video/recode/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    if-eqz v0, :cond_1

    const-string v0, "before makeCurrent"

    .line 148
    invoke-direct {p0, v0}, Lorg/thoughtcrime/securesms/video/recode/OutputSurface;->checkEglError(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lorg/thoughtcrime/securesms/video/recode/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/video/recode/OutputSurface;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/video/recode/OutputSurface;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v3, p0, Lorg/thoughtcrime/securesms/video/recode/OutputSurface;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 150
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglMakeCurrent failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "not configured for makeCurrent"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .line 187
    iget-object p1, p0, Lorg/thoughtcrime/securesms/video/recode/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    monitor-enter p1

    .line 188
    :try_start_0
    iget-boolean v0, p0, Lorg/thoughtcrime/securesms/video/recode/OutputSurface;->mFrameAvailable:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 191
    iput-boolean v0, p0, Lorg/thoughtcrime/securesms/video/recode/OutputSurface;->mFrameAvailable:Z

    .line 192
    iget-object v0, p0, Lorg/thoughtcrime/securesms/video/recode/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 193
    monitor-exit p1

    return-void

    .line 189
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mFrameAvailable already set, frame could be dropped"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 193
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public release()V
    .locals 5

    .line 127
    iget-object v0, p0, Lorg/thoughtcrime/securesms/video/recode/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    if-eqz v0, :cond_1

    .line 128
    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iget-object v1, p0, Lorg/thoughtcrime/securesms/video/recode/OutputSurface;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lorg/thoughtcrime/securesms/video/recode/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/video/recode/OutputSurface;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 131
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/securesms/video/recode/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/video/recode/OutputSurface;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/video/recode/OutputSurface;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 132
    iget-object v0, p0, Lorg/thoughtcrime/securesms/video/recode/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lorg/thoughtcrime/securesms/video/recode/OutputSurface;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lorg/thoughtcrime/securesms/video/recode/OutputSurface;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 134
    :cond_1
    iget-object v0, p0, Lorg/thoughtcrime/securesms/video/recode/OutputSurface;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    const/4 v0, 0x0

    .line 135
    iput-object v0, p0, Lorg/thoughtcrime/securesms/video/recode/OutputSurface;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 136
    iput-object v0, p0, Lorg/thoughtcrime/securesms/video/recode/OutputSurface;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 137
    iput-object v0, p0, Lorg/thoughtcrime/securesms/video/recode/OutputSurface;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 138
    iput-object v0, p0, Lorg/thoughtcrime/securesms/video/recode/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    .line 139
    iput-object v0, p0, Lorg/thoughtcrime/securesms/video/recode/OutputSurface;->mTextureRender:Lorg/thoughtcrime/securesms/video/recode/TextureRenderer;

    .line 140
    iput-object v0, p0, Lorg/thoughtcrime/securesms/video/recode/OutputSurface;->mSurface:Landroid/view/Surface;

    .line 141
    iput-object v0, p0, Lorg/thoughtcrime/securesms/video/recode/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-void
.end method
