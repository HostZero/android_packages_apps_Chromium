.class public Lorg/chromium/chrome/browser/compositor/CompositorView;
.super Landroid/view/SurfaceView;
.source "CompositorView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lorg/chromium/chrome/browser/compositor/layouts/content/ContentOffsetProvider;


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mCacheAppRect:Landroid/graphics/Rect;

.field private final mCacheViewPosition:[I

.field private final mCacheViewport:Landroid/graphics/Rect;

.field private final mCacheVisibleViewport:Landroid/graphics/Rect;

.field private mCurrentPixelFormat:I

.field private mEnableTabletTabStack:Z

.field private mLastLayerCount:I

.field private mLayerTitleCache:Lorg/chromium/chrome/browser/compositor/LayerTitleCache;

.field private mNativeCompositorView:J

.field private mPreloadedResources:Z

.field private mPreviousWindowTop:I

.field private final mRenderHost:Lorg/chromium/chrome/browser/compositor/layouts/LayoutRenderHost;

.field private mResourceManager:Lorg/chromium/ui/resources/ResourceManager;

.field private mRootView:Landroid/view/View;

.field private mSurfaceHeight:I

.field private mSurfaceWidth:I

.field private mTabContentManager:Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

.field private mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lorg/chromium/chrome/browser/compositor/CompositorView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/compositor/CompositorView;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/chromium/chrome/browser/compositor/layouts/LayoutRenderHost;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 92
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 56
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->mCacheViewport:Landroid/graphics/Rect;

    .line 57
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->mCacheAppRect:Landroid/graphics/Rect;

    .line 58
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->mCacheVisibleViewport:Landroid/graphics/Rect;

    .line 59
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->mCacheViewPosition:[I

    .line 64
    iput v1, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->mPreviousWindowTop:I

    .line 83
    iput v1, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->mCurrentPixelFormat:I

    .line 93
    iput-object p2, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->mRenderHost:Lorg/chromium/chrome/browser/compositor/layouts/LayoutRenderHost;

    .line 94
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/CompositorView;->resetFlags()V

    .line 95
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/compositor/CompositorView;->setVisibility(I)V

    .line 96
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/compositor/CompositorView;->setZOrderMediaOverlay(Z)V

    .line 97
    return-void
.end method

.method private native nativeDestroy(J)V
.end method

.method private native nativeFinalizeLayers(J)V
.end method

.method private native nativeGetResourceManager(J)Lorg/chromium/ui/resources/ResourceManager;
.end method

.method private native nativeInit(ZIJLorg/chromium/chrome/browser/compositor/LayerTitleCache;Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;)J
.end method

.method private native nativeSetLayoutViewport(JFFFFFFF)V
.end method

.method private native nativeSetNeedsComposite(J)V
.end method

.method private native nativeSetOverlayVideoMode(JZ)V
.end method

.method private native nativeSetSceneLayer(JLorg/chromium/chrome/browser/compositor/scene_layer/SceneLayer;)V
.end method

.method private native nativeSurfaceChanged(JIIILandroid/view/Surface;)V
.end method

.method private native nativeSurfaceCreated(J)V
.end method

.method private native nativeSurfaceDestroyed(J)V
.end method

.method private native nativeUpdateProgressBar(JIIIIIIIIII)V
.end method

.method private native nativeUpdateToolbarLayer(JIIIFFFZZ)V
.end method

.method private onCompositorLayout()V
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->mRenderHost:Lorg/chromium/chrome/browser/compositor/layouts/LayoutRenderHost;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutRenderHost;->onCompositorLayout()V

    .line 251
    return-void
.end method

.method private onJellyBeanSurfaceDisconnectWorkaround(Z)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 268
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->mCurrentPixelFormat:I

    packed-switch v0, :pswitch_data_0

    .line 280
    :pswitch_0
    sget-boolean v0, Lorg/chromium/chrome/browser/compositor/CompositorView;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 270
    :pswitch_1
    iput v1, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->mCurrentPixelFormat:I

    .line 283
    :goto_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/CompositorView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->mCurrentPixelFormat:I

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 284
    return-void

    .line 273
    :pswitch_2
    if-eqz p1, :cond_0

    const/4 v0, -0x3

    :goto_1
    iput v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->mCurrentPixelFormat:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    goto :goto_1

    .line 277
    :pswitch_3
    iput v1, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->mCurrentPixelFormat:I

    goto :goto_0

    .line 281
    :cond_1
    const-string/jumbo v0, "CompositorView"

    const-string/jumbo v1, "Unknown current pixel format."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 268
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private onSwapBuffersCompleted(I)V
    .locals 1

    .prologue
    .line 296
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/CompositorView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 297
    new-instance v0, Lorg/chromium/chrome/browser/compositor/CompositorView$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/compositor/CompositorView$1;-><init>(Lorg/chromium/chrome/browser/compositor/CompositorView;)V

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/compositor/CompositorView;->post(Ljava/lang/Runnable;)Z

    .line 305
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->mRenderHost:Lorg/chromium/chrome/browser/compositor/layouts/LayoutRenderHost;

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutRenderHost;->onSwapBuffersCompleted(I)V

    .line 306
    return-void
.end method

.method private updateToolbarLayer(Lorg/chromium/chrome/browser/compositor/layouts/LayoutProvider;ZLorg/chromium/chrome/browser/widget/ClipDrawableProgressBar$DrawingInfo;)V
    .locals 16

    .prologue
    .line 310
    if-nez p2, :cond_0

    invoke-static {}, Lorg/chromium/chrome/browser/device/DeviceClassManager;->enableFullscreen()Z

    move-result v2

    if-nez v2, :cond_1

    .line 358
    :cond_0
    :goto_0
    return-void

    .line 312
    :cond_1
    invoke-interface/range {p1 .. p1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutProvider;->getFullscreenManager()Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

    move-result-object v4

    .line 313
    if-eqz v4, :cond_0

    .line 315
    invoke-virtual {v4}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->getControlOffset()F

    move-result v10

    .line 316
    invoke-interface/range {p1 .. p1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutProvider;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->forceHideTopControlsAndroidView()Z

    move-result v13

    .line 318
    invoke-virtual {v4}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->drawControlsAsTexture()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    cmpl-float v2, v10, v2

    if-eqz v2, :cond_2

    if-eqz v13, :cond_5

    :cond_2
    const/4 v2, 0x1

    .line 321
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lorg/chromium/chrome/browser/compositor/CompositorView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v5, v3, Landroid/util/DisplayMetrics;->density:F

    .line 322
    invoke-interface/range {p1 .. p1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutProvider;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v3

    div-float v6, v10, v5

    invoke-virtual {v3, v6}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->getTopControlsOffset(F)F

    move-result v6

    .line 323
    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_6

    const/4 v3, 0x1

    .line 325
    :goto_2
    if-eqz v3, :cond_8

    .line 326
    mul-float v10, v6, v5

    .line 327
    const/4 v12, 0x1

    .line 330
    :goto_3
    if-nez v13, :cond_3

    if-eqz v3, :cond_7

    const/4 v2, 0x0

    cmpl-float v2, v6, v2

    if-eqz v2, :cond_7

    :cond_3
    const/4 v2, 0x1

    :goto_4
    invoke-virtual {v4, v2}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->setHideTopControlsAndroidView(Z)V

    .line 333
    invoke-interface/range {p1 .. p1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutProvider;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->getSizingFlags()I

    move-result v2

    .line 334
    and-int/lit16 v3, v2, 0x1000

    if-eqz v3, :cond_4

    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_4

    and-int/lit16 v2, v2, 0x100

    if-nez v2, :cond_4

    .line 337
    const/4 v12, 0x0

    .line 340
    :cond_4
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/chromium/chrome/browser/compositor/CompositorView;->mNativeCompositorView:J

    sget v6, Lorg/chromium/chrome/R$id;->control_container:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/chrome/browser/compositor/CompositorView;->mRenderHost:Lorg/chromium/chrome/browser/compositor/layouts/LayoutRenderHost;

    invoke-interface {v2}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutRenderHost;->getTopControlsBackgroundColor()I

    move-result v7

    sget v8, Lorg/chromium/chrome/R$drawable;->textbox:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/chrome/browser/compositor/CompositorView;->mRenderHost:Lorg/chromium/chrome/browser/compositor/layouts/LayoutRenderHost;

    invoke-interface {v2}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutRenderHost;->getTopControlsUrlBarAlpha()F

    move-result v9

    invoke-interface/range {p1 .. p1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutProvider;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->getToolbarBrightness()F

    move-result v11

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v13}, Lorg/chromium/chrome/browser/compositor/CompositorView;->nativeUpdateToolbarLayer(JIIIFFFZZ)V

    .line 346
    if-eqz p3, :cond_0

    .line 347
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/chromium/chrome/browser/compositor/CompositorView;->mNativeCompositorView:J

    move-object/from16 v0, p3

    iget-object v2, v0, Lorg/chromium/chrome/browser/widget/ClipDrawableProgressBar$DrawingInfo;->progressBarRect:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p3

    iget-object v2, v0, Lorg/chromium/chrome/browser/widget/ClipDrawableProgressBar$DrawingInfo;->progressBarRect:Landroid/graphics/Rect;

    iget v7, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p3

    iget-object v2, v0, Lorg/chromium/chrome/browser/widget/ClipDrawableProgressBar$DrawingInfo;->progressBarRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v8

    move-object/from16 v0, p3

    iget-object v2, v0, Lorg/chromium/chrome/browser/widget/ClipDrawableProgressBar$DrawingInfo;->progressBarRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v9

    move-object/from16 v0, p3

    iget v10, v0, Lorg/chromium/chrome/browser/widget/ClipDrawableProgressBar$DrawingInfo;->progressBarColor:I

    move-object/from16 v0, p3

    iget-object v2, v0, Lorg/chromium/chrome/browser/widget/ClipDrawableProgressBar$DrawingInfo;->progressBarBackgroundRect:Landroid/graphics/Rect;

    iget v11, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p3

    iget-object v2, v0, Lorg/chromium/chrome/browser/widget/ClipDrawableProgressBar$DrawingInfo;->progressBarBackgroundRect:Landroid/graphics/Rect;

    iget v12, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p3

    iget-object v2, v0, Lorg/chromium/chrome/browser/widget/ClipDrawableProgressBar$DrawingInfo;->progressBarBackgroundRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v13

    move-object/from16 v0, p3

    iget-object v2, v0, Lorg/chromium/chrome/browser/widget/ClipDrawableProgressBar$DrawingInfo;->progressBarBackgroundRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v14

    move-object/from16 v0, p3

    iget v15, v0, Lorg/chromium/chrome/browser/widget/ClipDrawableProgressBar$DrawingInfo;->progressBarBackgroundColor:I

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v15}, Lorg/chromium/chrome/browser/compositor/CompositorView;->nativeUpdateProgressBar(JIIIIIIIIII)V

    goto/16 :goto_0

    .line 318
    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 323
    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 330
    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_4

    :cond_8
    move v12, v2

    goto/16 :goto_3
.end method


# virtual methods
.method public finalizeLayers(Lorg/chromium/chrome/browser/compositor/layouts/LayoutProvider;ZLorg/chromium/chrome/browser/widget/ClipDrawableProgressBar$DrawingInfo;)V
    .locals 12

    .prologue
    .line 368
    const-string/jumbo v0, "CompositorView:finalizeLayers"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    .line 369
    invoke-interface {p1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutProvider;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v11

    .line 370
    if-eqz v11, :cond_0

    iget-wide v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->mNativeCompositorView:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 371
    :cond_0
    const-string/jumbo v0, "CompositorView:finalizeLayers"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    .line 413
    :goto_0
    return-void

    .line 375
    :cond_1
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->mPreloadedResources:Z

    if-nez v0, :cond_2

    .line 377
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->mResourceManager:Lorg/chromium/ui/resources/ResourceManager;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/CompositorView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/chrome/browser/compositor/resources/StaticResourcePreloads;->getSynchronousResources(Landroid/content/Context;)[I

    move-result-object v2

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/CompositorView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lorg/chromium/chrome/browser/compositor/resources/StaticResourcePreloads;->getAsynchronousResources(Landroid/content/Context;)[I

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/ui/resources/ResourceManager;->preloadResources(I[I[I)V

    .line 380
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->mPreloadedResources:Z

    .line 388
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->mRenderHost:Lorg/chromium/chrome/browser/compositor/layouts/LayoutRenderHost;

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->mCacheVisibleViewport:Landroid/graphics/Rect;

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutRenderHost;->getVisibleViewport(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 389
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->mCacheVisibleViewport:Landroid/graphics/Rect;

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->mCacheVisibleViewport:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->mSurfaceWidth:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 390
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->mCacheVisibleViewport:Landroid/graphics/Rect;

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->mCacheVisibleViewport:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->mSurfaceHeight:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 392
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->mCacheViewport:Landroid/graphics/Rect;

    invoke-interface {p1, v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutProvider;->getViewportPixel(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 393
    iget-wide v2, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->mNativeCompositorView:J

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->mCacheViewport:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->mCacheViewport:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->mCacheViewport:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v6, v0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->mCacheViewport:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v7, v0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->mCacheVisibleViewport:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v8, v0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->mCacheVisibleViewport:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v9, v0

    const/high16 v10, 0x3f800000    # 1.0f

    move-object v1, p0

    invoke-direct/range {v1 .. v10}, Lorg/chromium/chrome/browser/compositor/CompositorView;->nativeSetLayoutViewport(JFFFFFFF)V

    .line 398
    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/compositor/CompositorView;->updateToolbarLayer(Lorg/chromium/chrome/browser/compositor/layouts/LayoutProvider;ZLorg/chromium/chrome/browser/widget/ClipDrawableProgressBar$DrawingInfo;)V

    .line 400
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->mCacheViewport:Landroid/graphics/Rect;

    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->mCacheVisibleViewport:Landroid/graphics/Rect;

    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->mLayerTitleCache:Lorg/chromium/chrome/browser/compositor/LayerTitleCache;

    iget-object v4, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->mTabContentManager:Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

    iget-object v5, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->mResourceManager:Lorg/chromium/ui/resources/ResourceManager;

    invoke-interface {p1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutProvider;->getFullscreenManager()Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

    move-result-object v6

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutProvider;->getUpdatedActiveSceneLayer(Landroid/graphics/Rect;Landroid/graphics/Rect;Lorg/chromium/chrome/browser/compositor/LayerTitleCache;Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;Lorg/chromium/ui/resources/ResourceManager;Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;)Lorg/chromium/chrome/browser/compositor/scene_layer/SceneLayer;

    move-result-object v0

    .line 405
    iget-wide v2, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->mNativeCompositorView:J

    invoke-direct {p0, v2, v3, v0}, Lorg/chromium/chrome/browser/compositor/CompositorView;->nativeSetSceneLayer(JLorg/chromium/chrome/browser/compositor/scene_layer/SceneLayer;)V

    .line 407
    invoke-virtual {v11}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->getLayoutTabsToRender()[Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    move-result-object v0

    .line 408
    if-eqz v0, :cond_3

    array-length v0, v0

    .line 409
    :goto_1
    iput v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->mLastLayerCount:I

    .line 410
    invoke-static {}, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->flushActualTabSwitchLatencyMetric()V

    .line 411
    iget-wide v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->mNativeCompositorView:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/compositor/CompositorView;->nativeFinalizeLayers(J)V

    .line 412
    const-string/jumbo v0, "CompositorView:finalizeLayers"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 408
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getLastLayerCount()I
    .locals 1

    .prologue
    .line 420
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->mLastLayerCount:I

    return v0
.end method

.method public getOverlayTranslateY()I
    .locals 2

    .prologue
    .line 425
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->mRenderHost:Lorg/chromium/chrome/browser/compositor/layouts/LayoutRenderHost;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutRenderHost;->areTopControlsPermanentlyHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->mRenderHost:Lorg/chromium/chrome/browser/compositor/layouts/LayoutRenderHost;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutRenderHost;->getTopControlsHeightPixels()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->mRenderHost:Lorg/chromium/chrome/browser/compositor/layouts/LayoutRenderHost;

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->mCacheVisibleViewport:Landroid/graphics/Rect;

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutRenderHost;->getVisibleViewport(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    goto :goto_0
.end method

.method public getResourceManager()Lorg/chromium/ui/resources/ResourceManager;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->mResourceManager:Lorg/chromium/ui/resources/ResourceManager;

    return-object v0
.end method

.method public initNativeCompositor(ZLorg/chromium/ui/base/WindowAndroid;Lorg/chromium/chrome/browser/compositor/LayerTitleCache;Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;)V
    .locals 8

    .prologue
    .line 179
    iput-object p2, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    .line 180
    iput-object p3, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->mLayerTitleCache:Lorg/chromium/chrome/browser/compositor/LayerTitleCache;

    .line 181
    iput-object p4, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->mTabContentManager:Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

    .line 183
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/CompositorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$color;->tab_switcher_background:I

    invoke-static {v0, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v3

    invoke-virtual {p2}, Lorg/chromium/ui/base/WindowAndroid;->getNativePointer()J

    move-result-wide v4

    move-object v1, p0

    move v2, p1

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lorg/chromium/chrome/browser/compositor/CompositorView;->nativeInit(ZIJLorg/chromium/chrome/browser/compositor/LayerTitleCache;Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->mNativeCompositorView:J

    .line 188
    sget-boolean v0, Lorg/chromium/chrome/browser/compositor/CompositorView;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/CompositorView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Surface created before native library loaded."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 189
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/CompositorView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 192
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/compositor/CompositorView;->setBackgroundColor(I)V

    .line 193
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/compositor/CompositorView;->setVisibility(I)V

    .line 196
    iget-wide v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->mNativeCompositorView:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/compositor/CompositorView;->nativeGetResourceManager(J)Lorg/chromium/ui/resources/ResourceManager;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->mResourceManager:Lorg/chromium/ui/resources/ResourceManager;

    .line 197
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 150
    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    .line 151
    const/4 v0, -0x1

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->mPreviousWindowTop:I

    .line 152
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 118
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 119
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->mRootView:Landroid/view/View;

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->mCacheAppRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 127
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->mCacheAppRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 128
    iget v1, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->mPreviousWindowTop:I

    if-eq v0, v1, :cond_3

    move v1, v2

    .line 129
    :goto_0
    iput v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->mPreviousWindowTop:I

    .line 131
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    invoke-virtual {v0}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 132
    :goto_1
    invoke-static {}, Lorg/chromium/chrome/browser/multiwindow/MultiWindowUtils;->getInstance()Lorg/chromium/chrome/browser/multiwindow/MultiWindowUtils;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/chromium/chrome/browser/multiwindow/MultiWindowUtils;->isLegacyMultiWindow(Landroid/app/Activity;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lorg/chromium/chrome/browser/multiwindow/MultiWindowUtils;->getInstance()Lorg/chromium/chrome/browser/multiwindow/MultiWindowUtils;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/chromium/chrome/browser/multiwindow/MultiWindowUtils;->isMultiWindow(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v3, v2

    .line 138
    :cond_1
    if-nez v1, :cond_2

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/CompositorView;->getMeasuredWidth()I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/CompositorView;->getMeasuredHeight()I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    if-le v0, v1, :cond_2

    .line 141
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/CompositorView;->getMeasuredHeight()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 145
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onMeasure(II)V

    .line 146
    return-void

    :cond_3
    move v1, v3

    .line 128
    goto :goto_0

    .line 131
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 201
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 2

    .prologue
    .line 238
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onWindowVisibilityChanged(I)V

    .line 239
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    if-nez v0, :cond_0

    .line 246
    :goto_0
    return-void

    .line 240
    :cond_0
    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    .line 241
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/ui/base/WindowAndroid;->onVisibilityChanged(Z)V

    .line 245
    :cond_1
    :goto_1
    invoke-static {}, Lorg/chromium/chrome/browser/externalnav/IntentWithGesturesHandler;->getInstance()Lorg/chromium/chrome/browser/externalnav/IntentWithGesturesHandler;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/externalnav/IntentWithGesturesHandler;->clear()V

    goto :goto_0

    .line 242
    :cond_2
    if-nez p1, :cond_1

    .line 243
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/chromium/ui/base/WindowAndroid;->onVisibilityChanged(Z)V

    goto :goto_1
.end method

.method public requestRender()V
    .locals 4

    .prologue
    .line 290
    iget-wide v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->mNativeCompositorView:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->mNativeCompositorView:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/compositor/CompositorView;->nativeSetNeedsComposite(J)V

    .line 291
    :cond_0
    return-void
.end method

.method public resetFlags()V
    .locals 2

    .prologue
    .line 111
    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v0

    .line 112
    const-string/jumbo v1, "enable-tablet-tab-stack"

    invoke-virtual {v0, v1}, Lorg/chromium/base/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/CompositorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/ui/base/DeviceFormFactor;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->mEnableTabletTabStack:Z

    .line 114
    return-void

    .line 112
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOverlayVideoMode(Z)V
    .locals 2

    .prologue
    .line 209
    if-eqz p1, :cond_0

    const/4 v0, -0x3

    :goto_0
    iput v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->mCurrentPixelFormat:I

    .line 210
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/CompositorView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->mCurrentPixelFormat:I

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 211
    iget-wide v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->mNativeCompositorView:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/chrome/browser/compositor/CompositorView;->nativeSetOverlayVideoMode(JZ)V

    .line 212
    return-void

    .line 209
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public setRootView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->mRootView:Landroid/view/View;

    .line 104
    return-void
.end method

.method public shutDown()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 165
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/CompositorView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 166
    iget-wide v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->mNativeCompositorView:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->mNativeCompositorView:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/compositor/CompositorView;->nativeDestroy(J)V

    .line 167
    :cond_0
    iput-wide v2, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->mNativeCompositorView:J

    .line 168
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 8

    .prologue
    .line 216
    iget-wide v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->mNativeCompositorView:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 221
    :goto_0
    return-void

    .line 217
    :cond_0
    iget-wide v2, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->mNativeCompositorView:J

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v7

    move-object v1, p0

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v7}, Lorg/chromium/chrome/browser/compositor/CompositorView;->nativeSurfaceChanged(JIIILandroid/view/Surface;)V

    .line 218
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->mRenderHost:Lorg/chromium/chrome/browser/compositor/layouts/LayoutRenderHost;

    invoke-interface {v0, p3, p4}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutRenderHost;->onPhysicalBackingSizeChanged(II)V

    .line 219
    iput p3, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->mSurfaceWidth:I

    .line 220
    iput p4, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->mSurfaceHeight:I

    goto :goto_0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 4

    .prologue
    .line 225
    iget-wide v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->mNativeCompositorView:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 228
    :goto_0
    return-void

    .line 226
    :cond_0
    iget-wide v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->mNativeCompositorView:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/compositor/CompositorView;->nativeSurfaceCreated(J)V

    .line 227
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->mRenderHost:Lorg/chromium/chrome/browser/compositor/layouts/LayoutRenderHost;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutRenderHost;->onSurfaceCreated()V

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 4

    .prologue
    .line 232
    iget-wide v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->mNativeCompositorView:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 234
    :goto_0
    return-void

    .line 233
    :cond_0
    iget-wide v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->mNativeCompositorView:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/compositor/CompositorView;->nativeSurfaceDestroyed(J)V

    goto :goto_0
.end method
