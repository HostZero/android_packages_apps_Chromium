.class public abstract Lorg/chromium/chrome/browser/compositor/layouts/Layout;
.super Ljava/lang/Object;
.source "Layout.java"

# interfaces
.implements Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager$ThumbnailChangeListener;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final NEED_TITLE:Z = true

.field public static final NO_CLOSE_BUTTON:Z = false

.field public static final NO_TITLE:Z = false

.field public static final SHOW_CLOSE_BUTTON:Z = true

.field public static final UNSTALLED_ANIMATION_DURATION_MS:J = 0x1f4L


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentOrientation:I

.field private mEventFilter:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;

.field private mHeight:F

.field private mHeightMinusTopControls:F

.field private mIsHiding:Z

.field private mLayoutAnimations:Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;

.field protected mLayoutTabs:[Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

.field private mNextTabId:I

.field protected final mRenderHost:Lorg/chromium/chrome/browser/compositor/layouts/LayoutRenderHost;

.field private final mSceneOverlays:Ljava/util/List;

.field protected mTabContentManager:Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

.field protected mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

.field private final mUpdateHost:Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;

.field private mWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;Lorg/chromium/chrome/browser/compositor/layouts/LayoutRenderHost;Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;)V
    .locals 2

    .prologue
    const/high16 v1, -0x40800000    # -1.0f

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mSceneOverlays:Ljava/util/List;

    .line 151
    const/4 v0, -0x1

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mNextTabId:I

    .line 163
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mContext:Landroid/content/Context;

    .line 164
    iput-object p2, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mUpdateHost:Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;

    .line 165
    iput-object p3, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mRenderHost:Lorg/chromium/chrome/browser/compositor/layouts/LayoutRenderHost;

    .line 166
    iput-object p4, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mEventFilter:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;

    .line 169
    iput v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mWidth:F

    .line 170
    iput v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mHeight:F

    .line 171
    iput v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mHeightMinusTopControls:F

    .line 173
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mCurrentOrientation:I

    .line 174
    return-void
.end method


# virtual methods
.method public addSceneOverlay(Lorg/chromium/chrome/browser/compositor/overlays/SceneOverlay;)V
    .locals 1

    .prologue
    .line 184
    sget-boolean v0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mSceneOverlays:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 185
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mSceneOverlays:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    return-void
.end method

.method protected addToAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;FFJJ)V
    .locals 11

    .prologue
    .line 972
    const/4 v10, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    invoke-virtual/range {v1 .. v10}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->addToAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;FFJJZ)V

    .line 973
    return-void
.end method

.method protected addToAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;FFJJZ)V
    .locals 13

    .prologue
    .line 981
    invoke-static {}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;->getDecelerateInterpolator()Landroid/view/animation/DecelerateInterpolator;

    move-result-object v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move/from16 v10, p9

    invoke-virtual/range {v1 .. v11}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->addToAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;FFJJZLandroid/view/animation/Interpolator;)V

    .line 983
    return-void
.end method

.method protected addToAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;FFJJZLandroid/view/animation/Interpolator;)V
    .locals 1

    .prologue
    .line 1003
    invoke-static/range {p1 .. p10}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$AnimatableAnimation;->createAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;FFJJZLandroid/view/animation/Interpolator;)Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;

    move-result-object v0

    .line 1005
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->addToAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;)V

    .line 1006
    return-void
.end method

.method protected addToAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;)V
    .locals 1

    .prologue
    .line 1013
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mLayoutAnimations:Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mLayoutAnimations:Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;->finished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1014
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->onAnimationStarted()V

    .line 1015
    new-instance v0, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mLayoutAnimations:Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;

    .line 1016
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mLayoutAnimations:Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;->start()V

    .line 1018
    :cond_1
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;->start()V

    .line 1019
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mLayoutAnimations:Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;->add(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;)V

    .line 1020
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->requestUpdate()V

    .line 1021
    return-void
.end method

.method public attachViews(Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 528
    return-void
.end method

.method protected cancelAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;)V
    .locals 1

    .prologue
    .line 1036
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mLayoutAnimations:Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;

    if-eqz v0, :cond_0

    .line 1037
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mLayoutAnimations:Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;->cancel(Ljava/lang/Object;Ljava/lang/Enum;)V

    .line 1039
    :cond_0
    return-void
.end method

.method public click(JFF)V
    .locals 0

    .prologue
    .line 706
    return-void
.end method

.method public contextChanged(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 359
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mContext:Landroid/content/Context;

    .line 360
    invoke-static {p1}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->resetDimensionConstants(Landroid/content/Context;)V

    .line 361
    return-void
.end method

.method public createLayoutTab(IZZZ)Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;
    .locals 7

    .prologue
    const/high16 v5, -0x40800000    # -1.0f

    .line 280
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->createLayoutTab(IZZZFF)Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    move-result-object v0

    return-object v0
.end method

.method public createLayoutTab(IZZZFF)Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;
    .locals 7

    .prologue
    .line 297
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mUpdateHost:Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;->createLayoutTab(IZZZFF)Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    move-result-object v0

    .line 299
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->initLayoutTabFromHost(Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;)Z

    .line 300
    return-object v0
.end method

.method public destroy()V
    .locals 0

    .prologue
    .line 192
    return-void
.end method

.method public detachViews()V
    .locals 0

    .prologue
    .line 533
    return-void
.end method

.method public doneHiding()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 494
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mIsHiding:Z

    .line 495
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mNextTabId:I

    if-eq v0, v2, :cond_1

    .line 496
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mNextTabId:I

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getModelForTabId(I)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    .line 497
    if-eqz v0, :cond_0

    .line 498
    iget v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mNextTabId:I

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelUtils;->getTabIndexById(Lorg/chromium/chrome/browser/tabmodel/TabList;I)I

    move-result v1

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelUtils;->setIndex(Lorg/chromium/chrome/browser/tabmodel/TabModel;I)V

    .line 500
    :cond_0
    iput v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mNextTabId:I

    .line 502
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mUpdateHost:Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;->doneHiding()V

    .line 503
    return-void
.end method

.method public doneShowing()V
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mUpdateHost:Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;->doneShowing()V

    .line 487
    return-void
.end method

.method public drag(JFFFF)V
    .locals 0

    .prologue
    .line 670
    return-void
.end method

.method public findInterceptingEventFilter(Landroid/view/MotionEvent;Landroid/graphics/Point;Z)Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;
    .locals 4

    .prologue
    .line 1125
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mSceneOverlays:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 1126
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mSceneOverlays:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/compositor/overlays/SceneOverlay;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/compositor/overlays/SceneOverlay;->getEventFilter()Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;

    move-result-object v0

    .line 1127
    if-eqz p2, :cond_0

    iget v2, p2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, p2, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;->setCurrentMotionEventOffsets(FF)V

    .line 1128
    :cond_0
    invoke-virtual {v0, p1, p3}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;->onInterceptTouchEvent(Landroid/view/MotionEvent;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1135
    :goto_1
    return-object v0

    .line 1125
    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 1131
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mEventFilter:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;

    if-eqz v0, :cond_4

    .line 1132
    if-eqz p2, :cond_3

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mEventFilter:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;

    iget v1, p2, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;->setCurrentMotionEventOffsets(FF)V

    .line 1133
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mEventFilter:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;

    invoke-virtual {v0, p1, p3}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;->onInterceptTouchEvent(Landroid/view/MotionEvent;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mEventFilter:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;

    goto :goto_1

    .line 1135
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public fling(JFFFF)V
    .locals 0

    .prologue
    .line 681
    return-void
.end method

.method protected forceAnimationToFinish()V
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mLayoutAnimations:Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;

    if-eqz v0, :cond_0

    .line 589
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mLayoutAnimations:Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;->updateAndFinish()V

    .line 590
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mLayoutAnimations:Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;

    .line 591
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->onAnimationFinished()V

    .line 593
    :cond_0
    return-void
.end method

.method public forceHideTopControlsAndroidView()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1178
    move v1, v2

    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mSceneOverlays:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 1180
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mSceneOverlays:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/compositor/overlays/SceneOverlay;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/compositor/overlays/SceneOverlay;->shouldHideAndroidTopControls()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    .line 1182
    :cond_0
    return v2

    .line 1178
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public getAllContentViewCores(Ljava/util/List;)V
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getCurrentTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 254
    if-nez v0, :cond_0

    .line 256
    :goto_0
    return-void

    .line 255
    :cond_0
    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/tab/Tab;->getAllContentViewCores(Ljava/util/List;)V

    goto :goto_0
.end method

.method public getAllContentViews(Ljava/util/List;)V
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getCurrentTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 241
    if-nez v0, :cond_0

    .line 243
    :goto_0
    return-void

    .line 242
    :cond_0
    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/tab/Tab;->getAllContentViews(Ljava/util/List;)V

    goto :goto_0
.end method

.method public getAllViews(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 230
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->getAllContentViews(Ljava/util/List;)V

    .line 231
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getHeight()F
    .locals 1

    .prologue
    .line 606
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mHeight:F

    return v0
.end method

.method public getHeightMinusTopControls()F
    .locals 1

    .prologue
    .line 613
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mHeightMinusTopControls:F

    return v0
.end method

.method public getLayoutTab(I)Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;
    .locals 2

    .prologue
    .line 1054
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mLayoutTabs:[Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    if-eqz v0, :cond_1

    .line 1055
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mLayoutTabs:[Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1056
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mLayoutTabs:[Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getId()I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mLayoutTabs:[Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    aget-object v0, v1, v0

    .line 1059
    :goto_1
    return-object v0

    .line 1055
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1059
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getLayoutTabsDrawnCount()I
    .locals 1

    .prologue
    .line 1102
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mRenderHost:Lorg/chromium/chrome/browser/compositor/layouts/LayoutRenderHost;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutRenderHost;->getLayoutTabsDrawnCount()I

    move-result v0

    return v0
.end method

.method public getLayoutTabsToRender()[Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;
    .locals 1

    .prologue
    .line 1046
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mLayoutTabs:[Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 622
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mCurrentOrientation:I

    return v0
.end method

.method protected abstract getSceneLayer()Lorg/chromium/chrome/browser/compositor/scene_layer/SceneLayer;
.end method

.method public getSizingFlags()I
    .locals 1

    .prologue
    .line 444
    const/16 v0, 0x110

    return v0
.end method

.method public getToolbarBrightness()F
    .locals 1

    .prologue
    .line 1189
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getTopControlsOffset(F)F
    .locals 1

    .prologue
    .line 642
    const/high16 v0, 0x7fc00000    # NaNf

    return v0
.end method

.method public final getUpdatedSceneLayer(Landroid/graphics/Rect;Landroid/graphics/Rect;Lorg/chromium/chrome/browser/compositor/LayerTitleCache;Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;Lorg/chromium/ui/resources/ResourceManager;Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;)Lorg/chromium/chrome/browser/compositor/scene_layer/SceneLayer;
    .locals 5

    .prologue
    .line 1153
    invoke-virtual/range {p0 .. p6}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->updateSceneLayer(Landroid/graphics/Rect;Landroid/graphics/Rect;Lorg/chromium/chrome/browser/compositor/LayerTitleCache;Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;Lorg/chromium/ui/resources/ResourceManager;Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;)V

    .line 1156
    if-eqz p6, :cond_1

    invoke-virtual {p6}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->getControlOffset()F

    move-result v0

    .line 1157
    :goto_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 1158
    div-float v1, v0, v1

    .line 1159
    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->getTopControlsOffset(F)F

    move-result v0

    .line 1160
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_0

    move v1, v0

    .line 1162
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->getSceneLayer()Lorg/chromium/chrome/browser/compositor/scene_layer/SceneLayer;

    move-result-object v2

    .line 1163
    const/4 v0, 0x0

    move-object v3, v2

    move v2, v0

    :goto_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mSceneOverlays:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 1164
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mSceneOverlays:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/compositor/overlays/SceneOverlay;

    invoke-interface {v0, p3, p5, v1}, Lorg/chromium/chrome/browser/compositor/overlays/SceneOverlay;->getUpdatedSceneOverlayTree(Lorg/chromium/chrome/browser/compositor/LayerTitleCache;Lorg/chromium/ui/resources/ResourceManager;F)Lorg/chromium/chrome/browser/compositor/scene_layer/SceneOverlayLayer;

    move-result-object v4

    .line 1167
    invoke-virtual {v4, v3}, Lorg/chromium/chrome/browser/compositor/scene_layer/SceneOverlayLayer;->setContentTree(Lorg/chromium/chrome/browser/compositor/scene_layer/SceneLayer;)V

    .line 1163
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-object v3, v4

    goto :goto_1

    .line 1156
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1171
    :cond_2
    return-object v3
.end method

.method public getViewForInteraction()Landroid/view/View;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 214
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->shouldDisplayContentOverlay()Z

    move-result v1

    if-nez v1, :cond_1

    .line 219
    :cond_0
    :goto_0
    return-object v0

    .line 216
    :cond_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    invoke-interface {v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getCurrentTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v1

    .line 217
    if-eqz v1, :cond_0

    .line 219
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->getView()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getVirtualViews(Ljava/util/List;)V
    .locals 2

    .prologue
    .line 265
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mSceneOverlays:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 266
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mSceneOverlays:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/compositor/overlays/SceneOverlay;

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/compositor/overlays/SceneOverlay;->getVirtualViews(Ljava/util/List;)V

    .line 265
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 268
    :cond_0
    return-void
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 599
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mWidth:F

    return v0
.end method

.method public handlesCloseAll()Z
    .locals 1

    .prologue
    .line 1080
    const/4 v0, 0x0

    return v0
.end method

.method public handlesTabClosing()Z
    .locals 1

    .prologue
    .line 1066
    const/4 v0, 0x0

    return v0
.end method

.method public handlesTabCreating()Z
    .locals 1

    .prologue
    .line 1073
    const/4 v0, 0x0

    return v0
.end method

.method protected initLayoutTabFromHost(Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;)Z
    .locals 2

    .prologue
    .line 655
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->isInitFromHostNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 656
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mUpdateHost:Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;->initLayoutTabFromHost(I)V

    .line 657
    const/4 v0, 0x1

    .line 659
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mUpdateHost:Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;

    invoke-interface {v0, p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;->isActiveLayout(Lorg/chromium/chrome/browser/compositor/layouts/Layout;)Z

    move-result v0

    return v0
.end method

.method public isHiding()Z
    .locals 1

    .prologue
    .line 472
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mIsHiding:Z

    return v0
.end method

.method public isLayoutAnimating()Z
    .locals 1

    .prologue
    .line 950
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mLayoutAnimations:Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mLayoutAnimations:Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;->finished()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTabInteractive()Z
    .locals 1

    .prologue
    .line 1094
    const/4 v0, 0x0

    return v0
.end method

.method public isTabStripEventFilterEnabled()Z
    .locals 1

    .prologue
    .line 1196
    const/4 v0, 0x1

    return v0
.end method

.method protected notifySizeChanged(FFI)V
    .locals 0

    .prologue
    .line 412
    return-void
.end method

.method protected onAnimationFinished()V
    .locals 0

    .prologue
    .line 963
    return-void
.end method

.method protected onAnimationStarted()V
    .locals 0

    .prologue
    .line 957
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 741
    const/4 v0, 0x0

    return v0
.end method

.method public onDown(JFF)V
    .locals 0

    .prologue
    .line 690
    return-void
.end method

.method public onLongPress(JFF)V
    .locals 0

    .prologue
    .line 698
    return-void
.end method

.method public onPinch(JFFFFZ)V
    .locals 0

    .prologue
    .line 723
    return-void
.end method

.method public onTabClosed(JIIZ)V
    .locals 3

    .prologue
    .line 776
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mSceneOverlays:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 777
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mSceneOverlays:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/compositor/overlays/SceneOverlay;

    invoke-interface {v0, p1, p2, p5, p3}, Lorg/chromium/chrome/browser/compositor/overlays/SceneOverlay;->tabClosed(JZI)V

    .line 776
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 779
    :cond_0
    return-void
.end method

.method public onTabClosing(JI)V
    .locals 0

    .prologue
    .line 765
    return-void
.end method

.method public onTabClosureCancelled(JIZ)V
    .locals 3

    .prologue
    .line 902
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mSceneOverlays:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 903
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mSceneOverlays:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/compositor/overlays/SceneOverlay;

    invoke-interface {v0, p1, p2, p4, p3}, Lorg/chromium/chrome/browser/compositor/overlays/SceneOverlay;->tabClosureCancelled(JZI)V

    .line 902
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 905
    :cond_0
    return-void
.end method

.method public onTabClosureCommitted(JIZ)V
    .locals 0

    .prologue
    .line 913
    return-void
.end method

.method public onTabCreated(JIIIZZFF)V
    .locals 9

    .prologue
    .line 812
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mSceneOverlays:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 813
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mSceneOverlays:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/chrome/browser/compositor/overlays/SceneOverlay;

    if-nez p7, :cond_0

    const/4 v7, 0x1

    :goto_1
    move-wide v2, p1

    move v4, p6

    move v5, p3

    move v6, p5

    invoke-interface/range {v1 .. v7}, Lorg/chromium/chrome/browser/compositor/overlays/SceneOverlay;->tabCreated(JZIIZ)V

    .line 812
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 813
    :cond_0
    const/4 v7, 0x0

    goto :goto_1

    .line 815
    :cond_1
    return-void
.end method

.method public onTabCreating(I)V
    .locals 0

    .prologue
    .line 795
    return-void
.end method

.method public onTabLoadFinished(IZ)V
    .locals 2

    .prologue
    .line 890
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mSceneOverlays:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 891
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mSceneOverlays:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/compositor/overlays/SceneOverlay;

    invoke-interface {v0, p1, p2}, Lorg/chromium/chrome/browser/compositor/overlays/SceneOverlay;->tabLoadFinished(IZ)V

    .line 890
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 893
    :cond_0
    return-void
.end method

.method public onTabLoadStarted(IZ)V
    .locals 2

    .prologue
    .line 879
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mSceneOverlays:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 880
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mSceneOverlays:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/compositor/overlays/SceneOverlay;

    invoke-interface {v0, p1, p2}, Lorg/chromium/chrome/browser/compositor/overlays/SceneOverlay;->tabLoadStarted(IZ)V

    .line 879
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 882
    :cond_0
    return-void
.end method

.method public onTabModelSwitched(Z)V
    .locals 2

    .prologue
    .line 832
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mSceneOverlays:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 833
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mSceneOverlays:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/compositor/overlays/SceneOverlay;

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/compositor/overlays/SceneOverlay;->tabModelSwitched(Z)V

    .line 832
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 835
    :cond_0
    return-void
.end method

.method public onTabMoved(JIIIZ)V
    .locals 9

    .prologue
    .line 846
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mSceneOverlays:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 847
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mSceneOverlays:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/chrome/browser/compositor/overlays/SceneOverlay;

    move-wide v2, p1

    move v4, p6

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-interface/range {v1 .. v7}, Lorg/chromium/chrome/browser/compositor/overlays/SceneOverlay;->tabMoved(JZIII)V

    .line 846
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 849
    :cond_0
    return-void
.end method

.method public onTabPageLoadFinished(IZ)V
    .locals 2

    .prologue
    .line 868
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mSceneOverlays:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 869
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mSceneOverlays:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/compositor/overlays/SceneOverlay;

    invoke-interface {v0, p1, p2}, Lorg/chromium/chrome/browser/compositor/overlays/SceneOverlay;->tabPageLoadFinished(IZ)V

    .line 868
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 871
    :cond_0
    return-void
.end method

.method public onTabPageLoadStarted(IZ)V
    .locals 2

    .prologue
    .line 857
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mSceneOverlays:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 858
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mSceneOverlays:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/compositor/overlays/SceneOverlay;

    invoke-interface {v0, p1, p2}, Lorg/chromium/chrome/browser/compositor/overlays/SceneOverlay;->tabPageLoadStarted(IZ)V

    .line 857
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 860
    :cond_0
    return-void
.end method

.method public onTabSelected(JIIZ)V
    .locals 7

    .prologue
    .line 753
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mSceneOverlays:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 754
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mSceneOverlays:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/chrome/browser/compositor/overlays/SceneOverlay;

    move-wide v2, p1

    move v4, p5

    move v5, p3

    move v6, p4

    invoke-interface/range {v1 .. v6}, Lorg/chromium/chrome/browser/compositor/overlays/SceneOverlay;->tabSelected(JZII)V

    .line 753
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 756
    :cond_0
    return-void
.end method

.method public onTabSelecting(JI)V
    .locals 1

    .prologue
    .line 511
    const/4 v0, 0x1

    invoke-virtual {p0, p3, v0}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->startHiding(IZ)V

    .line 512
    return-void
.end method

.method public onTabStateInitialized()V
    .locals 2

    .prologue
    .line 821
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mSceneOverlays:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 822
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mSceneOverlays:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/compositor/overlays/SceneOverlay;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/compositor/overlays/SceneOverlay;->tabStateInitialized()V

    .line 821
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 824
    :cond_0
    return-void
.end method

.method public onTabsAllClosing(JZ)V
    .locals 0

    .prologue
    .line 788
    return-void
.end method

.method public onThumbnailChange(I)V
    .locals 0

    .prologue
    .line 917
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->requestUpdate()V

    .line 918
    return-void
.end method

.method public onUpOrCancel(J)V
    .locals 0

    .prologue
    .line 712
    return-void
.end method

.method public final onUpdate(JJ)Z
    .locals 3

    .prologue
    .line 318
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->onUpdateAnimation(JZ)Z

    move-result v0

    .line 321
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mUpdateHost:Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;

    invoke-interface {v1, p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;->isActiveLayout(Lorg/chromium/chrome/browser/compositor/layouts/Layout;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->updateLayout(JJ)V

    .line 323
    :cond_0
    return v0
.end method

.method protected onUpdateAnimation(JZ)Z
    .locals 3

    .prologue
    .line 927
    const/4 v0, 0x1

    .line 928
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mLayoutAnimations:Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;

    if-eqz v1, :cond_2

    .line 929
    if-eqz p3, :cond_3

    .line 930
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mLayoutAnimations:Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;->finished()Z

    move-result v0

    .line 931
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mLayoutAnimations:Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;->updateAndFinish()V

    .line 936
    :goto_0
    if-nez v0, :cond_0

    if-eqz p3, :cond_1

    .line 937
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mLayoutAnimations:Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;

    .line 938
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->onAnimationFinished()V

    .line 940
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->requestUpdate()V

    .line 942
    :cond_2
    return v0

    .line 933
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mLayoutAnimations:Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;->update(J)Z

    move-result v0

    goto :goto_0
.end method

.method public releaseTabLayout(Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;)V
    .locals 2

    .prologue
    .line 308
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mUpdateHost:Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;->releaseTabLayout(I)V

    .line 309
    return-void
.end method

.method public requestRender()V
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mRenderHost:Lorg/chromium/chrome/browser/compositor/layouts/LayoutRenderHost;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutRenderHost;->requestRender()V

    .line 343
    return-void
.end method

.method public requestUpdate()V
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mUpdateHost:Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;->requestUpdate()V

    .line 351
    return-void
.end method

.method public setTabModelSelector(Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;)V
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mTabContentManager:Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mTabContentManager:Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->removeThumbnailChangeListener(Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager$ThumbnailChangeListener;)V

    .line 435
    :cond_0
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    .line 436
    iput-object p2, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mTabContentManager:Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

    .line 437
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mTabContentManager:Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mTabContentManager:Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->addThumbnailChangeListener(Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager$ThumbnailChangeListener;)V

    .line 438
    :cond_1
    return-void
.end method

.method public shouldDisplayContentOverlay()Z
    .locals 1

    .prologue
    .line 1087
    const/4 v0, 0x0

    return v0
.end method

.method public show(JZ)V
    .locals 1

    .prologue
    .line 520
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mIsHiding:Z

    .line 521
    const/4 v0, -0x1

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mNextTabId:I

    .line 522
    return-void
.end method

.method public final sizeChanged(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;FI)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 379
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    .line 380
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v3

    .line 383
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mWidth:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mHeight:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_0

    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mHeightMinusTopControls:F

    cmpl-float v0, v0, p4

    if-nez v0, :cond_0

    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mCurrentOrientation:I

    if-eq v0, p5, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 389
    :goto_0
    iput v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mWidth:F

    .line 390
    iput v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mHeight:F

    .line 391
    iput p4, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mHeightMinusTopControls:F

    .line 392
    iput p5, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mCurrentOrientation:I

    .line 395
    if-eqz v0, :cond_1

    .line 396
    invoke-virtual {p0, v2, v3, p5}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->notifySizeChanged(FFI)V

    .line 400
    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mSceneOverlays:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 401
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mSceneOverlays:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/compositor/overlays/SceneOverlay;

    iget v4, p2, Landroid/graphics/RectF;->top:F

    invoke-interface {v0, v2, v3, v4, p5}, Lorg/chromium/chrome/browser/compositor/overlays/SceneOverlay;->onSizeChanged(FFFI)V

    .line 400
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 383
    goto :goto_0

    .line 403
    :cond_3
    return-void
.end method

.method public startHiding(IZ)V
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mUpdateHost:Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;

    invoke-interface {v0, p1, p2}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;->startHiding(IZ)V

    .line 464
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mIsHiding:Z

    .line 465
    iput p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mNextTabId:I

    .line 466
    return-void
.end method

.method public swipeFinished(J)V
    .locals 0

    .prologue
    .line 562
    return-void
.end method

.method public swipeFlingOccurred(JFFFFFF)V
    .locals 0

    .prologue
    .line 582
    return-void
.end method

.method public swipeStarted(JLorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;FF)V
    .locals 0

    .prologue
    .line 542
    return-void
.end method

.method public swipeUpdated(JFFFFFF)V
    .locals 0

    .prologue
    .line 555
    return-void
.end method

.method public tabTitleChanged(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 421
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mSceneOverlays:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 422
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mSceneOverlays:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/compositor/overlays/SceneOverlay;

    invoke-interface {v0, p1, p2}, Lorg/chromium/chrome/browser/compositor/overlays/SceneOverlay;->tabTitleChanged(ILjava/lang/String;)V

    .line 421
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 424
    :cond_0
    return-void
.end method

.method public unstallImmediately()V
    .locals 0

    .prologue
    .line 728
    return-void
.end method

.method public unstallImmediately(I)V
    .locals 0

    .prologue
    .line 734
    return-void
.end method

.method protected updateCacheVisibleIds(Ljava/util/List;)V
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mTabContentManager:Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mTabContentManager:Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->updateVisibleIds(Ljava/util/List;)V

    .line 453
    :cond_0
    return-void
.end method

.method protected updateLayout(JJ)V
    .locals 3

    .prologue
    .line 332
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mSceneOverlays:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 333
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->mSceneOverlays:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/compositor/overlays/SceneOverlay;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/chromium/chrome/browser/compositor/overlays/SceneOverlay;->updateOverlay(JJ)Z

    .line 332
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 335
    :cond_0
    return-void
.end method

.method protected updateSceneLayer(Landroid/graphics/Rect;Landroid/graphics/Rect;Lorg/chromium/chrome/browser/compositor/LayerTitleCache;Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;Lorg/chromium/ui/resources/ResourceManager;Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;)V
    .locals 0

    .prologue
    .line 1214
    return-void
.end method
