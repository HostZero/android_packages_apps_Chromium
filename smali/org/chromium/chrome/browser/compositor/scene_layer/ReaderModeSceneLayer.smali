.class public Lorg/chromium/chrome/browser/compositor/scene_layer/ReaderModeSceneLayer;
.super Lorg/chromium/chrome/browser/compositor/scene_layer/SceneLayer;
.source "ReaderModeSceneLayer.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mDpToPx:F

.field private mIsInitialized:Z

.field private mNativePtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lorg/chromium/chrome/browser/compositor/scene_layer/ReaderModeSceneLayer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/compositor/scene_layer/ReaderModeSceneLayer;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(F)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/scene_layer/SceneLayer;-><init>()V

    .line 32
    iput p1, p0, Lorg/chromium/chrome/browser/compositor/scene_layer/ReaderModeSceneLayer;->mDpToPx:F

    .line 33
    return-void
.end method

.method private native nativeCreateReaderModeLayer(JLorg/chromium/ui/resources/ResourceManager;)V
.end method

.method private native nativeInit()J
.end method

.method private native nativeSetResourceIds(JIIIII)V
.end method

.method private native nativeUpdate(JFLorg/chromium/content/browser/ContentViewCore;FFFFFFFZFZF)V
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 88
    invoke-super {p0}, Lorg/chromium/chrome/browser/compositor/scene_layer/SceneLayer;->destroy()V

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/scene_layer/ReaderModeSceneLayer;->mIsInitialized:Z

    .line 90
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/compositor/scene_layer/ReaderModeSceneLayer;->mNativePtr:J

    .line 91
    return-void
.end method

.method protected initializeNative()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 77
    iget-wide v0, p0, Lorg/chromium/chrome/browser/compositor/scene_layer/ReaderModeSceneLayer;->mNativePtr:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 78
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/scene_layer/ReaderModeSceneLayer;->nativeInit()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/compositor/scene_layer/ReaderModeSceneLayer;->mNativePtr:J

    .line 80
    :cond_0
    sget-boolean v0, Lorg/chromium/chrome/browser/compositor/scene_layer/ReaderModeSceneLayer;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lorg/chromium/chrome/browser/compositor/scene_layer/ReaderModeSceneLayer;->mNativePtr:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 81
    :cond_1
    return-void
.end method

.method public update(Lorg/chromium/ui/resources/ResourceManager;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;IF)V
    .locals 19

    .prologue
    .line 44
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/chromium/chrome/browser/compositor/scene_layer/ReaderModeSceneLayer;->mIsInitialized:Z

    if-nez v2, :cond_0

    if-eqz p1, :cond_0

    .line 45
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/chromium/chrome/browser/compositor/scene_layer/ReaderModeSceneLayer;->mNativePtr:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v3, v1}, Lorg/chromium/chrome/browser/compositor/scene_layer/ReaderModeSceneLayer;->nativeCreateReaderModeLayer(JLorg/chromium/ui/resources/ResourceManager;)V

    .line 48
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/chromium/chrome/browser/compositor/scene_layer/ReaderModeSceneLayer;->mNativePtr:J

    sget v7, Lorg/chromium/chrome/R$drawable;->contextual_search_bar_background:I

    sget v8, Lorg/chromium/chrome/R$drawable;->contextual_search_bar_shadow:I

    sget v9, Lorg/chromium/chrome/R$drawable;->infobar_mobile_friendly:I

    sget v10, Lorg/chromium/chrome/R$drawable;->btn_close:I

    move-object/from16 v3, p0

    move/from16 v6, p3

    invoke-direct/range {v3 .. v10}, Lorg/chromium/chrome/browser/compositor/scene_layer/ReaderModeSceneLayer;->nativeSetResourceIds(JIIIII)V

    .line 54
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/chromium/chrome/browser/compositor/scene_layer/ReaderModeSceneLayer;->mIsInitialized:Z

    .line 58
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/chromium/chrome/browser/compositor/scene_layer/ReaderModeSceneLayer;->mIsInitialized:Z

    if-nez v2, :cond_1

    .line 73
    :goto_0
    return-void

    .line 59
    :cond_1
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/chromium/chrome/browser/compositor/scene_layer/ReaderModeSceneLayer;->mNativePtr:J

    move-object/from16 v0, p0

    iget v6, v0, Lorg/chromium/chrome/browser/compositor/scene_layer/ReaderModeSceneLayer;->mDpToPx:F

    invoke-virtual/range {p2 .. p2}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->getOffsetX()F

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/chromium/chrome/browser/compositor/scene_layer/ReaderModeSceneLayer;->mDpToPx:F

    mul-float v8, v2, v3

    invoke-virtual/range {p2 .. p2}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->getOffsetY()F

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/chromium/chrome/browser/compositor/scene_layer/ReaderModeSceneLayer;->mDpToPx:F

    mul-float v9, v2, v3

    invoke-virtual/range {p2 .. p2}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->getWidth()F

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/chromium/chrome/browser/compositor/scene_layer/ReaderModeSceneLayer;->mDpToPx:F

    mul-float v10, v2, v3

    invoke-virtual/range {p2 .. p2}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->getHeight()F

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/chromium/chrome/browser/compositor/scene_layer/ReaderModeSceneLayer;->mDpToPx:F

    mul-float v11, v2, v3

    invoke-virtual/range {p2 .. p2}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->getBarMarginSide()F

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/chromium/chrome/browser/compositor/scene_layer/ReaderModeSceneLayer;->mDpToPx:F

    mul-float v12, v2, v3

    invoke-virtual/range {p2 .. p2}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->getBarHeight()F

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/chromium/chrome/browser/compositor/scene_layer/ReaderModeSceneLayer;->mDpToPx:F

    mul-float v13, v2, v3

    invoke-virtual/range {p2 .. p2}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->isBarBorderVisible()Z

    move-result v15

    invoke-virtual/range {p2 .. p2}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->getBarBorderHeight()F

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/chromium/chrome/browser/compositor/scene_layer/ReaderModeSceneLayer;->mDpToPx:F

    mul-float v16, v2, v3

    invoke-virtual/range {p2 .. p2}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->getBarShadowVisible()Z

    move-result v17

    invoke-virtual/range {p2 .. p2}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->getBarShadowOpacity()F

    move-result v18

    move-object/from16 v3, p0

    move/from16 v14, p4

    invoke-direct/range {v3 .. v18}, Lorg/chromium/chrome/browser/compositor/scene_layer/ReaderModeSceneLayer;->nativeUpdate(JFLorg/chromium/content/browser/ContentViewCore;FFFFFFFZFZF)V

    goto :goto_0
.end method
