.class public Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;
.super Ljava/lang/Object;
.source "LayoutTab.java"

# interfaces
.implements Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;


# static fields
.field public static final ALPHA_THRESHOLD:F = 0.003921569f

.field public static final CLOSE_BUTTON_WIDTH_DP:F = 36.0f

.field private static sCompositorButtonSlop:F

.field private static sDpToPx:F

.field private static sPxToDp:F


# instance fields
.field private mAlpha:F

.field private mAnonymizeToolbar:Z

.field private mBackgroundColor:I

.field private mBorderAlpha:F

.field private mBorderCloseButtonAlpha:F

.field private mBorderScale:F

.field private final mBounds:Landroid/graphics/RectF;

.field private mBrightness:F

.field private mCanUseLiveTexture:Z

.field private mClippedHeight:F

.field private mClippedWidth:F

.field private mClippedX:F

.field private mClippedY:F

.field private final mClosePlacement:Landroid/graphics/RectF;

.field private mDecorationAlpha:F

.field private final mId:I

.field private mInitFromHostCalled:Z

.field private mInsetBorderVertical:Z

.field private final mIsIncognito:Z

.field private mIsTitleNeeded:Z

.field private mMaxContentHeight:F

.field private mMaxContentWidth:F

.field private mOriginalContentHeight:F

.field private mOriginalContentWidth:F

.field private mRenderX:F

.field private mRenderY:F

.field private mSaturation:F

.field private mScale:F

.field private mShouldStall:Z

.field private mShowToolbar:Z

.field private mSideBorderScale:F

.field private mStaticToViewBlend:F

.field private mTextBoxAlpha:F

.field private mTextBoxBackgroundColor:I

.field private mTiltX:F

.field private mTiltXPivotOffset:F

.field private mTiltY:F

.field private mTiltYPivotOffset:F

.field private mToolbarAlpha:F

.field private mToolbarBackgroundColor:I

.field private mToolbarYOffset:F

.field private mVisible:Z

.field private mX:F

.field private mY:F


# direct methods
.method public constructor <init>(IZFFZZ)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mBounds:Landroid/graphics/RectF;

    .line 102
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mClosePlacement:Landroid/graphics/RectF;

    .line 111
    iput-boolean v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mIsTitleNeeded:Z

    .line 116
    iput-boolean v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mInitFromHostCalled:Z

    .line 123
    iput v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mBackgroundColor:I

    .line 125
    const v0, -0xd0d0e

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mToolbarBackgroundColor:I

    .line 127
    iput v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mTextBoxBackgroundColor:I

    .line 129
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mTextBoxAlpha:F

    .line 147
    iput p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mId:I

    .line 148
    iput-boolean p2, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mIsIncognito:Z

    .line 149
    invoke-virtual {p0, p3, p4, p5, p6}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->init(FFZZ)V

    .line 150
    return-void
.end method

.method public static getTouchSlop()F
    .locals 1

    .prologue
    .line 246
    sget v0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->sCompositorButtonSlop:F

    return v0
.end method

.method public static resetDimensionConstants(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 236
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 237
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    sput v1, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->sDpToPx:F

    .line 238
    const/high16 v1, 0x3f800000    # 1.0f

    sget v2, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->sDpToPx:F

    div-float/2addr v1, v2

    sput v1, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->sPxToDp:F

    .line 239
    sget v1, Lorg/chromium/chrome/R$dimen;->compositor_button_slop:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sget v1, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->sPxToDp:F

    mul-float/2addr v0, v1

    sput v0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->sCompositorButtonSlop:F

    .line 240
    return-void
.end method

.method private updateSnap(FFF)F
    .locals 2

    .prologue
    .line 740
    sub-float v0, p2, p3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget v1, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->sPxToDp:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 749
    :goto_0
    return p3

    .line 741
    :cond_0
    sget v0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->sDpToPx:F

    mul-float/2addr v0, p3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    sget v1, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->sPxToDp:F

    mul-float/2addr v0, v1

    .line 742
    cmpg-float v1, v0, p3

    if-gez v1, :cond_1

    .line 743
    sub-float v1, p2, p1

    .line 744
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    :goto_1
    move p3, v0

    .line 749
    goto :goto_0

    .line 746
    :cond_1
    add-float v1, p2, p1

    .line 747
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_1
.end method


# virtual methods
.method public anonymizeToolbar()Z
    .locals 1

    .prologue
    .line 837
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mAnonymizeToolbar:Z

    return v0
.end method

.method public canUseLiveTexture()Z
    .locals 1

    .prologue
    .line 805
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mCanUseLiveTexture:Z

    return v0
.end method

.method public checkCloseHitTest(FFZ)Z
    .locals 1

    .prologue
    .line 696
    invoke-virtual {p0, p3}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getCloseBounds(Z)Landroid/graphics/RectF;

    move-result-object v0

    .line 697
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeDistanceTo(FF)F
    .locals 3

    .prologue
    .line 669
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getClickTargetBounds()Landroid/graphics/RectF;

    move-result-object v0

    .line 670
    iget v1, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, p1

    iget v2, v0, Landroid/graphics/RectF;->right:F

    sub-float v2, p1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 671
    iget v2, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, p2

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    sub-float v0, p2, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 672
    const/4 v2, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public computeVisibleArea()F
    .locals 2

    .prologue
    .line 872
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mVisible:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mAlpha:F

    const v1, 0x3b808081

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getFinalContentWidth()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getFinalContentHeight()F

    move-result v1

    mul-float/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAlpha()F
    .locals 1

    .prologue
    .line 507
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mAlpha:F

    return v0
.end method

.method public getBackgroundColor()I
    .locals 1

    .prologue
    .line 880
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mBackgroundColor:I

    return v0
.end method

.method public getBorderAlpha()F
    .locals 1

    .prologue
    .line 544
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mBorderAlpha:F

    return v0
.end method

.method public getBorderCloseButtonAlpha()F
    .locals 1

    .prologue
    .line 565
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mBorderCloseButtonAlpha:F

    return v0
.end method

.method public getBorderInnerShadowAlpha()F
    .locals 3

    .prologue
    .line 551
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mBorderAlpha:F

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mToolbarAlpha:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    return v0
.end method

.method public getBorderScale()F
    .locals 1

    .prologue
    .line 580
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mBorderScale:F

    return v0
.end method

.method public getBrightness()F
    .locals 1

    .prologue
    .line 636
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mBrightness:F

    return v0
.end method

.method public getClickTargetBounds()Landroid/graphics/RectF;
    .locals 4

    .prologue
    .line 679
    const/high16 v0, 0x40800000    # 4.0f

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mBorderScale:F

    mul-float/2addr v0, v1

    .line 680
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mBounds:Landroid/graphics/RectF;

    iget v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mY:F

    iget v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mClippedY:F

    add-float/2addr v2, v3

    sub-float/2addr v2, v0

    iput v2, v1, Landroid/graphics/RectF;->top:F

    .line 681
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mBounds:Landroid/graphics/RectF;

    iget v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mY:F

    iget v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mClippedY:F

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getFinalContentHeight()F

    move-result v3

    add-float/2addr v2, v3

    add-float/2addr v2, v0

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    .line 682
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mBounds:Landroid/graphics/RectF;

    iget v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mX:F

    iget v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mClippedX:F

    add-float/2addr v2, v3

    sub-float/2addr v2, v0

    iput v2, v1, Landroid/graphics/RectF;->left:F

    .line 683
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mBounds:Landroid/graphics/RectF;

    iget v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mX:F

    iget v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mClippedX:F

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getFinalContentWidth()F

    move-result v3

    add-float/2addr v2, v3

    add-float/2addr v0, v2

    iput v0, v1, Landroid/graphics/RectF;->right:F

    .line 684
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mBounds:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getClippedHeight()F
    .locals 1

    .prologue
    .line 356
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mClippedHeight:F

    return v0
.end method

.method public getClippedWidth()F
    .locals 1

    .prologue
    .line 349
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mClippedWidth:F

    return v0
.end method

.method public getClippedX()F
    .locals 1

    .prologue
    .line 335
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mClippedX:F

    return v0
.end method

.method public getClippedY()F
    .locals 1

    .prologue
    .line 342
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mClippedY:F

    return v0
.end method

.method public getCloseBounds(Z)Landroid/graphics/RectF;
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/high16 v5, 0x42100000    # 36.0f

    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 706
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mIsTitleNeeded:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mVisible:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mBorderCloseButtonAlpha:F

    cmpg-float v1, v1, v3

    if-ltz v1, :cond_0

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mBorderAlpha:F

    cmpg-float v1, v1, v3

    if-ltz v1, :cond_0

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mBorderScale:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mTiltX:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_0

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mTiltY:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 720
    :cond_0
    :goto_0
    return-object v0

    .line 710
    :cond_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mClosePlacement:Landroid/graphics/RectF;

    invoke-virtual {v1, v4, v4, v5, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 711
    if-nez p1, :cond_2

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mClosePlacement:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getFinalContentWidth()F

    move-result v2

    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mClosePlacement:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 713
    :cond_2
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mClosePlacement:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getFinalContentHeight()F

    move-result v2

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_0

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mClosePlacement:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getFinalContentWidth()F

    move-result v2

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_0

    .line 717
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mClosePlacement:Landroid/graphics/RectF;

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mX:F

    iget v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mClippedX:F

    add-float/2addr v1, v2

    iget v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mY:F

    iget v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mClippedY:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 718
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mClosePlacement:Landroid/graphics/RectF;

    sget v1, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->sCompositorButtonSlop:F

    neg-float v1, v1

    sget v2, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->sCompositorButtonSlop:F

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 720
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mClosePlacement:Landroid/graphics/RectF;

    goto :goto_0
.end method

.method public getDecorationAlpha()F
    .locals 1

    .prologue
    .line 594
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mDecorationAlpha:F

    return v0
.end method

.method public getFinalContentHeight()F
    .locals 2

    .prologue
    .line 405
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mClippedHeight:F

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getScaledContentHeight()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public getFinalContentWidth()F
    .locals 2

    .prologue
    .line 398
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mClippedWidth:F

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getScaledContentWidth()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 440
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mId:I

    return v0
.end method

.method public getMaxContentHeight()F
    .locals 1

    .prologue
    .line 419
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mMaxContentHeight:F

    return v0
.end method

.method public getMaxContentWidth()F
    .locals 1

    .prologue
    .line 412
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mMaxContentWidth:F

    return v0
.end method

.method public getOriginalContentHeight()F
    .locals 2

    .prologue
    .line 384
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mOriginalContentHeight:F

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mMaxContentHeight:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public getOriginalContentWidth()F
    .locals 2

    .prologue
    .line 377
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mOriginalContentWidth:F

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mMaxContentWidth:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public getRenderX()F
    .locals 1

    .prologue
    .line 489
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mRenderX:F

    return v0
.end method

.method public getRenderY()F
    .locals 1

    .prologue
    .line 468
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mRenderY:F

    return v0
.end method

.method public getSaturation()F
    .locals 1

    .prologue
    .line 530
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mSaturation:F

    return v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 253
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mScale:F

    return v0
.end method

.method public getScaledContentHeight()F
    .locals 2

    .prologue
    .line 370
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getOriginalContentHeight()F

    move-result v0

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mScale:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public getScaledContentWidth()F
    .locals 2

    .prologue
    .line 363
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getOriginalContentWidth()F

    move-result v0

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mScale:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public getShadowOpacity()F
    .locals 1

    .prologue
    .line 514
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getSideBorderScale()F
    .locals 1

    .prologue
    .line 622
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mSideBorderScale:F

    return v0
.end method

.method public getStaticToViewBlend()F
    .locals 1

    .prologue
    .line 657
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mStaticToViewBlend:F

    return v0
.end method

.method public getTextBoxAlpha()F
    .locals 1

    .prologue
    .line 901
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mTextBoxAlpha:F

    return v0
.end method

.method public getTextBoxBackgroundColor()I
    .locals 1

    .prologue
    .line 894
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mTextBoxBackgroundColor:I

    return v0
.end method

.method public getTiltX()F
    .locals 1

    .prologue
    .line 276
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mTiltX:F

    return v0
.end method

.method public getTiltXPivotOffset()F
    .locals 1

    .prologue
    .line 283
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mTiltXPivotOffset:F

    return v0
.end method

.method public getTiltY()F
    .locals 1

    .prologue
    .line 299
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mTiltY:F

    return v0
.end method

.method public getTiltYPivotOffset()F
    .locals 1

    .prologue
    .line 306
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mTiltYPivotOffset:F

    return v0
.end method

.method public getToolbarAlpha()F
    .locals 1

    .prologue
    .line 851
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mToolbarAlpha:F

    return v0
.end method

.method public getToolbarBackgroundColor()I
    .locals 1

    .prologue
    .line 887
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mToolbarBackgroundColor:I

    return v0
.end method

.method public getToolbarYOffset()F
    .locals 1

    .prologue
    .line 608
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mToolbarYOffset:F

    return v0
.end method

.method public getUnclampedOriginalContentHeight()F
    .locals 1

    .prologue
    .line 391
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mOriginalContentHeight:F

    return v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 482
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mX:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 461
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mY:F

    return v0
.end method

.method public init(FFZZ)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const v4, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v3, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 164
    iput v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mAlpha:F

    .line 165
    iput v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mSaturation:F

    .line 166
    iput v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mBrightness:F

    .line 167
    iput v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mBorderAlpha:F

    .line 168
    if-eqz p3, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mBorderCloseButtonAlpha:F

    .line 169
    iput v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mBorderScale:F

    .line 170
    iput v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mClippedX:F

    .line 171
    iput v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mClippedY:F

    .line 172
    iput v4, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mClippedWidth:F

    .line 173
    iput v4, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mClippedHeight:F

    .line 174
    iput v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mScale:F

    .line 175
    iput v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mTiltX:F

    .line 176
    iput v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mTiltY:F

    .line 177
    iput-boolean v5, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mVisible:Z

    .line 178
    iput v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mX:F

    .line 179
    iput v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mY:F

    .line 180
    iput v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mRenderX:F

    .line 181
    iput v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mRenderY:F

    .line 182
    iput v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mStaticToViewBlend:F

    .line 183
    iput v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mDecorationAlpha:F

    .line 184
    iput-boolean p4, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mIsTitleNeeded:Z

    .line 185
    iput-boolean v5, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mCanUseLiveTexture:Z

    .line 186
    iput-boolean v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mShowToolbar:Z

    .line 187
    iput-boolean v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mAnonymizeToolbar:Z

    .line 188
    iput v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mToolbarAlpha:F

    .line 189
    iput-boolean v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mInsetBorderVertical:Z

    .line 190
    iput v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mToolbarYOffset:F

    .line 191
    iput v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mSideBorderScale:F

    .line 192
    iput p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mOriginalContentWidth:F

    .line 193
    iput p2, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mOriginalContentHeight:F

    .line 194
    iput p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mMaxContentWidth:F

    .line 195
    iput p2, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mMaxContentHeight:F

    .line 197
    iput-boolean v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mInitFromHostCalled:Z

    .line 198
    return-void

    :cond_0
    move v0, v2

    .line 168
    goto :goto_0
.end method

.method public initFromHost(IZZIIF)V
    .locals 1

    .prologue
    .line 214
    iput p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mBackgroundColor:I

    .line 215
    iput p4, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mToolbarBackgroundColor:I

    .line 216
    iput p5, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mTextBoxBackgroundColor:I

    .line 217
    iput p6, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mTextBoxAlpha:F

    .line 218
    iput-boolean p2, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mShouldStall:Z

    .line 219
    iput-boolean p3, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mCanUseLiveTexture:Z

    .line 220
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mInitFromHostCalled:Z

    .line 221
    return-void
.end method

.method public insetBorderVertical()Z
    .locals 1

    .prologue
    .line 865
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mInsetBorderVertical:Z

    return v0
.end method

.method public isIncognito()Z
    .locals 1

    .prologue
    .line 447
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mIsIncognito:Z

    return v0
.end method

.method public isInitFromHostNeeded()Z
    .locals 1

    .prologue
    .line 227
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mInitFromHostCalled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTitleNeeded()Z
    .locals 1

    .prologue
    .line 770
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mIsTitleNeeded:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 784
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mVisible:Z

    return v0
.end method

.method public bridge synthetic onPropertyAnimationFinished(Ljava/lang/Enum;)V
    .locals 0

    .prologue
    .line 21
    check-cast p1, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->onPropertyAnimationFinished(Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;)V

    return-void
.end method

.method public onPropertyAnimationFinished(Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;)V
    .locals 0

    .prologue
    .line 966
    return-void
.end method

.method public setAlpha(F)V
    .locals 0

    .prologue
    .line 500
    iput p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mAlpha:F

    .line 501
    return-void
.end method

.method public setAnonymizeToolbar(Z)V
    .locals 0

    .prologue
    .line 828
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mAnonymizeToolbar:Z

    .line 829
    return-void
.end method

.method public setBorderAlpha(F)V
    .locals 0

    .prologue
    .line 537
    iput p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mBorderAlpha:F

    .line 538
    return-void
.end method

.method public setBorderCloseButtonAlpha(F)V
    .locals 0

    .prologue
    .line 558
    iput p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mBorderCloseButtonAlpha:F

    .line 559
    return-void
.end method

.method public setBorderScale(F)V
    .locals 0

    .prologue
    .line 573
    iput p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mBorderScale:F

    .line 574
    return-void
.end method

.method public setBrightness(F)V
    .locals 0

    .prologue
    .line 629
    iput p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mBrightness:F

    .line 630
    return-void
.end method

.method public setClipOffset(FF)V
    .locals 0

    .prologue
    .line 316
    iput p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mClippedX:F

    .line 317
    iput p2, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mClippedY:F

    .line 318
    return-void
.end method

.method public setClipSize(FF)V
    .locals 0

    .prologue
    .line 327
    iput p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mClippedWidth:F

    .line 328
    iput p2, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mClippedHeight:F

    .line 329
    return-void
.end method

.method public setContentSize(FF)V
    .locals 0

    .prologue
    .line 762
    iput p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mOriginalContentWidth:F

    .line 763
    iput p2, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mOriginalContentHeight:F

    .line 764
    return-void
.end method

.method public setDecorationAlpha(F)V
    .locals 0

    .prologue
    .line 587
    iput p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mDecorationAlpha:F

    .line 588
    return-void
.end method

.method public setDrawDecoration(Z)V
    .locals 1

    .prologue
    .line 643
    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mDecorationAlpha:F

    .line 644
    return-void

    .line 643
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setInsetBorderVertical(Z)V
    .locals 0

    .prologue
    .line 858
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mInsetBorderVertical:Z

    .line 859
    return-void
.end method

.method public setMaxContentHeight(F)V
    .locals 0

    .prologue
    .line 433
    iput p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mMaxContentHeight:F

    .line 434
    return-void
.end method

.method public setMaxContentWidth(F)V
    .locals 0

    .prologue
    .line 426
    iput p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mMaxContentWidth:F

    .line 427
    return-void
.end method

.method public bridge synthetic setProperty(Ljava/lang/Enum;F)V
    .locals 0

    .prologue
    .line 21
    check-cast p1, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

    invoke-virtual {p0, p1, p2}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setProperty(Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;F)V

    return-void
.end method

.method public setProperty(Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;F)V
    .locals 2

    .prologue
    .line 913
    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$1;->$SwitchMap$org$chromium$chrome$browser$compositor$layouts$components$LayoutTab$Property:[I

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 963
    :goto_0
    return-void

    .line 915
    :pswitch_0
    invoke-virtual {p0, p2}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setBorderAlpha(F)V

    goto :goto_0

    .line 918
    :pswitch_1
    invoke-virtual {p0, p2}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setBorderScale(F)V

    goto :goto_0

    .line 921
    :pswitch_2
    invoke-virtual {p0, p2}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setAlpha(F)V

    goto :goto_0

    .line 924
    :pswitch_3
    invoke-virtual {p0, p2}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setSaturation(F)V

    goto :goto_0

    .line 927
    :pswitch_4
    invoke-virtual {p0, p2}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setStaticToViewBlend(F)V

    goto :goto_0

    .line 930
    :pswitch_5
    invoke-virtual {p0, p2}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setScale(F)V

    goto :goto_0

    .line 933
    :pswitch_6
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mTiltXPivotOffset:F

    invoke-virtual {p0, p2, v0}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setTiltX(FF)V

    goto :goto_0

    .line 936
    :pswitch_7
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mTiltYPivotOffset:F

    invoke-virtual {p0, p2, v0}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setTiltY(FF)V

    goto :goto_0

    .line 939
    :pswitch_8
    invoke-virtual {p0, p2}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setX(F)V

    goto :goto_0

    .line 942
    :pswitch_9
    invoke-virtual {p0, p2}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setY(F)V

    goto :goto_0

    .line 945
    :pswitch_a
    invoke-virtual {p0, p2}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setMaxContentWidth(F)V

    goto :goto_0

    .line 948
    :pswitch_b
    invoke-virtual {p0, p2}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setMaxContentHeight(F)V

    goto :goto_0

    .line 951
    :pswitch_c
    invoke-virtual {p0, p2}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setToolbarAlpha(F)V

    goto :goto_0

    .line 954
    :pswitch_d
    invoke-virtual {p0, p2}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setDecorationAlpha(F)V

    goto :goto_0

    .line 957
    :pswitch_e
    invoke-virtual {p0, p2}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setToolbarYOffset(F)V

    goto :goto_0

    .line 960
    :pswitch_f
    invoke-virtual {p0, p2}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setSideBorderScale(F)V

    goto :goto_0

    .line 913
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public setSaturation(F)V
    .locals 0

    .prologue
    .line 523
    iput p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mSaturation:F

    .line 524
    return-void
.end method

.method public setScale(F)V
    .locals 0

    .prologue
    .line 260
    iput p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mScale:F

    .line 261
    return-void
.end method

.method public setShouldStall(Z)V
    .locals 0

    .prologue
    .line 791
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mShouldStall:Z

    .line 792
    return-void
.end method

.method public setShowToolbar(Z)V
    .locals 0

    .prologue
    .line 812
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mShowToolbar:Z

    .line 813
    return-void
.end method

.method public setSideBorderScale(F)V
    .locals 2

    .prologue
    .line 615
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Lorg/chromium/chrome/browser/util/MathUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mSideBorderScale:F

    .line 616
    return-void
.end method

.method public setStaticToViewBlend(F)V
    .locals 0

    .prologue
    .line 650
    iput p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mStaticToViewBlend:F

    .line 651
    return-void
.end method

.method public setTiltX(FF)V
    .locals 0

    .prologue
    .line 268
    iput p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mTiltX:F

    .line 269
    iput p2, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mTiltXPivotOffset:F

    .line 270
    return-void
.end method

.method public setTiltY(FF)V
    .locals 0

    .prologue
    .line 291
    iput p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mTiltY:F

    .line 292
    iput p2, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mTiltYPivotOffset:F

    .line 293
    return-void
.end method

.method public setToolbarAlpha(F)V
    .locals 0

    .prologue
    .line 844
    iput p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mToolbarAlpha:F

    .line 845
    return-void
.end method

.method public setToolbarYOffset(F)V
    .locals 0

    .prologue
    .line 601
    iput p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mToolbarYOffset:F

    .line 602
    return-void
.end method

.method public setVisible(Z)V
    .locals 0

    .prologue
    .line 777
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mVisible:Z

    .line 778
    return-void
.end method

.method public setX(F)V
    .locals 0

    .prologue
    .line 475
    iput p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mX:F

    .line 476
    return-void
.end method

.method public setY(F)V
    .locals 0

    .prologue
    .line 454
    iput p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mY:F

    .line 455
    return-void
.end method

.method public shouldStall()Z
    .locals 1

    .prologue
    .line 798
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mShouldStall:Z

    return v0
.end method

.method public showToolbar()Z
    .locals 1

    .prologue
    .line 819
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mShowToolbar:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 754
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateSnap(J)Z
    .locals 5

    .prologue
    .line 730
    long-to-float v0, p1

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    .line 731
    iget v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mRenderX:F

    iget v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mX:F

    invoke-direct {p0, v0, v1, v2}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->updateSnap(FFF)F

    move-result v1

    .line 732
    iget v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mRenderY:F

    iget v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mY:F

    invoke-direct {p0, v0, v2, v3}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->updateSnap(FFF)F

    move-result v2

    .line 733
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mRenderX:F

    cmpl-float v0, v1, v0

    if-nez v0, :cond_0

    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mRenderY:F

    cmpl-float v0, v2, v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 734
    :goto_0
    iput v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mRenderX:F

    .line 735
    iput v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->mRenderY:F

    .line 736
    return v0

    .line 733
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
