.class public Lorg/chromium/chrome/browser/ntp/MostVisitedLayout;
.super Landroid/widget/FrameLayout;
.source "MostVisitedLayout.java"


# instance fields
.field private mMaxHorizontalSpacing:I

.field private mMaxRows:I

.field private mMaxWidth:I

.field private mMinHorizontalSpacing:I

.field private mVerticalSpacing:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ntp/MostVisitedLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 38
    sget v1, Lorg/chromium/chrome/R$dimen;->most_visited_vertical_spacing:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lorg/chromium/chrome/browser/ntp/MostVisitedLayout;->mVerticalSpacing:I

    .line 39
    sget v1, Lorg/chromium/chrome/R$dimen;->most_visited_min_horizontal_spacing:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lorg/chromium/chrome/browser/ntp/MostVisitedLayout;->mMinHorizontalSpacing:I

    .line 41
    sget v1, Lorg/chromium/chrome/R$dimen;->most_visited_max_horizontal_spacing:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lorg/chromium/chrome/browser/ntp/MostVisitedLayout;->mMaxHorizontalSpacing:I

    .line 43
    sget v1, Lorg/chromium/chrome/R$dimen;->most_visited_layout_max_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/ntp/MostVisitedLayout;->mMaxWidth:I

    .line 44
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 19

    .prologue
    .line 56
    move-object/from16 v0, p0

    iget v2, v0, Lorg/chromium/chrome/browser/ntp/MostVisitedLayout;->mMaxWidth:I

    move/from16 v0, p1

    invoke-static {v2, v0}, Lorg/chromium/chrome/browser/ntp/MostVisitedLayout;->resolveSize(II)I

    move-result v9

    .line 57
    invoke-virtual/range {p0 .. p0}, Lorg/chromium/chrome/browser/ntp/MostVisitedLayout;->getChildCount()I

    move-result v10

    .line 58
    if-nez v10, :cond_0

    .line 59
    const/4 v2, 0x0

    move/from16 v0, p2

    invoke-static {v2, v0}, Lorg/chromium/chrome/browser/ntp/MostVisitedLayout;->resolveSize(II)I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v2}, Lorg/chromium/chrome/browser/ntp/MostVisitedLayout;->setMeasuredDimension(II)V

    .line 118
    :goto_0
    return-void

    .line 64
    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v10, :cond_1

    .line 65
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/ntp/MostVisitedLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lorg/chromium/chrome/browser/ntp/MostVisitedLayout;->measureChild(Landroid/view/View;II)V

    .line 64
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 69
    :cond_1
    invoke-static/range {p0 .. p0}, Lorg/chromium/base/ApiCompatibilityUtils;->getPaddingStart(Landroid/view/View;)I

    move-result v2

    sub-int v2, v9, v2

    invoke-static/range {p0 .. p0}, Lorg/chromium/base/ApiCompatibilityUtils;->getPaddingEnd(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    .line 71
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/chromium/chrome/browser/ntp/MostVisitedLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    .line 72
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/chromium/chrome/browser/ntp/MostVisitedLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    .line 73
    move-object/from16 v0, p0

    iget v3, v0, Lorg/chromium/chrome/browser/ntp/MostVisitedLayout;->mMinHorizontalSpacing:I

    add-int/2addr v3, v2

    move-object/from16 v0, p0

    iget v4, v0, Lorg/chromium/chrome/browser/ntp/MostVisitedLayout;->mMinHorizontalSpacing:I

    add-int/2addr v4, v12

    div-int/2addr v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x4

    invoke-static {v3, v4, v5}, Lorg/chromium/chrome/browser/util/MathUtils;->clamp(III)I

    move-result v13

    .line 78
    const/4 v3, 0x0

    mul-int v4, v13, v12

    sub-int/2addr v2, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 79
    move-object/from16 v0, p0

    iget v2, v0, Lorg/chromium/chrome/browser/ntp/MostVisitedLayout;->mMaxHorizontalSpacing:I

    add-int/lit8 v4, v13, -0x1

    mul-int/2addr v2, v4

    sub-int v4, v3, v2

    .line 81
    const/4 v2, 0x0

    .line 83
    if-lez v4, :cond_2

    .line 84
    move-object/from16 v0, p0

    iget v2, v0, Lorg/chromium/chrome/browser/ntp/MostVisitedLayout;->mMaxHorizontalSpacing:I

    int-to-float v3, v2

    .line 85
    div-int/lit8 v2, v4, 0x2

    move v4, v3

    move v3, v2

    .line 91
    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lorg/chromium/chrome/browser/ntp/MostVisitedLayout;->mMaxRows:I

    mul-int/2addr v2, v13

    invoke-static {v10, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 94
    invoke-virtual/range {p0 .. p0}, Lorg/chromium/chrome/browser/ntp/MostVisitedLayout;->getPaddingTop()I

    move-result v14

    .line 95
    invoke-static/range {p0 .. p0}, Lorg/chromium/base/ApiCompatibilityUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v15

    .line 96
    const/4 v2, 0x0

    move v8, v2

    :goto_3
    if-ge v8, v6, :cond_5

    .line 97
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lorg/chromium/chrome/browser/ntp/MostVisitedLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 98
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 99
    div-int v2, v8, v13

    .line 100
    rem-int v5, v8, v13

    .line 101
    move-object/from16 v0, p0

    iget v7, v0, Lorg/chromium/chrome/browser/ntp/MostVisitedLayout;->mVerticalSpacing:I

    add-int/2addr v7, v11

    mul-int v17, v2, v7

    .line 102
    int-to-float v2, v5

    int-to-float v5, v12

    add-float/2addr v5, v4

    mul-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int v5, v3, v2

    .line 103
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 104
    if-eqz v15, :cond_3

    const/4 v7, 0x0

    :goto_4
    if-eqz v15, :cond_4

    :goto_5
    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v7, v0, v5, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 105
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto :goto_3

    .line 87
    :cond_2
    int-to-float v3, v3

    const/4 v4, 0x1

    add-int/lit8 v5, v13, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    move v4, v3

    move v3, v2

    goto :goto_2

    :cond_3
    move v7, v5

    .line 104
    goto :goto_4

    :cond_4
    const/4 v5, 0x0

    goto :goto_5

    :cond_5
    move v2, v6

    .line 109
    :goto_6
    if-ge v2, v10, :cond_6

    .line 110
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/ntp/MostVisitedLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 109
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 113
    :cond_6
    add-int v2, v6, v13

    add-int/lit8 v2, v2, -0x1

    div-int/2addr v2, v13

    .line 114
    invoke-virtual/range {p0 .. p0}, Lorg/chromium/chrome/browser/ntp/MostVisitedLayout;->getPaddingBottom()I

    move-result v3

    add-int/2addr v3, v14

    mul-int v4, v2, v11

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iget v4, v0, Lorg/chromium/chrome/browser/ntp/MostVisitedLayout;->mVerticalSpacing:I

    mul-int/2addr v2, v4

    add-int/2addr v2, v3

    .line 117
    move/from16 v0, p2

    invoke-static {v2, v0}, Lorg/chromium/chrome/browser/ntp/MostVisitedLayout;->resolveSize(II)I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v2}, Lorg/chromium/chrome/browser/ntp/MostVisitedLayout;->setMeasuredDimension(II)V

    goto/16 :goto_0
.end method

.method public setMaxRows(I)V
    .locals 0

    .prologue
    .line 51
    iput p1, p0, Lorg/chromium/chrome/browser/ntp/MostVisitedLayout;->mMaxRows:I

    .line 52
    return-void
.end method
