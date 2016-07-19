.class public Lorg/chromium/chrome/browser/compositor/scene_layer/TabStripSceneLayer;
.super Lorg/chromium/chrome/browser/compositor/scene_layer/SceneOverlayLayer;
.source "TabStripSceneLayer.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mDpToPx:F

.field private mNativePtr:J

.field private mNumReaddBackground:I

.field private mOrientation:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lorg/chromium/chrome/browser/compositor/scene_layer/TabStripSceneLayer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/compositor/scene_layer/TabStripSceneLayer;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/scene_layer/SceneOverlayLayer;-><init>()V

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/scene_layer/TabStripSceneLayer;->mDpToPx:F

    .line 32
    return-void
.end method

.method private native nativeBeginBuildingFrame(JZ)V
.end method

.method private native nativeFinishBuildingFrame(J)V
.end method

.method private native nativeInit()J
.end method

.method private native nativePutStripTabLayer(JIIIZZFFFFFFFZFFLorg/chromium/chrome/browser/compositor/LayerTitleCache;Lorg/chromium/ui/resources/ResourceManager;)V
.end method

.method private native nativeSetContentTree(JLorg/chromium/chrome/browser/compositor/scene_layer/SceneLayer;)V
.end method

.method private native nativeUpdateModelSelectorButton(JIFFFFZZLorg/chromium/ui/resources/ResourceManager;)V
.end method

.method private native nativeUpdateNewTabButton(JIFFFFZLorg/chromium/ui/resources/ResourceManager;)V
.end method

.method private native nativeUpdateTabStripLayer(JFFFFFZ)V
.end method

.method private pushButtonsAndBackground(Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;Lorg/chromium/ui/resources/ResourceManager;F)V
    .locals 13

    .prologue
    .line 91
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->getWidth()F

    move-result v0

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/scene_layer/TabStripSceneLayer;->mDpToPx:F

    mul-float v4, v0, v1

    .line 92
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->getHeight()F

    move-result v0

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/scene_layer/TabStripSceneLayer;->mDpToPx:F

    mul-float v5, v0, v1

    .line 93
    iget-wide v2, p0, Lorg/chromium/chrome/browser/compositor/scene_layer/TabStripSceneLayer;->mNativePtr:J

    iget v0, p0, Lorg/chromium/chrome/browser/compositor/scene_layer/TabStripSceneLayer;->mDpToPx:F

    mul-float v6, p3, v0

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->getBackgroundTabBrightness()F

    move-result v7

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->getBrightness()F

    move-result v8

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->getOrientation()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/compositor/scene_layer/TabStripSceneLayer;->shouldReaddBackground(I)Z

    move-result v9

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lorg/chromium/chrome/browser/compositor/scene_layer/TabStripSceneLayer;->nativeUpdateTabStripLayer(JFFFFFZ)V

    .line 97
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->getNewTabButton()Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;

    move-result-object v0

    .line 98
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->getModelSelectorButton()Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;

    move-result-object v11

    .line 99
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->isVisible()Z

    move-result v9

    .line 100
    invoke-virtual {v11}, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->isVisible()Z

    move-result v12

    .line 102
    iget-wide v2, p0, Lorg/chromium/chrome/browser/compositor/scene_layer/TabStripSceneLayer;->mNativePtr:J

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->getResourceId()I

    move-result v4

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->getX()F

    move-result v1

    iget v5, p0, Lorg/chromium/chrome/browser/compositor/scene_layer/TabStripSceneLayer;->mDpToPx:F

    mul-float/2addr v5, v1

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->getY()F

    move-result v1

    iget v6, p0, Lorg/chromium/chrome/browser/compositor/scene_layer/TabStripSceneLayer;->mDpToPx:F

    mul-float/2addr v6, v1

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->getWidth()F

    move-result v1

    iget v7, p0, Lorg/chromium/chrome/browser/compositor/scene_layer/TabStripSceneLayer;->mDpToPx:F

    mul-float/2addr v7, v1

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->getHeight()F

    move-result v0

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/scene_layer/TabStripSceneLayer;->mDpToPx:F

    mul-float v8, v0, v1

    move-object v1, p0

    move-object v10, p2

    invoke-direct/range {v1 .. v10}, Lorg/chromium/chrome/browser/compositor/scene_layer/TabStripSceneLayer;->nativeUpdateNewTabButton(JIFFFFZLorg/chromium/ui/resources/ResourceManager;)V

    .line 107
    iget-wide v2, p0, Lorg/chromium/chrome/browser/compositor/scene_layer/TabStripSceneLayer;->mNativePtr:J

    invoke-virtual {v11}, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->getResourceId()I

    move-result v4

    invoke-virtual {v11}, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->getX()F

    move-result v0

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/scene_layer/TabStripSceneLayer;->mDpToPx:F

    mul-float v5, v0, v1

    invoke-virtual {v11}, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->getY()F

    move-result v0

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/scene_layer/TabStripSceneLayer;->mDpToPx:F

    mul-float v6, v0, v1

    invoke-virtual {v11}, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->getWidth()F

    move-result v0

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/scene_layer/TabStripSceneLayer;->mDpToPx:F

    mul-float v7, v0, v1

    invoke-virtual {v11}, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->getHeight()F

    move-result v0

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/scene_layer/TabStripSceneLayer;->mDpToPx:F

    mul-float v8, v0, v1

    invoke-virtual {v11}, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->isIncognito()Z

    move-result v9

    move-object v1, p0

    move v10, v12

    move-object v11, p2

    invoke-direct/range {v1 .. v11}, Lorg/chromium/chrome/browser/compositor/scene_layer/TabStripSceneLayer;->nativeUpdateModelSelectorButton(JIFFFFZZLorg/chromium/ui/resources/ResourceManager;)V

    .line 111
    return-void
.end method

.method private pushStripTabs(Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;Lorg/chromium/chrome/browser/compositor/LayerTitleCache;Lorg/chromium/ui/resources/ResourceManager;[Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;)V
    .locals 24

    .prologue
    .line 116
    if-eqz p4, :cond_0

    move-object/from16 v0, p4

    array-length v2, v0

    .line 118
    :goto_0
    const/4 v3, 0x0

    move/from16 v23, v3

    :goto_1
    move/from16 v0, v23

    if-ge v0, v2, :cond_3

    .line 119
    aget-object v19, p4, v23

    .line 120
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/chromium/chrome/browser/compositor/scene_layer/TabStripSceneLayer;->mNativePtr:J

    invoke-virtual/range {v19 .. v19}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->getId()I

    move-result v6

    invoke-virtual/range {v19 .. v19}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->getCloseButton()Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->getResourceId()I

    move-result v7

    add-int/lit8 v3, v2, -0x1

    move/from16 v0, v23

    if-ne v0, v3, :cond_1

    const/4 v3, 0x1

    :goto_2
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->getResourceId(Z)I

    move-result v8

    add-int/lit8 v3, v2, -0x1

    move/from16 v0, v23

    if-ne v0, v3, :cond_2

    const/4 v9, 0x1

    :goto_3
    invoke-virtual/range {v19 .. v19}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->getClosePressed()Z

    move-result v10

    invoke-virtual/range {p1 .. p1}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->getWidth()F

    move-result v3

    move-object/from16 v0, p0

    iget v11, v0, Lorg/chromium/chrome/browser/compositor/scene_layer/TabStripSceneLayer;->mDpToPx:F

    mul-float/2addr v11, v3

    invoke-virtual/range {v19 .. v19}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->getDrawX()F

    move-result v3

    move-object/from16 v0, p0

    iget v12, v0, Lorg/chromium/chrome/browser/compositor/scene_layer/TabStripSceneLayer;->mDpToPx:F

    mul-float/2addr v12, v3

    invoke-virtual/range {v19 .. v19}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->getDrawY()F

    move-result v3

    move-object/from16 v0, p0

    iget v13, v0, Lorg/chromium/chrome/browser/compositor/scene_layer/TabStripSceneLayer;->mDpToPx:F

    mul-float/2addr v13, v3

    invoke-virtual/range {v19 .. v19}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->getWidth()F

    move-result v3

    move-object/from16 v0, p0

    iget v14, v0, Lorg/chromium/chrome/browser/compositor/scene_layer/TabStripSceneLayer;->mDpToPx:F

    mul-float/2addr v14, v3

    invoke-virtual/range {v19 .. v19}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->getHeight()F

    move-result v3

    move-object/from16 v0, p0

    iget v15, v0, Lorg/chromium/chrome/browser/compositor/scene_layer/TabStripSceneLayer;->mDpToPx:F

    mul-float/2addr v15, v3

    invoke-virtual/range {v19 .. v19}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->getContentOffsetX()F

    move-result v3

    move-object/from16 v0, p0

    iget v0, v0, Lorg/chromium/chrome/browser/compositor/scene_layer/TabStripSceneLayer;->mDpToPx:F

    move/from16 v16, v0

    mul-float v16, v16, v3

    invoke-virtual/range {v19 .. v19}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->getCloseButton()Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->getOpacity()F

    move-result v17

    invoke-virtual/range {v19 .. v19}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->isLoading()Z

    move-result v18

    invoke-virtual/range {v19 .. v19}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->getLoadingSpinnerRotation()F

    move-result v19

    invoke-virtual/range {p1 .. p1}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->getBorderOpacity()F

    move-result v20

    move-object/from16 v3, p0

    move-object/from16 v21, p2

    move-object/from16 v22, p3

    invoke-direct/range {v3 .. v22}, Lorg/chromium/chrome/browser/compositor/scene_layer/TabStripSceneLayer;->nativePutStripTabLayer(JIIIZZFFFFFFFZFFLorg/chromium/chrome/browser/compositor/LayerTitleCache;Lorg/chromium/ui/resources/ResourceManager;)V

    .line 118
    add-int/lit8 v3, v23, 0x1

    move/from16 v23, v3

    goto/16 :goto_1

    .line 116
    :cond_0
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 120
    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    goto :goto_3

    .line 128
    :cond_3
    return-void
.end method

.method private shouldReaddBackground(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 79
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v2, "Nexus 10"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 86
    :cond_0
    :goto_0
    return v0

    .line 80
    :cond_1
    iget v1, p0, Lorg/chromium/chrome/browser/compositor/scene_layer/TabStripSceneLayer;->mOrientation:I

    if-eq v1, p1, :cond_2

    .line 82
    const/16 v1, 0xa

    iput v1, p0, Lorg/chromium/chrome/browser/compositor/scene_layer/TabStripSceneLayer;->mNumReaddBackground:I

    .line 83
    iput p1, p0, Lorg/chromium/chrome/browser/compositor/scene_layer/TabStripSceneLayer;->mOrientation:I

    .line 85
    :cond_2
    iget v1, p0, Lorg/chromium/chrome/browser/compositor/scene_layer/TabStripSceneLayer;->mNumReaddBackground:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/chromium/chrome/browser/compositor/scene_layer/TabStripSceneLayer;->mNumReaddBackground:I

    .line 86
    iget v1, p0, Lorg/chromium/chrome/browser/compositor/scene_layer/TabStripSceneLayer;->mNumReaddBackground:I

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 132
    invoke-super {p0}, Lorg/chromium/chrome/browser/compositor/scene_layer/SceneOverlayLayer;->destroy()V

    .line 133
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/compositor/scene_layer/TabStripSceneLayer;->mNativePtr:J

    .line 134
    return-void
.end method

.method protected initializeNative()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 36
    iget-wide v0, p0, Lorg/chromium/chrome/browser/compositor/scene_layer/TabStripSceneLayer;->mNativePtr:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 37
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/scene_layer/TabStripSceneLayer;->nativeInit()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/compositor/scene_layer/TabStripSceneLayer;->mNativePtr:J

    .line 39
    :cond_0
    sget-boolean v0, Lorg/chromium/chrome/browser/compositor/scene_layer/TabStripSceneLayer;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lorg/chromium/chrome/browser/compositor/scene_layer/TabStripSceneLayer;->mNativePtr:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 40
    :cond_1
    return-void
.end method

.method public pushAndUpdateStrip(Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;Lorg/chromium/chrome/browser/compositor/LayerTitleCache;Lorg/chromium/ui/resources/ResourceManager;[Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;F)V
    .locals 4

    .prologue
    .line 62
    iget-wide v0, p0, Lorg/chromium/chrome/browser/compositor/scene_layer/TabStripSceneLayer;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 73
    :goto_0
    return-void

    .line 64
    :cond_0
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->getHeight()F

    move-result v0

    neg-float v0, v0

    cmpl-float v0, p5, v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    .line 66
    :goto_1
    iget-wide v2, p0, Lorg/chromium/chrome/browser/compositor/scene_layer/TabStripSceneLayer;->mNativePtr:J

    invoke-direct {p0, v2, v3, v0}, Lorg/chromium/chrome/browser/compositor/scene_layer/TabStripSceneLayer;->nativeBeginBuildingFrame(JZ)V

    .line 68
    if-eqz v0, :cond_1

    .line 69
    invoke-direct {p0, p1, p3, p5}, Lorg/chromium/chrome/browser/compositor/scene_layer/TabStripSceneLayer;->pushButtonsAndBackground(Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;Lorg/chromium/ui/resources/ResourceManager;F)V

    .line 70
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/chromium/chrome/browser/compositor/scene_layer/TabStripSceneLayer;->pushStripTabs(Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;Lorg/chromium/chrome/browser/compositor/LayerTitleCache;Lorg/chromium/ui/resources/ResourceManager;[Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;)V

    .line 72
    :cond_1
    iget-wide v0, p0, Lorg/chromium/chrome/browser/compositor/scene_layer/TabStripSceneLayer;->mNativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/compositor/scene_layer/TabStripSceneLayer;->nativeFinishBuildingFrame(J)V

    goto :goto_0

    .line 64
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setContentTree(Lorg/chromium/chrome/browser/compositor/scene_layer/SceneLayer;)V
    .locals 2

    .prologue
    .line 44
    iget-wide v0, p0, Lorg/chromium/chrome/browser/compositor/scene_layer/TabStripSceneLayer;->mNativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/chrome/browser/compositor/scene_layer/TabStripSceneLayer;->nativeSetContentTree(JLorg/chromium/chrome/browser/compositor/scene_layer/SceneLayer;)V

    .line 45
    return-void
.end method
