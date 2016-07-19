.class public Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;
.super Lorg/chromium/chrome/browser/compositor/layouts/Layout;
.source "ToolbarSwipeLayout.java"

# interfaces
.implements Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mCommitDistanceFromEdge:F

.field private final mEdgeInterpolator:Landroid/view/animation/Interpolator;

.field private mFromTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

.field private mLeftTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

.field private mMoveToolbar:Z

.field private mOffset:F

.field private mOffsetStart:F

.field private mOffsetTarget:F

.field private mRightTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

.field private final mSceneLayer:Lorg/chromium/chrome/browser/compositor/scene_layer/TabListSceneLayer;

.field private final mSpaceBetweenTabs:F

.field private mToTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;Lorg/chromium/chrome/browser/compositor/layouts/LayoutRenderHost;Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;)V
    .locals 3

    .prologue
    .line 84
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;-><init>(Landroid/content/Context;Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;Lorg/chromium/chrome/browser/compositor/layouts/LayoutRenderHost;Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;)V

    .line 74
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->mEdgeInterpolator:Landroid/view/animation/Interpolator;

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 86
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    .line 87
    sget v2, Lorg/chromium/chrome/R$dimen;->toolbar_swipe_commit_distance:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    mul-float/2addr v2, v1

    iput v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->mCommitDistanceFromEdge:F

    .line 88
    sget v2, Lorg/chromium/chrome/R$dimen;->toolbar_swipe_space_between_tabs:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->mSpaceBetweenTabs:F

    .line 89
    new-instance v0, Lorg/chromium/chrome/browser/compositor/scene_layer/TabListSceneLayer;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/compositor/scene_layer/TabListSceneLayer;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->mSceneLayer:Lorg/chromium/chrome/browser/compositor/scene_layer/TabListSceneLayer;

    .line 90
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 320
    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->mLayoutTabs:[Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    .line 321
    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->mFromTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    .line 322
    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->mLeftTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    .line 323
    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->mRightTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    .line 324
    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->mToTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    .line 325
    iput v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->mOffsetStart:F

    .line 326
    iput v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->mOffset:F

    .line 327
    iput v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->mOffsetTarget:F

    .line 328
    return-void
.end method

.method private prepareLayoutTabForSwipe(Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;Z)V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 182
    sget-boolean v0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 183
    :cond_0
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->shouldStall()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v1}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setSaturation(F)V

    .line 184
    :cond_1
    invoke-virtual {p1, v2}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setScale(F)V

    .line 185
    invoke-virtual {p1, v2}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setBorderScale(F)V

    .line 186
    invoke-virtual {p1, v1}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setDecorationAlpha(F)V

    .line 187
    invoke-virtual {p1, v1}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setY(F)V

    .line 188
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->mMoveToolbar:Z

    invoke-virtual {p1, v0}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setShowToolbar(Z)V

    .line 189
    if-eqz p2, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setAnonymizeToolbar(Z)V

    .line 190
    return-void

    .line 189
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private smoothInput(FF)F
    .locals 2

    .prologue
    const/high16 v1, 0x41f00000    # 30.0f

    .line 315
    sub-float v0, p2, v1

    add-float/2addr v1, p2

    invoke-static {p1, v0, v1}, Lorg/chromium/chrome/browser/util/MathUtils;->clamp(FFF)F

    move-result v0

    .line 316
    const v1, 0x3f4ccccd    # 0.8f

    invoke-static {v0, p2, v1}, Lorg/chromium/chrome/browser/util/MathUtils;->interpolate(FFF)F

    move-result v0

    return v0
.end method


# virtual methods
.method protected getSceneLayer()Lorg/chromium/chrome/browser/compositor/scene_layer/SceneLayer;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->mSceneLayer:Lorg/chromium/chrome/browser/compositor/scene_layer/TabListSceneLayer;

    return-object v0
.end method

.method public getSizingFlags()I
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->mMoveToolbar:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x110

    goto :goto_0
.end method

.method public bridge synthetic onPropertyAnimationFinished(Ljava/lang/Enum;)V
    .locals 0

    .prologue
    .line 36
    check-cast p1, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout$Property;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->onPropertyAnimationFinished(Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout$Property;)V

    return-void
.end method

.method public onPropertyAnimationFinished(Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout$Property;)V
    .locals 0

    .prologue
    .line 344
    return-void
.end method

.method public setMovesToolbar(Z)V
    .locals 0

    .prologue
    .line 97
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->mMoveToolbar:Z

    .line 98
    return-void
.end method

.method public bridge synthetic setProperty(Ljava/lang/Enum;F)V
    .locals 0

    .prologue
    .line 36
    check-cast p1, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout$Property;

    invoke-virtual {p0, p1, p2}, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->setProperty(Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout$Property;F)V

    return-void
.end method

.method public setProperty(Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout$Property;F)V
    .locals 1

    .prologue
    .line 337
    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout$Property;->OFFSET:Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout$Property;

    if-ne p1, v0, :cond_0

    .line 338
    iput p2, p0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->mOffset:F

    .line 339
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->mOffset:F

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->mOffsetTarget:F

    .line 341
    :cond_0
    return-void
.end method

.method public show(JZ)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 108
    invoke-super {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->show(JZ)V

    .line 109
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->init()V

    .line 110
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    if-nez v0, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getCurrentTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 112
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->isNativePage()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->mTabContentManager:Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->cacheTabThumbnail(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 114
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getCurrentModel()Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    .line 115
    if-eqz v0, :cond_0

    .line 116
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    invoke-interface {v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getCurrentTabId()I

    move-result v1

    .line 117
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 118
    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->isIncognito()Z

    move-result v0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v3, v2}, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->createLayoutTab(IZZZ)Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->mFromTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    .line 119
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->mFromTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    invoke-direct {p0, v0, v3}, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->prepareLayoutTabForSwipe(Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;Z)V

    goto :goto_0
.end method

.method public swipeFinished(J)V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v5, 0x0

    .line 211
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->mFromTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    if-nez v0, :cond_1

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->mCommitDistanceFromEdge:F

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->getWidth()F

    move-result v1

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 216
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->mFromTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    iput-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->mToTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    .line 217
    iget v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->mOffsetTarget:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_5

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->mLeftTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    if-eqz v1, :cond_5

    .line 218
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->mLeftTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->mToTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    .line 219
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->getWidth()F

    move-result v0

    add-float/2addr v5, v0

    .line 225
    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->mToTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->mFromTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    if-eq v0, v1, :cond_3

    .line 226
    const-string/jumbo v0, "MobileSideSwipeFinished"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 229
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->mToTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getId()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->startHiding(IZ)V

    .line 232
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->forceAnimationToFinish()V

    .line 233
    iget v4, p0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->mOffsetTarget:F

    .line 235
    const/high16 v0, 0x43fa0000    # 500.0f

    sub-float v1, v4, v5

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->getWidth()F

    move-result v1

    div-float/2addr v0, v1

    float-to-long v6, v0

    .line 236
    cmp-long v0, v6, v8

    if-lez v0, :cond_4

    .line 237
    sget-object v3, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout$Property;->OFFSET:Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout$Property;

    move-object v1, p0

    move-object v2, p0

    invoke-virtual/range {v1 .. v9}, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->addToAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;FFJJ)V

    .line 240
    :cond_4
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->requestRender()V

    goto :goto_0

    .line 220
    :cond_5
    iget v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->mOffsetTarget:F

    neg-float v0, v0

    cmpg-float v0, v1, v0

    if-gez v0, :cond_2

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->mRightTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    if-eqz v0, :cond_2

    .line 221
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->mRightTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->mToTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    .line 222
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->getWidth()F

    move-result v0

    sub-float/2addr v5, v0

    goto :goto_1
.end method

.method public swipeFlingOccurred(JFFFFFF)V
    .locals 11

    .prologue
    .line 202
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->getWidth()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    .line 203
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->getHeight()F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    .line 204
    const v2, 0x3d088889

    mul-float v2, v2, p7

    neg-float v3, v0

    invoke-static {v2, v3, v0}, Lorg/chromium/chrome/browser/util/MathUtils;->clamp(FFF)F

    move-result v0

    .line 205
    const v2, 0x3d088889

    mul-float v2, v2, p8

    neg-float v3, v1

    invoke-static {v2, v3, v1}, Lorg/chromium/chrome/browser/util/MathUtils;->clamp(FFF)F

    move-result v1

    .line 206
    const/4 v6, 0x0

    const/4 v7, 0x0

    add-float v8, p5, v0

    add-float v9, p6, v1

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v9}, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->swipeUpdated(JFFFFFF)V

    .line 207
    return-void
.end method

.method public swipeStarted(JLorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;FF)V
    .locals 10

    .prologue
    .line 124
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->mToTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    if-nez v0, :cond_0

    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;->DOWN:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;

    if-ne p3, v0, :cond_1

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;->RIGHT:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;

    if-ne p3, v0, :cond_4

    const/4 v0, 0x1

    .line 130
    :goto_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->forceAnimationToFinish()V

    .line 133
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    invoke-interface {v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getCurrentModel()Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v4

    .line 134
    if-eqz v4, :cond_0

    .line 135
    invoke-interface {v4}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->index()I

    move-result v2

    .line 136
    const/4 v1, -0x1

    if-eq v2, v1, :cond_0

    .line 139
    invoke-static {}, Lorg/chromium/ui/base/LocalizationUtils;->isLayoutRtl()Z

    move-result v1

    xor-int/2addr v1, v0

    if-eqz v1, :cond_5

    add-int/lit8 v1, v2, -0x1

    .line 141
    :goto_2
    if-eqz v0, :cond_6

    move v3, v1

    .line 142
    :goto_3
    if-nez v0, :cond_7

    .line 144
    :goto_4
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 145
    if-ltz v3, :cond_2

    invoke-interface {v4}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->getCount()I

    move-result v6

    if-ge v3, v6, :cond_2

    .line 146
    invoke-interface {v4, v3}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->getTabAt(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v6

    invoke-virtual {v6}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v6

    .line 147
    invoke-interface {v4}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->isIncognito()Z

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {p0, v6, v7, v8, v9}, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->createLayoutTab(IZZZ)Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    move-result-object v7

    iput-object v7, p0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->mLeftTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    .line 148
    iget-object v7, p0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->mLeftTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    if-eq v3, v2, :cond_8

    const/4 v3, 0x1

    :goto_5
    invoke-direct {p0, v7, v3}, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->prepareLayoutTabForSwipe(Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;Z)V

    .line 149
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    :cond_2
    if-ltz v1, :cond_3

    invoke-interface {v4}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 152
    invoke-interface {v4, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->getTabAt(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v3

    .line 153
    invoke-interface {v4}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->isIncognito()Z

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {p0, v3, v4, v6, v7}, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->createLayoutTab(IZZZ)Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    move-result-object v4

    iput-object v4, p0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->mRightTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    .line 155
    iget-object v4, p0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->mRightTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    if-eq v1, v2, :cond_9

    const/4 v1, 0x1

    :goto_6
    invoke-direct {p0, v4, v1}, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->prepareLayoutTabForSwipe(Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;Z)V

    .line 156
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    :cond_3
    invoke-virtual {p0, v5}, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->updateCacheVisibleIds(Ljava/util/List;)V

    .line 161
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->mToTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    .line 164
    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_7
    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->mOffsetStart:F

    .line 165
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->mOffset:F

    .line 166
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->mOffsetTarget:F

    .line 168
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->mLeftTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->mRightTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    if-eqz v0, :cond_b

    .line 169
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->mLeftTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->mRightTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->mLayoutTabs:[Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    .line 178
    :goto_8
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->requestUpdate()V

    goto/16 :goto_0

    .line 128
    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 139
    :cond_5
    add-int/lit8 v1, v2, 0x1

    goto/16 :goto_2

    :cond_6
    move v3, v2

    .line 141
    goto/16 :goto_3

    :cond_7
    move v1, v2

    .line 142
    goto/16 :goto_4

    .line 148
    :cond_8
    const/4 v3, 0x0

    goto :goto_5

    .line 155
    :cond_9
    const/4 v1, 0x0

    goto :goto_6

    .line 164
    :cond_a
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->getWidth()F

    move-result v0

    goto :goto_7

    .line 170
    :cond_b
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->mLeftTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    if-eqz v0, :cond_c

    .line 171
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->mLeftTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->mLayoutTabs:[Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    goto :goto_8

    .line 172
    :cond_c
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->mRightTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    if-eqz v0, :cond_d

    .line 173
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->mRightTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->mLayoutTabs:[Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    goto :goto_8

    .line 175
    :cond_d
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->mLayoutTabs:[Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    goto :goto_8
.end method

.method public swipeUpdated(JFFFFFF)V
    .locals 3

    .prologue
    .line 194
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->mOffsetStart:F

    add-float/2addr v0, p7

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->getWidth()F

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/chromium/chrome/browser/util/MathUtils;->clamp(FFF)F

    move-result v0

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->mOffsetStart:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->mOffsetTarget:F

    .line 195
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->requestUpdate()V

    .line 196
    return-void
.end method

.method protected updateLayout(JJ)V
    .locals 9

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 250
    invoke-super {p0, p1, p2, p3, p4}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->updateLayout(JJ)V

    .line 252
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->mFromTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    if-nez v0, :cond_1

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->mLeftTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->mRightTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->mFromTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->mRightTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    .line 256
    :cond_2
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->mOffset:F

    iget v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->mOffsetTarget:F

    invoke-direct {p0, v0, v3}, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->smoothInput(FF)F

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->mOffset:F

    .line 257
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->mOffset:F

    iget v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->mOffsetTarget:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v3, 0x3dcccccd    # 0.1f

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_7

    move v0, v1

    .line 262
    :goto_1
    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->mLeftTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    if-eqz v3, :cond_8

    move v3, v1

    :goto_2
    iget-object v6, p0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->mRightTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    if-eqz v6, :cond_9

    move v6, v1

    :goto_3
    xor-int/2addr v3, v6

    .line 264
    if-eqz v3, :cond_a

    .line 265
    iget v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->mOffset:F

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->getWidth()F

    move-result v4

    div-float/2addr v3, v4

    .line 266
    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v4

    .line 267
    iget-object v5, p0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->mEdgeInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-interface {v5, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    .line 269
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->getWidth()F

    move-result v5

    const/high16 v6, 0x40a00000    # 5.0f

    div-float/2addr v5, v6

    .line 270
    mul-float/2addr v3, v4

    mul-float/2addr v3, v5

    move v4, v3

    .line 290
    :goto_4
    iget-object v5, p0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->mLeftTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    if-eqz v5, :cond_4

    .line 291
    iget-object v5, p0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->mLeftTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    invoke-virtual {v5, v3}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setX(F)V

    .line 292
    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->mLeftTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    invoke-virtual {v3, p3, p4}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->updateSnap(J)Z

    move-result v3

    if-nez v3, :cond_3

    if-eqz v0, :cond_e

    :cond_3
    move v0, v1

    .line 295
    :cond_4
    :goto_5
    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->mRightTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    if-eqz v3, :cond_f

    .line 296
    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->mRightTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    invoke-virtual {v3, v4}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setX(F)V

    .line 297
    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->mRightTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    invoke-virtual {v3, p3, p4}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->updateSnap(J)Z

    move-result v3

    if-nez v3, :cond_5

    if-eqz v0, :cond_6

    :cond_5
    move v2, v1

    .line 299
    :cond_6
    :goto_6
    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->requestUpdate()V

    goto/16 :goto_0

    :cond_7
    move v0, v2

    .line 257
    goto :goto_1

    :cond_8
    move v3, v2

    .line 262
    goto :goto_2

    :cond_9
    move v6, v2

    goto :goto_3

    .line 273
    :cond_a
    iget v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->mOffset:F

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->getWidth()F

    move-result v6

    div-float v6, v3, v6

    .line 274
    iget v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->mOffsetStart:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_b

    move v3, v4

    :goto_7
    add-float/2addr v3, v6

    .line 275
    invoke-static {v3, v4, v5}, Lorg/chromium/chrome/browser/util/MathUtils;->clamp(FFF)F

    move-result v3

    .line 277
    sget-boolean v5, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->$assertionsDisabled:Z

    if-nez v5, :cond_c

    iget-object v5, p0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->mLeftTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    if-nez v5, :cond_c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_b
    move v3, v5

    .line 274
    goto :goto_7

    .line 278
    :cond_c
    sget-boolean v5, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->$assertionsDisabled:Z

    if-nez v5, :cond_d

    iget-object v5, p0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->mRightTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    if-nez v5, :cond_d

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 279
    :cond_d
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->getWidth()F

    move-result v5

    iget v6, p0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->mSpaceBetweenTabs:F

    add-float/2addr v5, v6

    invoke-static {v4, v5, v3}, Lorg/chromium/chrome/browser/util/MathUtils;->interpolate(FFF)F

    move-result v3

    .line 281
    iget v4, p0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->mSpaceBetweenTabs:F

    sub-float v4, v3, v4

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->getWidth()F

    move-result v5

    iget-object v6, p0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->mLeftTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    invoke-virtual {v6}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getOriginalContentWidth()F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    sub-float v5, v4, v5

    .line 285
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->getWidth()F

    move-result v4

    div-float v6, v4, v7

    .line 286
    iget-object v4, p0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->mRightTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    invoke-virtual {v4}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getFinalContentWidth()F

    move-result v4

    div-float/2addr v4, v7

    sub-float v4, v6, v4

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 287
    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->mLeftTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getFinalContentWidth()F

    move-result v3

    div-float/2addr v3, v7

    sub-float v3, v6, v3

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    goto/16 :goto_4

    :cond_e
    move v0, v2

    .line 292
    goto/16 :goto_5

    :cond_f
    move v2, v0

    goto/16 :goto_6
.end method

.method protected updateSceneLayer(Landroid/graphics/Rect;Landroid/graphics/Rect;Lorg/chromium/chrome/browser/compositor/LayerTitleCache;Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;Lorg/chromium/ui/resources/ResourceManager;Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;)V
    .locals 8

    .prologue
    .line 355
    invoke-super/range {p0 .. p6}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->updateSceneLayer(Landroid/graphics/Rect;Landroid/graphics/Rect;Lorg/chromium/chrome/browser/compositor/LayerTitleCache;Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;Lorg/chromium/ui/resources/ResourceManager;Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;)V

    .line 357
    sget-boolean v0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->mSceneLayer:Lorg/chromium/chrome/browser/compositor/scene_layer/TabListSceneLayer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 358
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->mSceneLayer:Lorg/chromium/chrome/browser/compositor/scene_layer/TabListSceneLayer;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p0

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lorg/chromium/chrome/browser/compositor/scene_layer/TabListSceneLayer;->pushLayers(Landroid/content/Context;Landroid/graphics/Rect;Landroid/graphics/Rect;Lorg/chromium/chrome/browser/compositor/layouts/Layout;Lorg/chromium/chrome/browser/compositor/LayerTitleCache;Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;Lorg/chromium/ui/resources/ResourceManager;)V

    .line 360
    return-void
.end method
