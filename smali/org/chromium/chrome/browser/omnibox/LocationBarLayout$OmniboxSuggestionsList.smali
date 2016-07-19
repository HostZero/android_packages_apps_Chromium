.class public Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;
.super Landroid/widget/ListView;
.source "LocationBarLayout.java"


# instance fields
.field private final mAnchorView:Landroid/view/View;

.field private final mBackgroundVerticalPadding:I

.field private mMaxMatchContentsWidth:F

.field private mMaxRequiredWidth:F

.field private final mSuggestionAnswerHeight:I

.field private final mSuggestionHeight:I

.field private final mTempPosition:[I

.field private final mTempRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 419
    iput-object p1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    .line 420
    const v0, 0x101006d

    invoke-direct {p0, p2, v2, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 407
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;->mTempPosition:[I

    .line 408
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;->mTempRect:Landroid/graphics/Rect;

    .line 421
    invoke-virtual {p0, v2}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 422
    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;->setFocusable(Z)V

    .line 423
    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;->setFocusableInTouchMode(Z)V

    .line 425
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$dimen;->omnibox_suggestion_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;->mSuggestionHeight:I

    .line 427
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$dimen;->omnibox_suggestion_answer_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;->mSuggestionAnswerHeight:I

    .line 430
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$dimen;->omnibox_suggestion_list_padding_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 432
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$dimen;->omnibox_suggestion_list_padding_bottom:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 434
    invoke-static {p0, v3, v0, v3, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 436
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->getSuggestionPopupBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 437
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 438
    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 440
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;->mBackgroundVerticalPadding:I

    .line 443
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$id;->toolbar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;->mAnchorView:Landroid/view/View;

    .line 444
    return-void
.end method

.method static synthetic access$2000(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;)V
    .locals 0

    .prologue
    .line 402
    invoke-direct {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;->updateLayoutParams()V

    return-void
.end method

.method static synthetic access$2200(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;)V
    .locals 0

    .prologue
    .line 402
    invoke-direct {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;->show()V

    return-void
.end method

.method private getDesiredWidth()I
    .locals 1

    .prologue
    .line 570
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method private getIdealHeight()I
    .locals 3

    .prologue
    .line 557
    iget v1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;->mBackgroundVerticalPadding:I

    .line 558
    const/4 v0, 0x0

    move v2, v1

    move v1, v0

    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    # getter for: Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSuggestionItems:Ljava/util/List;
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->access$800(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 559
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    # getter for: Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSuggestionItems:Ljava/util/List;
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->access$800(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter$OmniboxResultItem;

    .line 560
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter$OmniboxResultItem;->getSuggestion()Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->getAnswerContents()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 561
    iget v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;->mSuggestionAnswerHeight:I

    add-int/2addr v2, v0

    .line 558
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 563
    :cond_0
    iget v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;->mSuggestionHeight:I

    add-int/2addr v2, v0

    goto :goto_1

    .line 566
    :cond_1
    return v2
.end method

.method private show()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 447
    invoke-direct {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;->updateLayoutParams()V

    .line 448
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    const/4 v1, 0x1

    # setter for: Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mIgnoreOmniboxItemSelection:Z
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->access$202(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;Z)Z

    .line 450
    invoke-virtual {p0, v2}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;->setVisibility(I)V

    .line 451
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;->getSelectedItemPosition()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;->setSelection(I)V

    .line 453
    :cond_0
    return-void
.end method

.method private updateLayoutParams()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 504
    .line 505
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 506
    if-nez v0, :cond_5

    .line 507
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 508
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v1, v0

    .line 514
    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    const v4, 0x1020002

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 516
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;->mAnchorView:Landroid/view/View;

    iget-object v5, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;->mTempPosition:[I

    invoke-static {v4, v0, v5}, Lorg/chromium/chrome/browser/util/ViewUtils;->getRelativeLayoutPosition(Landroid/view/View;Landroid/view/View;[I)V

    .line 517
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;->mTempPosition:[I

    aget v5, v0, v3

    .line 518
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;->mTempPosition:[I

    aget v6, v0, v2

    .line 520
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v7, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;->mTempPosition:[I

    invoke-static {v4, v0, v7}, Lorg/chromium/chrome/browser/util/ViewUtils;->getRelativeLayoutPosition(Landroid/view/View;Landroid/view/View;[I)V

    .line 521
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;->mTempPosition:[I

    aget v0, v0, v2

    .line 523
    iget-object v7, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;->mAnchorView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v6, v7

    .line 524
    sub-int v0, v6, v0

    .line 525
    iget v7, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    if-eq v7, v0, :cond_4

    .line 526
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move v0, v2

    .line 530
    :goto_1
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 531
    sub-int v3, v5, v3

    .line 532
    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    if-eq v4, v3, :cond_0

    .line 533
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move v0, v2

    .line 537
    :cond_0
    iget-object v3, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->getWindowDelegate()Lorg/chromium/chrome/browser/WindowDelegate;

    move-result-object v3

    iget-object v4, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Lorg/chromium/chrome/browser/WindowDelegate;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 538
    iget-object v3, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->getWindowDelegate()Lorg/chromium/chrome/browser/WindowDelegate;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/WindowDelegate;->getDecorViewHeight()I

    move-result v3

    .line 539
    iget-object v4, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 540
    sub-int/2addr v3, v6

    .line 541
    invoke-direct {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;->getIdealHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 542
    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-eq v4, v3, :cond_1

    .line 543
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    move v0, v2

    .line 547
    :cond_1
    invoke-direct {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;->getDesiredWidth()I

    move-result v3

    .line 548
    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-eq v4, v3, :cond_3

    .line 549
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 553
    :goto_2
    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;->requestLayout()V

    .line 554
    :cond_2
    return-void

    :cond_3
    move v2, v0

    goto :goto_2

    :cond_4
    move v0, v3

    goto :goto_1

    :cond_5
    move-object v1, v0

    goto/16 :goto_0
.end method


# virtual methods
.method public getMaxMatchContentsWidth()F
    .locals 1

    .prologue
    .line 500
    iget v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;->mMaxMatchContentsWidth:F

    return v0
.end method

.method public getMaxRequiredWidth()F
    .locals 1

    .prologue
    .line 493
    iget v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;->mMaxRequiredWidth:F

    return v0
.end method

.method public invalidateSuggestionViews()V
    .locals 3

    .prologue
    .line 460
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 467
    :cond_0
    return-void

    .line 461
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    # getter for: Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSuggestionList:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->access$000(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;)Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;

    move-result-object v1

    .line 462
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 463
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lorg/chromium/chrome/browser/omnibox/SuggestionView;

    if-eqz v2, :cond_2

    .line 464
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 462
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected layoutChildren()V
    .locals 2

    .prologue
    .line 581
    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 584
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;->getSelectedView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 585
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 587
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .prologue
    .line 575
    invoke-super {p0, p1}, Landroid/widget/ListView;->onWindowFocusChanged(Z)V

    .line 576
    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    # getter for: Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSuggestionModalShown:Z
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->access$1300(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->hideSuggestions()V

    .line 577
    :cond_0
    return-void
.end method

.method public resetMaxTextWidths()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 475
    iput v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;->mMaxRequiredWidth:F

    .line 476
    iput v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;->mMaxMatchContentsWidth:F

    .line 477
    return-void
.end method

.method public updateMaxTextWidths(FF)V
    .locals 1

    .prologue
    .line 485
    iget v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;->mMaxRequiredWidth:F

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;->mMaxRequiredWidth:F

    .line 486
    iget v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;->mMaxMatchContentsWidth:F

    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;->mMaxMatchContentsWidth:F

    .line 487
    return-void
.end method
