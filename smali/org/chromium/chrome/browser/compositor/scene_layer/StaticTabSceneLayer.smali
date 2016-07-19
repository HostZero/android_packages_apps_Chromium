.class public Lorg/chromium/chrome/browser/compositor/scene_layer/StaticTabSceneLayer;
.super Lorg/chromium/chrome/browser/compositor/scene_layer/SceneLayer;
.source "StaticTabSceneLayer.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mNativePtr:J

.field private final mResToolbarControlContainer:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lorg/chromium/chrome/browser/compositor/scene_layer/StaticTabSceneLayer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/compositor/scene_layer/StaticTabSceneLayer;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/scene_layer/SceneLayer;-><init>()V

    .line 27
    iput p1, p0, Lorg/chromium/chrome/browser/compositor/scene_layer/StaticTabSceneLayer;->mResToolbarControlContainer:I

    .line 28
    return-void
.end method

.method private native nativeInit()J
.end method

.method private native nativeSetContentSceneLayer(JLorg/chromium/chrome/browser/compositor/scene_layer/SceneLayer;)V
.end method

.method private native nativeUpdateTabLayer(JFFFFLorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;IIZIFFFFFFFF)V
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 81
    invoke-super {p0}, Lorg/chromium/chrome/browser/compositor/scene_layer/SceneLayer;->destroy()V

    .line 82
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/compositor/scene_layer/StaticTabSceneLayer;->mNativePtr:J

    .line 83
    return-void
.end method

.method protected initializeNative()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 73
    iget-wide v0, p0, Lorg/chromium/chrome/browser/compositor/scene_layer/StaticTabSceneLayer;->mNativePtr:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 74
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/scene_layer/StaticTabSceneLayer;->nativeInit()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/compositor/scene_layer/StaticTabSceneLayer;->mNativePtr:J

    .line 76
    :cond_0
    sget-boolean v0, Lorg/chromium/chrome/browser/compositor/scene_layer/StaticTabSceneLayer;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lorg/chromium/chrome/browser/compositor/scene_layer/StaticTabSceneLayer;->mNativePtr:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 77
    :cond_1
    return-void
.end method

.method public setContentSceneLayer(Lorg/chromium/chrome/browser/compositor/scene_layer/SceneLayer;)V
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Lorg/chromium/chrome/browser/compositor/scene_layer/StaticTabSceneLayer;->mNativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/chrome/browser/compositor/scene_layer/StaticTabSceneLayer;->nativeSetContentSceneLayer(JLorg/chromium/chrome/browser/compositor/scene_layer/SceneLayer;)V

    .line 69
    return-void
.end method

.method public update(FLandroid/graphics/Rect;Lorg/chromium/chrome/browser/compositor/LayerTitleCache;Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;)V
    .locals 23

    .prologue
    .line 43
    if-nez p6, :cond_0

    .line 59
    :goto_0
    return-void

    .line 47
    :cond_0
    if-eqz p5, :cond_1

    invoke-virtual/range {p5 .. p5}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->getContentOffset()F

    move-result v19

    .line 51
    :goto_1
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/chromium/chrome/browser/compositor/scene_layer/StaticTabSceneLayer;->mNativePtr:J

    move-object/from16 v0, p2

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v6, v2

    move-object/from16 v0, p2

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v7, v2

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v8, v2

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v9, v2

    invoke-virtual/range {p6 .. p6}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getId()I

    move-result v11

    move-object/from16 v0, p0

    iget v12, v0, Lorg/chromium/chrome/browser/compositor/scene_layer/StaticTabSceneLayer;->mResToolbarControlContainer:I

    invoke-virtual/range {p6 .. p6}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->canUseLiveTexture()Z

    move-result v13

    invoke-virtual/range {p6 .. p6}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getBackgroundColor()I

    move-result v14

    invoke-virtual/range {p6 .. p6}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getRenderX()F

    move-result v2

    mul-float v15, v2, p1

    invoke-virtual/range {p6 .. p6}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getRenderY()F

    move-result v2

    mul-float v16, v2, p1

    invoke-virtual/range {p6 .. p6}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getScaledContentWidth()F

    move-result v2

    mul-float v17, v2, p1

    invoke-virtual/range {p6 .. p6}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getScaledContentHeight()F

    move-result v2

    mul-float v18, v2, p1

    invoke-virtual/range {p6 .. p6}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getStaticToViewBlend()F

    move-result v20

    invoke-virtual/range {p6 .. p6}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getSaturation()F

    move-result v21

    invoke-virtual/range {p6 .. p6}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getBrightness()F

    move-result v22

    move-object/from16 v3, p0

    move-object/from16 v10, p4

    invoke-direct/range {v3 .. v22}, Lorg/chromium/chrome/browser/compositor/scene_layer/StaticTabSceneLayer;->nativeUpdateTabLayer(JFFFFLorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;IIZIFFFFFFFF)V

    goto :goto_0

    .line 47
    :cond_1
    const/16 v19, 0x0

    goto :goto_1
.end method
