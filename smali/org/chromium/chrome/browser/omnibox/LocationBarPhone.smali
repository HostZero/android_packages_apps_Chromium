.class public Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;
.super Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;
.source "LocationBarPhone.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mFirstVisibleFocusedView:Landroid/view/View;

.field private mIncognitoBadge:Landroid/view/View;

.field private mIncognitoBadgePadding:I

.field private mIsMenuBadgeAnimationRunning:Z

.field private mKeyboardResizeModeTask:Ljava/lang/Runnable;

.field private mMenuBadge:Landroid/widget/ImageView;

.field private mMenuBadgeAnimatorSet:Landroid/animation/AnimatorSet;

.field private mMenuButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

.field private mMenuButtonWrapper:Landroid/view/View;

.field private mOmniboxBackgroundAnimator:Landroid/animation/ObjectAnimator;

.field private mShowMenuBadge:Z

.field private mUrlActionsContainer:Landroid/view/View;

.field private mUrlFocusChangeInProgress:Z

.field private mUrlFocusChangePercent:F

.field private mVoiceSearchEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    return-void
.end method

.method static synthetic access$002(Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->mKeyboardResizeModeTask:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$102(Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;Z)Z
    .locals 0

    .prologue
    .line 42
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->mIsMenuBadgeAnimationRunning:Z

    return p1
.end method

.method private shouldUseLightDrawables()Z
    .locals 2

    .prologue
    .line 482
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->getCurrentTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 483
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->isIncognito()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 485
    :goto_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->getToolbarDataProvider()Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;

    move-result-object v1

    invoke-interface {v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;->isUsingBrandColor()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 486
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->getToolbarDataProvider()Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;

    move-result-object v1

    invoke-interface {v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;->getPrimaryColor()I

    move-result v1

    .line 487
    invoke-static {v1}, Lorg/chromium/chrome/browser/util/ColorUtils;->shoudUseLightForegroundOnBackground(I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 490
    :cond_0
    return v0

    .line 483
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateIncognitoBadgePadding()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 340
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->mIncognitoBadge:Landroid/view/View;

    if-nez v0, :cond_0

    .line 348
    :goto_0
    return-void

    .line 342
    :cond_0
    sget v0, Lorg/chromium/chrome/R$id;->location_bar_icon:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 343
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->mIncognitoBadge:Landroid/view/View;

    iget v1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->mIncognitoBadgePadding:I

    invoke-static {v0, v2, v2, v1, v2}, Lorg/chromium/base/ApiCompatibilityUtils;->setPaddingRelative(Landroid/view/View;IIII)V

    goto :goto_0

    .line 346
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->mIncognitoBadge:Landroid/view/View;

    invoke-static {v0, v2, v2, v2, v2}, Lorg/chromium/base/ApiCompatibilityUtils;->setPaddingRelative(Landroid/view/View;IIII)V

    goto :goto_0
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 203
    .line 204
    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->mUrlContainer:Lorg/chromium/chrome/browser/omnibox/UrlContainer;

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->mUrlActionsContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 205
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 210
    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->mUrlContainer:Lorg/chromium/chrome/browser/omnibox/UrlContainer;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->getLeft()I

    move-result v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->mUrlActionsContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 211
    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->mUrlActionsContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->getBottom()I

    move-result v2

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 216
    :goto_0
    const/4 v0, 0x1

    .line 218
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v1

    .line 219
    if-eqz v0, :cond_1

    .line 220
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 222
    :cond_1
    return v1

    .line 213
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->mUrlActionsContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->mUrlActionsContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->getBottom()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    goto :goto_0
.end method

.method public finishUrlFocusChange(Z)V
    .locals 5

    .prologue
    const/16 v2, 0x20

    const/4 v4, 0x0

    .line 237
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->getWindowDelegate()Lorg/chromium/chrome/browser/WindowDelegate;

    move-result-object v0

    .line 238
    if-nez p1, :cond_3

    .line 253
    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 257
    new-instance v1, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone$3;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone$3;-><init>(Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;)V

    const-wide/16 v2, 0x96

    invoke-virtual {p0, v1, v2, v3}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 265
    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->mKeyboardResizeModeTask:Ljava/lang/Runnable;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/WindowDelegate;->getWindowSoftInputMode()I

    move-result v1

    const/16 v2, 0x10

    if-eq v1, v2, :cond_0

    .line 268
    new-instance v1, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone$4;

    invoke-direct {v1, p0, v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone$4;-><init>(Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;Lorg/chromium/chrome/browser/WindowDelegate;)V

    iput-object v1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->mKeyboardResizeModeTask:Ljava/lang/Runnable;

    .line 276
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->mKeyboardResizeModeTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {p0, v0, v2, v3}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 278
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->hasVisibleViewsAfterUrlBarWhenUnfocused()Z

    move-result v0

    if-nez v0, :cond_1

    .line 279
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->mUrlActionsContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 298
    :cond_1
    :goto_0
    iput-boolean v4, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->mUrlFocusChangeInProgress:Z

    .line 299
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->updateDeleteButtonVisibility()V

    .line 301
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->getToolbarDataProvider()Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;->getNewTabPageForCurrentTab()Lorg/chromium/chrome/browser/ntp/NewTabPage;

    move-result-object v0

    .line 302
    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->isLocationBarShownInNTP()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 303
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->fadeInOmniboxResultsContainerBackground()V

    .line 305
    :cond_2
    return-void

    .line 282
    :cond_3
    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->mKeyboardResizeModeTask:Ljava/lang/Runnable;

    if-eqz v1, :cond_4

    .line 283
    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->mKeyboardResizeModeTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 284
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->mKeyboardResizeModeTask:Ljava/lang/Runnable;

    .line 286
    :cond_4
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/WindowDelegate;->getWindowSoftInputMode()I

    move-result v1

    if-eq v1, v2, :cond_5

    .line 288
    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/WindowDelegate;->setWindowSoftInputMode(I)V

    .line 291
    :cond_5
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    invoke-static {v0}, Lorg/chromium/ui/UiUtils;->showKeyboard(Landroid/view/View;)V

    .line 294
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->getSuggestionList()Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->getSuggestionList()Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 295
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->getSuggestionList()Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;->invalidateSuggestionViews()V

    goto :goto_0
.end method

.method public getFirstViewVisibleWhenFocused()Landroid/view/View;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->mFirstVisibleFocusedView:Landroid/view/View;

    return-object v0
.end method

.method public getMenuAnchor()Landroid/view/View;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->mMenuButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    return-object v0
.end method

.method public hasVisibleViewsAfterUrlBarWhenUnfocused()Z
    .locals 1

    .prologue
    .line 149
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->showMenuButtonInOmnibox()Z

    move-result v0

    return v0
.end method

.method protected isUrlFocusChangeInProgress()Z
    .locals 1

    .prologue
    .line 227
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->mUrlFocusChangeInProgress:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 74
    invoke-super {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->onFinishInflate()V

    .line 76
    sget v0, Lorg/chromium/chrome/R$id;->url_container:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->mFirstVisibleFocusedView:Landroid/view/View;

    .line 77
    sget v0, Lorg/chromium/chrome/R$id;->incognito_badge:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->mIncognitoBadge:Landroid/view/View;

    .line 78
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$dimen;->location_bar_incognito_badge_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->mIncognitoBadgePadding:I

    .line 81
    sget v0, Lorg/chromium/chrome/R$id;->url_action_container:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->mUrlActionsContainer:Landroid/view/View;

    .line 82
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 83
    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->mUrlActionsContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 84
    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v1, v1, -0xf

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 85
    new-instance v1, Landroid/view/TouchDelegate;

    iget-object v2, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->mUrlActionsContainer:Landroid/view/View;

    invoke-direct {v1, v0, v2}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 86
    sget-boolean v0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->mUrlActionsContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 87
    :cond_0
    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 89
    sget v0, Lorg/chromium/chrome/R$id;->document_menu_button:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/widget/TintedImageButton;

    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->mMenuButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    .line 90
    sget v0, Lorg/chromium/chrome/R$id;->document_menu_badge:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->mMenuBadge:Landroid/widget/ImageView;

    .line 91
    sget v0, Lorg/chromium/chrome/R$id;->document_menu_button_wrapper:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->mMenuButtonWrapper:Landroid/view/View;

    .line 93
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->hasVisibleViewsAfterUrlBarWhenUnfocused()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->mUrlActionsContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 94
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->showMenuButtonInOmnibox()Z

    move-result v0

    if-nez v0, :cond_2

    .line 95
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->mMenuButtonWrapper:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->mMenuButtonWrapper:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 97
    :cond_2
    return-void
.end method

.method public onUrlFocusChange(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 187
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->mOmniboxBackgroundAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->mOmniboxBackgroundAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->mOmniboxBackgroundAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 189
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->mOmniboxBackgroundAnimator:Landroid/animation/ObjectAnimator;

    .line 191
    :cond_0
    if-eqz p1, :cond_1

    .line 194
    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->setFocusable(Z)V

    .line 195
    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->setFocusableInTouchMode(Z)V

    .line 197
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->mUrlFocusChangeInProgress:Z

    .line 198
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->onUrlFocusChange(Z)V

    .line 199
    return-void
.end method

.method public removeAppMenuUpdateBadge(Z)V
    .locals 4

    .prologue
    .line 433
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->mShowMenuBadge:Z

    .line 434
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->mShowMenuBadge:Z

    .line 435
    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->mMenuButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lorg/chromium/chrome/R$string;->accessibility_toolbar_btn_menu:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 438
    if-eqz p1, :cond_0

    if-nez v0, :cond_2

    .line 439
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->showMenuButtonInOmnibox()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 440
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->mMenuBadge:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 473
    :cond_1
    :goto_0
    return-void

    .line 445
    :cond_2
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->mIsMenuBadgeAnimationRunning:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->mMenuBadgeAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_3

    .line 446
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->mMenuBadgeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 450
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->mMenuButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setAlpha(F)V

    .line 452
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->mMenuButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->mMenuBadge:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;->createHideUpdateBadgeAnimation(Landroid/view/View;Landroid/view/View;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->mMenuBadgeAnimatorSet:Landroid/animation/AnimatorSet;

    .line 455
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->mMenuBadgeAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone$6;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone$6;-><init>(Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 472
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->mMenuBadgeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method

.method public setLayoutDirection(I)V
    .locals 0

    .prologue
    .line 381
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->setLayoutDirection(I)V

    .line 382
    invoke-direct {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->updateIncognitoBadgePadding()V

    .line 383
    return-void
.end method

.method public setMenuButtonHelper(Lorg/chromium/chrome/browser/appmenu/AppMenuButtonHelper;)V
    .locals 2

    .prologue
    .line 101
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->setMenuButtonHelper(Lorg/chromium/chrome/browser/appmenu/AppMenuButtonHelper;)V

    .line 102
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->mMenuButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    new-instance v1, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone$1;

    invoke-direct {v1, p0, p1}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone$1;-><init>(Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;Lorg/chromium/chrome/browser/appmenu/AppMenuButtonHelper;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 109
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->mMenuButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    new-instance v1, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone$2;

    invoke-direct {v1, p0, p1}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone$2;-><init>(Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;Lorg/chromium/chrome/browser/appmenu/AppMenuButtonHelper;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 118
    return-void
.end method

.method public setUrlFocusChangePercent(F)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 166
    iput p1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->mUrlFocusChangePercent:F

    .line 168
    cmpl-float v0, p1, v1

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->hasVisibleViewsAfterUrlBarWhenUnfocused()Z

    move-result v0

    if-nez v0, :cond_2

    .line 169
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->mUrlActionsContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 178
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->mDeleteButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setAlpha(F)V

    .line 179
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->mMicButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setAlpha(F)V

    .line 180
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->showMenuButtonInOmnibox()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->mMenuButtonWrapper:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 182
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->updateDeleteButtonVisibility()V

    .line 183
    return-void

    .line 170
    :cond_2
    cmpl-float v0, p1, v1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->mUrlFocusChangeInProgress:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->hasVisibleViewsAfterUrlBarWhenUnfocused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->mUrlActionsContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected shouldAnimateIconChanges()Z
    .locals 1

    .prologue
    .line 376
    invoke-super {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->shouldAnimateIconChanges()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->mUrlFocusChangeInProgress:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected shouldShowDeleteButton()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 309
    iget-object v2, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v0

    .line 310
    :goto_0
    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->mUrlFocusChangeInProgress:Z

    if-eqz v2, :cond_2

    :cond_0
    :goto_1
    return v0

    :cond_1
    move v2, v1

    .line 309
    goto :goto_0

    :cond_2
    move v0, v1

    .line 310
    goto :goto_1
.end method

.method public showAppMenuUpdateBadge(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 389
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->showMenuButtonInOmnibox()Z

    move-result v0

    if-nez v0, :cond_0

    .line 427
    :goto_0
    return-void

    .line 391
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->mShowMenuBadge:Z

    .line 392
    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->mMenuBadge:Landroid/widget/ImageView;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->shouldUseLightDrawables()Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lorg/chromium/chrome/R$drawable;->badge_update_light:I

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 394
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->mMenuButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$string;->accessibility_toolbar_btn_menu_update:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 397
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->mIsMenuBadgeAnimationRunning:Z

    if-eqz v0, :cond_3

    .line 398
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->mMenuBadge:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 392
    :cond_2
    sget v0, Lorg/chromium/chrome/R$drawable;->badge_update_dark:I

    goto :goto_1

    .line 403
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->mMenuBadge:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 404
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->mMenuBadge:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 406
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->mMenuButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->mMenuBadge:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;->createShowUpdateBadgeAnimation(Landroid/view/View;Landroid/view/View;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->mMenuBadgeAnimatorSet:Landroid/animation/AnimatorSet;

    .line 409
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->mMenuBadgeAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone$5;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone$5;-><init>(Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 426
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->mMenuBadgeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method

.method public showMenuButtonInOmnibox()Z
    .locals 1

    .prologue
    .line 158
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->isTabSwitchingEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected updateDeleteButtonVisibility()V
    .locals 5

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 315
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->shouldShowDeleteButton()Z

    move-result v3

    .line 316
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->mDeleteButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    invoke-virtual {v0, v3}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setEnabled(Z)V

    .line 317
    iget-object v4, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->mDeleteButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    if-eqz v3, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setVisibility(I)V

    .line 319
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->mVoiceSearchEnabled:Z

    if-eqz v0, :cond_2

    if-nez v3, :cond_2

    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->mUrlFocusChangeInProgress:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->mUrlFocusChangePercent:F

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 322
    :goto_1
    iget-object v3, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->mMicButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    if-eqz v0, :cond_3

    :goto_2
    invoke-virtual {v3, v1}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setVisibility(I)V

    .line 323
    return-void

    :cond_1
    move v0, v2

    .line 317
    goto :goto_0

    :cond_2
    move v0, v1

    .line 319
    goto :goto_1

    :cond_3
    move v1, v2

    .line 322
    goto :goto_2
.end method

.method protected updateLocationBarIconContainerVisibility()V
    .locals 0

    .prologue
    .line 333
    invoke-super {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->updateLocationBarIconContainerVisibility()V

    .line 334
    invoke-direct {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->updateIncognitoBadgePadding()V

    .line 335
    return-void
.end method

.method public updateMicButtonState()V
    .locals 1

    .prologue
    .line 327
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->isVoiceSearchEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->mVoiceSearchEnabled:Z

    .line 328
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->updateDeleteButtonVisibility()V

    .line 329
    return-void
.end method

.method public updateVisualsForState()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 352
    invoke-super {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->updateVisualsForState()V

    .line 354
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->getCurrentTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 355
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->isIncognito()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 356
    :goto_0
    iget-object v2, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->mIncognitoBadge:Landroid/view/View;

    if-eqz v0, :cond_2

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 357
    invoke-direct {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->updateIncognitoBadgePadding()V

    .line 359
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->showMenuButtonInOmnibox()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    invoke-direct {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->shouldUseLightDrawables()Z

    move-result v2

    .line 361
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$color;->dark_mode_tint:I

    invoke-static {v0, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->getColorStateList(Landroid/content/res/Resources;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 363
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lorg/chromium/chrome/R$color;->light_mode_tint:I

    invoke-static {v0, v3}, Lorg/chromium/base/ApiCompatibilityUtils;->getColorStateList(Landroid/content/res/Resources;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 365
    iget-object v3, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->mMenuButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    if-eqz v2, :cond_3

    :goto_2
    invoke-virtual {v3, v0}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setTint(Landroid/content/res/ColorStateList;)V

    .line 367
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->mShowMenuBadge:Z

    if-eqz v0, :cond_0

    .line 368
    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->mMenuBadge:Landroid/widget/ImageView;

    if-eqz v2, :cond_4

    sget v0, Lorg/chromium/chrome/R$drawable;->badge_update_light:I

    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 372
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 355
    goto :goto_0

    .line 356
    :cond_2
    const/16 v1, 0x8

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 365
    goto :goto_2

    .line 368
    :cond_4
    sget v0, Lorg/chromium/chrome/R$drawable;->badge_update_dark:I

    goto :goto_3
.end method
