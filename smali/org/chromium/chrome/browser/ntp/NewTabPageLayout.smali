.class public Lorg/chromium/chrome/browser/ntp/NewTabPageLayout;
.super Lorg/chromium/chrome/browser/widget/BoundedLinearLayout;
.source "NewTabPageLayout.java"


# instance fields
.field private mBottomSpacer:Landroid/view/View;

.field private final mBottomSpacerHeight:I

.field private mMiddleSpacer:Landroid/view/View;

.field private final mMiddleSpacerHeight:I

.field private mParentScrollViewportHeight:I

.field private mScrollCompensationSpacer:Landroid/view/View;

.field private mTopSpacer:Landroid/view/View;

.field private final mTopSpacerHeight:I

.field private final mTotalSpacerHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/high16 v2, 0x42300000    # 44.0f

    .line 44
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/widget/BoundedLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ntp/NewTabPageLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 46
    mul-float v1, v0, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageLayout;->mTopSpacerHeight:I

    .line 47
    const/high16 v1, 0x41c00000    # 24.0f

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageLayout;->mMiddleSpacerHeight:I

    .line 48
    mul-float v1, v0, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageLayout;->mBottomSpacerHeight:I

    .line 49
    const/high16 v1, 0x42e00000    # 112.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageLayout;->mTotalSpacerHeight:I

    .line 50
    return-void
.end method

.method private distributeExtraSpace(I)V
    .locals 6

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 121
    iget v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageLayout;->mTotalSpacerHeight:I

    if-ge p1, v0, :cond_0

    .line 122
    int-to-float v0, p1

    const v1, 0x3ec92492

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 124
    sub-int v0, p1, v2

    .line 125
    int-to-float v1, v0

    const v3, 0x3eb4b4b5

    mul-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 127
    sub-int/2addr v0, v1

    .line 140
    :goto_0
    const/4 v3, 0x0

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 141
    iget-object v4, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageLayout;->mTopSpacer:Landroid/view/View;

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v4, v3, v2}, Landroid/view/View;->measure(II)V

    .line 143
    iget-object v2, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageLayout;->mMiddleSpacer:Landroid/view/View;

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v2, v3, v1}, Landroid/view/View;->measure(II)V

    .line 145
    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageLayout;->mBottomSpacer:Landroid/view/View;

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v1, v3, v0}, Landroid/view/View;->measure(II)V

    .line 147
    return-void

    .line 130
    :cond_0
    iget v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageLayout;->mTopSpacerHeight:I

    .line 131
    iget v1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageLayout;->mMiddleSpacerHeight:I

    .line 132
    iget v3, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageLayout;->mBottomSpacerHeight:I

    .line 133
    iget v2, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageLayout;->mTotalSpacerHeight:I

    sub-int v4, p1, v2

    .line 136
    add-int/lit8 v2, v4, 0x1

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v0

    .line 137
    div-int/lit8 v0, v4, 0x2

    add-int/2addr v0, v3

    goto :goto_0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Lorg/chromium/chrome/browser/widget/BoundedLinearLayout;->onFinishInflate()V

    .line 55
    sget v0, Lorg/chromium/chrome/R$id;->ntp_top_spacer:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/ntp/NewTabPageLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageLayout;->mTopSpacer:Landroid/view/View;

    .line 56
    sget v0, Lorg/chromium/chrome/R$id;->ntp_middle_spacer:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/ntp/NewTabPageLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageLayout;->mMiddleSpacer:Landroid/view/View;

    .line 57
    sget v0, Lorg/chromium/chrome/R$id;->ntp_bottom_spacer:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/ntp/NewTabPageLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageLayout;->mBottomSpacer:Landroid/view/View;

    .line 58
    sget v0, Lorg/chromium/chrome/R$id;->ntp_scroll_spacer:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/ntp/NewTabPageLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageLayout;->mScrollCompensationSpacer:Landroid/view/View;

    .line 59
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v0, 0x0

    .line 76
    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageLayout;->mScrollCompensationSpacer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 77
    invoke-super {p0, p1, p2}, Lorg/chromium/chrome/browser/widget/BoundedLinearLayout;->onMeasure(II)V

    .line 78
    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageLayout;->mTopSpacer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/chromium/chrome/browser/ntp/NewTabPageLayout;->distributeExtraSpace(I)V

    move v1, v0

    move v2, v0

    .line 81
    :goto_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ntp/NewTabPageLayout;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 82
    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/ntp/NewTabPageLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 84
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 85
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v6, :cond_0

    .line 86
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v4

    .line 89
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v4

    sget v5, Lorg/chromium/chrome/R$id;->most_visited_layout:I

    if-eq v4, v5, :cond_2

    .line 90
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v4

    sget v5, Lorg/chromium/chrome/R$id;->opt_out_promo:I

    if-eq v4, v5, :cond_2

    .line 92
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v6, :cond_1

    .line 93
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    .line 94
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v0

    .line 81
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 98
    :cond_2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ntp/NewTabPageLayout;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageLayout;->mParentScrollViewportHeight:I

    sub-int/2addr v0, v1

    .line 99
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ntp/NewTabPageLayout;->getMeasuredHeight()I

    move-result v1

    iget v3, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageLayout;->mParentScrollViewportHeight:I

    if-le v1, v3, :cond_3

    if-ge v0, v2, :cond_3

    .line 101
    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageLayout;->mScrollCompensationSpacer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    sub-int v0, v2, v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 103
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageLayout;->mScrollCompensationSpacer:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 105
    invoke-super {p0, p1, p2}, Lorg/chromium/chrome/browser/widget/BoundedLinearLayout;->onMeasure(II)V

    .line 106
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageLayout;->mTopSpacer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/ntp/NewTabPageLayout;->distributeExtraSpace(I)V

    .line 110
    :goto_1
    return-void

    .line 108
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageLayout;->mScrollCompensationSpacer:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public setParentScrollViewportHeight(I)V
    .locals 0

    .prologue
    .line 71
    iput p1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageLayout;->mParentScrollViewportHeight:I

    .line 72
    return-void
.end method
