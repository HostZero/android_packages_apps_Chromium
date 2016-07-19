.class public Lorg/chromium/chrome/browser/compositor/scene_layer/ContextualSearchSceneLayer;
.super Lorg/chromium/chrome/browser/compositor/scene_layer/SceneLayer;
.source "ContextualSearchSceneLayer.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mDpToPx:F

.field private mNativePtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lorg/chromium/chrome/browser/compositor/scene_layer/ContextualSearchSceneLayer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/compositor/scene_layer/ContextualSearchSceneLayer;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(F)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/scene_layer/SceneLayer;-><init>()V

    .line 29
    iput p1, p0, Lorg/chromium/chrome/browser/compositor/scene_layer/ContextualSearchSceneLayer;->mDpToPx:F

    .line 30
    return-void
.end method

.method private native nativeInit()J
.end method

.method private native nativeUpdateContextualSearchLayer(JIIIIIIIIIIIIIFLorg/chromium/content/browser/ContentViewCore;ZFFZFFFFFFFFFFFFFZFZFZFFFFZFFILorg/chromium/ui/resources/ResourceManager;)V
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 156
    invoke-super {p0}, Lorg/chromium/chrome/browser/compositor/scene_layer/SceneLayer;->destroy()V

    .line 157
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/compositor/scene_layer/ContextualSearchSceneLayer;->mNativePtr:J

    .line 158
    return-void
.end method

.method protected initializeNative()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 145
    iget-wide v0, p0, Lorg/chromium/chrome/browser/compositor/scene_layer/ContextualSearchSceneLayer;->mNativePtr:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 146
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/scene_layer/ContextualSearchSceneLayer;->nativeInit()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/compositor/scene_layer/ContextualSearchSceneLayer;->mNativePtr:J

    .line 148
    :cond_0
    sget-boolean v0, Lorg/chromium/chrome/browser/compositor/scene_layer/ContextualSearchSceneLayer;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lorg/chromium/chrome/browser/compositor/scene_layer/ContextualSearchSceneLayer;->mNativePtr:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 149
    :cond_1
    return-void
.end method

.method public update(Lorg/chromium/ui/resources/ResourceManager;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;IILorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPeekPromoControl;FFLorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchIconSpriteControl;)V
    .locals 52

    .prologue
    .line 54
    invoke-virtual/range {p2 .. p2}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->getPromoVisible()Z

    move-result v21

    .line 55
    invoke-virtual/range {p2 .. p2}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->getPromoHeightPx()F

    move-result v22

    .line 56
    invoke-virtual/range {p2 .. p2}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->getPromoOpacity()F

    move-result v23

    .line 58
    invoke-virtual/range {p5 .. p5}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPeekPromoControl;->getViewId()I

    move-result v18

    .line 59
    invoke-virtual/range {p5 .. p5}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPeekPromoControl;->isVisible()Z

    move-result v24

    .line 60
    invoke-virtual/range {p5 .. p5}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPeekPromoControl;->getHeightPx()F

    move-result v25

    .line 61
    invoke-virtual/range {p5 .. p5}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPeekPromoControl;->getPaddingPx()F

    move-result v26

    .line 62
    invoke-virtual/range {p5 .. p5}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPeekPromoControl;->getRippleWidthPx()F

    move-result v27

    .line 63
    invoke-virtual/range {p5 .. p5}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPeekPromoControl;->getRippleOpacity()F

    move-result v28

    .line 64
    invoke-virtual/range {p5 .. p5}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPeekPromoControl;->getTextOpacity()F

    move-result v29

    .line 66
    invoke-virtual/range {p8 .. p8}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchIconSpriteControl;->isVisible()Z

    move-result v42

    .line 67
    invoke-virtual/range {p8 .. p8}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchIconSpriteControl;->getCompletionPercentage()F

    move-result v43

    .line 69
    invoke-virtual/range {p2 .. p2}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->getOffsetX()F

    move-result v2

    .line 70
    invoke-virtual/range {p2 .. p2}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->getOffsetY()F

    move-result v3

    .line 71
    invoke-virtual/range {p2 .. p2}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->getWidth()F

    move-result v7

    .line 72
    invoke-virtual/range {p2 .. p2}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->getHeight()F

    move-result v8

    .line 74
    invoke-virtual/range {p2 .. p2}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->getBarMarginSide()F

    move-result v34

    .line 75
    invoke-virtual/range {p2 .. p2}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->getBarHeight()F

    move-result v35

    .line 77
    invoke-virtual/range {p2 .. p2}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->isBarBorderVisible()Z

    move-result v38

    .line 78
    invoke-virtual/range {p2 .. p2}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->getBarBorderHeight()F

    move-result v36

    .line 80
    invoke-virtual/range {p2 .. p2}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->getBarShadowVisible()Z

    move-result v40

    .line 81
    invoke-virtual/range {p2 .. p2}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->getBarShadowOpacity()F

    move-result v41

    .line 83
    invoke-virtual/range {p2 .. p2}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->getArrowIconOpacity()F

    move-result v44

    .line 84
    invoke-virtual/range {p2 .. p2}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->getArrowIconRotation()F

    move-result v45

    .line 86
    invoke-virtual/range {p2 .. p2}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->getCloseIconOpacity()F

    move-result v46

    .line 88
    invoke-virtual/range {p2 .. p2}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->isProgressBarVisible()Z

    move-result v47

    .line 90
    invoke-virtual/range {p2 .. p2}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->getProgressBarHeight()F

    move-result v37

    .line 91
    invoke-virtual/range {p2 .. p2}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->getProgressBarOpacity()F

    move-result v49

    .line 92
    invoke-virtual/range {p2 .. p2}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->getProgressBarCompletion()I

    move-result v50

    .line 94
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/chromium/chrome/browser/compositor/scene_layer/ContextualSearchSceneLayer;->mNativePtr:J

    sget v6, Lorg/chromium/chrome/R$drawable;->contextual_search_bar_background:I

    sget v9, Lorg/chromium/chrome/R$drawable;->contextual_search_bar_shadow:I

    sget v10, Lorg/chromium/chrome/R$drawable;->google_icon_sprite:I

    sget v11, Lorg/chromium/chrome/R$raw;->google_icon_sprite:I

    sget v12, Lorg/chromium/chrome/R$drawable;->breadcrumb_arrow:I

    sget v13, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->CLOSE_ICON_DRAWABLE_ID:I

    sget v14, Lorg/chromium/chrome/R$drawable;->progress_bar_background:I

    sget v15, Lorg/chromium/chrome/R$drawable;->progress_bar_foreground:I

    sget v16, Lorg/chromium/chrome/R$id;->contextual_search_opt_out_promo:I

    sget v17, Lorg/chromium/chrome/R$drawable;->contextual_search_promo_ripple:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/chromium/chrome/browser/compositor/scene_layer/ContextualSearchSceneLayer;->mDpToPx:F

    move/from16 v19, v0

    invoke-virtual/range {p2 .. p2}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lorg/chromium/chrome/browser/compositor/scene_layer/ContextualSearchSceneLayer;->mDpToPx:F

    move/from16 v30, v0

    mul-float v30, v30, v2

    move-object/from16 v0, p0

    iget v2, v0, Lorg/chromium/chrome/browser/compositor/scene_layer/ContextualSearchSceneLayer;->mDpToPx:F

    mul-float v31, v3, v2

    move-object/from16 v0, p0

    iget v2, v0, Lorg/chromium/chrome/browser/compositor/scene_layer/ContextualSearchSceneLayer;->mDpToPx:F

    mul-float v32, v7, v2

    move-object/from16 v0, p0

    iget v2, v0, Lorg/chromium/chrome/browser/compositor/scene_layer/ContextualSearchSceneLayer;->mDpToPx:F

    mul-float v33, v8, v2

    move-object/from16 v0, p0

    iget v2, v0, Lorg/chromium/chrome/browser/compositor/scene_layer/ContextualSearchSceneLayer;->mDpToPx:F

    mul-float v34, v34, v2

    move-object/from16 v0, p0

    iget v2, v0, Lorg/chromium/chrome/browser/compositor/scene_layer/ContextualSearchSceneLayer;->mDpToPx:F

    mul-float v35, v35, v2

    move-object/from16 v0, p0

    iget v2, v0, Lorg/chromium/chrome/browser/compositor/scene_layer/ContextualSearchSceneLayer;->mDpToPx:F

    mul-float v39, v36, v2

    move-object/from16 v0, p0

    iget v2, v0, Lorg/chromium/chrome/browser/compositor/scene_layer/ContextualSearchSceneLayer;->mDpToPx:F

    mul-float v48, v37, v2

    move-object/from16 v3, p0

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v36, p6

    move/from16 v37, p7

    move-object/from16 v51, p1

    invoke-direct/range {v3 .. v51}, Lorg/chromium/chrome/browser/compositor/scene_layer/ContextualSearchSceneLayer;->nativeUpdateContextualSearchLayer(JIIIIIIIIIIIIIFLorg/chromium/content/browser/ContentViewCore;ZFFZFFFFFFFFFFFFFZFZFZFFFFZFFILorg/chromium/ui/resources/ResourceManager;)V

    .line 141
    return-void
.end method
