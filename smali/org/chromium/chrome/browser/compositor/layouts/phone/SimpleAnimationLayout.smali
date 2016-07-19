.class public Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;
.super Lorg/chromium/chrome/browser/compositor/layouts/Layout;
.source "SimpleAnimationLayout.java"

# interfaces
.implements Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field protected static final FOREGROUND_ANIMATION_DURATION:I = 0x12c

.field protected static final TAB_CLOSED_ANIMATION_DURATION:I = 0xfa


# instance fields
.field private mAnimatedTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

.field private mClosedTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

.field private final mSceneLayer:Lorg/chromium/chrome/browser/compositor/scene_layer/TabListSceneLayer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;Lorg/chromium/chrome/browser/compositor/layouts/LayoutRenderHost;Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;)V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;-><init>(Landroid/content/Context;Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;Lorg/chromium/chrome/browser/compositor/layouts/LayoutRenderHost;Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;)V

    .line 80
    new-instance v0, Lorg/chromium/chrome/browser/compositor/scene_layer/TabListSceneLayer;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/compositor/scene_layer/TabListSceneLayer;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->mSceneLayer:Lorg/chromium/chrome/browser/compositor/scene_layer/TabListSceneLayer;

    .line 81
    return-void
.end method

.method private ensureSourceTabCreated(I)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 133
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->mLayoutTabs:[Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->mLayoutTabs:[Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    array-length v0, v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->mLayoutTabs:[Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getId()I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getModelForTabId(I)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    .line 139
    if-eqz v0, :cond_0

    .line 140
    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->isIncognito()Z

    move-result v0

    invoke-virtual {p0, p1, v0, v3, v3}, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->createLayoutTab(IZZZ)Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    move-result-object v0

    .line 142
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setBorderAlpha(F)V

    .line 144
    new-array v1, v2, [Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    aput-object v0, v1, v3

    iput-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->mLayoutTabs:[Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    .line 145
    new-instance v0, Ljava/util/LinkedList;

    new-array v1, v2, [Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->updateCacheVisibleIds(Ljava/util/List;)V

    goto :goto_0
.end method

.method private getDiscardRange()F
    .locals 2

    .prologue
    .line 374
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->getWidth()F

    move-result v0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->getHeight()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const v1, 0x3f333333    # 0.7f

    mul-float/2addr v0, v1

    return v0
.end method

.method private reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 386
    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->mLayoutTabs:[Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    .line 387
    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->mAnimatedTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    .line 388
    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->mClosedTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    .line 389
    return-void
.end method

.method private setDiscardAmount(F)V
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 356
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->mAnimatedTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    if-eqz v0, :cond_0

    .line 357
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->getDiscardRange()F

    move-result v0

    .line 358
    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->computeDiscardScale(FFZ)F

    move-result v1

    .line 360
    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->mAnimatedTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getOriginalContentWidth()F

    move-result v2

    .line 361
    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->mAnimatedTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getOriginalContentHeight()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    .line 362
    iget-object v4, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->mAnimatedTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    sub-float v5, v6, v1

    mul-float/2addr v2, v5

    invoke-virtual {v4, v2}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setX(F)V

    .line 363
    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->mAnimatedTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    sub-float v4, v6, v1

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setY(F)V

    .line 364
    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->mAnimatedTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    invoke-virtual {v2, v1}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setScale(F)V

    .line 365
    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->mAnimatedTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    invoke-virtual {v2, v1}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setBorderScale(F)V

    .line 366
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->mAnimatedTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    invoke-static {p1, v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->computeDiscardAlpha(FF)F

    move-result v0

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setAlpha(F)V

    .line 368
    :cond_0
    return-void
.end method

.method private tabCreatedInBackground(IIZFF)V
    .locals 21

    .prologue
    .line 211
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2, v4, v5}, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->createLayoutTab(IZZZ)Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    move-result-object v20

    .line 213
    sget-boolean v4, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->mLayoutTabs:[Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    array-length v4, v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 214
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->mLayoutTabs:[Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    const/4 v5, 0x0

    aget-object v6, v4, v5

    .line 215
    const/4 v4, 0x2

    new-array v4, v4, [Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    const/4 v5, 0x0

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v20, v4, v5

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->mLayoutTabs:[Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    .line 216
    new-instance v4, Ljava/util/LinkedList;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v7, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->updateCacheVisibleIds(Ljava/util/List;)V

    .line 218
    invoke-virtual/range {p0 .. p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->forceAnimationToFinish()V

    .line 220
    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setBorderAlpha(F)V

    .line 222
    invoke-virtual/range {p0 .. p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->getWidth()F

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->getHeight()F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const v5, 0x3dccccd0    # 0.100000024f

    mul-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float v18, v4, v5

    .line 225
    sget-object v7, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;->SCALE:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

    const/high16 v8, 0x3f800000    # 1.0f

    const v9, 0x3f666666    # 0.9f

    const-wide/16 v10, 0x12c

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    sget-object v15, Lorg/chromium/ui/interpolators/BakedBezierInterpolator;->TRANSFORM_CURVE:Lorg/chromium/ui/interpolators/BakedBezierInterpolator;

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->addToAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;FFJJZLandroid/view/animation/Interpolator;)V

    .line 227
    sget-object v7, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;->X:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

    const/4 v8, 0x0

    const-wide/16 v10, 0x12c

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    sget-object v15, Lorg/chromium/ui/interpolators/BakedBezierInterpolator;->TRANSFORM_CURVE:Lorg/chromium/ui/interpolators/BakedBezierInterpolator;

    move-object/from16 v5, p0

    move/from16 v9, v18

    invoke-virtual/range {v5 .. v15}, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->addToAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;FFJJZLandroid/view/animation/Interpolator;)V

    .line 229
    sget-object v7, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;->Y:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

    const/4 v8, 0x0

    const-wide/16 v10, 0x12c

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    sget-object v15, Lorg/chromium/ui/interpolators/BakedBezierInterpolator;->TRANSFORM_CURVE:Lorg/chromium/ui/interpolators/BakedBezierInterpolator;

    move-object/from16 v5, p0

    move/from16 v9, v18

    invoke-virtual/range {v5 .. v15}, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->addToAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;FFJJZLandroid/view/animation/Interpolator;)V

    .line 231
    sget-object v7, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;->BORDER_SCALE:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

    const v8, 0x3f8e38e4

    const/high16 v9, 0x3f800000    # 1.0f

    const-wide/16 v10, 0x12c

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    sget-object v15, Lorg/chromium/ui/interpolators/BakedBezierInterpolator;->TRANSFORM_CURVE:Lorg/chromium/ui/interpolators/BakedBezierInterpolator;

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->addToAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;FFJJZLandroid/view/animation/Interpolator;)V

    .line 233
    sget-object v7, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;->BORDER_ALPHA:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const-wide/16 v10, 0x12c

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    sget-object v15, Lorg/chromium/ui/interpolators/BakedBezierInterpolator;->TRANSFORM_CURVE:Lorg/chromium/ui/interpolators/BakedBezierInterpolator;

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->addToAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;FFJJZLandroid/view/animation/Interpolator;)V

    .line 238
    invoke-virtual/range {p0 .. p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->getOrientation()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 239
    const/high16 v4, 0x3f000000    # 0.5f

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->getHeight()F

    move-result v5

    mul-float/2addr v4, v5

    move/from16 v19, v18

    .line 244
    :goto_0
    sget-object v9, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;->ALPHA:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const-wide/16 v12, 0x96

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    sget-object v17, Lorg/chromium/ui/interpolators/BakedBezierInterpolator;->FADE_IN_CURVE:Lorg/chromium/ui/interpolators/BakedBezierInterpolator;

    move-object/from16 v7, p0

    move-object/from16 v8, v20

    invoke-virtual/range {v7 .. v17}, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->addToAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;FFJJZLandroid/view/animation/Interpolator;)V

    .line 246
    sget-object v9, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;->SCALE:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

    const/4 v10, 0x0

    const v11, 0x3f666666    # 0.9f

    const-wide/16 v12, 0x12c

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    sget-object v17, Lorg/chromium/ui/interpolators/BakedBezierInterpolator;->FADE_IN_CURVE:Lorg/chromium/ui/interpolators/BakedBezierInterpolator;

    move-object/from16 v7, p0

    move-object/from16 v8, v20

    invoke-virtual/range {v7 .. v17}, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->addToAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;FFJJZLandroid/view/animation/Interpolator;)V

    .line 248
    sget-object v9, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;->X:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

    const-wide/16 v12, 0x12c

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    sget-object v17, Lorg/chromium/ui/interpolators/BakedBezierInterpolator;->FADE_IN_CURVE:Lorg/chromium/ui/interpolators/BakedBezierInterpolator;

    move-object/from16 v7, p0

    move-object/from16 v8, v20

    move/from16 v10, p4

    move/from16 v11, v19

    invoke-virtual/range {v7 .. v17}, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->addToAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;FFJJZLandroid/view/animation/Interpolator;)V

    .line 250
    sget-object v9, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;->Y:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

    const-wide/16 v12, 0x12c

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    sget-object v17, Lorg/chromium/ui/interpolators/BakedBezierInterpolator;->FADE_IN_CURVE:Lorg/chromium/ui/interpolators/BakedBezierInterpolator;

    move-object/from16 v7, p0

    move-object/from16 v8, v20

    move/from16 v10, p5

    move v11, v4

    invoke-virtual/range {v7 .. v17}, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->addToAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;FFJJZLandroid/view/animation/Interpolator;)V

    .line 256
    sget-object v7, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;->SCALE:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

    const v8, 0x3f666666    # 0.9f

    const/high16 v9, 0x3f800000    # 1.0f

    const-wide/16 v10, 0x12c

    const-wide/16 v12, 0x1c2

    const/4 v14, 0x1

    sget-object v15, Lorg/chromium/ui/interpolators/BakedBezierInterpolator;->TRANSFORM_CURVE:Lorg/chromium/ui/interpolators/BakedBezierInterpolator;

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->addToAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;FFJJZLandroid/view/animation/Interpolator;)V

    .line 259
    sget-object v7, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;->X:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

    const/4 v9, 0x0

    const-wide/16 v10, 0x12c

    const-wide/16 v12, 0x1c2

    const/4 v14, 0x1

    sget-object v15, Lorg/chromium/ui/interpolators/BakedBezierInterpolator;->TRANSFORM_CURVE:Lorg/chromium/ui/interpolators/BakedBezierInterpolator;

    move-object/from16 v5, p0

    move/from16 v8, v18

    invoke-virtual/range {v5 .. v15}, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->addToAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;FFJJZLandroid/view/animation/Interpolator;)V

    .line 262
    sget-object v7, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;->Y:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

    const/4 v9, 0x0

    const-wide/16 v10, 0x12c

    const-wide/16 v12, 0x1c2

    const/4 v14, 0x1

    sget-object v15, Lorg/chromium/ui/interpolators/BakedBezierInterpolator;->TRANSFORM_CURVE:Lorg/chromium/ui/interpolators/BakedBezierInterpolator;

    move-object/from16 v5, p0

    move/from16 v8, v18

    invoke-virtual/range {v5 .. v15}, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->addToAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;FFJJZLandroid/view/animation/Interpolator;)V

    .line 265
    sget-object v7, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;->BORDER_SCALE:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

    const/high16 v8, 0x3f800000    # 1.0f

    const v9, 0x3f8e38e4

    const-wide/16 v10, 0x12c

    const-wide/16 v12, 0x1c2

    const/4 v14, 0x1

    sget-object v15, Lorg/chromium/ui/interpolators/BakedBezierInterpolator;->TRANSFORM_CURVE:Lorg/chromium/ui/interpolators/BakedBezierInterpolator;

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->addToAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;FFJJZLandroid/view/animation/Interpolator;)V

    .line 268
    sget-object v7, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;->BORDER_ALPHA:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const-wide/16 v10, 0x12c

    const-wide/16 v12, 0x1c2

    const/4 v14, 0x1

    sget-object v15, Lorg/chromium/ui/interpolators/BakedBezierInterpolator;->TRANSFORM_CURVE:Lorg/chromium/ui/interpolators/BakedBezierInterpolator;

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->addToAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;FFJJZLandroid/view/animation/Interpolator;)V

    .line 272
    sget-object v7, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;->ALPHA:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const-wide/16 v10, 0x12c

    const-wide/16 v12, 0x1c2

    const/4 v14, 0x1

    sget-object v15, Lorg/chromium/ui/interpolators/BakedBezierInterpolator;->FADE_OUT_CURVE:Lorg/chromium/ui/interpolators/BakedBezierInterpolator;

    move-object/from16 v5, p0

    move-object/from16 v6, v20

    invoke-virtual/range {v5 .. v15}, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->addToAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;FFJJZLandroid/view/animation/Interpolator;)V

    .line 274
    invoke-virtual/range {p0 .. p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->getOrientation()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 275
    sget-object v7, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;->Y:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->getHeight()F

    move-result v9

    const-wide/16 v10, 0x12c

    const-wide/16 v12, 0x1c2

    const/4 v14, 0x1

    sget-object v15, Lorg/chromium/ui/interpolators/BakedBezierInterpolator;->FADE_OUT_CURVE:Lorg/chromium/ui/interpolators/BakedBezierInterpolator;

    move-object/from16 v5, p0

    move-object/from16 v6, v20

    move v8, v4

    invoke-virtual/range {v5 .. v15}, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->addToAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;FFJJZLandroid/view/animation/Interpolator;)V

    .line 284
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move/from16 v0, p3

    invoke-interface {v4, v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->selectModel(Z)V

    .line 285
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1, v4}, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->startHiding(IZ)V

    .line 286
    return-void

    .line 241
    :cond_1
    const/high16 v4, 0x3f000000    # 0.5f

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->getWidth()F

    move-result v5

    mul-float/2addr v4, v5

    move/from16 v19, v4

    move/from16 v4, v18

    goto/16 :goto_0

    .line 279
    :cond_2
    sget-object v7, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;->X:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->getWidth()F

    move-result v9

    const-wide/16 v10, 0x12c

    const-wide/16 v12, 0x1c2

    const/4 v14, 0x1

    sget-object v15, Lorg/chromium/ui/interpolators/BakedBezierInterpolator;->FADE_OUT_CURVE:Lorg/chromium/ui/interpolators/BakedBezierInterpolator;

    move-object/from16 v5, p0

    move-object/from16 v6, v20

    move/from16 v8, v19

    invoke-virtual/range {v5 .. v15}, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->addToAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;FFJJZLandroid/view/animation/Interpolator;)V

    goto :goto_1
.end method

.method private tabCreatedInForeground(IIZFF)V
    .locals 12

    .prologue
    .line 171
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p3, v0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->createLayoutTab(IZZZ)Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    move-result-object v2

    .line 172
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->mLayoutTabs:[Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->mLayoutTabs:[Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    array-length v0, v0

    if-nez v0, :cond_1

    .line 173
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    const/4 v1, 0x0

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->mLayoutTabs:[Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    .line 177
    :goto_0
    new-instance v0, Ljava/util/LinkedList;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->updateCacheVisibleIds(Ljava/util/List;)V

    .line 179
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setBorderAlpha(F)V

    .line 180
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v2, v0}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setStaticToViewBlend(F)V

    .line 182
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->forceAnimationToFinish()V

    .line 184
    sget-object v11, Lorg/chromium/ui/interpolators/BakedBezierInterpolator;->TRANSFORM_CURVE:Lorg/chromium/ui/interpolators/BakedBezierInterpolator;

    .line 185
    sget-object v3, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;->SCALE:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const-wide/16 v6, 0x12c

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v11}, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->addToAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;FFJJZLandroid/view/animation/Interpolator;)V

    .line 187
    sget-object v3, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;->ALPHA:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const-wide/16 v6, 0x12c

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v11}, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->addToAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;FFJJZLandroid/view/animation/Interpolator;)V

    .line 189
    sget-object v3, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;->X:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

    const/4 v5, 0x0

    const-wide/16 v6, 0x12c

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move/from16 v4, p4

    invoke-virtual/range {v1 .. v11}, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->addToAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;FFJJZLandroid/view/animation/Interpolator;)V

    .line 191
    sget-object v3, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;->Y:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

    const/4 v5, 0x0

    const-wide/16 v6, 0x12c

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move/from16 v4, p5

    invoke-virtual/range {v1 .. v11}, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->addToAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;FFJJZLandroid/view/animation/Interpolator;)V

    .line 194
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    invoke-interface {v0, p3}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->selectModel(Z)V

    .line 195
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->startHiding(IZ)V

    .line 196
    return-void

    .line 175
    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    const/4 v1, 0x0

    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->mLayoutTabs:[Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    aput-object v3, v0, v1

    const/4 v1, 0x1

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->mLayoutTabs:[Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    goto :goto_0
.end method


# virtual methods
.method protected getSceneLayer()Lorg/chromium/chrome/browser/compositor/scene_layer/SceneLayer;
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->mSceneLayer:Lorg/chromium/chrome/browser/compositor/scene_layer/TabListSceneLayer;

    return-object v0
.end method

.method public getSizingFlags()I
    .locals 1

    .prologue
    .line 85
    const/16 v0, 0x111

    return v0
.end method

.method public handlesTabClosing()Z
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x1

    return v0
.end method

.method public handlesTabCreating()Z
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic onPropertyAnimationFinished(Ljava/lang/Enum;)V
    .locals 0

    .prologue
    .line 35
    check-cast p1, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout$Property;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->onPropertyAnimationFinished(Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout$Property;)V

    return-void
.end method

.method public onPropertyAnimationFinished(Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout$Property;)V
    .locals 0

    .prologue
    .line 407
    return-void
.end method

.method public onTabClosed(JIIZ)V
    .locals 15

    .prologue
    .line 318
    invoke-super/range {p0 .. p5}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->onTabClosed(JIIZ)V

    .line 320
    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->mClosedTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    if-eqz v2, :cond_0

    .line 321
    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move/from16 v0, p4

    invoke-interface {v2, v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getModelForTabId(I)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v2

    .line 322
    if-eqz v2, :cond_1

    .line 323
    invoke-interface {v2}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->isIncognito()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move/from16 v0, p4

    invoke-virtual {p0, v0, v3, v4, v5}, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->createLayoutTab(IZZZ)Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    move-result-object v3

    .line 325
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setDrawDecoration(Z)V

    .line 327
    const/4 v4, 0x2

    new-array v4, v4, [Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v3, 0x1

    iget-object v5, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->mClosedTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    aput-object v5, v4, v3

    iput-object v4, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->mLayoutTabs:[Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    .line 328
    new-instance v3, Ljava/util/LinkedList;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Integer;

    const/4 v5, 0x0

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->mClosedTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    invoke-virtual {v6}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v3}, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->updateCacheVisibleIds(Ljava/util/List;)V

    .line 334
    :goto_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->forceAnimationToFinish()V

    .line 335
    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->mClosedTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    iput-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->mAnimatedTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    .line 336
    sget-object v5, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout$Property;->DISCARD_AMOUNT:Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout$Property;

    const/4 v6, 0x0

    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->getDiscardRange()F

    move-result v7

    const-wide/16 v8, 0xfa

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    sget-object v13, Lorg/chromium/ui/interpolators/BakedBezierInterpolator;->FADE_OUT_CURVE:Lorg/chromium/ui/interpolators/BakedBezierInterpolator;

    move-object v3, p0

    move-object v4, p0

    invoke-virtual/range {v3 .. v13}, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->addToAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;FFJJZLandroid/view/animation/Interpolator;)V

    .line 340
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->mClosedTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    .line 341
    if-eqz v2, :cond_0

    .line 342
    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    invoke-interface {v2}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->isIncognito()Z

    move-result v2

    invoke-interface {v3, v2}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->selectModel(Z)V

    .line 345
    :cond_0
    const/4 v2, 0x0

    move/from16 v0, p4

    invoke-virtual {p0, v0, v2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->startHiding(IZ)V

    .line 346
    return-void

    .line 331
    :cond_1
    const/4 v3, 0x1

    new-array v3, v3, [Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->mClosedTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    aput-object v5, v3, v4

    iput-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->mLayoutTabs:[Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    goto :goto_0
.end method

.method public onTabClosing(JI)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 293
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->reset()V

    .line 296
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->forceAnimationToFinish()V

    .line 299
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    invoke-interface {v0, p3}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getModelForTabId(I)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    .line 300
    if-eqz v0, :cond_0

    .line 301
    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->isIncognito()Z

    move-result v0

    invoke-virtual {p0, p3, v0, v3, v3}, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->createLayoutTab(IZZZ)Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->mClosedTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    .line 302
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->mClosedTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setBorderAlpha(F)V

    .line 303
    new-array v0, v2, [Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->mClosedTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    aput-object v1, v0, v3

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->mLayoutTabs:[Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    .line 304
    new-instance v0, Ljava/util/LinkedList;

    new-array v1, v2, [Ljava/lang/Integer;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->updateCacheVisibleIds(Ljava/util/List;)V

    .line 310
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->onTabClosing(JI)V

    .line 311
    return-void

    .line 306
    :cond_0
    iput-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->mLayoutTabs:[Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    .line 307
    iput-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->mClosedTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    goto :goto_0
.end method

.method public onTabCreated(JIIIZZFF)V
    .locals 7

    .prologue
    .line 151
    invoke-super/range {p0 .. p9}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->onTabCreated(JIIIZZFF)V

    .line 152
    invoke-direct {p0, p5}, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->ensureSourceTabCreated(I)V

    .line 153
    if-eqz p7, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->mLayoutTabs:[Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->mLayoutTabs:[Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    array-length v0, v0

    if-lez v0, :cond_0

    move-object v0, p0

    move v1, p3

    move v2, p5

    move v3, p6

    move v4, p8

    move/from16 v5, p9

    .line 154
    invoke-direct/range {v0 .. v5}, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->tabCreatedInBackground(IIZFF)V

    .line 158
    :goto_0
    return-void

    :cond_0
    move-object v0, p0

    move v1, p3

    move v2, p5

    move v3, p6

    move v4, p8

    move/from16 v5, p9

    .line 156
    invoke-direct/range {v0 .. v5}, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->tabCreatedInForeground(IIZFF)V

    goto :goto_0
.end method

.method public onTabCreating(I)V
    .locals 0

    .prologue
    .line 123
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->onTabCreating(I)V

    .line 124
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->reset()V

    .line 127
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->forceAnimationToFinish()V

    .line 129
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->ensureSourceTabCreated(I)V

    .line 130
    return-void
.end method

.method public onUpdateAnimation(JZ)Z
    .locals 1

    .prologue
    .line 379
    invoke-super {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->onUpdateAnimation(JZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->mClosedTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic setProperty(Ljava/lang/Enum;F)V
    .locals 0

    .prologue
    .line 35
    check-cast p1, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout$Property;

    invoke-virtual {p0, p1, p2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->setProperty(Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout$Property;F)V

    return-void
.end method

.method public setProperty(Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout$Property;F)V
    .locals 2

    .prologue
    .line 398
    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout$1;->$SwitchMap$org$chromium$chrome$browser$compositor$layouts$phone$SimpleAnimationLayout$Property:[I

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout$Property;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 404
    :goto_0
    return-void

    .line 400
    :pswitch_0
    invoke-direct {p0, p2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->setDiscardAmount(F)V

    goto :goto_0

    .line 398
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public show(JZ)V
    .locals 3

    .prologue
    .line 90
    invoke-super {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->show(JZ)V

    .line 92
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->mTabContentManager:Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getCurrentTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 94
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->isNativePage()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->mTabContentManager:Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->cacheTabThumbnail(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 97
    :cond_0
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->reset()V

    .line 98
    return-void
.end method

.method protected updateLayout(JJ)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 112
    invoke-super {p0, p1, p2, p3, p4}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->updateLayout(JJ)V

    .line 113
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->mLayoutTabs:[Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    if-nez v0, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->mLayoutTabs:[Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    move v0, v1

    :goto_1
    if-ltz v2, :cond_4

    .line 116
    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->mLayoutTabs:[Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    aget-object v3, v3, v2

    invoke-virtual {v3, p3, p4}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->updateSnap(J)Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    .line 115
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_3
    move v0, v1

    .line 116
    goto :goto_2

    .line 118
    :cond_4
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->requestUpdate()V

    goto :goto_0
.end method

.method protected updateSceneLayer(Landroid/graphics/Rect;Landroid/graphics/Rect;Lorg/chromium/chrome/browser/compositor/LayerTitleCache;Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;Lorg/chromium/ui/resources/ResourceManager;Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;)V
    .locals 8

    .prologue
    .line 418
    invoke-super/range {p0 .. p6}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->updateSceneLayer(Landroid/graphics/Rect;Landroid/graphics/Rect;Lorg/chromium/chrome/browser/compositor/LayerTitleCache;Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;Lorg/chromium/ui/resources/ResourceManager;Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;)V

    .line 420
    sget-boolean v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->mSceneLayer:Lorg/chromium/chrome/browser/compositor/scene_layer/TabListSceneLayer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 421
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->mSceneLayer:Lorg/chromium/chrome/browser/compositor/scene_layer/TabListSceneLayer;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p0

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lorg/chromium/chrome/browser/compositor/scene_layer/TabListSceneLayer;->pushLayers(Landroid/content/Context;Landroid/graphics/Rect;Landroid/graphics/Rect;Lorg/chromium/chrome/browser/compositor/layouts/Layout;Lorg/chromium/chrome/browser/compositor/LayerTitleCache;Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;Lorg/chromium/ui/resources/ResourceManager;)V

    .line 423
    return-void
.end method
