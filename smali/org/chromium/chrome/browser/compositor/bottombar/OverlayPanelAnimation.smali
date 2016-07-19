.class public abstract Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation;
.super Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;
.source "OverlayPanelAnimation.java"

# interfaces
.implements Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;


# static fields
.field public static final BASE_ANIMATION_DURATION_MS:J = 0xdaL

.field public static final MAXIMUM_ANIMATION_DURATION_MS:J = 0x15eL

.field private static final MINIMUM_ANIMATION_DURATION_MS:J


# instance fields
.field private mAnimatingState:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

.field private mAnimatingStateReason:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

.field private mIsAnimatingPanelClosing:Z

.field private mIsAnimatingPanelExpanding:Z

.field private mIsAnimatingPromoAcceptance:Z

.field private mLayoutAnimations:Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;

.field private mPanelExpansionStateChangeReason:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

.field private final mUpdateHost:Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    const/high16 v0, 0x42e80000    # 116.0f

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation;->MINIMUM_ANIMATION_DURATION_MS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;)V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;-><init>(Landroid/content/Context;)V

    .line 106
    iput-object p2, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation;->mUpdateHost:Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;

    .line 107
    return-void
.end method

.method private animatePanelTo(FJ)V
    .locals 6

    .prologue
    .line 375
    sget-object v1, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation$Property;->PANEL_HEIGHT:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation$Property;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation;->getHeight()F

    move-result v2

    move-object v0, p0

    move v3, p1

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation;->animateProperty(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation$Property;FFJ)V

    .line 376
    return-void
.end method

.method private animatePanelToState(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V
    .locals 2

    .prologue
    .line 199
    const-wide/16 v0, 0xda

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation;->animatePanelToState(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;J)V

    .line 200
    return-void
.end method

.method private calculateAnimationDuration(FF)J
    .locals 6

    .prologue
    .line 338
    const/high16 v0, 0x44fa0000    # 2000.0f

    mul-float/2addr v0, p2

    div-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-long v0, v0

    sget-wide v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation;->MINIMUM_ANIMATION_DURATION_MS:J

    const-wide/16 v4, 0x15e

    invoke-static/range {v0 .. v5}, Lorg/chromium/chrome/browser/util/MathUtils;->clamp(JJJ)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public addToAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;FFJJ)V
    .locals 11

    .prologue
    .line 478
    const/4 v10, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    invoke-virtual/range {v1 .. v10}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation;->addToAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;FFJJZ)V

    .line 479
    return-void
.end method

.method public addToAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;FFJJZ)V
    .locals 13

    .prologue
    .line 487
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

    invoke-virtual/range {v1 .. v11}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation;->addToAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;FFJJZLandroid/view/animation/Interpolator;)V

    .line 489
    return-void
.end method

.method protected addToAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;FFJJZLandroid/view/animation/Interpolator;)V
    .locals 1

    .prologue
    .line 508
    invoke-static/range {p1 .. p10}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$AnimatableAnimation;->createAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;FFJJZLandroid/view/animation/Interpolator;)Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;

    move-result-object v0

    .line 510
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation;->addToAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;)V

    .line 511
    return-void
.end method

.method protected addToAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;)V
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation;->mLayoutAnimations:Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation;->mLayoutAnimations:Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;->finished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 519
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation;->onAnimationStarted()V

    .line 520
    new-instance v0, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation;->mLayoutAnimations:Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;

    .line 521
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation;->mLayoutAnimations:Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;->start()V

    .line 523
    :cond_1
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;->start()V

    .line 524
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation;->mLayoutAnimations:Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;->add(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;)V

    .line 525
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation;->requestUpdate()V

    .line 526
    return-void
.end method

.method protected animatePanelToState(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;J)V
    .locals 1

    .prologue
    .line 210
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation;->mAnimatingState:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    .line 211
    iput-object p2, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation;->mAnimatingStateReason:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    .line 213
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation;->getPanelHeightFromState(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;)F

    move-result v0

    .line 214
    invoke-direct {p0, v0, p3, p4}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation;->animatePanelTo(FJ)V

    .line 215
    return-void
.end method

.method protected animatePromoAcceptance()V
    .locals 6

    .prologue
    .line 238
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation;->hidePromoView()V

    .line 239
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation;->mIsAnimatingPromoAcceptance:Z

    .line 240
    sget-object v1, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation$Property;->PROMO_VISIBILITY:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation$Property;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const-wide/16 v4, 0xda

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation;->animateProperty(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation$Property;FFJ)V

    .line 241
    return-void
.end method

.method protected animateProperty(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation$Property;FFJ)V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 387
    cmp-long v0, p4, v8

    if-lez v0, :cond_1

    .line 388
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation;->animationIsRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    invoke-virtual {p0, p0, p1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation;->cancelAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;)V

    :cond_0
    move-object v1, p0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-wide v6, p4

    .line 391
    invoke-virtual/range {v1 .. v9}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation;->addToAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;FFJJ)V

    .line 393
    :cond_1
    return-void
.end method

.method protected animateSearchTermResolution()V
    .locals 6

    .prologue
    .line 245
    sget-object v1, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation$Property;->BOTTOM_BAR_TEXT_VISIBILITY:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation$Property;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const-wide/16 v4, 0x15e

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation;->animateProperty(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation$Property;FFJ)V

    .line 247
    return-void
.end method

.method protected animateToNearestState()V
    .locals 4

    .prologue
    .line 263
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation;->getHeight()F

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation;->findNearestPanelStateFromHeight(FF)Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    move-result-object v0

    .line 264
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation;->getPanelHeightFromState(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;)F

    move-result v1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation;->getHeight()F

    move-result v2

    sub-float/2addr v1, v2

    .line 265
    const v2, 0x44dac000    # 1750.0f

    invoke-direct {p0, v2, v1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation;->calculateAnimationDuration(FF)J

    move-result-wide v2

    .line 268
    sget-object v1, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->SWIPE:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation;->animatePanelToState(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;J)V

    .line 269
    return-void
.end method

.method protected animateToProjectedState(F)V
    .locals 4

    .prologue
    .line 277
    const/high16 v0, 0x435a0000    # 218.0f

    invoke-virtual {p0, p1, v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation;->calculateAnimationDisplacement(FF)F

    move-result v0

    .line 278
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation;->getHeight()F

    move-result v1

    sub-float v0, v1, v0

    .line 282
    invoke-virtual {p0, v0, p1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation;->findNearestPanelStateFromHeight(FF)Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    move-result-object v0

    .line 289
    sget-object v1, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->MAXIMIZED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation;->getPanelState()Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    move-result-object v1

    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->PEEKED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation;->isPromoVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 292
    sget-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->EXPANDED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    .line 295
    :cond_0
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation;->getPanelHeightFromState(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;)F

    move-result v1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation;->getHeight()F

    move-result v2

    sub-float/2addr v1, v2

    .line 296
    invoke-direct {p0, p1, v1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation;->calculateAnimationDuration(FF)J

    move-result-wide v2

    .line 298
    sget-object v1, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->FLING:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation;->animatePanelToState(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;J)V

    .line 299
    return-void
.end method

.method protected animationIsRunning()Z
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation;->mLayoutAnimations:Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation;->mLayoutAnimations:Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;

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

.method protected calculateAnimationDisplacement(FF)F
    .locals 2

    .prologue
    .line 318
    mul-float v0, p1, p2

    const/high16 v1, 0x44fa0000    # 2000.0f

    div-float/2addr v0, v1

    return v0
.end method

.method protected cancelAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;)V
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation;->mLayoutAnimations:Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation;->mLayoutAnimations:Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;->cancel(Ljava/lang/Object;Ljava/lang/Enum;)V

    .line 544
    :cond_0
    return-void
.end method

.method protected cancelHeightAnimation()V
    .locals 1

    .prologue
    .line 346
    sget-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation$Property;->PANEL_HEIGHT:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation$Property;

    invoke-virtual {p0, p0, v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation;->cancelAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;)V

    .line 347
    return-void
.end method

.method protected cancelSearchTermResolutionAnimation()V
    .locals 1

    .prologue
    .line 251
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation;->animationIsRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    sget-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation$Property;->BOTTOM_BAR_TEXT_VISIBILITY:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation$Property;

    invoke-virtual {p0, p0, v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation;->cancelAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;)V

    .line 254
    :cond_0
    return-void
.end method

.method protected closePanel(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;Z)V
    .locals 1

    .prologue
    .line 163
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation;->mIsAnimatingPanelClosing:Z

    if-eqz v0, :cond_0

    .line 164
    if-nez p2, :cond_1

    .line 165
    sget-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation$Property;->PANEL_HEIGHT:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation$Property;

    invoke-virtual {p0, p0, v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation;->cancelAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;)V

    .line 171
    :cond_0
    if-eqz p2, :cond_2

    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation;->mIsAnimatingPanelClosing:Z

    .line 173
    sget-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->CLOSED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    invoke-direct {p0, v0, p1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation;->animatePanelToState(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    .line 177
    :cond_1
    :goto_0
    return-void

    .line 175
    :cond_2
    sget-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->CLOSED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    invoke-virtual {p0, v0, p1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation;->resizePanelToState(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    goto :goto_0
.end method

.method protected expandPanel(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation;->mIsAnimatingPanelExpanding:Z

    .line 135
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation;->mPanelExpansionStateChangeReason:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    .line 136
    sget-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->EXPANDED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    invoke-direct {p0, v0, p1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation;->animatePanelToState(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    .line 137
    return-void
.end method

.method public bridge synthetic getArrowIconOpacity()F
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->getArrowIconOpacity()F

    move-result v0

    return v0
.end method

.method public bridge synthetic getArrowIconRotation()F
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->getArrowIconRotation()F

    move-result v0

    return v0
.end method

.method public bridge synthetic getBarBorderHeight()F
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->getBarBorderHeight()F

    move-result v0

    return v0
.end method

.method public bridge synthetic getBarHeight()F
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->getBarHeight()F

    move-result v0

    return v0
.end method

.method public bridge synthetic getBarMarginSide()F
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->getBarMarginSide()F

    move-result v0

    return v0
.end method

.method public bridge synthetic getBarShadowOpacity()F
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->getBarShadowOpacity()F

    move-result v0

    return v0
.end method

.method public bridge synthetic getBarShadowVisible()Z
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->getBarShadowVisible()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getBasePageBackgroundColor()I
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->getBasePageBackgroundColor()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getBasePageBrightness()F
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->getBasePageBrightness()F

    move-result v0

    return v0
.end method

.method public bridge synthetic getBasePageY()F
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->getBasePageY()F

    move-result v0

    return v0
.end method

.method public bridge synthetic getCloseIconDimension()F
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->getCloseIconDimension()F

    move-result v0

    return v0
.end method

.method public bridge synthetic getCloseIconOpacity()F
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->getCloseIconOpacity()F

    move-result v0

    return v0
.end method

.method public bridge synthetic getCloseIconX()F
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->getCloseIconX()F

    move-result v0

    return v0
.end method

.method public bridge synthetic getContentViewHeightPx()I
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->getContentViewHeightPx()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getContentViewWidthPx()I
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->getContentViewWidthPx()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getFullscreenY(F)F
    .locals 1

    .prologue
    .line 23
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->getFullscreenY(F)F

    move-result v0

    return v0
.end method

.method public bridge synthetic getHeight()F
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->getHeight()F

    move-result v0

    return v0
.end method

.method public bridge synthetic getMaximumWidthPx()I
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->getMaximumWidthPx()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getOffsetX()F
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->getOffsetX()F

    move-result v0

    return v0
.end method

.method public bridge synthetic getOffsetY()F
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->getOffsetY()F

    move-result v0

    return v0
.end method

.method public bridge synthetic getPanelHeightFromState(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;)F
    .locals 1

    .prologue
    .line 23
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->getPanelHeightFromState(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;)F

    move-result v0

    return v0
.end method

.method public bridge synthetic getPanelState()Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->getPanelState()Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getProgressBarCompletion()I
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->getProgressBarCompletion()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getProgressBarHeight()F
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->getProgressBarHeight()F

    move-result v0

    return v0
.end method

.method public bridge synthetic getProgressBarOpacity()F
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->getProgressBarOpacity()F

    move-result v0

    return v0
.end method

.method public bridge synthetic getPromoHeight()F
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->getPromoHeight()F

    move-result v0

    return v0
.end method

.method public bridge synthetic getPromoHeightPx()F
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->getPromoHeightPx()F

    move-result v0

    return v0
.end method

.method public bridge synthetic getPromoOpacity()F
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->getPromoOpacity()F

    move-result v0

    return v0
.end method

.method public bridge synthetic getPromoVisible()Z
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->getPromoVisible()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getTabHeight()F
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->getTabHeight()F

    move-result v0

    return v0
.end method

.method public bridge synthetic getToolbarHeight()F
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->getToolbarHeight()F

    move-result v0

    return v0
.end method

.method public bridge synthetic getWidth()F
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->getWidth()F

    move-result v0

    return v0
.end method

.method public bridge synthetic isBarBorderVisible()Z
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->isBarBorderVisible()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isMaximized()Z
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->isMaximized()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isPanelOpened()Z
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->isPanelOpened()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isProgressBarVisible()Z
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->isProgressBarVisible()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isShowing()Z
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->isShowing()Z

    move-result v0

    return v0
.end method

.method protected maximizePanel(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->MAXIMIZED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    invoke-direct {p0, v0, p1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation;->animatePanelToState(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    .line 126
    return-void
.end method

.method protected onAnimationFinished()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 448
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation;->mIsAnimatingPromoAcceptance:Z

    if-eqz v0, :cond_0

    .line 449
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation;->mIsAnimatingPromoAcceptance:Z

    .line 450
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation;->onPromoAcceptanceAnimationFinished()V

    .line 453
    :cond_0
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation;->mIsAnimatingPanelClosing:Z

    .line 454
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation;->mIsAnimatingPanelExpanding:Z

    .line 462
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation;->mAnimatingState:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    sget-object v1, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->UNDEFINED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation;->getHeight()F

    move-result v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation;->mAnimatingState:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation;->getPanelHeightFromState(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 464
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation;->mAnimatingState:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation;->mAnimatingStateReason:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-virtual {p0, v0, v1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation;->setPanelState(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    .line 467
    :cond_1
    sget-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->UNDEFINED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation;->mAnimatingState:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    .line 468
    sget-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->UNKNOWN:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation;->mAnimatingStateReason:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    .line 469
    return-void
.end method

.method protected onAnimationStarted()V
    .locals 0

    .prologue
    .line 442
    return-void
.end method

.method protected onPromoAcceptanceAnimationFinished()V
    .locals 0

    .prologue
    .line 117
    return-void
.end method

.method public bridge synthetic onPromoButtonClick(Z)V
    .locals 0

    .prologue
    .line 23
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->onPromoButtonClick(Z)V

    return-void
.end method

.method public bridge synthetic onPromoPreferenceClick()V
    .locals 0

    .prologue
    .line 23
    invoke-super {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->onPromoPreferenceClick()V

    return-void
.end method

.method public bridge synthetic onPropertyAnimationFinished(Ljava/lang/Enum;)V
    .locals 0

    .prologue
    .line 23
    check-cast p1, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation$Property;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation;->onPropertyAnimationFinished(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation$Property;)V

    return-void
.end method

.method public onPropertyAnimationFinished(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation$Property;)V
    .locals 0

    .prologue
    .line 411
    return-void
.end method

.method public onSizeChanged(FF)V
    .locals 1

    .prologue
    .line 181
    invoke-super {p0, p1, p2}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->onSizeChanged(FF)V

    .line 186
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation;->mIsAnimatingPanelExpanding:Z

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation;->cancelHeightAnimation()V

    .line 188
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation;->mPanelExpansionStateChangeReason:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation;->expandPanel(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    .line 190
    :cond_0
    return-void
.end method

.method public onUpdateAnimation(JZ)Z
    .locals 3

    .prologue
    .line 420
    const/4 v0, 0x1

    .line 421
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation;->mLayoutAnimations:Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;

    if-eqz v1, :cond_2

    .line 422
    if-eqz p3, :cond_3

    .line 423
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation;->mLayoutAnimations:Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;->finished()Z

    move-result v0

    .line 424
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation;->mLayoutAnimations:Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;->updateAndFinish()V

    .line 429
    :goto_0
    if-nez v0, :cond_0

    if-eqz p3, :cond_1

    .line 430
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation;->mLayoutAnimations:Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;

    .line 431
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation;->onAnimationFinished()V

    .line 433
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation;->requestUpdate()V

    .line 435
    :cond_2
    return v0

    .line 426
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation;->mLayoutAnimations:Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;->update(J)Z

    move-result v0

    goto :goto_0
.end method

.method protected peekPanel(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V
    .locals 1

    .prologue
    .line 147
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation;->startShowing()V

    .line 156
    sget-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->PEEKED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    invoke-direct {p0, v0, p1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation;->animatePanelToState(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    .line 157
    return-void
.end method

.method protected requestUpdate()V
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation;->mUpdateHost:Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation;->mUpdateHost:Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;->requestUpdate()V

    .line 362
    :cond_0
    return-void
.end method

.method protected resizePanelToState(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V
    .locals 1

    .prologue
    .line 224
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation;->cancelHeightAnimation()V

    .line 226
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation;->getPanelHeightFromState(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;)F

    move-result v0

    .line 227
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation;->setPanelHeight(F)V

    .line 228
    invoke-virtual {p0, p1, p2}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation;->setPanelState(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    .line 229
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation;->requestUpdate()V

    .line 230
    return-void
.end method

.method public bridge synthetic setContainerView(Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 23
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->setContainerView(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public bridge synthetic setDynamicResourceLoader(Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;)V
    .locals 0

    .prologue
    .line 23
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->setDynamicResourceLoader(Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;)V

    return-void
.end method

.method public bridge synthetic setHeightForTesting(F)V
    .locals 0

    .prologue
    .line 23
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->setHeightForTesting(F)V

    return-void
.end method

.method public bridge synthetic setIsFullWidthSizePanelForTesting(Z)V
    .locals 0

    .prologue
    .line 23
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->setIsFullWidthSizePanelForTesting(Z)V

    return-void
.end method

.method public bridge synthetic setMaximizedForTesting(Z)V
    .locals 0

    .prologue
    .line 23
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->setMaximizedForTesting(Z)V

    return-void
.end method

.method public bridge synthetic setOffsetYForTesting(F)V
    .locals 0

    .prologue
    .line 23
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->setOffsetYForTesting(F)V

    return-void
.end method

.method public bridge synthetic setPreferenceState(Z)V
    .locals 0

    .prologue
    .line 23
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->setPreferenceState(Z)V

    return-void
.end method

.method public bridge synthetic setPromoContentHeightPx(F)V
    .locals 0

    .prologue
    .line 23
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->setPromoContentHeightPx(F)V

    return-void
.end method

.method public bridge synthetic setProperty(Ljava/lang/Enum;F)V
    .locals 0

    .prologue
    .line 23
    check-cast p1, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation$Property;

    invoke-virtual {p0, p1, p2}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation;->setProperty(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation$Property;F)V

    return-void
.end method

.method public setProperty(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation$Property;F)V
    .locals 1

    .prologue
    .line 403
    sget-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation$Property;->PANEL_HEIGHT:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation$Property;

    if-ne p1, v0, :cond_1

    .line 404
    invoke-virtual {p0, p2}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation;->setPanelHeight(F)V

    .line 408
    :cond_0
    :goto_0
    return-void

    .line 405
    :cond_1
    sget-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation$Property;->PROMO_VISIBILITY:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation$Property;

    if-ne p1, v0, :cond_0

    .line 406
    invoke-virtual {p0, p2}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation;->setPromoVisibilityForOptInAnimation(F)V

    goto :goto_0
.end method

.method public bridge synthetic setSearchBarBorderHeight(F)V
    .locals 0

    .prologue
    .line 23
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->setSearchBarBorderHeight(F)V

    return-void
.end method

.method public bridge synthetic setSearchBarHeightForTesting(F)V
    .locals 0

    .prologue
    .line 23
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelBase;->setSearchBarHeightForTesting(F)V

    return-void
.end method
