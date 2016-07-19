.class public Lorg/chromium/chrome/browser/ntp/RecentTabsExpandableListView;
.super Landroid/widget/ExpandableListView;
.source "RecentTabsExpandableListView.java"


# instance fields
.field private mMaxListViewWidth:I

.field private mSavedListPosition:I

.field private mSavedListTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    iput v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsExpandableListView;->mSavedListPosition:I

    .line 23
    iput v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsExpandableListView;->mSavedListTop:I

    .line 30
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 61
    invoke-super {p0}, Landroid/widget/ExpandableListView;->onAttachedToWindow()V

    .line 62
    iget v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsExpandableListView;->mSavedListPosition:I

    iget v1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsExpandableListView;->mSavedListTop:I

    invoke-virtual {p0, v0, v1}, Lorg/chromium/chrome/browser/ntp/RecentTabsExpandableListView;->setSelectionFromTop(II)V

    .line 63
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ntp/RecentTabsExpandableListView;->getFirstVisiblePosition()I

    move-result v1

    iput v1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsExpandableListView;->mSavedListPosition:I

    .line 68
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 69
    if-nez v1, :cond_0

    :goto_0
    iput v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsExpandableListView;->mSavedListTop:I

    .line 70
    invoke-super {p0}, Landroid/widget/ExpandableListView;->onDetachedFromWindow()V

    .line 71
    return-void

    .line 69
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 34
    invoke-super {p0}, Landroid/widget/ExpandableListView;->onFinishInflate()V

    .line 35
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ntp/RecentTabsExpandableListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 36
    const v1, 0x44098000    # 550.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsExpandableListView;->mMaxListViewWidth:I

    .line 37
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ntp/RecentTabsExpandableListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/ui/base/DeviceFormFactor;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    invoke-super {p0, p1, p2}, Landroid/widget/ExpandableListView;->onMeasure(II)V

    .line 57
    :goto_0
    return-void

    .line 47
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 48
    iget v2, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsExpandableListView;->mMaxListViewWidth:I

    sub-int/2addr v0, v2

    .line 50
    if-lez v0, :cond_1

    .line 51
    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x0

    .line 54
    :goto_1
    invoke-virtual {p0, v0, v1, v0, v1}, Lorg/chromium/chrome/browser/ntp/RecentTabsExpandableListView;->setPadding(IIII)V

    .line 56
    invoke-super {p0, p1, p2}, Landroid/widget/ExpandableListView;->onMeasure(II)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method
