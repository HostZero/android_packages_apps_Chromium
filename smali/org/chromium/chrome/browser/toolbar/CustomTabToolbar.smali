.class public Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;
.super Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;
.source "CustomTabToolbar.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Lorg/chromium/chrome/browser/omnibox/LocationBar;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mAnimDelegate:Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;

.field private mBackgroundColorSet:Z

.field private mCloseButton:Landroid/widget/ImageButton;

.field private mCustomActionButton:Landroid/widget/ImageButton;

.field private mFirstUrl:Ljava/lang/String;

.field private mInitializeTimeStamp:J

.field private mLocationBarFrameLayout:Landroid/view/View;

.field private mSecurityButton:Landroid/widget/ImageView;

.field private mSecurityIconType:I

.field private mShowsOfflinePage:Z

.field private mState:I

.field private mTitleAnimationStarter:Ljava/lang/Runnable;

.field private mTitleBar:Landroid/widget/TextView;

.field private mTitleUrlContainer:Landroid/view/View;

.field private mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;

.field private mUseDarkColors:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 90
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    iput v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mState:I

    .line 77
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mShowsOfflinePage:Z

    .line 79
    new-instance v0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar$1;-><init>(Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mTitleAnimationStarter:Ljava/lang/Runnable;

    .line 91
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;)Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mAnimDelegate:Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;

    return-object v0
.end method

.method private getSecurityLevel()I
    .locals 1

    .prologue
    .line 434
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->getCurrentTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 435
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->getCurrentTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getSecurityLevel()I

    move-result v0

    goto :goto_0
.end method

.method private isStoredArticle(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 334
    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->getLastUsedProfile()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/dom_distiller/DomDistillerServiceFactory;->getForProfile(Lorg/chromium/chrome/browser/profiles/Profile;)Lorg/chromium/components/dom_distiller/core/DomDistillerService;

    move-result-object v0

    .line 336
    const-string/jumbo v1, "entry_id"

    invoke-static {p1, v1}, Lorg/chromium/components/dom_distiller/core/DomDistillerUrlUtils;->getValueForKeyInUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 337
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    .line 338
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0, v1}, Lorg/chromium/components/dom_distiller/core/DomDistillerService;->hasEntry(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private showOfflineBoltIfNecessary()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 462
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->getCurrentTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->getCurrentTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->isOfflinePage()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 463
    :goto_0
    iget-boolean v2, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mShowsOfflinePage:Z

    if-ne v0, v2, :cond_1

    .line 478
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 462
    goto :goto_0

    .line 465
    :cond_1
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mShowsOfflinePage:Z

    .line 466
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mShowsOfflinePage:Z

    if-eqz v0, :cond_3

    .line 468
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$drawable;->offline_bolt:I

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/widget/TintedDrawable;->constructTintedDrawable(Landroid/content/res/Resources;I)Lorg/chromium/chrome/browser/widget/TintedDrawable;

    move-result-object v1

    .line 470
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mUseDarkColors:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mDarkModeTint:Landroid/content/res/ColorStateList;

    :goto_2
    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/widget/TintedDrawable;->setTint(Landroid/content/res/ColorStateList;)V

    .line 471
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mSecurityButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 472
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mAnimDelegate:Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;->showSecurityButton()V

    goto :goto_1

    .line 470
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mLightModeTint:Landroid/content/res/ColorStateList;

    goto :goto_2

    .line 475
    :cond_3
    iput v1, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mSecurityIconType:I

    .line 476
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mAnimDelegate:Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;->hideSecurityButton()V

    goto :goto_1
.end method

.method private updateButtonsTint()V
    .locals 2

    .prologue
    .line 376
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mMenuButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mUseDarkColors:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mDarkModeTint:Landroid/content/res/ColorStateList;

    :goto_0
    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setTint(Landroid/content/res/ColorStateList;)V

    .line 377
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mCloseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lorg/chromium/chrome/browser/widget/TintedDrawable;

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mCloseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/widget/TintedDrawable;

    iget-boolean v1, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mUseDarkColors:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mDarkModeTint:Landroid/content/res/ColorStateList;

    :goto_1
    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/widget/TintedDrawable;->setTint(Landroid/content/res/ColorStateList;)V

    .line 381
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mCustomActionButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lorg/chromium/chrome/browser/widget/TintedDrawable;

    if-eqz v0, :cond_1

    .line 382
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mCustomActionButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/widget/TintedDrawable;

    iget-boolean v1, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mUseDarkColors:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mDarkModeTint:Landroid/content/res/ColorStateList;

    :goto_2
    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/widget/TintedDrawable;->setTint(Landroid/content/res/ColorStateList;)V

    .line 385
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mSecurityButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lorg/chromium/chrome/browser/widget/TintedDrawable;

    if-eqz v0, :cond_2

    .line 386
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mSecurityButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/widget/TintedDrawable;

    iget-boolean v1, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mUseDarkColors:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mDarkModeTint:Landroid/content/res/ColorStateList;

    :goto_3
    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/widget/TintedDrawable;->setTint(Landroid/content/res/ColorStateList;)V

    .line 389
    :cond_2
    return-void

    .line 376
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mLightModeTint:Landroid/content/res/ColorStateList;

    goto :goto_0

    .line 378
    :cond_4
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mLightModeTint:Landroid/content/res/ColorStateList;

    goto :goto_1

    .line 382
    :cond_5
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mLightModeTint:Landroid/content/res/ColorStateList;

    goto :goto_2

    .line 386
    :cond_6
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mLightModeTint:Landroid/content/res/ColorStateList;

    goto :goto_3
.end method

.method private updateLayoutParams()V
    .locals 12

    .prologue
    const/high16 v11, -0x80000000

    const/16 v10, 0x8

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v2, 0x0

    const/4 v5, -0x1

    .line 505
    move v1, v2

    move v3, v2

    .line 507
    :goto_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_c

    .line 508
    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 509
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v10, :cond_2

    .line 510
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 511
    invoke-static {v0}, Lorg/chromium/base/ApiCompatibilityUtils;->getMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v4

    if-eq v4, v3, :cond_0

    .line 512
    invoke-static {v0, v3}, Lorg/chromium/base/ApiCompatibilityUtils;->setMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 513
    invoke-virtual {v6, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 515
    :cond_0
    iget-object v4, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mLocationBarFrameLayout:Landroid/view/View;

    if-ne v6, v4, :cond_1

    .line 546
    :goto_1
    sget-boolean v0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->$assertionsDisabled:Z

    if-nez v0, :cond_7

    if-ne v1, v5, :cond_7

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 521
    :cond_1
    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/4 v7, -0x2

    if-ne v4, v7, :cond_3

    .line 522
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->getMeasuredWidth()I

    move-result v4

    invoke-static {v4, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 531
    :goto_2
    iget v7, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/4 v8, -0x2

    if-ne v7, v8, :cond_5

    .line 532
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->getMeasuredHeight()I

    move-result v0

    invoke-static {v0, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 541
    :goto_3
    invoke-virtual {v6, v4, v0}, Landroid/view/View;->measure(II)V

    .line 542
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v3, v0

    .line 507
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 524
    :cond_3
    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-ne v4, v5, :cond_4

    .line 525
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->getMeasuredWidth()I

    move-result v4

    invoke-static {v4, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    goto :goto_2

    .line 528
    :cond_4
    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-static {v4, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    goto :goto_2

    .line 534
    :cond_5
    iget v7, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-ne v7, v5, :cond_6

    .line 535
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->getMeasuredHeight()I

    move-result v0

    invoke-static {v0, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_3

    .line 538
    :cond_6
    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-static {v0, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_3

    .line 548
    :cond_7
    add-int/lit8 v0, v1, 0x1

    move v1, v2

    :goto_4
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_9

    .line 549
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 550
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v10, :cond_8

    .line 551
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v1, v3

    .line 548
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 554
    :cond_9
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mLocationBarFrameLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 556
    invoke-static {v0}, Lorg/chromium/base/ApiCompatibilityUtils;->getMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v3

    if-eq v3, v1, :cond_a

    .line 557
    invoke-static {v0, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->setMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 558
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mLocationBarFrameLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 563
    :cond_a
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mTitleUrlContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 564
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mSecurityButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-ne v1, v10, :cond_b

    .line 565
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 569
    :goto_5
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mTitleUrlContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 570
    return-void

    .line 567
    :cond_b
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mSecurityButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_5

    :cond_c
    move v1, v5

    goto/16 :goto_1
.end method


# virtual methods
.method public backKeyPressed()V
    .locals 0

    .prologue
    .line 634
    return-void
.end method

.method public bridge synthetic finishAnimations()V
    .locals 0

    .prologue
    .line 53
    invoke-super {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->finishAnimations()V

    return-void
.end method

.method public getBackground()Landroid/graphics/drawable/ColorDrawable;
    .locals 1

    .prologue
    .line 425
    invoke-super {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    return-object v0
.end method

.method public bridge synthetic getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->getBackground()Landroid/graphics/drawable/ColorDrawable;

    move-result-object v0

    return-object v0
.end method

.method public getContainerView()Landroid/view/View;
    .locals 0

    .prologue
    .line 496
    return-object p0
.end method

.method public getCurrentTab()Lorg/chromium/chrome/browser/tab/Tab;
    .locals 1

    .prologue
    .line 193
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->getToolbarDataProvider()Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;->getTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    return-object v0
.end method

.method public getCustomActionButtonForTest()Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mCustomActionButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public bridge synthetic getFirstDrawTime()J
    .locals 2

    .prologue
    .line 53
    invoke-super {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->getFirstDrawTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFirstUrlBarFocusTime()J
    .locals 2

    .prologue
    .line 618
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getLocationBar()Lorg/chromium/chrome/browser/omnibox/LocationBar;
    .locals 0

    .prologue
    .line 580
    return-object p0
.end method

.method public bridge synthetic getLocationBarContentRect(Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 53
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->getLocationBarContentRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method public getMenuAnchor()Landroid/view/View;
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mMenuButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    return-object v0
.end method

.method public getMenuButtonWrapper()Landroid/view/View;
    .locals 1

    .prologue
    .line 653
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mMenuButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    return-object v0
.end method

.method public bridge synthetic getPositionRelativeToContainer(Landroid/view/View;[I)V
    .locals 0

    .prologue
    .line 53
    invoke-super {p0, p1, p2}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->getPositionRelativeToContainer(Landroid/view/View;[I)V

    return-void
.end method

.method public getTabStripHeight()I
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x0

    return v0
.end method

.method protected getToolbarHeightWithoutShadowResId()I
    .locals 1

    .prologue
    .line 117
    sget v0, Lorg/chromium/chrome/R$dimen;->custom_tabs_control_container_height:I

    return v0
.end method

.method public hideSuggestions()V
    .locals 0

    .prologue
    .line 622
    return-void
.end method

.method public initialize(Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;Lorg/chromium/chrome/browser/toolbar/ToolbarTabController;Lorg/chromium/chrome/browser/appmenu/AppMenuButtonHelper;)V
    .locals 2

    .prologue
    .line 123
    invoke-super {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->initialize(Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;Lorg/chromium/chrome/browser/toolbar/ToolbarTabController;Lorg/chromium/chrome/browser/appmenu/AppMenuButtonHelper;)V

    .line 124
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->updateVisualsForState()V

    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mInitializeTimeStamp:J

    .line 126
    return-void
.end method

.method public initializeControls(Lorg/chromium/chrome/browser/WindowDelegate;Lorg/chromium/chrome/browser/toolbar/ActionModeController$ActionBarDelegate;Lorg/chromium/ui/base/WindowAndroid;)V
    .locals 0

    .prologue
    .line 431
    return-void
.end method

.method public bridge synthetic isReadyForTextureCapture()Z
    .locals 1

    .prologue
    .line 53
    invoke-super {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->isReadyForTextureCapture()Z

    move-result v0

    return v0
.end method

.method public isShowingAppMenuUpdateBadge()Z
    .locals 1

    .prologue
    .line 641
    const/4 v0, 0x0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 418
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 419
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->setTitleToPageTitle()V

    .line 420
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->setUrlToPageUrl()V

    .line 421
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 95
    invoke-super {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->onFinishInflate()V

    .line 96
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$color;->default_primary_color:I

    invoke-static {v1, v2}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 98
    sget v0, Lorg/chromium/chrome/R$id;->url_bar:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/omnibox/UrlBar;

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    .line 99
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->setHint(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->setDelegate(Lorg/chromium/chrome/browser/omnibox/UrlBar$UrlBarDelegate;)V

    .line 101
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    invoke-virtual {v0, v3}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->setEnabled(Z)V

    .line 102
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    invoke-virtual {v0, v3}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->setAllowFocus(Z)V

    .line 103
    sget v0, Lorg/chromium/chrome/R$id;->title_bar:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mTitleBar:Landroid/widget/TextView;

    .line 104
    sget v0, Lorg/chromium/chrome/R$id;->location_bar_frame_layout:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mLocationBarFrameLayout:Landroid/view/View;

    .line 105
    sget v0, Lorg/chromium/chrome/R$id;->title_url_container:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mTitleUrlContainer:Landroid/view/View;

    .line 106
    sget v0, Lorg/chromium/chrome/R$id;->security_button:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mSecurityButton:Landroid/widget/ImageView;

    .line 107
    iput v3, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mSecurityIconType:I

    .line 108
    sget v0, Lorg/chromium/chrome/R$id;->action_button:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mCustomActionButton:Landroid/widget/ImageButton;

    .line 109
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mCustomActionButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 110
    sget v0, Lorg/chromium/chrome/R$id;->close_button:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mCloseButton:Landroid/widget/ImageButton;

    .line 111
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mCloseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 112
    new-instance v0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;

    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mSecurityButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mTitleUrlContainer:Landroid/view/View;

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;-><init>(Landroid/view/View;Landroid/view/View;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mAnimDelegate:Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;

    .line 113
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 586
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mCloseButton:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_0

    .line 587
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->close_tab:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 593
    :goto_0
    invoke-virtual {p0, p1, v0}, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->showAccessibilityToast(Landroid/view/View;Ljava/lang/CharSequence;)Z

    move-result v0

    :goto_1
    return v0

    .line 588
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mCustomActionButton:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_1

    .line 589
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mCustomActionButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 591
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 0

    .prologue
    .line 574
    invoke-direct {p0}, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->updateLayoutParams()V

    .line 575
    invoke-super {p0, p1, p2}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->onMeasure(II)V

    .line 576
    return-void
.end method

.method public onNativeLibraryReady()V
    .locals 2

    .prologue
    .line 130
    invoke-super {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->onNativeLibraryReady()V

    .line 131
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mSecurityButton:Landroid/widget/ImageView;

    new-instance v1, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar$2;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar$2;-><init>(Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    return-void
.end method

.method protected onNavigatedToDifferentPage()V
    .locals 2

    .prologue
    .line 277
    invoke-super {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->onNavigatedToDifferentPage()V

    .line 278
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->setTitleToPageTitle()V

    .line 279
    iget v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 280
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mFirstUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 281
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->getToolbarDataProvider()Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;->getTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mFirstUrl:Ljava/lang/String;

    .line 287
    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->showOfflineBoltIfNecessary()V

    .line 288
    :cond_1
    return-void

    .line 283
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mFirstUrl:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->getToolbarDataProvider()Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;

    move-result-object v1

    invoke-interface {v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;->getTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 284
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->setUrlBarHidden(Z)V

    goto :goto_0
.end method

.method protected onPrimaryColorChanged(Z)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 486
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mBackgroundColorSet:Z

    if-eqz v1, :cond_0

    .line 492
    :goto_0
    return-void

    .line 487
    :cond_0
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mBackgroundColorSet:Z

    .line 488
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->getToolbarDataProvider()Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;

    move-result-object v1

    invoke-interface {v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;->getPrimaryColor()I

    move-result v1

    .line 489
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->getBackground()Landroid/graphics/drawable/ColorDrawable;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 490
    invoke-static {v1}, Lorg/chromium/chrome/browser/util/ColorUtils;->shoudUseLightForegroundOnBackground(I)Z

    move-result v1

    if-nez v1, :cond_1

    :goto_1
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mUseDarkColors:Z

    .line 491
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->updateVisualsForState()V

    goto :goto_0

    .line 490
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onTabLoadingNTP(Lorg/chromium/chrome/browser/ntp/NewTabPage;)V
    .locals 0

    .prologue
    .line 628
    return-void
.end method

.method public onTextChangedForAutocomplete(Z)V
    .locals 0

    .prologue
    .line 605
    return-void
.end method

.method public onUrlPreFocusChanged(Z)V
    .locals 0

    .prologue
    .line 602
    return-void
.end method

.method public removeAppMenuUpdateBadge(Z)V
    .locals 0

    .prologue
    .line 645
    return-void
.end method

.method public revertChanges()V
    .locals 0

    .prologue
    .line 614
    return-void
.end method

.method protected setAppMenuUpdateBadgeToVisible(Z)V
    .locals 0

    .prologue
    .line 648
    return-void
.end method

.method public setAutocompleteProfile(Lorg/chromium/chrome/browser/profiles/Profile;)V
    .locals 0

    .prologue
    .line 631
    return-void
.end method

.method public bridge synthetic setBookmarkClickHandler(Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 53
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->setBookmarkClickHandler(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setCloseButtonImageResource(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mCloseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 146
    return-void
.end method

.method public setCustomActionButton(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 4

    .prologue
    .line 156
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 160
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 161
    sget v2, Lorg/chromium/chrome/R$dimen;->toolbar_icon_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 162
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 163
    mul-int/2addr v3, v2

    div-int v1, v3, v1

    .line 164
    sget v3, Lorg/chromium/chrome/R$dimen;->min_toolbar_icon_side_padding:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 166
    mul-int/lit8 v2, v2, 0x2

    sub-int v1, v2, v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 167
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mCustomActionButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getPaddingTop()I

    move-result v1

    .line 168
    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mCustomActionButton:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getPaddingBottom()I

    move-result v2

    .line 169
    iget-object v3, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mCustomActionButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v0, v1, v0, v2}, Landroid/widget/ImageButton;->setPadding(IIII)V

    .line 170
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mCustomActionButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 172
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mCustomActionButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mCustomActionButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mCustomActionButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 175
    invoke-direct {p0}, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->updateButtonsTint()V

    .line 176
    return-void
.end method

.method public setCustomTabCloseClickHandler(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mCloseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    return-void
.end method

.method public setDefaultTextEditActionModeCallback(Lorg/chromium/chrome/browser/toolbar/ToolbarActionModeCallback;)V
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 502
    return-void
.end method

.method public bridge synthetic setForceTextureCapture(Z)Z
    .locals 1

    .prologue
    .line 53
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->setForceTextureCapture(Z)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic setLayoutUpdateHost(Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;)V
    .locals 0

    .prologue
    .line 53
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->setLayoutUpdateHost(Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;)V

    return-void
.end method

.method public setMenuButtonHelper(Lorg/chromium/chrome/browser/appmenu/AppMenuButtonHelper;)V
    .locals 2

    .prologue
    .line 393
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mMenuButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    new-instance v1, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar$3;

    invoke-direct {v1, p0, p1}, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar$3;-><init>(Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;Lorg/chromium/chrome/browser/appmenu/AppMenuButtonHelper;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 400
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mMenuButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    new-instance v1, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar$4;

    invoke-direct {v1, p0, p1}, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar$4;-><init>(Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;Lorg/chromium/chrome/browser/appmenu/AppMenuButtonHelper;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 409
    return-void
.end method

.method public bridge synthetic setOnNewTabClickHandler(Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 53
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->setOnNewTabClickHandler(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic setOnTabSwitcherClickHandler(Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 53
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->setOnTabSwitcherClickHandler(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic setPaintInvalidator(Lorg/chromium/chrome/browser/compositor/Invalidator;)V
    .locals 0

    .prologue
    .line 53
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->setPaintInvalidator(Lorg/chromium/chrome/browser/compositor/Invalidator;)V

    return-void
.end method

.method public bridge synthetic setReturnButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 53
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->setReturnButtonListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setShowTitle(Z)V
    .locals 3

    .prologue
    .line 208
    if-eqz p1, :cond_0

    .line 209
    const/4 v0, 0x2

    iput v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mState:I

    .line 210
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mAnimDelegate:Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;

    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mTitleBar:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;->prepareTitleAnim(Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 214
    :goto_0
    return-void

    .line 212
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mState:I

    goto :goto_0
.end method

.method public bridge synthetic setTextureCaptureMode(Z)V
    .locals 0

    .prologue
    .line 53
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->setTextureCaptureMode(Z)V

    return-void
.end method

.method public setTitleToPageTitle()V
    .locals 8

    .prologue
    const-wide/16 v6, 0xc8

    .line 251
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->getToolbarDataProvider()Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;->getTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 252
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 253
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mTitleBar:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    :goto_0
    return-void

    .line 260
    :cond_1
    iget v1, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getTitle()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "about:blank"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 263
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mInitializeTimeStamp:J

    sub-long/2addr v2, v4

    .line 264
    cmp-long v1, v2, v6

    if-ltz v1, :cond_3

    .line 265
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mTitleAnimationStarter:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 272
    :cond_2
    :goto_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mTitleBar:Landroid/widget/TextView;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 267
    :cond_3
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mTitleAnimationStarter:Ljava/lang/Runnable;

    sub-long v2, v6, v2

    invoke-static {v1, v2, v3}, Lorg/chromium/base/ThreadUtils;->postOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    goto :goto_1
.end method

.method public setToolbarDataProvider(Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;)V
    .locals 0

    .prologue
    .line 599
    return-void
.end method

.method public setUrlBarFocus(Z)V
    .locals 0

    .prologue
    .line 611
    return-void
.end method

.method public setUrlBarHidden(Z)V
    .locals 4

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 219
    iget v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mState:I

    if-nez v0, :cond_1

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    if-eqz p1, :cond_2

    iget v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mState:I

    if-ne v0, v2, :cond_2

    .line 222
    iput v1, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mState:I

    .line 223
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mAnimDelegate:Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;

    invoke-virtual {v0, v3}, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;->setTitleAnimationEnabled(Z)V

    .line 224
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->setVisibility(I)V

    .line 225
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mTitleBar:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 226
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mTitleBar:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 227
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 228
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mTitleBar:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 229
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mTitleBar:Landroid/widget/TextView;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$dimen;->location_bar_url_text_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0

    .line 231
    :cond_2
    if-nez p1, :cond_3

    iget v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mState:I

    if-ne v0, v1, :cond_3

    .line 232
    iput v2, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mState:I

    .line 233
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mTitleBar:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 234
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$dimen;->custom_tabs_url_text_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v3, v1}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->setTextSize(IF)V

    .line 236
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    invoke-virtual {v0, v3}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mTitleBar:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 238
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$dimen;->custom_tabs_toolbar_vertical_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 240
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mTitleBar:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 241
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mTitleBar:Landroid/widget/TextView;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$dimen;->custom_tabs_title_text_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 243
    invoke-direct {p0}, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->getSecurityLevel()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->updateSecurityIcon(I)V

    goto/16 :goto_0

    .line 245
    :cond_3
    sget-boolean v0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Unreached state"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public setUrlFocusChangeListener(Lorg/chromium/chrome/browser/omnibox/UrlFocusChangeListener;)V
    .locals 0

    .prologue
    .line 608
    return-void
.end method

.method public setUrlToPageUrl()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 292
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->getCurrentTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    if-nez v0, :cond_1

    .line 293
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->setUrl(Ljava/lang/String;Ljava/lang/String;)Z

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 297
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->getCurrentTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 302
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->getCurrentTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->isIncognito()Z

    move-result v0

    invoke-static {v1, v0}, Lorg/chromium/chrome/browser/ntp/NativePageFactory;->isNativePageUrl(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "about:blank"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 304
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->setUrl(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 307
    :cond_3
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->getToolbarDataProvider()Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;->getText()Ljava/lang/String;

    move-result-object v0

    .line 308
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->splitPathFromUrlDisplayText(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    .line 309
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 311
    invoke-static {v1}, Lorg/chromium/components/dom_distiller/core/DomDistillerUrlUtils;->isDistilledPage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 312
    invoke-direct {p0, v1}, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->isStoredArticle(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 313
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->getCurrentTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getProfile()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v0

    .line 314
    invoke-static {v0}, Lorg/chromium/chrome/browser/dom_distiller/DomDistillerServiceFactory;->getForProfile(Lorg/chromium/chrome/browser/profiles/Profile;)Lorg/chromium/components/dom_distiller/core/DomDistillerService;

    move-result-object v0

    .line 316
    const-string/jumbo v2, "entry_id"

    invoke-static {v1, v2}, Lorg/chromium/components/dom_distiller/core/DomDistillerUrlUtils;->getValueForKeyInUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/chromium/components/dom_distiller/core/DomDistillerService;->getUrlForEntry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 318
    invoke-static {v0}, Lorg/chromium/chrome/browser/dom_distiller/DomDistillerTabUtils;->getFormattedUrlFromOriginalDistillerUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 327
    :cond_4
    :goto_1
    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    invoke-virtual {v2, v1, v0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->setUrl(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->deEmphasizeUrl()V

    .line 329
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->emphasizeUrl()V

    goto :goto_0

    .line 320
    :cond_5
    invoke-static {v1}, Lorg/chromium/components/dom_distiller/core/DomDistillerUrlUtils;->getOriginalUrlFromDistillerUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 321
    invoke-static {v1}, Lorg/chromium/components/dom_distiller/core/DomDistillerUrlUtils;->getOriginalUrlFromDistillerUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 322
    invoke-static {v0}, Lorg/chromium/chrome/browser/dom_distiller/DomDistillerTabUtils;->getFormattedUrlFromOriginalDistillerUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public shouldEmphasizeHttpsScheme()Z
    .locals 2

    .prologue
    .line 198
    invoke-direct {p0}, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->getSecurityLevel()I

    move-result v0

    .line 199
    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 201
    :cond_0
    const/4 v0, 0x1

    .line 203
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic shouldIgnoreSwipeGesture()Z
    .locals 1

    .prologue
    .line 53
    invoke-super {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->shouldIgnoreSwipeGesture()Z

    move-result v0

    return v0
.end method

.method public showAppMenuUpdateBadge()V
    .locals 0

    .prologue
    .line 637
    return-void
.end method

.method public bridge synthetic updateButtonVisibility()V
    .locals 0

    .prologue
    .line 53
    invoke-super {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->updateButtonVisibility()V

    return-void
.end method

.method public updateLoadingState(Z)V
    .locals 1

    .prologue
    .line 343
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->setUrlToPageUrl()V

    .line 344
    :cond_0
    invoke-direct {p0}, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->getSecurityLevel()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->updateSecurityIcon(I)V

    .line 345
    return-void
.end method

.method public updateMicButtonState()V
    .locals 0

    .prologue
    .line 625
    return-void
.end method

.method public updateSecurityIcon(I)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 440
    iget v1, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mSecurityIconType:I

    if-eq v1, p1, :cond_0

    iget v1, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mState:I

    if-ne v1, v0, :cond_1

    .line 459
    :cond_0
    :goto_0
    return-void

    .line 442
    :cond_1
    iput p1, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mSecurityIconType:I

    .line 444
    if-nez p1, :cond_2

    .line 445
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mAnimDelegate:Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;->hideSecurityButton()V

    .line 457
    :goto_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->emphasizeUrl()V

    .line 458
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->invalidate()V

    goto :goto_0

    .line 447
    :cond_2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->shouldEmphasizeHttpsScheme()Z

    move-result v1

    if-nez v1, :cond_3

    :goto_2
    invoke-static {p1, v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->getSecurityIconResource(IZ)I

    move-result v0

    .line 450
    if-nez v0, :cond_4

    .line 451
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mSecurityButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 455
    :goto_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mAnimDelegate:Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;->showSecurityButton()V

    goto :goto_1

    .line 447
    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 453
    :cond_4
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mSecurityButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3
.end method

.method public updateVisualsForState()V
    .locals 3

    .prologue
    .line 349
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 350
    invoke-direct {p0}, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->getSecurityLevel()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->updateSecurityIcon(I)V

    .line 351
    invoke-direct {p0}, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->updateButtonsTint()V

    .line 352
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    iget-boolean v2, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mUseDarkColors:Z

    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->setUseDarkTextColors(Z)V

    .line 354
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mUseDarkColors:Z

    if-eqz v0, :cond_1

    sget v0, Lorg/chromium/chrome/R$color;->url_emphasis_default_text:I

    invoke-static {v1, v0}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v0

    .line 358
    :goto_0
    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mTitleBar:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 360
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->getProgressBar()Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 361
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mBackgroundColorSet:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mUseDarkColors:Z

    if-nez v0, :cond_2

    .line 362
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->getProgressBar()Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;

    move-result-object v0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->getToolbarDataProvider()Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;

    move-result-object v2

    invoke-interface {v2}, Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;->getPrimaryColor()I

    move-result v2

    invoke-static {v2}, Lorg/chromium/chrome/browser/util/ColorUtils;->getLightProgressbarBackground(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;->setBackgroundColor(I)V

    .line 364
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->getProgressBar()Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;

    move-result-object v0

    sget v2, Lorg/chromium/chrome/R$color;->progress_bar_foreground_white:I

    invoke-static {v1, v2}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;->setForegroundColor(I)V

    .line 373
    :cond_0
    :goto_1
    return-void

    .line 354
    :cond_1
    sget v0, Lorg/chromium/chrome/R$color;->url_emphasis_light_default_text:I

    invoke-static {v1, v0}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v0

    goto :goto_0

    .line 367
    :cond_2
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->mUseDarkColors:Z

    if-eqz v0, :cond_3

    sget v0, Lorg/chromium/chrome/R$color;->progress_bar_background:I

    .line 369
    :goto_2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;->getProgressBar()Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;

    move-result-object v2

    invoke-static {v1, v0}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v0

    invoke-virtual {v2, v0}, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;->setBackgroundColor(I)V

    goto :goto_1

    .line 367
    :cond_3
    sget v0, Lorg/chromium/chrome/R$color;->progress_bar_background_white:I

    goto :goto_2
.end method
