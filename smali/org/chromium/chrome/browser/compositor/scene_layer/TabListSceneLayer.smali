.class public Lorg/chromium/chrome/browser/compositor/scene_layer/TabListSceneLayer;
.super Lorg/chromium/chrome/browser/compositor/scene_layer/SceneLayer;
.source "TabListSceneLayer.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mNativePtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lorg/chromium/chrome/browser/compositor/scene_layer/TabListSceneLayer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/compositor/scene_layer/TabListSceneLayer;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/scene_layer/SceneLayer;-><init>()V

    return-void
.end method

.method private native nativeBeginBuildingFrame(J)V
.end method

.method private native nativeFinishBuildingFrame(J)V
.end method

.method private native nativeInit()J
.end method

.method private native nativePutLayer(JIIIIIIIIZIIIZZFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFZIZIIFFFFZZLorg/chromium/chrome/browser/compositor/LayerTitleCache;Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;Lorg/chromium/ui/resources/ResourceManager;)V
.end method

.method private native nativeSetContentTree(JLorg/chromium/chrome/browser/compositor/scene_layer/SceneLayer;)V
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 123
    invoke-super {p0}, Lorg/chromium/chrome/browser/compositor/scene_layer/SceneLayer;->destroy()V

    .line 124
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/compositor/scene_layer/TabListSceneLayer;->mNativePtr:J

    .line 125
    return-void
.end method

.method protected getTabListBackgroundColor(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$color;->tab_switcher_background:I

    invoke-static {v0, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v0

    return v0
.end method

.method protected initializeNative()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 112
    iget-wide v0, p0, Lorg/chromium/chrome/browser/compositor/scene_layer/TabListSceneLayer;->mNativePtr:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 113
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/scene_layer/TabListSceneLayer;->nativeInit()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/compositor/scene_layer/TabListSceneLayer;->mNativePtr:J

    .line 115
    :cond_0
    sget-boolean v0, Lorg/chromium/chrome/browser/compositor/scene_layer/TabListSceneLayer;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lorg/chromium/chrome/browser/compositor/scene_layer/TabListSceneLayer;->mNativePtr:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 116
    :cond_1
    return-void
.end method

.method public pushLayers(Landroid/content/Context;Landroid/graphics/Rect;Landroid/graphics/Rect;Lorg/chromium/chrome/browser/compositor/layouts/Layout;Lorg/chromium/chrome/browser/compositor/LayerTitleCache;Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;Lorg/chromium/ui/resources/ResourceManager;)V
    .locals 68

    .prologue
    .line 52
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/chromium/chrome/browser/compositor/scene_layer/TabListSceneLayer;->mNativePtr:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 100
    :goto_0
    return-void

    .line 54
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v65

    .line 55
    invoke-virtual/range {v65 .. v65}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    move/from16 v66, v0

    .line 57
    invoke-virtual/range {p4 .. p4}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->getLayoutTabsToRender()[Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    move-result-object v67

    .line 58
    if-eqz v67, :cond_1

    move-object/from16 v0, v67

    array-length v2, v0

    .line 60
    :goto_1
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/chromium/chrome/browser/compositor/scene_layer/TabListSceneLayer;->mNativePtr:J

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lorg/chromium/chrome/browser/compositor/scene_layer/TabListSceneLayer;->nativeBeginBuildingFrame(J)V

    .line 61
    const/4 v3, 0x0

    move/from16 v64, v3

    :goto_2
    move/from16 v0, v64

    if-ge v0, v2, :cond_7

    .line 62
    aget-object v60, v67, v64

    .line 63
    sget-boolean v3, Lorg/chromium/chrome/browser/compositor/scene_layer/TabListSceneLayer;->$assertionsDisabled:Z

    if-nez v3, :cond_2

    invoke-virtual/range {v60 .. v60}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->isVisible()Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    const-string/jumbo v3, "LayoutTab in that list should be visible"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 58
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 64
    :cond_2
    invoke-virtual/range {v60 .. v60}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getDecorationAlpha()F

    move-result v42

    .line 66
    invoke-virtual/range {v60 .. v60}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->isIncognito()Z

    move-result v3

    if-eqz v3, :cond_3

    sget v12, Lorg/chromium/chrome/R$drawable;->tabswitcher_border_frame_incognito:I

    .line 68
    :goto_3
    invoke-virtual/range {v60 .. v60}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->isIncognito()Z

    move-result v3

    if-eqz v3, :cond_4

    sget v8, Lorg/chromium/chrome/R$drawable;->btn_tab_close_white_normal:I

    .line 70
    :goto_4
    invoke-virtual/range {v60 .. v60}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->isIncognito()Z

    move-result v3

    if-eqz v3, :cond_5

    sget v3, Lorg/chromium/chrome/R$color;->tab_back_incognito:I

    .line 73
    :goto_5
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/chromium/chrome/browser/compositor/scene_layer/TabListSceneLayer;->mNativePtr:J

    invoke-virtual/range {v60 .. v60}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getId()I

    move-result v6

    sget v7, Lorg/chromium/chrome/R$id;->control_container:I

    sget v9, Lorg/chromium/chrome/R$drawable;->tabswitcher_border_frame_shadow:I

    sget v10, Lorg/chromium/chrome/R$drawable;->tabswitcher_border_frame_decoration:I

    sget v11, Lorg/chromium/chrome/R$drawable;->logo_card_back:I

    sget v13, Lorg/chromium/chrome/R$drawable;->tabswitcher_border_frame_inner_shadow:I

    invoke-virtual/range {v60 .. v60}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->canUseLiveTexture()Z

    move-result v14

    invoke-virtual/range {v60 .. v60}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getBackgroundColor()I

    move-result v15

    invoke-virtual/range {p0 .. p1}, Lorg/chromium/chrome/browser/compositor/scene_layer/TabListSceneLayer;->getTabListBackgroundColor(Landroid/content/Context;)I

    move-result v16

    move-object/from16 v0, v65

    invoke-static {v0, v3}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v17

    invoke-virtual/range {v60 .. v60}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->isIncognito()Z

    move-result v18

    invoke-virtual/range {p4 .. p4}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->getOrientation()I

    move-result v3

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v3, v0, :cond_6

    const/16 v19, 0x1

    :goto_6
    invoke-virtual/range {v60 .. v60}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getRenderX()F

    move-result v3

    mul-float v20, v3, v66

    invoke-virtual/range {v60 .. v60}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getRenderY()F

    move-result v3

    mul-float v21, v3, v66

    invoke-virtual/range {v60 .. v60}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getScaledContentWidth()F

    move-result v3

    mul-float v22, v3, v66

    invoke-virtual/range {v60 .. v60}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getScaledContentHeight()F

    move-result v3

    mul-float v23, v3, v66

    invoke-virtual/range {v60 .. v60}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getOriginalContentWidth()F

    move-result v3

    mul-float v24, v3, v66

    invoke-virtual/range {v60 .. v60}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getOriginalContentHeight()F

    move-result v3

    mul-float v25, v3, v66

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v0, v3

    move/from16 v26, v0

    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v3

    move/from16 v27, v0

    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v3

    move/from16 v28, v0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v0, v3

    move/from16 v29, v0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v0, v3

    move/from16 v30, v0

    invoke-virtual/range {v60 .. v60}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getClippedX()F

    move-result v3

    mul-float v31, v3, v66

    invoke-virtual/range {v60 .. v60}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getClippedY()F

    move-result v3

    mul-float v32, v3, v66

    invoke-virtual/range {v60 .. v60}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getClippedWidth()F

    move-result v3

    invoke-virtual/range {v60 .. v60}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getScaledContentWidth()F

    move-result v33

    move/from16 v0, v33

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v3

    mul-float v33, v3, v66

    invoke-virtual/range {v60 .. v60}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getClippedHeight()F

    move-result v3

    invoke-virtual/range {v60 .. v60}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getScaledContentHeight()F

    move-result v34

    move/from16 v0, v34

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v3

    mul-float v34, v3, v66

    invoke-virtual/range {v60 .. v60}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getTiltXPivotOffset()F

    move-result v3

    mul-float v35, v3, v66

    invoke-virtual/range {v60 .. v60}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getTiltYPivotOffset()F

    move-result v3

    mul-float v36, v3, v66

    invoke-virtual/range {v60 .. v60}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getTiltX()F

    move-result v37

    invoke-virtual/range {v60 .. v60}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getTiltY()F

    move-result v38

    invoke-virtual/range {v60 .. v60}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getAlpha()F

    move-result v39

    invoke-virtual/range {v60 .. v60}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getBorderAlpha()F

    move-result v3

    mul-float v40, v3, v42

    invoke-virtual/range {v60 .. v60}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getBorderInnerShadowAlpha()F

    move-result v3

    mul-float v41, v3, v42

    invoke-virtual/range {v60 .. v60}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getShadowOpacity()F

    move-result v3

    mul-float v43, v3, v42

    invoke-virtual/range {v60 .. v60}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getBorderCloseButtonAlpha()F

    move-result v3

    mul-float v44, v3, v42

    const/high16 v3, 0x42100000    # 36.0f

    mul-float v45, v3, v66

    invoke-virtual/range {v60 .. v60}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getStaticToViewBlend()F

    move-result v46

    invoke-virtual/range {v60 .. v60}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getBorderScale()F

    move-result v47

    invoke-virtual/range {v60 .. v60}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getSaturation()F

    move-result v48

    invoke-virtual/range {v60 .. v60}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getBrightness()F

    move-result v49

    invoke-virtual/range {v60 .. v60}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->showToolbar()Z

    move-result v50

    invoke-virtual/range {v60 .. v60}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getToolbarBackgroundColor()I

    move-result v51

    invoke-virtual/range {v60 .. v60}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->anonymizeToolbar()Z

    move-result v52

    sget v53, Lorg/chromium/chrome/R$drawable;->textbox:I

    invoke-virtual/range {v60 .. v60}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getTextBoxBackgroundColor()I

    move-result v54

    invoke-virtual/range {v60 .. v60}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getTextBoxAlpha()F

    move-result v55

    invoke-virtual/range {v60 .. v60}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getToolbarAlpha()F

    move-result v56

    invoke-virtual/range {v60 .. v60}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getToolbarYOffset()F

    move-result v3

    mul-float v57, v3, v66

    invoke-virtual/range {v60 .. v60}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getSideBorderScale()F

    move-result v58

    const/16 v59, 0x1

    invoke-virtual/range {v60 .. v60}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->insetBorderVertical()Z

    move-result v60

    move-object/from16 v3, p0

    move-object/from16 v61, p5

    move-object/from16 v62, p6

    move-object/from16 v63, p7

    invoke-direct/range {v3 .. v63}, Lorg/chromium/chrome/browser/compositor/scene_layer/TabListSceneLayer;->nativePutLayer(JIIIIIIIIZIIIZZFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFZIZIIFFFFZZLorg/chromium/chrome/browser/compositor/LayerTitleCache;Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;Lorg/chromium/ui/resources/ResourceManager;)V

    .line 61
    add-int/lit8 v3, v64, 0x1

    move/from16 v64, v3

    goto/16 :goto_2

    .line 66
    :cond_3
    sget v12, Lorg/chromium/chrome/R$drawable;->tabswitcher_border_frame:I

    goto/16 :goto_3

    .line 68
    :cond_4
    sget v8, Lorg/chromium/chrome/R$drawable;->btn_tab_close_normal:I

    goto/16 :goto_4

    .line 70
    :cond_5
    sget v3, Lorg/chromium/chrome/R$color;->tab_back:I

    goto/16 :goto_5

    .line 73
    :cond_6
    const/16 v19, 0x0

    goto/16 :goto_6

    .line 99
    :cond_7
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/chromium/chrome/browser/compositor/scene_layer/TabListSceneLayer;->mNativePtr:J

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/chromium/chrome/browser/compositor/scene_layer/TabListSceneLayer;->nativeFinishBuildingFrame(J)V

    goto/16 :goto_0
.end method

.method public setContentTree(Lorg/chromium/chrome/browser/compositor/scene_layer/SceneLayer;)V
    .locals 2

    .prologue
    .line 38
    iget-wide v0, p0, Lorg/chromium/chrome/browser/compositor/scene_layer/TabListSceneLayer;->mNativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/chrome/browser/compositor/scene_layer/TabListSceneLayer;->nativeSetContentTree(JLorg/chromium/chrome/browser/compositor/scene_layer/SceneLayer;)V

    .line 39
    return-void
.end method
