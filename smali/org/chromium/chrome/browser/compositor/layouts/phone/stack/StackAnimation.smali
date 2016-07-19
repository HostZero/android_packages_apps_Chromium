.class public abstract Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation;
.super Ljava/lang/Object;
.source "StackAnimation.java"


# static fields
.field protected static final DISCARD_ANIMATION_DURATION:I = 0x96

.field protected static final ENTER_STACK_ANIMATION_DURATION:I = 0x12c

.field protected static final ENTER_STACK_BORDER_ALPHA_DELAY:I = 0x0

.field protected static final ENTER_STACK_BORDER_ALPHA_DURATION:I = 0xc8

.field protected static final ENTER_STACK_RESIZE_DELAY:I = 0xa

.field protected static final ENTER_STACK_SIZE_RATIO:F = 0.35f

.field protected static final ENTER_STACK_TOOLBAR_ALPHA_DELAY:I = 0x64

.field protected static final ENTER_STACK_TOOLBAR_ALPHA_DURATION:I = 0x64

.field protected static final FULL_ROLL_ANIMATION_DURATION:I = 0x3e8

.field protected static final INITIAL_ALPHA_AMOUNT:F = 0.1f

.field protected static final INITIAL_SCALE_AMOUNT:F = 0.75f

.field protected static final REACH_TOP_ANIMATION_DURATION:I = 0x190

.field public static final SCALE_AMOUNT:F = 0.9f

.field protected static final START_PINCH_ANIMATION_DURATION:I = 0x4b

.field protected static final TAB_FOCUSED_ANIMATION_DURATION:I = 0x190

.field protected static final TAB_FOCUSED_BORDER_ALPHA_DELAY:I = 0x0

.field protected static final TAB_FOCUSED_BORDER_ALPHA_DURATION:I = 0xc8

.field protected static final TAB_FOCUSED_MAX_DELAY:I = 0x64

.field protected static final TAB_FOCUSED_TOOLBAR_ALPHA_DELAY:I = 0x0

.field protected static final TAB_FOCUSED_TOOLBAR_ALPHA_DURATION:I = 0xfa

.field protected static final TAB_FOCUSED_Y_STACK_DURATION:I = 0xc8

.field protected static final TAB_OPENED_ANIMATION_DURATION:I = 0x12c

.field protected static final TAB_OPENED_BORDER_ALPHA_DELAY:I = 0x64

.field protected static final TAB_OPENED_BORDER_ALPHA_DURATION:I = 0x64

.field protected static final TAB_REORDER_DURATION:I = 0x1f4

.field protected static final TAB_REORDER_START_SPAN:I = 0x190

.field protected static final UNDISCARD_ANIMATION_DURATION:I = 0x96

.field protected static final VIEW_MORE_ANIMATION_DURATION:I = 0x190

.field protected static final VIEW_MORE_MIN_SIZE:I = 0xc8

.field protected static final VIEW_MORE_SIZE_RATIO:F = 0.75f


# instance fields
.field protected final mBorderLeftWidth:F

.field protected final mBorderTopHeight:F

.field protected final mBorderTopOpaqueHeight:F

.field protected final mHeight:F

.field protected final mHeightMinusTopControls:F

.field protected final mWidth:F


# direct methods
.method protected constructor <init>(FFFFFF)V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation;->mWidth:F

    .line 102
    iput p2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation;->mHeight:F

    .line 103
    iput p3, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation;->mHeightMinusTopControls:F

    .line 105
    iput p4, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation;->mBorderTopHeight:F

    .line 106
    iput p5, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation;->mBorderTopOpaqueHeight:F

    .line 107
    iput p6, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation;->mBorderLeftWidth:F

    .line 108
    return-void
.end method

.method public static createAnimationFactory(FFFFFFI)Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation;
    .locals 7

    .prologue
    .line 128
    packed-switch p6, :pswitch_data_0

    .line 135
    new-instance v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimationPortrait;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimationPortrait;-><init>(FFFFFF)V

    .line 140
    :goto_0
    return-object v0

    .line 130
    :pswitch_0
    new-instance v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimationLandscape;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimationLandscape;-><init>(FFFFFF)V

    goto :goto_0

    .line 128
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected abstract addTiltScrollAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;FII)V
.end method

.method public createAnimatorSetForType(Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;IIIFFF)Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;
    .locals 3

    .prologue
    .line 162
    const/4 v0, 0x0

    .line 164
    if-eqz p2, :cond_0

    .line 165
    sget-object v1, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$1;->$SwitchMap$org$chromium$chrome$browser$compositor$layouts$phone$stack$StackAnimation$OverviewAnimationType:[I

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 198
    :cond_0
    :goto_0
    return-object v0

    .line 167
    :pswitch_0
    invoke-virtual {p0, p2, p3, p5, p7}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation;->createEnterStackAnimatorSet([Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;IIF)Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;

    move-result-object v0

    goto :goto_0

    .line 170
    :pswitch_1
    invoke-virtual {p0, p2, p3, p5, p7}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation;->createTabFocusedAnimatorSet([Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;IIF)Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;

    move-result-object v0

    goto :goto_0

    .line 173
    :pswitch_2
    invoke-virtual {p0, p2, p4}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation;->createViewMoreAnimatorSet([Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;I)Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;

    move-result-object v0

    goto :goto_0

    .line 176
    :pswitch_3
    invoke-virtual {p0, p2, p7}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation;->createReachTopAnimatorSet([Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;F)Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;

    move-result-object v0

    goto :goto_0

    .line 183
    :pswitch_4
    invoke-virtual {p0, p2, p5, p7, p8}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation;->createUpdateDiscardAnimatorSet([Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;IFF)Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;

    move-result-object v0

    goto :goto_0

    .line 186
    :pswitch_5
    invoke-virtual {p0, p2, p3, p8}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation;->createNewTabOpenedAnimatorSet([Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;IF)Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;

    move-result-object v0

    goto :goto_0

    .line 189
    :pswitch_6
    invoke-virtual {p0, p2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation;->createStartPinchAnimatorSet([Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;)Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;

    move-result-object v0

    goto :goto_0

    .line 192
    :pswitch_7
    invoke-virtual {p0, p2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation;->createFullRollAnimatorSet([Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;)Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;

    move-result-object v0

    goto :goto_0

    .line 165
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method protected abstract createEnterStackAnimatorSet([Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;IIF)Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;
.end method

.method protected createFullRollAnimatorSet([Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;)Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    .line 415
    new-instance v1, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;

    invoke-direct {v1}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;-><init>()V

    move v6, v5

    .line 417
    :goto_0
    array-length v0, p1

    if-ge v6, v0, :cond_0

    .line 418
    aget-object v0, p1, v6

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getLayoutTab()Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    move-result-object v2

    .line 420
    invoke-virtual {v2}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getTiltX()F

    move-result v0

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getScaledContentHeight()F

    move-result v3

    div-float/2addr v3, v7

    invoke-virtual {v2, v0, v3}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setTiltX(FF)V

    .line 421
    invoke-virtual {v2}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getTiltY()F

    move-result v0

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getScaledContentWidth()F

    move-result v3

    div-float/2addr v3, v7

    invoke-virtual {v2, v0, v3}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setTiltY(FF)V

    .line 423
    const/high16 v3, -0x3c4c0000    # -360.0f

    const/16 v4, 0x3e8

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation;->addTiltScrollAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;FII)V

    .line 417
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 426
    :cond_0
    return-object v1
.end method

.method protected createNewTabOpenedAnimatorSet([Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;IF)Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;
    .locals 12

    .prologue
    const/4 v10, 0x0

    const/4 v5, 0x0

    .line 369
    if-ltz p2, :cond_0

    array-length v0, p1

    if-lt p2, v0, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 384
    :goto_0
    return-object v1

    .line 370
    :cond_1
    new-instance v1, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;

    invoke-direct {v1}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;-><init>()V

    .line 372
    aget-object v2, p1, p2

    .line 373
    invoke-virtual {v2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getLayoutTab()Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    move-result-object v0

    invoke-virtual {v0, v10}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setVisible(Z)V

    .line 374
    invoke-virtual {v2, v5}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->setXInStackInfluence(F)V

    .line 375
    invoke-virtual {v2, v5}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->setYInStackInfluence(F)V

    .line 376
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->setDiscardFromClick(Z)V

    .line 377
    invoke-virtual {v2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getLayoutTab()Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getOriginalContentWidth()F

    move-result v0

    invoke-virtual {v2, v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->setDiscardOriginX(F)V

    .line 378
    invoke-virtual {v2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getLayoutTab()Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getOriginalContentHeight()F

    move-result v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    invoke-virtual {v2, v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->setDiscardOriginY(F)V

    .line 379
    invoke-virtual {v2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getLayoutTab()Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    move-result-object v0

    invoke-virtual {v0, v5}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setAlpha(F)V

    .line 380
    invoke-virtual {v2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getLayoutTab()Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    move-result-object v0

    invoke-virtual {v0, v5}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setBorderAlpha(F)V

    .line 381
    sget-object v3, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;->DISCARD_AMOUNT:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation;->getTabCreationDirection()I

    move-result v0

    int-to-float v0, v0

    mul-float v4, v0, p3

    const-wide/16 v6, 0x12c

    const-wide/16 v8, 0x0

    invoke-static {}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;->getAccelerateInterpolator()Landroid/view/animation/AccelerateInterpolator;

    move-result-object v11

    invoke-static/range {v1 .. v11}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$AnimatableAnimation;->addAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;FFJJZLandroid/view/animation/Interpolator;)V

    goto :goto_0
.end method

.method protected abstract createReachTopAnimatorSet([Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;F)Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;
.end method

.method protected createStartPinchAnimatorSet([Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;)Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 396
    new-instance v1, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;

    invoke-direct {v1}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;-><init>()V

    move v6, v5

    .line 398
    :goto_0
    array-length v0, p1

    if-ge v6, v0, :cond_0

    .line 399
    aget-object v0, p1, v6

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getLayoutTab()Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x4b

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation;->addTiltScrollAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;FII)V

    .line 398
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 403
    :cond_0
    return-object v1
.end method

.method protected abstract createTabFocusedAnimatorSet([Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;IIF)Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;
.end method

.method protected createUpdateDiscardAnimatorSet([Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;IFF)Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;
    .locals 25

    .prologue
    .line 287
    new-instance v3, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;

    invoke-direct {v3}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;-><init>()V

    .line 289
    const/4 v5, 0x0

    .line 290
    const/4 v4, 0x0

    .line 291
    const/4 v2, 0x0

    move v8, v2

    move v14, v4

    move v9, v5

    :goto_0
    move-object/from16 v0, p1

    array-length v2, v0

    if-ge v8, v2, :cond_0

    .line 292
    aget-object v10, p1, v8

    .line 294
    invoke-virtual {v10}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getLayoutTab()Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0x96

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation;->addTiltScrollAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;FII)V

    .line 296
    invoke-virtual {v10}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->isDying()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 297
    add-int/lit8 v5, v9, 0x1

    .line 298
    const/4 v2, 0x1

    if-ne v5, v2, :cond_8

    .line 299
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation;->getScreenPositionInScrollDirection(Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;)F

    move-result v14

    move v4, v14

    .line 291
    :goto_1
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    move v14, v4

    move v9, v5

    goto :goto_0

    .line 304
    :cond_0
    sget-object v13, Lorg/chromium/ui/interpolators/BakedBezierInterpolator;->FADE_OUT_CURVE:Lorg/chromium/ui/interpolators/BakedBezierInterpolator;

    .line 306
    const/4 v2, 0x0

    .line 307
    const/4 v4, 0x0

    move/from16 v24, v4

    :goto_2
    move-object/from16 v0, p1

    array-length v4, v0

    move/from16 v0, v24

    if-ge v0, v4, :cond_7

    .line 308
    aget-object v4, p1, v24

    .line 309
    const/4 v5, 0x0

    const/high16 v6, 0x43c80000    # 400.0f

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation;->getScreenSizeInScrollDirection()F

    move-result v7

    div-float/2addr v6, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation;->getScreenPositionInScrollDirection(Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;)F

    move-result v7

    sub-float/2addr v7, v14

    mul-float/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    float-to-long v10, v5

    .line 312
    invoke-virtual {v4}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->isDying()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 313
    invoke-virtual {v4}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getDiscardAmount()F

    move-result v6

    .line 314
    const/4 v5, 0x0

    cmpl-float v5, v6, v5

    if-nez v5, :cond_1

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation;->isDefaultDiscardDirectionPositive()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    :goto_3
    move v6, v5

    .line 315
    :cond_1
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5, v6}, Ljava/lang/Math;->copySign(FF)F

    move-result v7

    .line 316
    const/high16 v5, 0x43160000    # 150.0f

    const/high16 v8, 0x3f800000    # 1.0f

    div-float v9, v6, p4

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    sub-float/2addr v8, v9

    mul-float/2addr v5, v8

    float-to-long v8, v5

    .line 318
    sget-object v5, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;->DISCARD_AMOUNT:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;

    mul-float v7, v7, p4

    const/4 v12, 0x0

    invoke-static/range {v3 .. v13}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$AnimatableAnimation;->addAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;FFJJZLandroid/view/animation/Interpolator;)V

    .line 307
    :goto_4
    add-int/lit8 v4, v24, 0x1

    move/from16 v24, v4

    goto :goto_2

    .line 314
    :cond_2
    const/high16 v5, -0x80000000

    goto :goto_3

    .line 321
    :cond_3
    invoke-virtual {v4}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getDiscardAmount()F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_4

    .line 322
    sget-object v17, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;->DISCARD_AMOUNT:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;

    invoke-virtual {v4}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getDiscardAmount()F

    move-result v18

    const/16 v19, 0x0

    const-wide/16 v20, 0x96

    const-wide/16 v22, 0x0

    move-object v15, v3

    move-object/from16 v16, v4

    invoke-static/range {v15 .. v23}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$AnimatableAnimation;->addAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;FFJJ)V

    .line 326
    :cond_4
    mul-int v5, p2, v2

    int-to-float v5, v5

    move/from16 v0, p3

    invoke-static {v5, v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->screenToScroll(FF)F

    move-result v7

    .line 331
    invoke-virtual {v4}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getDiscardAmount()F

    move-result v5

    cmpl-float v5, v5, p4

    if-ltz v5, :cond_6

    .line 332
    invoke-virtual {v4, v7}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->setScrollOffset(F)V

    .line 333
    const v5, 0x3f666666    # 0.9f

    invoke-virtual {v4, v5}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->setScale(F)V

    .line 341
    :cond_5
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 335
    :cond_6
    invoke-virtual {v4}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getScrollOffset()F

    move-result v6

    .line 336
    cmpl-float v5, v6, v7

    if-eqz v5, :cond_5

    .line 337
    sget-object v5, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;->SCROLL_OFFSET:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;

    const-wide/16 v8, 0x1f4

    invoke-static/range {v3 .. v11}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$AnimatableAnimation;->addAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;FFJJ)V

    goto :goto_5

    .line 344
    :cond_7
    return-object v3

    :cond_8
    move v4, v14

    goto/16 :goto_1

    :cond_9
    move v4, v14

    move v5, v9

    goto/16 :goto_1
.end method

.method protected abstract createViewMoreAnimatorSet([Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;I)Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;
.end method

.method protected abstract getScreenPositionInScrollDirection(Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;)F
.end method

.method protected abstract getScreenSizeInScrollDirection()F
.end method

.method protected abstract getTabCreationDirection()I
.end method

.method protected getToolbarOffsetToLineUpWithBorder()F
    .locals 2

    .prologue
    .line 434
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation;->mHeight:F

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation;->mHeightMinusTopControls:F

    sub-float/2addr v0, v1

    .line 435
    iget v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation;->mBorderTopOpaqueHeight:F

    sub-float/2addr v0, v1

    return v0
.end method

.method protected abstract isDefaultDiscardDirectionPositive()Z
.end method
