.class Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimationPortrait;
.super Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation;
.source "StackAnimationPortrait.java"


# direct methods
.method public constructor <init>(FFFFFF)V
    .locals 0

    .prologue
    .line 33
    invoke-direct/range {p0 .. p6}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation;-><init>(FFFFFF)V

    .line 35
    return-void
.end method


# virtual methods
.method protected addTiltScrollAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;FII)V
    .locals 10

    .prologue
    .line 220
    sget-object v3, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;->TILTX:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

    invoke-virtual {p2}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getTiltX()F

    move-result v4

    int-to-long v6, p4

    int-to-long v8, p5

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-static/range {v1 .. v9}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$AnimatableAnimation;->addAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;FFJJ)V

    .line 221
    return-void
.end method

.method protected createEnterStackAnimatorSet([Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;IIF)Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;
    .locals 17

    .prologue
    .line 40
    new-instance v3, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;

    invoke-direct {v3}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;-><init>()V

    .line 41
    const/4 v2, 0x0

    move/from16 v0, p4

    invoke-static {v2, v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->screenToScroll(FF)F

    move-result v6

    .line 43
    const/4 v2, 0x0

    .line 44
    if-ltz p2, :cond_0

    move-object/from16 v0, p1

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    move/from16 v0, p2

    if-ge v0, v4, :cond_0

    .line 45
    aget-object v2, p1, p2

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getScrollOffset()F

    move-result v4

    .line 46
    add-int/lit8 v2, p2, 0x1

    aget-object v2, p1, v2

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getScrollOffset()F

    move-result v5

    .line 47
    if-nez p2, :cond_1

    move/from16 v0, p3

    int-to-float v2, v0

    .line 48
    :goto_0
    aget-object v7, p1, p2

    invoke-virtual {v7}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getLayoutTab()Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    move-result-object v7

    invoke-virtual {v7}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getScaledContentHeight()F

    move-result v7

    const v8, 0x3eb33333    # 0.35f

    mul-float/2addr v7, v8

    .line 50
    sub-float/2addr v4, v5

    add-float/2addr v2, v4

    add-float/2addr v2, v7

    const/4 v4, 0x0

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 53
    :cond_0
    const/4 v4, 0x0

    move/from16 v16, v4

    :goto_1
    move-object/from16 v0, p1

    array-length v4, v0

    move/from16 v0, v16

    if-ge v0, v4, :cond_4

    .line 54
    aget-object v4, p1, v16

    .line 56
    invoke-virtual {v4}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->resetOffset()V

    .line 57
    const v5, 0x3f666666    # 0.9f

    invoke-virtual {v4, v5}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->setScale(F)V

    .line 58
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->setAlpha(F)V

    .line 59
    invoke-virtual {v4}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getLayoutTab()Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setToolbarAlpha(F)V

    .line 60
    invoke-virtual {v4}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getLayoutTab()Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    move-result-object v5

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v5, v7}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setBorderScale(F)V

    .line 62
    mul-int v5, v16, p3

    int-to-float v5, v5

    move/from16 v0, p4

    invoke-static {v5, v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->screenToScroll(FF)F

    move-result v7

    .line 64
    move/from16 v0, v16

    move/from16 v1, p2

    if-ge v0, v1, :cond_2

    .line 65
    invoke-virtual {v4}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getLayoutTab()Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    move-result-object v5

    move-object/from16 v0, p0

    iget v8, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimationPortrait;->mHeightMinusTopControls:F

    invoke-virtual {v5, v8}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setMaxContentHeight(F)V

    .line 66
    sget-object v5, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;->SCROLL_OFFSET:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;

    const-wide/16 v8, 0x12c

    const-wide/16 v10, 0x0

    invoke-static/range {v3 .. v11}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$AnimatableAnimation;->addAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;FFJJ)V

    .line 53
    :goto_2
    add-int/lit8 v4, v16, 0x1

    move/from16 v16, v4

    goto :goto_1

    .line 47
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 68
    :cond_2
    move/from16 v0, v16

    move/from16 v1, p2

    if-le v0, v1, :cond_3

    .line 69
    invoke-virtual {v4}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getLayoutTab()Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    move-result-object v5

    move-object/from16 v0, p0

    iget v8, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimationPortrait;->mHeightMinusTopControls:F

    invoke-virtual {v5, v8}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setMaxContentHeight(F)V

    .line 70
    add-float v5, v7, v2

    invoke-virtual {v4, v5}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->setScrollOffset(F)V

    .line 71
    sget-object v9, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;->Y_IN_STACK_OFFSET:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;

    move-object/from16 v0, p0

    iget v10, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimationPortrait;->mHeight:F

    const/4 v11, 0x0

    const-wide/16 v12, 0x12c

    const-wide/16 v14, 0x0

    move-object v7, v3

    move-object v8, v4

    invoke-static/range {v7 .. v15}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$AnimatableAnimation;->addAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;FFJJ)V

    goto :goto_2

    .line 74
    :cond_3
    invoke-virtual {v4, v7}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->setScrollOffset(F)V

    .line 76
    invoke-virtual {v4}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getLayoutTab()Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    move-result-object v8

    sget-object v9, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;->MAX_CONTENT_HEIGHT:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

    invoke-virtual {v4}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getLayoutTab()Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    move-result-object v5

    invoke-virtual {v5}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getUnclampedOriginalContentHeight()F

    move-result v10

    move-object/from16 v0, p0

    iget v11, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimationPortrait;->mHeightMinusTopControls:F

    const-wide/16 v12, 0x12c

    const-wide/16 v14, 0xa

    move-object v7, v3

    invoke-static/range {v7 .. v15}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$AnimatableAnimation;->addAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;FFJJ)V

    .line 80
    sget-object v9, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;->Y_IN_STACK_INFLUENCE:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const-wide/16 v12, 0xc8

    const-wide/16 v14, 0x0

    move-object v7, v3

    move-object v8, v4

    invoke-static/range {v7 .. v15}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$AnimatableAnimation;->addAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;FFJJ)V

    .line 82
    sget-object v9, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;->SCALE:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;

    const/high16 v10, 0x3f800000    # 1.0f

    const v11, 0x3f666666    # 0.9f

    const-wide/16 v12, 0xc8

    const-wide/16 v14, 0x0

    move-object v7, v3

    move-object v8, v4

    invoke-static/range {v7 .. v15}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$AnimatableAnimation;->addAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;FFJJ)V

    .line 84
    invoke-virtual {v4}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getLayoutTab()Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    move-result-object v8

    sget-object v9, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;->TOOLBAR_ALPHA:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const-wide/16 v12, 0xc8

    const-wide/16 v14, 0x64

    move-object v7, v3

    invoke-static/range {v7 .. v15}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$AnimatableAnimation;->addAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;FFJJ)V

    .line 86
    invoke-virtual {v4}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getLayoutTab()Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    move-result-object v8

    sget-object v9, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;->TOOLBAR_Y_OFFSET:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

    const/4 v10, 0x0

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimationPortrait;->getToolbarOffsetToLineUpWithBorder()F

    move-result v11

    const-wide/16 v12, 0xc8

    const-wide/16 v14, 0x0

    move-object v7, v3

    invoke-static/range {v7 .. v15}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$AnimatableAnimation;->addAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;FFJJ)V

    .line 89
    invoke-virtual {v4}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getLayoutTab()Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    move-result-object v8

    sget-object v9, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;->SIDE_BORDER_SCALE:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const-wide/16 v12, 0xc8

    const-wide/16 v14, 0x0

    move-object v7, v3

    invoke-static/range {v7 .. v15}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$AnimatableAnimation;->addAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;FFJJ)V

    .line 92
    move-object/from16 v0, p0

    iget v5, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimationPortrait;->mHeight:F

    move-object/from16 v0, p0

    iget v7, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimationPortrait;->mHeightMinusTopControls:F

    sub-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimationPortrait;->mBorderTopHeight:F

    sub-float/2addr v5, v7

    invoke-virtual {v4, v5}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->setYOutOfStack(F)V

    goto/16 :goto_2

    .line 96
    :cond_4
    return-object v3
.end method

.method protected createNewTabOpenedAnimatorSet([Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;IF)Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;
    .locals 1

    .prologue
    .line 203
    neg-float v0, p3

    invoke-super {p0, p1, p2, v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation;->createNewTabOpenedAnimatorSet([Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;IF)Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;

    move-result-object v0

    return-object v0
.end method

.method protected createReachTopAnimatorSet([Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;F)Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;
    .locals 11

    .prologue
    .line 184
    new-instance v1, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;

    invoke-direct {v1}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;-><init>()V

    .line 186
    const/4 v2, 0x0

    .line 187
    const/4 v0, 0x0

    move v10, v2

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 188
    aget-object v2, p1, v0

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getLayoutTab()Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getY()F

    move-result v2

    cmpl-float v2, v10, v2

    if-gez v2, :cond_0

    .line 191
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

    .line 194
    aget-object v2, p1, v0

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getLayoutTab()Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getScaledContentHeight()F

    move-result v2

    add-float/2addr v2, v10

    .line 187
    add-int/lit8 v0, v0, 0x1

    move v10, v2

    goto :goto_0

    .line 197
    :cond_0
    return-object v1
.end method

.method protected createTabFocusedAnimatorSet([Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;IIF)Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;
    .locals 16

    .prologue
    .line 102
    new-instance v3, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;

    invoke-direct {v3}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;-><init>()V

    .line 103
    const/4 v2, 0x0

    move v14, v2

    :goto_0
    move-object/from16 v0, p1

    array-length v2, v0

    if-ge v14, v2, :cond_3

    .line 104
    aget-object v15, p1, v14

    .line 105
    invoke-virtual {v15}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getLayoutTab()Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    move-result-object v4

    .line 107
    const/4 v5, 0x0

    const/16 v6, 0x190

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimationPortrait;->addTiltScrollAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;FII)V

    .line 108
    sget-object v7, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;->DISCARD_AMOUNT:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;

    invoke-virtual {v15}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getDiscardAmount()F

    move-result v8

    const/4 v9, 0x0

    const-wide/16 v10, 0x190

    const-wide/16 v12, 0x0

    move-object v5, v3

    move-object v6, v15

    invoke-static/range {v5 .. v13}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$AnimatableAnimation;->addAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;FFJJ)V

    .line 111
    move/from16 v0, p2

    if-ge v14, v0, :cond_0

    .line 113
    sget-object v5, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;->SCROLL_OFFSET:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;

    invoke-virtual {v15}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getScrollOffset()F

    move-result v6

    invoke-virtual {v15}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getScrollOffset()F

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimationPortrait;->mHeight:F

    sub-float/2addr v2, v4

    move/from16 v0, p3

    int-to-float v4, v0

    sub-float v7, v2, v4

    const-wide/16 v8, 0x190

    const-wide/16 v10, 0x0

    move-object v4, v15

    invoke-static/range {v3 .. v11}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$AnimatableAnimation;->addAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;FFJJ)V

    .line 103
    :goto_1
    add-int/lit8 v2, v14, 0x1

    move v14, v2

    goto :goto_0

    .line 116
    :cond_0
    move/from16 v0, p2

    if-le v14, v0, :cond_1

    .line 119
    invoke-virtual {v4}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getY()F

    move-result v2

    .line 120
    move-object/from16 v0, p0

    iget v4, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimationPortrait;->mHeight:F

    sub-float v2, v4, v2

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimationPortrait;->mHeight:F

    invoke-static {v2, v4, v5}, Lorg/chromium/chrome/browser/util/MathUtils;->clamp(FFF)F

    move-result v2

    .line 121
    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimationPortrait;->mHeight:F

    div-float/2addr v2, v4

    .line 122
    sget-object v5, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;->Y_IN_STACK_OFFSET:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;

    invoke-virtual {v15}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getYInStackOffset()F

    move-result v6

    invoke-virtual {v15}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getYInStackOffset()F

    move-result v4

    move-object/from16 v0, p0

    iget v7, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimationPortrait;->mHeight:F

    add-float/2addr v7, v4

    const-wide/16 v8, 0x190

    float-to-long v10, v2

    sub-long/2addr v8, v10

    float-to-long v10, v2

    move-object v4, v15

    invoke-static/range {v3 .. v11}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$AnimatableAnimation;->addAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;FFJJ)V

    goto :goto_1

    .line 130
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->setXOutOfStack(F)V

    .line 131
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->setYOutOfStack(F)V

    .line 132
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v4, v2}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setBorderScale(F)V

    .line 134
    sget-object v7, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;->SCROLL_OFFSET:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;

    invoke-virtual {v15}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getScrollOffset()F

    move-result v8

    const/4 v2, 0x0

    invoke-virtual {v15}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getScrollOffset()F

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimationPortrait;->mWidth:F

    sub-float/2addr v5, v6

    move/from16 v0, p3

    int-to-float v6, v0

    sub-float/2addr v5, v6

    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v9

    const-wide/16 v10, 0x190

    const-wide/16 v12, 0x0

    move-object v5, v3

    move-object v6, v15

    invoke-static/range {v5 .. v13}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$AnimatableAnimation;->addAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;FFJJ)V

    .line 137
    sget-object v7, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;->SCALE:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;

    invoke-virtual {v15}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getScale()F

    move-result v8

    const/high16 v9, 0x3f800000    # 1.0f

    const-wide/16 v10, 0x190

    const-wide/16 v12, 0x0

    move-object v5, v3

    move-object v6, v15

    invoke-static/range {v5 .. v13}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$AnimatableAnimation;->addAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;FFJJ)V

    .line 139
    sget-object v7, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;->Y_IN_STACK_INFLUENCE:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;

    invoke-virtual {v15}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getYInStackInfluence()F

    move-result v8

    const/4 v9, 0x0

    const-wide/16 v10, 0xc8

    const-wide/16 v12, 0x0

    move-object v5, v3

    move-object v6, v15

    invoke-static/range {v5 .. v13}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$AnimatableAnimation;->addAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;FFJJ)V

    .line 141
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

    .line 145
    move-object/from16 v0, p0

    iget v2, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimationPortrait;->mHeight:F

    move-object/from16 v0, p0

    iget v5, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimationPortrait;->mHeightMinusTopControls:F

    sub-float/2addr v2, v5

    move-object/from16 v0, p0

    iget v5, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimationPortrait;->mBorderTopHeight:F

    sub-float/2addr v2, v5

    invoke-virtual {v15, v2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->setYOutOfStack(F)V

    .line 146
    invoke-virtual {v4}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->shouldStall()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 147
    sget-object v5, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;->SATURATION:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const-wide/16 v8, 0xc8

    const-wide/16 v10, 0x0

    invoke-static/range {v3 .. v11}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$AnimatableAnimation;->addAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;FFJJ)V

    .line 150
    :cond_2
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

    .line 152
    invoke-virtual {v15}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getLayoutTab()Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    move-result-object v4

    sget-object v5, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;->TOOLBAR_Y_OFFSET:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimationPortrait;->getToolbarOffsetToLineUpWithBorder()F

    move-result v6

    const/4 v7, 0x0

    const-wide/16 v8, 0xfa

    const-wide/16 v10, 0x0

    invoke-static/range {v3 .. v11}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$AnimatableAnimation;->addAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;FFJJ)V

    .line 155
    invoke-virtual {v15}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getLayoutTab()Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    move-result-object v4

    sget-object v5, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;->SIDE_BORDER_SCALE:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const-wide/16 v8, 0xfa

    const-wide/16 v10, 0x0

    invoke-static/range {v3 .. v11}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$AnimatableAnimation;->addAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;FFJJ)V

    goto/16 :goto_1

    .line 160
    :cond_3
    return-object v3
.end method

.method protected createViewMoreAnimatorSet([Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;I)Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;
    .locals 11

    .prologue
    .line 165
    new-instance v1, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;

    invoke-direct {v1}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;-><init>()V

    .line 167
    add-int/lit8 v0, p2, 0x1

    array-length v2, p1

    if-lt v0, v2, :cond_1

    .line 179
    :cond_0
    return-object v1

    .line 169
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

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getScaledContentHeight()F

    move-result v2

    const/high16 v3, 0x3f400000    # 0.75f

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    .line 173
    const/high16 v2, 0x43480000    # 200.0f

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 174
    add-int/lit8 v0, p2, 0x1

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 175
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

    .line 174
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected getScreenPositionInScrollDirection(Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;)F
    .locals 1

    .prologue
    .line 214
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getLayoutTab()Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getY()F

    move-result v0

    return v0
.end method

.method protected getScreenSizeInScrollDirection()F
    .locals 1

    .prologue
    .line 225
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimationPortrait;->mHeight:F

    return v0
.end method

.method protected getTabCreationDirection()I
    .locals 1

    .prologue
    .line 230
    const/4 v0, -0x1

    return v0
.end method

.method protected isDefaultDiscardDirectionPositive()Z
    .locals 1

    .prologue
    .line 209
    invoke-static {}, Lorg/chromium/ui/base/LocalizationUtils;->isLayoutRtl()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
