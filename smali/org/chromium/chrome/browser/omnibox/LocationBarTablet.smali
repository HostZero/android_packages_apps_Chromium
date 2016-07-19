.class public Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;
.super Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;
.source "LocationBarTablet.java"


# instance fields
.field private mBookmarkButton:Landroid/view/View;

.field private final mCachedTargetBounds:Landroid/graphics/Rect;

.field private final mKeyboardResizeModeTask:Ljava/lang/Runnable;

.field private mTargets:[Landroid/view/View;

.field private mUrlFocusChangeAnimator:Landroid/animation/Animator;

.field private mUrlFocusChangePercent:F

.field private final mUrlFocusChangePercentProperty:Landroid/util/Property;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    new-instance v0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet$1;

    const-class v1, Ljava/lang/Float;

    const-string/jumbo v2, ""

    invoke-direct {v0, p0, v1, v2}, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet$1;-><init>(Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->mUrlFocusChangePercentProperty:Landroid/util/Property;

    .line 45
    new-instance v0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet$2;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet$2;-><init>(Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->mKeyboardResizeModeTask:Ljava/lang/Runnable;

    .line 57
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->mCachedTargetBounds:Landroid/graphics/Rect;

    .line 64
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;)F
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->mUrlFocusChangePercent:F

    return v0
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;F)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->setUrlFocusChangePercent(F)V

    return-void
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;Z)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->finishUrlFocusChange(Z)V

    return-void
.end method

.method private static distanceToRange(FFF)F
    .locals 1

    .prologue
    .line 111
    cmpg-float v0, p2, p0

    if-gez v0, :cond_0

    sub-float v0, p0, p2

    :goto_0
    return v0

    :cond_0
    cmpl-float v0, p2, p1

    if-lez v0, :cond_1

    sub-float v0, p1, p2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private finishUrlFocusChange(Z)V
    .locals 4

    .prologue
    const/16 v3, 0x20

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 156
    if-eqz p1, :cond_3

    .line 157
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->mSecurityButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->mSecurityButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 158
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->getWindowDelegate()Lorg/chromium/chrome/browser/WindowDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/WindowDelegate;->getWindowSoftInputMode()I

    move-result v0

    if-eq v0, v3, :cond_1

    .line 160
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->getWindowDelegate()Lorg/chromium/chrome/browser/WindowDelegate;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/chromium/chrome/browser/WindowDelegate;->setWindowSoftInputMode(I)V

    .line 163
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    invoke-static {v0}, Lorg/chromium/ui/UiUtils;->showKeyboard(Landroid/view/View;)V

    .line 181
    :cond_2
    :goto_0
    return-void

    .line 165
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->mSecurityButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->mSecurityButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->mSecurityButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->mSecurityButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-lez v0, :cond_4

    .line 169
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->mSecurityButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 171
    :cond_4
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    invoke-static {v0}, Lorg/chromium/ui/UiUtils;->hideKeyboard(Landroid/view/View;)Z

    .line 172
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 176
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->getWindowDelegate()Lorg/chromium/chrome/browser/WindowDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/WindowDelegate;->getWindowSoftInputMode()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_2

    .line 178
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->mKeyboardResizeModeTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {p0, v0, v2, v3}, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private setUrlFocusChangePercent(F)V
    .locals 1

    .prologue
    .line 188
    iput p1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->mUrlFocusChangePercent:F

    .line 190
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->getToolbarDataProvider()Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;->getNewTabPageForCurrentTab()Lorg/chromium/chrome/browser/ntp/NewTabPage;

    move-result-object v0

    .line 191
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->setUrlFocusChangeAnimationPercent(F)V

    .line 192
    :cond_0
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 68
    invoke-super {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->onFinishInflate()V

    .line 70
    sget v0, Lorg/chromium/chrome/R$id;->bookmark_button:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->mBookmarkButton:Landroid/view/View;

    .line 71
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->mDeleteButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->mTargets:[Landroid/view/View;

    .line 72
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    .prologue
    .line 76
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->mTargets:[Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 106
    :goto_0
    return v0

    .line 78
    :cond_0
    const/4 v4, 0x0

    .line 79
    const/4 v3, 0x0

    .line 81
    const/4 v2, 0x0

    .line 82
    const/4 v1, 0x0

    .line 83
    iget-object v7, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->mTargets:[Landroid/view/View;

    array-length v8, v7

    const/4 v0, 0x0

    move v6, v0

    move v0, v1

    move v1, v2

    move v2, v3

    :goto_1
    if-ge v6, v8, :cond_2

    aget-object v5, v7, v6

    .line 84
    invoke-virtual {v5}, Landroid/view/View;->isShown()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 86
    iget-object v3, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->mCachedTargetBounds:Landroid/graphics/Rect;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v11

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v12

    invoke-virtual {v3, v9, v10, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 87
    iget-object v3, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->mCachedTargetBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v5, v3}, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 88
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    .line 89
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    .line 90
    iget-object v3, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->mCachedTargetBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget-object v11, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->mCachedTargetBounds:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    int-to-float v11, v11

    invoke-static {v3, v11, v9}, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->distanceToRange(FFF)F

    move-result v11

    .line 92
    iget-object v3, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->mCachedTargetBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget-object v12, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->mCachedTargetBounds:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    int-to-float v12, v12

    invoke-static {v3, v12, v10}, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->distanceToRange(FFF)F

    move-result v12

    .line 94
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v13

    add-float/2addr v3, v13

    .line 95
    if-eqz v4, :cond_1

    cmpg-float v13, v3, v2

    if-gez v13, :cond_4

    .line 98
    :cond_1
    add-float v1, v9, v11

    .line 99
    add-float v0, v10, v12

    move v2, v3

    move-object v3, v5

    .line 83
    :goto_2
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    move-object v4, v3

    goto :goto_1

    .line 103
    :cond_2
    if-nez v4, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    .line 105
    :cond_3
    invoke-virtual {p1, v1, v0}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 106
    invoke-virtual {v4, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :cond_4
    move-object v3, v4

    goto :goto_2
.end method

.method public onUrlFocusChange(Z)V
    .locals 5

    .prologue
    .line 116
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->onUrlFocusChange(Z)V

    .line 118
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->mKeyboardResizeModeTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 120
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->mUrlFocusChangeAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->mUrlFocusChangeAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->mUrlFocusChangeAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->mUrlFocusChangeAnimator:Landroid/animation/Animator;

    .line 125
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->getToolbarDataProvider()Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;->getNewTabPageForCurrentTab()Lorg/chromium/chrome/browser/ntp/NewTabPage;

    move-result-object v0

    if-nez v0, :cond_1

    .line 126
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->finishUrlFocusChange(Z)V

    .line 153
    :goto_0
    return-void

    .line 130
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 131
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 132
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    .line 134
    iget-object v2, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->mUrlFocusChangePercentProperty:Landroid/util/Property;

    const/4 v0, 0x1

    new-array v3, v0, [F

    const/4 v4, 0x0

    if-eqz p1, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    aput v0, v3, v4

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->mUrlFocusChangeAnimator:Landroid/animation/Animator;

    .line 136
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->mUrlFocusChangeAnimator:Landroid/animation/Animator;

    const/high16 v2, 0x43480000    # 200.0f

    mul-float/2addr v1, v2

    float-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 138
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->mUrlFocusChangeAnimator:Landroid/animation/Animator;

    new-instance v1, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet$3;

    invoke-direct {v1, p0, p1}, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet$3;-><init>(Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 152
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->mUrlFocusChangeAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0

    .line 134
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected updateDeleteButtonVisibility()V
    .locals 5

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 196
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->shouldShowDeleteButton()Z

    move-result v3

    .line 197
    iget-object v4, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->mDeleteButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    if-eqz v3, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setVisibility(I)V

    .line 198
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->mBookmarkButton:Landroid/view/View;

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 199
    return-void

    :cond_0
    move v0, v2

    .line 197
    goto :goto_0

    :cond_1
    move v2, v1

    .line 198
    goto :goto_1
.end method

.method protected updateLayoutParams()V
    .locals 3

    .prologue
    .line 204
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->mMicButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 206
    invoke-static {v0}, Lorg/chromium/base/ApiCompatibilityUtils;->getMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v0

    .line 207
    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->mMicButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->mMicButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    move v2, v0

    .line 209
    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->mDeleteButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 211
    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->mBookmarkButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 214
    invoke-static {v0, v2}, Lorg/chromium/base/ApiCompatibilityUtils;->setMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 215
    invoke-static {v1, v2}, Lorg/chromium/base/ApiCompatibilityUtils;->setMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 217
    iget-object v2, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->mDeleteButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    invoke-virtual {v2, v0}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 218
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->mBookmarkButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 220
    invoke-super {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->updateLayoutParams()V

    .line 221
    return-void

    :cond_0
    move v2, v0

    goto :goto_0
.end method
