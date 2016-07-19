.class public abstract Lorg/chromium/chrome/browser/banners/SwipableOverlayView;
.super Landroid/widget/FrameLayout;
.source "SwipableOverlayView.java"


# instance fields
.field private final mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

.field private mCurrentAnimation:Landroid/animation/Animator;

.field private mGestureState:I

.field private final mGestureStateListener:Lorg/chromium/content_public/browser/GestureStateListener;

.field private mInitialOffsetY:I

.field private mInitialTranslationY:F

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsBeingDisplayedForFirstTime:Z

.field private final mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mParentHeight:I

.field private mTotalHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 107
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 108
    invoke-direct {p0}, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->createGestureStateListener()Lorg/chromium/content_public/browser/GestureStateListener;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->mGestureStateListener:Lorg/chromium/content_public/browser/GestureStateListener;

    .line 109
    iput v2, p0, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->mGestureState:I

    .line 110
    invoke-direct {p0}, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->createLayoutChangeListener()Landroid/view/View$OnLayoutChangeListener;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 111
    invoke-direct {p0}, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->createAnimatorListener()Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 112
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 115
    invoke-virtual {p0, v2}, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->setWillNotDraw(Z)V

    .line 116
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/banners/SwipableOverlayView;)Z
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->cancelCurrentAnimation()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/banners/SwipableOverlayView;II)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->beginGesture(II)V

    return-void
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/banners/SwipableOverlayView;)I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->mGestureState:I

    return v0
.end method

.method static synthetic access$202(Lorg/chromium/chrome/browser/banners/SwipableOverlayView;I)I
    .locals 0

    .prologue
    .line 54
    iput p1, p0, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->mGestureState:I

    return p1
.end method

.method static synthetic access$300(Lorg/chromium/chrome/browser/banners/SwipableOverlayView;II)I
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->computeScrollDifference(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lorg/chromium/chrome/browser/banners/SwipableOverlayView;)F
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->mInitialTranslationY:F

    return v0
.end method

.method static synthetic access$500(Lorg/chromium/chrome/browser/banners/SwipableOverlayView;)I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->mTotalHeight:I

    return v0
.end method

.method static synthetic access$600(Lorg/chromium/chrome/browser/banners/SwipableOverlayView;Z)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->createVerticalSnapAnimation(Z)V

    return-void
.end method

.method static synthetic access$700(Lorg/chromium/chrome/browser/banners/SwipableOverlayView;)Landroid/view/View$OnLayoutChangeListener;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    return-object v0
.end method

.method static synthetic access$802(Lorg/chromium/chrome/browser/banners/SwipableOverlayView;Z)Z
    .locals 0

    .prologue
    .line 54
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->mIsBeingDisplayedForFirstTime:Z

    return p1
.end method

.method static synthetic access$900(Lorg/chromium/chrome/browser/banners/SwipableOverlayView;)Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->mCurrentAnimation:Landroid/animation/Animator;

    return-object v0
.end method

.method static synthetic access$902(Lorg/chromium/chrome/browser/banners/SwipableOverlayView;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->mCurrentAnimation:Landroid/animation/Animator;

    return-object p1
.end method

.method private beginGesture(II)V
    .locals 2

    .prologue
    .line 342
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->getTranslationY()F

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->mInitialTranslationY:F

    .line 343
    iget v0, p0, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->mInitialTranslationY:F

    iget v1, p0, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->mTotalHeight:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    .line 344
    :goto_0
    if-eqz v0, :cond_1

    .line 345
    :goto_1
    add-int v0, p1, p2

    iput v0, p0, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->mInitialOffsetY:I

    .line 346
    return-void

    .line 343
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 344
    :cond_1
    iget v0, p0, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->mTotalHeight:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_1
.end method

.method private cancelCurrentAnimation()Z
    .locals 1

    .prologue
    .line 353
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->mIsBeingDisplayedForFirstTime:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 355
    :goto_0
    return v0

    .line 354
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->mCurrentAnimation:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->mCurrentAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 355
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private computeScrollDifference(II)I
    .locals 2

    .prologue
    .line 320
    add-int v0, p1, p2

    iget v1, p0, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->mInitialOffsetY:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private createAnimatorListener()Landroid/animation/Animator$AnimatorListener;
    .locals 1

    .prologue
    .line 328
    new-instance v0, Lorg/chromium/chrome/browser/banners/SwipableOverlayView$3;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/banners/SwipableOverlayView$3;-><init>(Lorg/chromium/chrome/browser/banners/SwipableOverlayView;)V

    return-object v0
.end method

.method private createGestureStateListener()Lorg/chromium/content_public/browser/GestureStateListener;
    .locals 1

    .prologue
    .line 208
    new-instance v0, Lorg/chromium/chrome/browser/banners/SwipableOverlayView$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/banners/SwipableOverlayView$1;-><init>(Lorg/chromium/chrome/browser/banners/SwipableOverlayView;)V

    return-object v0
.end method

.method private createLayoutChangeListener()Landroid/view/View$OnLayoutChangeListener;
    .locals 1

    .prologue
    .line 286
    new-instance v0, Lorg/chromium/chrome/browser/banners/SwipableOverlayView$2;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/banners/SwipableOverlayView$2;-><init>(Lorg/chromium/chrome/browser/banners/SwipableOverlayView;)V

    return-object v0
.end method

.method private createVerticalSnapAnimation(Z)V
    .locals 6

    .prologue
    .line 308
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 309
    :goto_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->getTranslationY()F

    move-result v1

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->mTotalHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 310
    const-wide/16 v2, 0x0

    const/high16 v4, 0x437a0000    # 250.0f

    mul-float/2addr v1, v4

    float-to-long v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 312
    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v4, 0x1

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v0, v4, v5

    invoke-static {p0, v1, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->mCurrentAnimation:Landroid/animation/Animator;

    .line 313
    iget-object v0, p0, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->mCurrentAnimation:Landroid/animation/Animator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 314
    iget-object v0, p0, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->mCurrentAnimation:Landroid/animation/Animator;

    iget-object v1, p0, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 315
    iget-object v0, p0, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->mCurrentAnimation:Landroid/animation/Animator;

    iget-object v1, p0, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 316
    iget-object v0, p0, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->mCurrentAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 317
    return-void

    .line 308
    :cond_0
    iget v0, p0, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->mTotalHeight:I

    int-to-float v0, v0

    goto :goto_0
.end method


# virtual methods
.method protected addToParentView(Landroid/view/ViewGroup;)V
    .locals 2

    .prologue
    .line 140
    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 141
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->createLayoutParams()Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    iget-object v0, p0, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 146
    :cond_0
    return-void
.end method

.method public createLayoutParams()Landroid/view/ViewGroup$MarginLayoutParams;
    .locals 4

    .prologue
    .line 166
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/16 v3, 0x51

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    return-object v0
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 2

    .prologue
    .line 373
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->getTranslationY()F

    move-result v0

    .line 374
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->setTranslationY(F)V

    .line 375
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v1

    .line 378
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->setTranslationY(F)V

    .line 379
    return v1
.end method

.method protected getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    return-object v0
.end method

.method protected isAllowedToAutoHide()Z
    .locals 1

    .prologue
    .line 362
    const/4 v0, 0x1

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 172
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 173
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->isAllowedToAutoHide()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->setTranslationY(F)V

    .line 174
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 188
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v1

    .line 189
    :goto_0
    iget v2, p0, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->mParentHeight:I

    if-eq v2, v0, :cond_0

    .line 190
    iput v0, p0, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->mParentHeight:I

    .line 191
    iput v1, p0, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->mGestureState:I

    .line 192
    iget-object v0, p0, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->mCurrentAnimation:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->mCurrentAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 196
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 197
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->getMeasuredHeight()I

    move-result v1

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->mTotalHeight:I

    .line 199
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 200
    return-void

    .line 188
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .prologue
    .line 178
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 179
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->isAllowedToAutoHide()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->setTranslationY(F)V

    .line 180
    :cond_0
    return-void
.end method

.method public removeFromParentView()Z
    .locals 1

    .prologue
    .line 153
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 157
    :goto_0
    return v0

    .line 155
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 156
    iget-object v0, p0, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 157
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setContentViewCore(Lorg/chromium/content/browser/ContentViewCore;)V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    iget-object v1, p0, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->mGestureStateListener:Lorg/chromium/content_public/browser/GestureStateListener;

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->removeGestureStateListener(Lorg/chromium/content_public/browser/GestureStateListener;)V

    .line 126
    :cond_0
    iput-object p1, p0, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    .line 127
    iget-object v0, p0, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    iget-object v1, p0, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->mGestureStateListener:Lorg/chromium/content_public/browser/GestureStateListener;

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->addGestureStateListener(Lorg/chromium/content_public/browser/GestureStateListener;)V

    .line 130
    :cond_1
    return-void
.end method
