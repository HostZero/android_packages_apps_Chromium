.class Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimationLandscape;
.super Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation;
.source "StackAnimationLandscape.java"


# direct methods
.method public constructor <init>(FFFFFF)V
    .locals 0

    .prologue
    .line 34
    invoke-direct/range {p0 .. p6}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation;-><init>(FFFFFF)V

    .line 36
    return-void
.end method


# virtual methods
.method protected addTiltScrollAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;FII)V
    .locals 10

    .prologue
    .line 207
    sget-object v3, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;->TILTY:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

    invoke-virtual {p2}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getTiltY()F

    move-result v4

    int-to-long v6, p4

    int-to-long v8, p5

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-static/range {v1 .. v9}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$AnimatableAnimation;->addAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;FFJJ)V

    .line 208
    return-void
.end method

.method protected createEnterStackAnimatorSet([Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;IIF)Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;
    .locals 15

    .prologue
    .line 41
    new-instance v3, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;

    invoke-direct {v3}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;-><init>()V

    .line 42
    const/4 v2, 0x0

    move/from16 v0, p4

    invoke-static {v2, v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->screenToScroll(FF)F

    move-result v12

    .line 44
    const/4 v2, 0x0

    :goto_0
    move-object/from16 v0, p1

    array-length v4, v0

    if-ge v2, v4, :cond_3

    .line 45
    aget-object v13, p1, v2

    .line 47
    invoke-virtual {v13}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->resetOffset()V

    .line 48
    const v4, 0x3f666666    # 0.9f

    invoke-virtual {v13, v4}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->setScale(F)V

    .line 49
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v13, v4}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->setAlpha(F)V

    .line 50
    invoke-virtual {v13}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getLayoutTab()Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setToolbarAlpha(F)V

    .line 51
    invoke-virtual {v13}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getLayoutTab()Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setBorderScale(F)V

    .line 53
    mul-int v4, v2, p3

    int-to-float v4, v4

    move/from16 v0, p4

    invoke-static {v4, v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->screenToScroll(FF)F

    move-result v14

    .line 55
    invoke-virtual {v13}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getLayoutTab()Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    move-result-object v4

    sget-object v5, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;->MAX_CONTENT_HEIGHT:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

    invoke-virtual {v13}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getLayoutTab()Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    move-result-object v6

    invoke-virtual {v6}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getUnclampedOriginalContentHeight()F

    move-result v6

    iget v7, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimationLandscape;->mHeightMinusTopControls:F

    const-wide/16 v8, 0x12c

    const-wide/16 v10, 0x0

    invoke-static/range {v3 .. v11}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$AnimatableAnimation;->addAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;FFJJ)V

    .line 58
    move/from16 v0, p2

    if-ge v2, v0, :cond_0

    .line 59
    sget-object v5, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;->SCROLL_OFFSET:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;

    const-wide/16 v8, 0x12c

    const-wide/16 v10, 0x0

    move-object v4, v13

    move v6, v12

    move v7, v14

    invoke-static/range {v3 .. v11}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$AnimatableAnimation;->addAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;FFJJ)V

    .line 44
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 61
    :cond_0
    move/from16 v0, p2

    if-le v2, v0, :cond_2

    .line 62
    invoke-virtual {v13, v14}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->setScrollOffset(F)V

    .line 63
    sget-object v5, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;->X_IN_STACK_OFFSET:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;

    iget v4, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimationLandscape;->mWidth:F

    iget v6, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimationLandscape;->mHeight:F

    cmpl-float v4, v4, v6

    if-lez v4, :cond_1

    invoke-static {}, Lorg/chromium/ui/base/LocalizationUtils;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimationLandscape;->mWidth:F

    neg-float v6, v4

    :goto_2
    const/4 v7, 0x0

    const-wide/16 v8, 0x12c

    const-wide/16 v10, 0x0

    move-object v4, v13

    invoke-static/range {v3 .. v11}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$AnimatableAnimation;->addAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;FFJJ)V

    goto :goto_1

    :cond_1
    iget v6, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimationLandscape;->mWidth:F

    goto :goto_2

    .line 67
    :cond_2
    invoke-virtual {v13, v14}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->setScrollOffset(F)V

    .line 68
    sget-object v5, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;->X_IN_STACK_INFLUENCE:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const-wide/16 v8, 0xc8

    const-wide/16 v10, 0x0

    move-object v4, v13

    invoke-static/range {v3 .. v11}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$AnimatableAnimation;->addAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;FFJJ)V

    .line 70
    sget-object v5, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;->SCALE:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3f666666    # 0.9f

    const-wide/16 v8, 0xc8

    const-wide/16 v10, 0x0

    move-object v4, v13

    invoke-static/range {v3 .. v11}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$AnimatableAnimation;->addAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;FFJJ)V

    .line 72
    invoke-virtual {v13}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getLayoutTab()Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    move-result-object v4

    sget-object v5, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;->TOOLBAR_ALPHA:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const-wide/16 v8, 0x64

    const-wide/16 v10, 0x64

    invoke-static/range {v3 .. v11}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$AnimatableAnimation;->addAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;FFJJ)V

    .line 74
    invoke-virtual {v13}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getLayoutTab()Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    move-result-object v4

    sget-object v5, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;->TOOLBAR_Y_OFFSET:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

    const/4 v6, 0x0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimationLandscape;->getToolbarOffsetToLineUpWithBorder()F

    move-result v7

    const-wide/16 v8, 0xc8

    const-wide/16 v10, 0x0

    invoke-static/range {v3 .. v11}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$AnimatableAnimation;->addAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;FFJJ)V

    .line 77
    invoke-virtual {v13}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getLayoutTab()Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    move-result-object v4

    sget-object v5, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;->SIDE_BORDER_SCALE:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const-wide/16 v8, 0xc8

    const-wide/16 v10, 0x0

    invoke-static/range {v3 .. v11}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$AnimatableAnimation;->addAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;FFJJ)V

    goto :goto_1

    .line 82
    :cond_3
    return-object v3
.end method

.method protected createReachTopAnimatorSet([Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;F)Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;
    .locals 11

    .prologue
    .line 178
    new-instance v1, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;

    invoke-direct {v1}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;-><init>()V

    .line 180
    const/4 v2, 0x0

    .line 181
    const/4 v0, 0x0

    move v10, v2

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 182
    aget-object v2, p1, v0

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getLayoutTab()Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getX()F

    move-result v2

    cmpl-float v2, v10, v2

    if-gez v2, :cond_0

    .line 185
    aget-object v2, p1, v0

    sget-object v3, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;->SCROLL_OFFSET:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;

    aget-object v4, p1, v0

    invoke-virtual {v4}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getScrollOffset()F

    move-result v4

    invoke-static {v10, p2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->screenToScroll(FF)F

    move-result v5

    const-wide/16 v6, 0x190

    const-wide/16 v8, 0x0

    invoke-static/range {v1 .. v9}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$AnimatableAnimation;->addAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;FFJJ)V

    .line 188
    aget-object v2, p1, v0

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getLayoutTab()Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getScaledContentWidth()F

    move-result v2

    add-float/2addr v2, v10

    .line 181
    add-int/lit8 v0, v0, 0x1

    move v10, v2

    goto :goto_0

    .line 191
    :cond_0
    return-object v1
.end method

.method protected createTabFocusedAnimatorSet([Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;IIF)Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;
    .locals 16

    .prologue
    .line 88
    new-instance v3, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;

    invoke-direct {v3}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;-><init>()V

    .line 89
    const/4 v2, 0x0

    move v14, v2

    :goto_0
    move-object/from16 v0, p1

    array-length v2, v0

    if-ge v14, v2, :cond_5

    .line 90
    aget-object v15, p1, v14

    .line 91
    invoke-virtual {v15}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getLayoutTab()Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    move-result-object v4

    .line 93
    const/4 v5, 0x0

    const/16 v6, 0x190

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimationLandscape;->addTiltScrollAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;FII)V

    .line 94
    sget-object v7, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;->DISCARD_AMOUNT:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;

    invoke-virtual {v15}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getDiscardAmount()F

    move-result v8

    const/4 v9, 0x0

    const-wide/16 v10, 0x190

    const-wide/16 v12, 0x0

    move-object v5, v3

    move-object v6, v15

    invoke-static/range {v5 .. v13}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$AnimatableAnimation;->addAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;FFJJ)V

    .line 97
    move/from16 v0, p2

    if-ge v14, v0, :cond_0

    .line 99
    sget-object v5, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;->SCROLL_OFFSET:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;

    invoke-virtual {v15}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getScrollOffset()F

    move-result v6

    const/4 v2, 0x0

    invoke-virtual {v15}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getScrollOffset()F

    move-result v4

    move-object/from16 v0, p0

    iget v7, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimationLandscape;->mWidth:F

    sub-float/2addr v4, v7

    move/from16 v0, p3

    int-to-float v7, v0

    sub-float/2addr v4, v7

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v7

    const-wide/16 v8, 0x190

    const-wide/16 v10, 0x0

    move-object v4, v15

    invoke-static/range {v3 .. v11}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$AnimatableAnimation;->addAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;FFJJ)V

    .line 89
    :goto_1
    add-int/lit8 v2, v14, 0x1

    move v14, v2

    goto :goto_0

    .line 102
    :cond_0
    move/from16 v0, p2

    if-le v14, v0, :cond_3

    .line 105
    invoke-virtual {v4}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getX()F

    move-result v2

    .line 106
    invoke-static {}, Lorg/chromium/ui/base/LocalizationUtils;->isLayoutRtl()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getScaledContentWidth()F

    move-result v4

    add-float/2addr v2, v4

    .line 109
    :goto_2
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimationLandscape;->mWidth:F

    invoke-static {v2, v4, v5}, Lorg/chromium/chrome/browser/util/MathUtils;->clamp(FFF)F

    move-result v2

    .line 110
    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimationLandscape;->mWidth:F

    div-float v4, v2, v4

    .line 111
    sget-object v5, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;->X_IN_STACK_OFFSET:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;

    invoke-virtual {v15}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getXInStackOffset()F

    move-result v6

    invoke-virtual {v15}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getXInStackOffset()F

    move-result v7

    invoke-static {}, Lorg/chromium/ui/base/LocalizationUtils;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimationLandscape;->mWidth:F

    neg-float v2, v2

    :goto_3
    add-float/2addr v7, v2

    const-wide/16 v8, 0x190

    float-to-long v10, v4

    sub-long/2addr v8, v10

    float-to-long v10, v4

    move-object v4, v15

    invoke-static/range {v3 .. v11}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$AnimatableAnimation;->addAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;FFJJ)V

    goto :goto_1

    .line 106
    :cond_1
    move-object/from16 v0, p0

    iget v4, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimationLandscape;->mWidth:F

    sub-float v2, v4, v2

    goto :goto_2

    .line 111
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimationLandscape;->mWidth:F

    goto :goto_3

    .line 121
    :cond_3
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->setXOutOfStack(F)V

    .line 122
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->setYOutOfStack(F)V

    .line 123
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v4, v2}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setBorderScale(F)V

    .line 125
    sget-object v7, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;->SCROLL_OFFSET:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;

    invoke-virtual {v15}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getScrollOffset()F

    move-result v8

    const/4 v2, 0x0

    move/from16 v0, p4

    invoke-static {v2, v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->screenToScroll(FF)F

    move-result v9

    const-wide/16 v10, 0x190

    const-wide/16 v12, 0x0

    move-object v5, v3

    move-object v6, v15

    invoke-static/range {v5 .. v13}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$AnimatableAnimation;->addAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;FFJJ)V

    .line 127
    sget-object v7, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;->SCALE:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;

    invoke-virtual {v15}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getScale()F

    move-result v8

    const/high16 v9, 0x3f800000    # 1.0f

    const-wide/16 v10, 0x190

    const-wide/16 v12, 0x0

    move-object v5, v3

    move-object v6, v15

    invoke-static/range {v5 .. v13}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$AnimatableAnimation;->addAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;FFJJ)V

    .line 129
    sget-object v7, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;->X_IN_STACK_INFLUENCE:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;

    invoke-virtual {v15}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getXInStackInfluence()F

    move-result v8

    const/4 v9, 0x0

    const-wide/16 v10, 0x190

    const-wide/16 v12, 0x0

    move-object v5, v3

    move-object v6, v15

    invoke-static/range {v5 .. v13}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$AnimatableAnimation;->addAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;FFJJ)V

    .line 131
    sget-object v7, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;->Y_IN_STACK_INFLUENCE:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;

    invoke-virtual {v15}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getYInStackInfluence()F

    move-result v8

    const/4 v9, 0x0

    const-wide/16 v10, 0xc8

    const-wide/16 v12, 0x0

    move-object v5, v3

    move-object v6, v15

    invoke-static/range {v5 .. v13}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$AnimatableAnimation;->addAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;FFJJ)V

    .line 134
    invoke-virtual {v15}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getLayoutTab()Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    move-result-object v6

    sget-object v7, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;->MAX_CONTENT_HEIGHT:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

    invoke-virtual {v15}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getLayoutTab()Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getMaxContentHeight()F

    move-result v8

    invoke-virtual {v15}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getLayoutTab()Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getUnclampedOriginalContentHeight()F

    move-result v9

    const-wide/16 v10, 0x190

    const-wide/16 v12, 0x0

    move-object v5, v3

    invoke-static/range {v5 .. v13}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$AnimatableAnimation;->addAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;FFJJ)V

    .line 138
    move-object/from16 v0, p0

    iget v2, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimationLandscape;->mHeight:F

    move-object/from16 v0, p0

    iget v5, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimationLandscape;->mHeightMinusTopControls:F

    sub-float/2addr v2, v5

    move-object/from16 v0, p0

    iget v5, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimationLandscape;->mBorderTopHeight:F

    sub-float/2addr v2, v5

    invoke-virtual {v15, v2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->setYOutOfStack(F)V

    .line 140
    invoke-virtual {v4}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->shouldStall()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 141
    sget-object v5, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;->SATURATION:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const-wide/16 v8, 0xc8

    const-wide/16 v10, 0x0

    invoke-static/range {v3 .. v11}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$AnimatableAnimation;->addAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;FFJJ)V

    .line 144
    :cond_4
    invoke-virtual {v15}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getLayoutTab()Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    move-result-object v2

    sget-object v5, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;->TOOLBAR_ALPHA:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

    invoke-virtual {v4}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getToolbarAlpha()F

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    const-wide/16 v8, 0xfa

    const-wide/16 v10, 0x0

    move-object v4, v2

    invoke-static/range {v3 .. v11}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$AnimatableAnimation;->addAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;FFJJ)V

    .line 146
    invoke-virtual {v15}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getLayoutTab()Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    move-result-object v4

    sget-object v5, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;->TOOLBAR_Y_OFFSET:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimationLandscape;->getToolbarOffsetToLineUpWithBorder()F

    move-result v6

    const/4 v7, 0x0

    const-wide/16 v8, 0xfa

    const-wide/16 v10, 0x0

    invoke-static/range {v3 .. v11}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$AnimatableAnimation;->addAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;FFJJ)V

    .line 149
    invoke-virtual {v15}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getLayoutTab()Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    move-result-object v4

    sget-object v5, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;->SIDE_BORDER_SCALE:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const-wide/16 v8, 0xfa

    const-wide/16 v10, 0x0

    invoke-static/range {v3 .. v11}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$AnimatableAnimation;->addAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;FFJJ)V

    goto/16 :goto_1

    .line 154
    :cond_5
    return-object v3
.end method

.method protected createViewMoreAnimatorSet([Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;I)Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;
    .locals 11

    .prologue
    .line 159
    new-instance v1, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;

    invoke-direct {v1}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;-><init>()V

    .line 161
    add-int/lit8 v0, p2, 0x1

    array-length v2, p1

    if-lt v0, v2, :cond_1

    .line 173
    :cond_0
    return-object v1

    .line 163
    :cond_1
    aget-object v0, p1, p2

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getScrollOffset()F

    move-result v0

    add-int/lit8 v2, p2, 0x1

    aget-object v2, p1, v2

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getScrollOffset()F

    move-result v2

    sub-float/2addr v0, v2

    aget-object v2, p1, p2

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getLayoutTab()Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getScaledContentWidth()F

    move-result v2

    const/high16 v3, 0x3f400000    # 0.75f

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    .line 167
    const/high16 v2, 0x43480000    # 200.0f

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 168
    add-int/lit8 v0, p2, 0x1

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 169
    aget-object v2, p1, v0

    sget-object v3, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;->SCROLL_OFFSET:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;

    aget-object v4, p1, v0

    invoke-virtual {v4}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getScrollOffset()F

    move-result v4

    aget-object v5, p1, v0

    invoke-virtual {v5}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getScrollOffset()F

    move-result v5

    add-float/2addr v5, v10

    const-wide/16 v6, 0x190

    const-wide/16 v8, 0x0

    invoke-static/range {v1 .. v9}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$AnimatableAnimation;->addAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;FFJJ)V

    .line 168
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected getScreenPositionInScrollDirection(Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;)F
    .locals 1

    .prologue
    .line 201
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getLayoutTab()Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getX()F

    move-result v0

    return v0
.end method

.method protected getScreenSizeInScrollDirection()F
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimationLandscape;->mWidth:F

    return v0
.end method

.method protected getTabCreationDirection()I
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x1

    return v0
.end method

.method protected isDefaultDiscardDirectionPositive()Z
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x1

    return v0
.end method
