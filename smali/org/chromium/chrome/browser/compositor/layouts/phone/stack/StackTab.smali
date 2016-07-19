.class public Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;
.super Ljava/lang/Object;
.source "StackTab.java"

# interfaces
.implements Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;


# static fields
.field public static sStackBufferHeight:F

.field public static sStackBufferWidth:F

.field public static sStackedTabVisibleSize:F


# instance fields
.field private mAlpha:F

.field private mCacheStackVisibility:F

.field private mCachedIndexDistance:F

.field private mCachedVisibleArea:F

.field private mDiscardAmount:F

.field private mDiscardFromClick:Z

.field private mDiscardOriginX:F

.field private mDiscardOriginY:F

.field protected mDying:Z

.field private mIndex:I

.field private mLayoutTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

.field private mOrderSortingValue:I

.field private mScale:F

.field private mScrollOffset:F

.field private mVisiblitySortingValue:J

.field private mXInStackInfluence:F

.field private mXInStackOffset:F

.field private mXOutOfStack:F

.field private mYInStackInfluence:F

.field private mYInStackOffset:F

.field private mYOutOfStack:F


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->mXInStackInfluence:F

    .line 47
    iput v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->mYInStackInfluence:F

    .line 50
    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->mScrollOffset:F

    .line 51
    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->mXInStackOffset:F

    .line 52
    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->mYInStackOffset:F

    .line 55
    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->mXOutOfStack:F

    .line 56
    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->mYOutOfStack:F

    .line 59
    iput v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->mAlpha:F

    .line 60
    iput v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->mScale:F

    .line 61
    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->mDiscardAmount:F

    .line 72
    iput-boolean v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->mDying:Z

    .line 78
    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->mCachedVisibleArea:F

    .line 79
    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->mCachedIndexDistance:F

    .line 80
    iput v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->mCacheStackVisibility:F

    .line 81
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->mVisiblitySortingValue:J

    .line 82
    iput v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->mOrderSortingValue:I

    .line 90
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->mLayoutTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    .line 91
    return-void
.end method

.method private static computeOrderSortingValue(FF)I
    .locals 3

    .prologue
    .line 468
    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr v0, p0

    const v1, 0x3dcccccd    # 0.1f

    const v2, 0x3f666666    # 0.9f

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private static computeVisibilitySortingValue(FFF)J
    .locals 2

    .prologue
    .line 453
    mul-float v0, p0, p2

    sub-float/2addr v0, p1

    float-to-long v0, v0

    return-wide v0
.end method

.method public static resetDimensionConstants(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 396
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 397
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    .line 398
    sget v2, Lorg/chromium/chrome/R$dimen;->stacked_tab_visible_size:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    sput v2, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->sStackedTabVisibleSize:F

    .line 400
    sget v2, Lorg/chromium/chrome/R$dimen;->stack_buffer_width:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    sput v2, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->sStackBufferWidth:F

    .line 401
    sget v2, Lorg/chromium/chrome/R$dimen;->stack_buffer_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    sput v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->sStackBufferHeight:F

    .line 402
    return-void
.end method

.method public static screenToScroll(FF)F
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 374
    cmpg-float v1, p0, v0

    if-gtz v1, :cond_0

    .line 376
    :goto_0
    return v0

    .line 375
    :cond_0
    cmpl-float v0, p0, p1

    if-ltz v0, :cond_1

    add-float v0, p0, p1

    goto :goto_0

    .line 376
    :cond_1
    mul-float v0, p0, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    goto :goto_0
.end method

.method public static scrollToScreen(FF)F
    .locals 3

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    const/4 v0, 0x0

    .line 356
    cmpg-float v1, p0, v0

    if-gtz v1, :cond_0

    .line 359
    :goto_0
    return v0

    .line 357
    :cond_0
    mul-float v0, p1, v2

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_1

    sub-float v0, p0, p1

    goto :goto_0

    .line 358
    :cond_1
    sub-float v0, p0, p1

    mul-float v1, p1, v2

    div-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    .line 359
    mul-float/2addr v0, v0

    mul-float/2addr v0, p1

    goto :goto_0
.end method


# virtual methods
.method public addToDiscardAmount(F)V
    .locals 1

    .prologue
    .line 272
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->mDiscardAmount:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->mDiscardAmount:F

    .line 273
    return-void
.end method

.method public getAlpha()F
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->mAlpha:F

    return v0
.end method

.method public getDiscardAmount()F
    .locals 1

    .prologue
    .line 280
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->mDiscardAmount:F

    return v0
.end method

.method public getDiscardFromClick()Z
    .locals 1

    .prologue
    .line 322
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->mDiscardFromClick:Z

    return v0
.end method

.method public getDiscardOriginX()F
    .locals 1

    .prologue
    .line 301
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->mDiscardOriginX:F

    return v0
.end method

.method public getDiscardOriginY()F
    .locals 1

    .prologue
    .line 308
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->mDiscardOriginY:F

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->mLayoutTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getId()I

    move-result v0

    return v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->mIndex:I

    return v0
.end method

.method public getLayoutTab()Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->mLayoutTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    return-object v0
.end method

.method public getOrderSortingValue()I
    .locals 1

    .prologue
    .line 476
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->mOrderSortingValue:I

    return v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 243
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->mScale:F

    return v0
.end method

.method public getScrollOffset()F
    .locals 1

    .prologue
    .line 257
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->mScrollOffset:F

    return v0
.end method

.method public getSizeInScrollDirection(I)F
    .locals 1

    .prologue
    .line 384
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 385
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->mLayoutTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getScaledContentHeight()F

    move-result v0

    .line 387
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->mLayoutTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getScaledContentWidth()F

    move-result v0

    goto :goto_0
.end method

.method public getVisiblitySortingValue()J
    .locals 2

    .prologue
    .line 460
    iget-wide v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->mVisiblitySortingValue:J

    return-wide v0
.end method

.method public getXInStackInfluence()F
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->mXInStackInfluence:F

    return v0
.end method

.method public getXInStackOffset()F
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->mXInStackOffset:F

    return v0
.end method

.method public getXOutOfStack()F
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->mXOutOfStack:F

    return v0
.end method

.method public getYInStackInfluence()F
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->mYInStackInfluence:F

    return v0
.end method

.method public getYInStackOffset()F
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->mYInStackOffset:F

    return v0
.end method

.method public getYOutOfStack()F
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->mYOutOfStack:F

    return v0
.end method

.method public isDying()Z
    .locals 1

    .prologue
    .line 338
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->mDying:Z

    return v0
.end method

.method public bridge synthetic onPropertyAnimationFinished(Ljava/lang/Enum;)V
    .locals 0

    .prologue
    .line 21
    check-cast p1, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->onPropertyAnimationFinished(Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;)V

    return-void
.end method

.method public onPropertyAnimationFinished(Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;)V
    .locals 0

    .prologue
    .line 523
    return-void
.end method

.method public resetOffset()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 408
    iput v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->mXInStackInfluence:F

    .line 409
    iput v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->mYInStackInfluence:F

    .line 410
    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->mScrollOffset:F

    .line 411
    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->mXInStackOffset:F

    .line 412
    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->mYInStackOffset:F

    .line 413
    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->mXOutOfStack:F

    .line 414
    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->mYOutOfStack:F

    .line 415
    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->mDiscardOriginX:F

    .line 416
    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->mDiscardOriginY:F

    .line 417
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->mDiscardFromClick:Z

    .line 418
    return-void
.end method

.method public setAlpha(F)V
    .locals 0

    .prologue
    .line 192
    iput p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->mAlpha:F

    .line 193
    return-void
.end method

.method public setDiscardAmount(F)V
    .locals 0

    .prologue
    .line 265
    iput p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->mDiscardAmount:F

    .line 266
    return-void
.end method

.method public setDiscardFromClick(Z)V
    .locals 0

    .prologue
    .line 315
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->mDiscardFromClick:Z

    .line 316
    return-void
.end method

.method public setDiscardOriginX(F)V
    .locals 0

    .prologue
    .line 287
    iput p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->mDiscardOriginX:F

    .line 288
    return-void
.end method

.method public setDiscardOriginY(F)V
    .locals 0

    .prologue
    .line 294
    iput p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->mDiscardOriginY:F

    .line 295
    return-void
.end method

.method public setDying(Z)V
    .locals 0

    .prologue
    .line 330
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->mDying:Z

    .line 331
    return-void
.end method

.method public setLayoutTab(Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->mLayoutTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    .line 119
    return-void
.end method

.method public setNewIndex(I)V
    .locals 0

    .prologue
    .line 97
    iput p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->mIndex:I

    .line 98
    return-void
.end method

.method public bridge synthetic setProperty(Ljava/lang/Enum;F)V
    .locals 0

    .prologue
    .line 21
    check-cast p1, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;

    invoke-virtual {p0, p1, p2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->setProperty(Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;F)V

    return-void
.end method

.method public setProperty(Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;F)V
    .locals 2

    .prologue
    .line 488
    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$1;->$SwitchMap$org$chromium$chrome$browser$compositor$layouts$phone$stack$StackTab$Property:[I

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 520
    :goto_0
    return-void

    .line 490
    :pswitch_0
    invoke-virtual {p0, p2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->setScale(F)V

    goto :goto_0

    .line 493
    :pswitch_1
    invoke-virtual {p0, p2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->setScrollOffset(F)V

    goto :goto_0

    .line 496
    :pswitch_2
    invoke-virtual {p0, p2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->setAlpha(F)V

    goto :goto_0

    .line 499
    :pswitch_3
    invoke-virtual {p0, p2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->setXInStackInfluence(F)V

    goto :goto_0

    .line 502
    :pswitch_4
    invoke-virtual {p0, p2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->setXInStackOffset(F)V

    goto :goto_0

    .line 505
    :pswitch_5
    invoke-virtual {p0, p2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->setXOutOfStack(F)V

    goto :goto_0

    .line 508
    :pswitch_6
    invoke-virtual {p0, p2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->setYInStackInfluence(F)V

    goto :goto_0

    .line 511
    :pswitch_7
    invoke-virtual {p0, p2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->setYInStackOffset(F)V

    goto :goto_0

    .line 514
    :pswitch_8
    invoke-virtual {p0, p2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->setYOutOfStack(F)V

    goto :goto_0

    .line 517
    :pswitch_9
    invoke-virtual {p0, p2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->setDiscardAmount(F)V

    goto :goto_0

    .line 488
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
    .end packed-switch
.end method

.method public setScale(F)V
    .locals 0

    .prologue
    .line 236
    iput p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->mScale:F

    .line 237
    return-void
.end method

.method public setScrollOffset(F)V
    .locals 0

    .prologue
    .line 250
    iput p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->mScrollOffset:F

    .line 251
    return-void
.end method

.method public setXInStackInfluence(F)V
    .locals 0

    .prologue
    .line 207
    iput p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->mXInStackInfluence:F

    .line 208
    return-void
.end method

.method public setXInStackOffset(F)V
    .locals 0

    .prologue
    .line 146
    iput p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->mXInStackOffset:F

    .line 147
    return-void
.end method

.method public setXOutOfStack(F)V
    .locals 0

    .prologue
    .line 174
    iput p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->mXOutOfStack:F

    .line 175
    return-void
.end method

.method public setYInStackInfluence(F)V
    .locals 0

    .prologue
    .line 222
    iput p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->mYInStackInfluence:F

    .line 223
    return-void
.end method

.method public setYInStackOffset(F)V
    .locals 0

    .prologue
    .line 132
    iput p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->mYInStackOffset:F

    .line 133
    return-void
.end method

.method public setYOutOfStack(F)V
    .locals 0

    .prologue
    .line 160
    iput p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->mYOutOfStack:F

    .line 161
    return-void
.end method

.method public updateStackVisiblityValue(F)V
    .locals 3

    .prologue
    .line 437
    iput p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->mCacheStackVisibility:F

    .line 438
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->mCachedIndexDistance:F

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->mCacheStackVisibility:F

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->computeOrderSortingValue(FF)I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->mOrderSortingValue:I

    .line 439
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->mCachedVisibleArea:F

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->mOrderSortingValue:I

    int-to-float v1, v1

    iget v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->mCacheStackVisibility:F

    invoke-static {v0, v1, v2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->computeVisibilitySortingValue(FFF)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->mVisiblitySortingValue:J

    .line 441
    return-void
.end method

.method public updateVisiblityValue(I)V
    .locals 3

    .prologue
    .line 425
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->mLayoutTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->computeVisibleArea()F

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->mCachedVisibleArea:F

    .line 426
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->mIndex:I

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->mCachedIndexDistance:F

    .line 427
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->mCachedIndexDistance:F

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->mCacheStackVisibility:F

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->computeOrderSortingValue(FF)I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->mOrderSortingValue:I

    .line 428
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->mCachedVisibleArea:F

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->mOrderSortingValue:I

    int-to-float v1, v1

    iget v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->mCacheStackVisibility:F

    invoke-static {v0, v1, v2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->computeVisibilitySortingValue(FFF)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->mVisiblitySortingValue:J

    .line 430
    return-void
.end method
