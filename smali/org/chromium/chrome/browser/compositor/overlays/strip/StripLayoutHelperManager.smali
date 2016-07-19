.class public Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;
.super Ljava/lang/Object;
.source "StripLayoutHelperManager.java"

# interfaces
.implements Lorg/chromium/chrome/browser/compositor/overlays/SceneOverlay;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mEventFilter:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/AreaGestureEventFilter;

.field private final mHeight:F

.field private final mIncognitoHelper:Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;

.field private mIsIncognito:Z

.field private final mModelSelectorButton:Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;

.field private final mNormalHelper:Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;

.field private mOrientation:I

.field private final mRenderHost:Lorg/chromium/chrome/browser/compositor/layouts/LayoutRenderHost;

.field private final mStripFilterArea:Landroid/graphics/RectF;

.field private mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

.field private mTabStripTreeProvider:Lorg/chromium/chrome/browser/compositor/scene_layer/TabStripSceneLayer;

.field private final mUpdateHost:Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;

.field private mWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;Lorg/chromium/chrome/browser/compositor/layouts/LayoutRenderHost;Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/AreaGestureEventFilter;)V
    .locals 5

    .prologue
    const/high16 v3, 0x41c00000    # 24.0f

    const/4 v2, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->mStripFilterArea:Landroid/graphics/RectF;

    .line 78
    iput-object p2, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->mUpdateHost:Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;

    .line 79
    iput-object p3, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->mRenderHost:Lorg/chromium/chrome/browser/compositor/layouts/LayoutRenderHost;

    .line 80
    new-instance v0, Lorg/chromium/chrome/browser/compositor/scene_layer/TabStripSceneLayer;

    invoke-direct {v0, p1}, Lorg/chromium/chrome/browser/compositor/scene_layer/TabStripSceneLayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->mTabStripTreeProvider:Lorg/chromium/chrome/browser/compositor/scene_layer/TabStripSceneLayer;

    .line 82
    iput-object p4, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->mEventFilter:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/AreaGestureEventFilter;

    .line 84
    new-instance v0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;

    invoke-direct {v0, p1, p2, p3, v2}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;-><init>(Landroid/content/Context;Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;Lorg/chromium/chrome/browser/compositor/layouts/LayoutRenderHost;Z)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->mNormalHelper:Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;

    .line 85
    new-instance v0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;-><init>(Landroid/content/Context;Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;Lorg/chromium/chrome/browser/compositor/layouts/LayoutRenderHost;Z)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->mIncognitoHelper:Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;

    .line 87
    new-instance v0, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;

    invoke-direct {v0, p1, v3, v3}, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;-><init>(Landroid/content/Context;FF)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->mModelSelectorButton:Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;

    .line 89
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->mModelSelectorButton:Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;

    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->setIncognito(Z)V

    .line 90
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->mModelSelectorButton:Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;

    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->setVisible(Z)V

    .line 92
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->mModelSelectorButton:Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;

    sget v1, Lorg/chromium/chrome/R$drawable;->btn_tabstrip_switch_normal:I

    sget v2, Lorg/chromium/chrome/R$drawable;->btn_tabstrip_switch_normal:I

    sget v3, Lorg/chromium/chrome/R$drawable;->btn_tabstrip_switch_incognito:I

    sget v4, Lorg/chromium/chrome/R$drawable;->btn_tabstrip_switch_incognito:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->setResources(IIII)V

    .line 95
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->mModelSelectorButton:Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->setY(F)V

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 98
    sget v1, Lorg/chromium/chrome/R$dimen;->tab_strip_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    iput v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->mHeight:F

    .line 99
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->mModelSelectorButton:Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;

    sget v2, Lorg/chromium/chrome/R$string;->accessibility_tabstrip_btn_incognito_toggle_standard:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/chromium/chrome/R$string;->accessibility_tabstrip_btn_incognito_toggle_incognito:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->setAccessibilityDescription(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->onContextChanged(Landroid/content/Context;)V

    .line 104
    return-void
.end method

.method private getInactiveStripLayoutHelper()Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;
    .locals 1

    .prologue
    .line 416
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->mIsIncognito:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->mNormalHelper:Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->mIncognitoHelper:Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;

    goto :goto_0
.end method

.method private updateModelSwitcherButton()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 254
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->mModelSelectorButton:Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;

    iget-boolean v2, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->mIsIncognito:Z

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->setIncognito(Z)V

    .line 255
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    if-eqz v1, :cond_0

    .line 256
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    invoke-interface {v1, v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getModel(Z)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v1

    invoke-interface {v1}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->getCount()I

    move-result v1

    if-eqz v1, :cond_1

    .line 257
    :goto_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->mModelSelectorButton:Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->setVisible(Z)V

    .line 259
    if-eqz v0, :cond_2

    const/high16 v0, 0x42040000    # 33.0f

    .line 263
    :goto_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->mNormalHelper:Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->setRightMargin(F)V

    .line 264
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->mIncognitoHelper:Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->setRightMargin(F)V

    .line 266
    :cond_0
    return-void

    .line 256
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 259
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public click(JFFZI)V
    .locals 9

    .prologue
    .line 375
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->mModelSelectorButton:Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;

    invoke-virtual {v0, p3, p4}, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->click(FF)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    if-eqz v0, :cond_2

    .line 376
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->getActiveStripLayoutHelper()Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->finishAnimation()V

    .line 377
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->mModelSelectorButton:Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 382
    :goto_0
    return-void

    .line 378
    :cond_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->isIncognitoSelected()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-interface {v1, v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->selectModel(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 381
    :cond_2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->getActiveStripLayoutHelper()Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;

    move-result-object v1

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->click(JFFZI)V

    goto :goto_0
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->mTabStripTreeProvider:Lorg/chromium/chrome/browser/compositor/scene_layer/TabStripSceneLayer;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/scene_layer/TabStripSceneLayer;->destroy()V

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->mTabStripTreeProvider:Lorg/chromium/chrome/browser/compositor/scene_layer/TabStripSceneLayer;

    .line 112
    return-void
.end method

.method public drag(JFFFFFF)V
    .locals 11

    .prologue
    .line 327
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->mModelSelectorButton:Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;

    invoke-virtual {v0, p3, p4}, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->drag(FF)Z

    .line 328
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->getActiveStripLayoutHelper()Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;

    move-result-object v1

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->drag(JFFFFFF)V

    .line 329
    return-void
.end method

.method public fling(JFFFF)V
    .locals 9

    .prologue
    .line 340
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->getActiveStripLayoutHelper()Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;

    move-result-object v1

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->fling(JFFFF)V

    .line 341
    return-void
.end method

.method public getActiveStripLayoutHelper()Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;
    .locals 1

    .prologue
    .line 412
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->mIsIncognito:Z

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->getStripLayoutHelper(Z)Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundTabBrightness()F
    .locals 1

    .prologue
    .line 166
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->getActiveStripLayoutHelper()Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->getBackgroundTabBrightness()F

    move-result v0

    return v0
.end method

.method public getBorderOpacity()F
    .locals 1

    .prologue
    .line 220
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->mIsIncognito:Z

    if-eqz v0, :cond_0

    const v0, 0x3ecccccd    # 0.4f

    :goto_0
    return v0

    :cond_0
    const v0, 0x3e4ccccd    # 0.2f

    goto :goto_0
.end method

.method public getBrightness()F
    .locals 1

    .prologue
    .line 180
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->getActiveStripLayoutHelper()Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->getBrightness()F

    move-result v0

    return v0
.end method

.method public getEventFilter()Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->mEventFilter:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/AreaGestureEventFilter;

    return-object v0
.end method

.method public getHeight()F
    .locals 1

    .prologue
    .line 208
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->mHeight:F

    return v0
.end method

.method public getModelSelectorButton()Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->mModelSelectorButton:Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;

    return-object v0
.end method

.method public getNewTabButton()Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;
    .locals 1

    .prologue
    .line 144
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->getActiveStripLayoutHelper()Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->getNewTabButton()Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;

    move-result-object v0

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 216
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->mOrientation:I

    return v0
.end method

.method public getStripLayoutHelper(Z)Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;
    .locals 1

    .prologue
    .line 404
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->mIncognitoHelper:Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->mNormalHelper:Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;

    goto :goto_0
.end method

.method public getUpdatedSceneOverlayTree(Lorg/chromium/chrome/browser/compositor/LayerTitleCache;Lorg/chromium/ui/resources/ResourceManager;F)Lorg/chromium/chrome/browser/compositor/scene_layer/SceneOverlayLayer;
    .locals 6

    .prologue
    .line 117
    sget-boolean v0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->mTabStripTreeProvider:Lorg/chromium/chrome/browser/compositor/scene_layer/TabStripSceneLayer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 119
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->mTabStripTreeProvider:Lorg/chromium/chrome/browser/compositor/scene_layer/TabStripSceneLayer;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->getActiveStripLayoutHelper()Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->getStripLayoutTabsToRender()[Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/chromium/chrome/browser/compositor/scene_layer/TabStripSceneLayer;->pushAndUpdateStrip(Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;Lorg/chromium/chrome/browser/compositor/LayerTitleCache;Lorg/chromium/ui/resources/ResourceManager;[Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;F)V

    .line 121
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->mTabStripTreeProvider:Lorg/chromium/chrome/browser/compositor/scene_layer/TabStripSceneLayer;

    return-object v0
.end method

.method public getVirtualViews(Ljava/util/List;)V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->mModelSelectorButton:Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->mModelSelectorButton:Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->getActiveStripLayoutHelper()Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->getVirtualViews(Ljava/util/List;)V

    .line 155
    return-void
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->mWidth:F

    return v0
.end method

.method public onContextChanged(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->mNormalHelper:Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->onContextChanged(Landroid/content/Context;)V

    .line 229
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->mIncognitoHelper:Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->onContextChanged(Landroid/content/Context;)V

    .line 230
    return-void
.end method

.method public onDown(JFFZI)V
    .locals 9

    .prologue
    .line 352
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->mModelSelectorButton:Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;

    invoke-virtual {v0, p3, p4}, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->onDown(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    :goto_0
    return-void

    .line 353
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->getActiveStripLayoutHelper()Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;

    move-result-object v1

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->onDown(JFFZI)V

    goto :goto_0
.end method

.method public onLongPress(JFF)V
    .locals 1

    .prologue
    .line 363
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->getActiveStripLayoutHelper()Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->onLongPress(JFF)V

    .line 364
    return-void
.end method

.method public onSizeChanged(FFFI)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 132
    iput p1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->mWidth:F

    .line 133
    iput p4, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->mOrientation:I

    .line 134
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->mModelSelectorButton:Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->mWidth:F

    const/high16 v2, 0x41c00000    # 24.0f

    sub-float/2addr v1, v2

    const/high16 v2, 0x40c00000    # 6.0f

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->setX(F)V

    .line 136
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->mNormalHelper:Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->mWidth:F

    iget v2, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->mHeight:F

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->onSizeChanged(FF)V

    .line 137
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->mIncognitoHelper:Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->mWidth:F

    iget v2, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->mHeight:F

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->onSizeChanged(FF)V

    .line 139
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->mStripFilterArea:Landroid/graphics/RectF;

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->mWidth:F

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->getHeight()F

    move-result v2

    invoke-static {v2, p3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 140
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->mEventFilter:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/AreaGestureEventFilter;

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->mStripFilterArea:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/AreaGestureEventFilter;->setEventArea(Landroid/graphics/RectF;)V

    .line 141
    return-void
.end method

.method public onUpOrCancel(J)V
    .locals 3

    .prologue
    .line 389
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->mModelSelectorButton:Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->onUpOrCancel()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    if-eqz v0, :cond_2

    .line 390
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->getActiveStripLayoutHelper()Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->finishAnimation()V

    .line 391
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->mModelSelectorButton:Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 396
    :goto_0
    return-void

    .line 392
    :cond_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->isIncognitoSelected()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-interface {v1, v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->selectModel(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 395
    :cond_2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->getActiveStripLayoutHelper()Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->onUpOrCancel(J)V

    goto :goto_0
.end method

.method public setBrightness(F)V
    .locals 1

    .prologue
    .line 173
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->getActiveStripLayoutHelper()Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->setBrightness(F)V

    .line 174
    return-void
.end method

.method public setTabModelSelector(Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager;Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 193
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    if-ne v0, p1, :cond_0

    .line 200
    :goto_0
    return-void

    .line 194
    :cond_0
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    .line 195
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->mNormalHelper:Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    invoke-interface {v1, v2}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getModel(Z)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v1

    invoke-interface {p2, v2}, Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager;->getTabCreator(Z)Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;

    move-result-object v2

    invoke-virtual {v0, v1, p3, v2}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->setTabModel(Lorg/chromium/chrome/browser/tabmodel/TabModel;Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;)V

    .line 197
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->mIncognitoHelper:Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    invoke-interface {v1, v3}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getModel(Z)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v1

    invoke-interface {p2, v3}, Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager;->getTabCreator(Z)Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;

    move-result-object v2

    invoke-virtual {v0, v1, p3, v2}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->setTabModel(Lorg/chromium/chrome/browser/tabmodel/TabModel;Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;)V

    .line 199
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->isIncognitoSelected()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->tabModelSwitched(Z)V

    goto :goto_0
.end method

.method public shouldHideAndroidTopControls()Z
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method public tabClosed(JZI)V
    .locals 1

    .prologue
    .line 280
    invoke-virtual {p0, p3}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->getStripLayoutHelper(Z)Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p4}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->tabClosed(JI)V

    .line 281
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->updateModelSwitcherButton()V

    .line 282
    return-void
.end method

.method public tabClosureCancelled(JZI)V
    .locals 1

    .prologue
    .line 286
    invoke-virtual {p0, p3}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->getStripLayoutHelper(Z)Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p4}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->tabClosureCancelled(JI)V

    .line 287
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->updateModelSwitcherButton()V

    .line 288
    return-void
.end method

.method public tabCreated(JZIIZ)V
    .locals 7

    .prologue
    .line 292
    invoke-virtual {p0, p3}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->getStripLayoutHelper(Z)Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;

    move-result-object v1

    move-wide v2, p1

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v1 .. v6}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->tabCreated(JIIZ)V

    .line 293
    return-void
.end method

.method public tabLoadFinished(IZ)V
    .locals 1

    .prologue
    .line 312
    invoke-virtual {p0, p2}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->getStripLayoutHelper(Z)Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->tabLoadFinished(I)V

    .line 313
    return-void
.end method

.method public tabLoadStarted(IZ)V
    .locals 1

    .prologue
    .line 307
    invoke-virtual {p0, p2}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->getStripLayoutHelper(Z)Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->tabLoadStarted(I)V

    .line 308
    return-void
.end method

.method public tabModelSwitched(Z)V
    .locals 1

    .prologue
    .line 245
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->mIsIncognito:Z

    if-ne p1, v0, :cond_0

    .line 251
    :goto_0
    return-void

    .line 246
    :cond_0
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->mIsIncognito:Z

    .line 248
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->updateModelSwitcherButton()V

    .line 250
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->mUpdateHost:Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;->requestUpdate()V

    goto :goto_0
.end method

.method public tabMoved(JZIII)V
    .locals 7

    .prologue
    .line 275
    invoke-virtual {p0, p3}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->getStripLayoutHelper(Z)Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;

    move-result-object v1

    move-wide v2, p1

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v1 .. v6}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->tabMoved(JIII)V

    .line 276
    return-void
.end method

.method public tabPageLoadFinished(IZ)V
    .locals 1

    .prologue
    .line 302
    invoke-virtual {p0, p2}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->getStripLayoutHelper(Z)Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->tabPageLoadFinished(I)V

    .line 303
    return-void
.end method

.method public tabPageLoadStarted(IZ)V
    .locals 1

    .prologue
    .line 297
    invoke-virtual {p0, p2}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->getStripLayoutHelper(Z)Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->tabPageLoadStarted(I)V

    .line 298
    return-void
.end method

.method public tabSelected(JZII)V
    .locals 1

    .prologue
    .line 270
    invoke-virtual {p0, p3}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->getStripLayoutHelper(Z)Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p4, p5}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->tabSelected(JII)V

    .line 271
    return-void
.end method

.method public tabStateInitialized()V
    .locals 0

    .prologue
    .line 240
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->updateModelSwitcherButton()V

    .line 241
    return-void
.end method

.method public tabTitleChanged(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 204
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->getActiveStripLayoutHelper()Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->tabTitleChanged(ILjava/lang/String;)V

    .line 205
    return-void
.end method

.method public updateOverlay(JJ)Z
    .locals 1

    .prologue
    .line 234
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->getInactiveStripLayoutHelper()Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->finishAnimation()V

    .line 235
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->getActiveStripLayoutHelper()Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->updateLayout(JJ)Z

    move-result v0

    return v0
.end method
