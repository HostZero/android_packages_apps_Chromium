.class public final Lorg/chromium/chrome/browser/infobar/InfoBarDualControlLayout;
.super Landroid/view/ViewGroup;
.source "InfoBarDualControlLayout.java"


# static fields
.field public static final ALIGN_APART:I = 0x2

.field public static final ALIGN_END:I = 0x1

.field public static final ALIGN_START:I


# instance fields
.field private mAlignment:I

.field private final mHorizontalMarginBetweenViews:I

.field private mIsStacked:Z

.field private mPrimaryView:Landroid/view/View;

.field private mSecondaryView:Landroid/view/View;

.field private mStackedMargin:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarDualControlLayout;->mAlignment:I

    .line 61
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/infobar/InfoBarDualControlLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 62
    sget v1, Lorg/chromium/chrome/R$dimen;->infobar_control_margin_between_items:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarDualControlLayout;->mHorizontalMarginBetweenViews:I

    .line 64
    return-void
.end method


# virtual methods
.method protected final onLayout(ZIIII)V
    .locals 10

    .prologue
    const/4 v8, 0x2

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 138
    sub-int v1, p4, p2

    .line 139
    invoke-static {p0}, Lorg/chromium/base/ApiCompatibilityUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v3

    .line 140
    if-eqz v3, :cond_0

    iget v4, p0, Lorg/chromium/chrome/browser/infobar/InfoBarDualControlLayout;->mAlignment:I

    if-eqz v4, :cond_1

    :cond_0
    if-nez v3, :cond_3

    iget v3, p0, Lorg/chromium/chrome/browser/infobar/InfoBarDualControlLayout;->mAlignment:I

    if-eq v3, v8, :cond_1

    iget v3, p0, Lorg/chromium/chrome/browser/infobar/InfoBarDualControlLayout;->mAlignment:I

    if-ne v3, v0, :cond_3

    :cond_1
    move v3, v0

    .line 143
    :goto_0
    if-eqz v3, :cond_4

    move v0, v1

    .line 144
    :goto_1
    iget-object v4, p0, Lorg/chromium/chrome/browser/infobar/InfoBarDualControlLayout;->mPrimaryView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int v4, v0, v4

    .line 145
    iget-object v5, p0, Lorg/chromium/chrome/browser/infobar/InfoBarDualControlLayout;->mPrimaryView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 146
    iget-object v6, p0, Lorg/chromium/chrome/browser/infobar/InfoBarDualControlLayout;->mPrimaryView:Landroid/view/View;

    invoke-virtual {v6, v4, v2, v0, v5}, Landroid/view/View;->layout(IIII)V

    .line 148
    iget-boolean v6, p0, Lorg/chromium/chrome/browser/infobar/InfoBarDualControlLayout;->mIsStacked:Z

    if-eqz v6, :cond_5

    .line 150
    iget v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarDualControlLayout;->mStackedMargin:I

    add-int/2addr v0, v5

    .line 151
    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarDualControlLayout;->mSecondaryView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v0

    .line 152
    iget-object v3, p0, Lorg/chromium/chrome/browser/infobar/InfoBarDualControlLayout;->mSecondaryView:Landroid/view/View;

    iget-object v4, p0, Lorg/chromium/chrome/browser/infobar/InfoBarDualControlLayout;->mSecondaryView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v3, v2, v0, v4, v1}, Landroid/view/View;->layout(IIII)V

    .line 181
    :cond_2
    :goto_2
    return-void

    :cond_3
    move v3, v2

    .line 140
    goto :goto_0

    .line 143
    :cond_4
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarDualControlLayout;->mPrimaryView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    goto :goto_1

    .line 154
    :cond_5
    iget-object v6, p0, Lorg/chromium/chrome/browser/infobar/InfoBarDualControlLayout;->mSecondaryView:Landroid/view/View;

    if-eqz v6, :cond_2

    .line 156
    iget-object v6, p0, Lorg/chromium/chrome/browser/infobar/InfoBarDualControlLayout;->mSecondaryView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 157
    div-int/lit8 v5, v5, 0x2

    .line 158
    div-int/lit8 v7, v6, 0x2

    sub-int/2addr v5, v7

    .line 159
    add-int/2addr v6, v5

    .line 164
    iget v7, p0, Lorg/chromium/chrome/browser/infobar/InfoBarDualControlLayout;->mAlignment:I

    if-ne v7, v8, :cond_7

    .line 166
    if-eqz v3, :cond_6

    move v0, v2

    .line 167
    :goto_3
    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarDualControlLayout;->mSecondaryView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v0

    move v9, v1

    move v1, v0

    move v0, v9

    .line 178
    :goto_4
    iget-object v2, p0, Lorg/chromium/chrome/browser/infobar/InfoBarDualControlLayout;->mSecondaryView:Landroid/view/View;

    invoke-virtual {v2, v1, v5, v0, v6}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    .line 166
    :cond_6
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarDualControlLayout;->mSecondaryView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int v0, v1, v0

    goto :goto_3

    .line 168
    :cond_7
    if-eqz v3, :cond_8

    .line 170
    iget v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarDualControlLayout;->mHorizontalMarginBetweenViews:I

    sub-int v0, v4, v0

    .line 171
    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarDualControlLayout;->mSecondaryView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int v1, v0, v1

    goto :goto_4

    .line 174
    :cond_8
    iget v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarDualControlLayout;->mHorizontalMarginBetweenViews:I

    add-int/2addr v1, v0

    .line 175
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarDualControlLayout;->mSecondaryView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_4
.end method

.method protected final onMeasure(II)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 97
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarDualControlLayout;->mIsStacked:Z

    .line 100
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7fffffff

    .line 102
    :goto_0
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 103
    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarDualControlLayout;->mPrimaryView:Landroid/view/View;

    invoke-virtual {p0, v1, v3, v3}, Lorg/chromium/chrome/browser/infobar/InfoBarDualControlLayout;->measureChild(Landroid/view/View;II)V

    .line 105
    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarDualControlLayout;->mPrimaryView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 106
    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarDualControlLayout;->mPrimaryView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 108
    iget-object v4, p0, Lorg/chromium/chrome/browser/infobar/InfoBarDualControlLayout;->mSecondaryView:Landroid/view/View;

    if-eqz v4, :cond_2

    .line 110
    iget-object v2, p0, Lorg/chromium/chrome/browser/infobar/InfoBarDualControlLayout;->mSecondaryView:Landroid/view/View;

    invoke-virtual {p0, v2, v3, v3}, Lorg/chromium/chrome/browser/infobar/InfoBarDualControlLayout;->measureChild(Landroid/view/View;II)V

    .line 111
    iget-object v2, p0, Lorg/chromium/chrome/browser/infobar/InfoBarDualControlLayout;->mPrimaryView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget v4, p0, Lorg/chromium/chrome/browser/infobar/InfoBarDualControlLayout;->mHorizontalMarginBetweenViews:I

    add-int/2addr v2, v4

    iget-object v4, p0, Lorg/chromium/chrome/browser/infobar/InfoBarDualControlLayout;->mSecondaryView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v2, v4

    .line 114
    if-le v2, v0, :cond_1

    .line 116
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarDualControlLayout;->mIsStacked:Z

    .line 118
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 119
    iget-object v2, p0, Lorg/chromium/chrome/browser/infobar/InfoBarDualControlLayout;->mPrimaryView:Landroid/view/View;

    invoke-virtual {v2, v1, v3}, Landroid/view/View;->measure(II)V

    .line 120
    iget-object v2, p0, Lorg/chromium/chrome/browser/infobar/InfoBarDualControlLayout;->mSecondaryView:Landroid/view/View;

    invoke-virtual {v2, v1, v3}, Landroid/view/View;->measure(II)V

    .line 123
    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarDualControlLayout;->mPrimaryView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, p0, Lorg/chromium/chrome/browser/infobar/InfoBarDualControlLayout;->mStackedMargin:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lorg/chromium/chrome/browser/infobar/InfoBarDualControlLayout;->mSecondaryView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, v2

    move v5, v1

    move v1, v0

    move v0, v5

    .line 132
    :goto_1
    invoke-static {v1, p1}, Lorg/chromium/chrome/browser/infobar/InfoBarDualControlLayout;->resolveSize(II)I

    move-result v1

    invoke-static {v0, p2}, Lorg/chromium/chrome/browser/infobar/InfoBarDualControlLayout;->resolveSize(II)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lorg/chromium/chrome/browser/infobar/InfoBarDualControlLayout;->setMeasuredDimension(II)V

    .line 134
    return-void

    .line 100
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    goto :goto_0

    .line 128
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarDualControlLayout;->mSecondaryView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v1, v2

    goto :goto_1

    :cond_2
    move v0, v1

    move v1, v2

    goto :goto_1
.end method

.method public final onViewAdded(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    .line 86
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarDualControlLayout;->mPrimaryView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 87
    iput-object p1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarDualControlLayout;->mPrimaryView:Landroid/view/View;

    .line 89
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarDualControlLayout;->mSecondaryView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 89
    iput-object p1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarDualControlLayout;->mSecondaryView:Landroid/view/View;

    goto :goto_0

    .line 91
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Too many children added to InfoBarDualControlLayout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final setAlignment(I)V
    .locals 0

    .prologue
    .line 72
    iput p1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarDualControlLayout;->mAlignment:I

    .line 73
    return-void
.end method

.method final setStackedMargin(I)V
    .locals 0

    .prologue
    .line 79
    iput p1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarDualControlLayout;->mStackedMargin:I

    .line 80
    return-void
.end method
