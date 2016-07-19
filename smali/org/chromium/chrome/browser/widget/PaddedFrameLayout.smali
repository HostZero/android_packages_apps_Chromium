.class public Lorg/chromium/chrome/browser/widget/PaddedFrameLayout;
.super Landroid/widget/FrameLayout;
.source "PaddedFrameLayout.java"


# instance fields
.field private mBottomPadding:I

.field private mHorizontalPadding:I

.field private mMaxChildHeight:I

.field private mMaxChildWidth:I

.field private mTopPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    sget-object v0, Lorg/chromium/chrome/R$styleable;->PaddedFrameLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 41
    sget v1, Lorg/chromium/chrome/R$styleable;->PaddedFrameLayout_maxChildWidth:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lorg/chromium/chrome/browser/widget/PaddedFrameLayout;->mMaxChildWidth:I

    .line 43
    sget v1, Lorg/chromium/chrome/R$styleable;->PaddedFrameLayout_maxChildHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lorg/chromium/chrome/browser/widget/PaddedFrameLayout;->mMaxChildHeight:I

    .line 45
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 46
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 59
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/PaddedFrameLayout;->getPaddingLeft()I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/widget/PaddedFrameLayout;->mHorizontalPadding:I

    .line 60
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/PaddedFrameLayout;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/widget/PaddedFrameLayout;->mTopPadding:I

    .line 61
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/PaddedFrameLayout;->getPaddingBottom()I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/widget/PaddedFrameLayout;->mBottomPadding:I

    .line 62
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .prologue
    const/4 v4, -0x1

    .line 66
    iget v0, p0, Lorg/chromium/chrome/browser/widget/PaddedFrameLayout;->mHorizontalPadding:I

    .line 67
    iget v1, p0, Lorg/chromium/chrome/browser/widget/PaddedFrameLayout;->mMaxChildWidth:I

    if-eq v1, v4, :cond_0

    .line 69
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iget v2, p0, Lorg/chromium/chrome/browser/widget/PaddedFrameLayout;->mHorizontalPadding:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 70
    iget v2, p0, Lorg/chromium/chrome/browser/widget/PaddedFrameLayout;->mMaxChildWidth:I

    sub-int/2addr v1, v2

    .line 71
    if-lez v1, :cond_0

    .line 72
    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 76
    :cond_0
    iget v2, p0, Lorg/chromium/chrome/browser/widget/PaddedFrameLayout;->mTopPadding:I

    .line 77
    iget v1, p0, Lorg/chromium/chrome/browser/widget/PaddedFrameLayout;->mBottomPadding:I

    .line 78
    iget v3, p0, Lorg/chromium/chrome/browser/widget/PaddedFrameLayout;->mMaxChildHeight:I

    if-eq v3, v4, :cond_1

    .line 80
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    iget v4, p0, Lorg/chromium/chrome/browser/widget/PaddedFrameLayout;->mTopPadding:I

    iget v5, p0, Lorg/chromium/chrome/browser/widget/PaddedFrameLayout;->mBottomPadding:I

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    .line 82
    iget v4, p0, Lorg/chromium/chrome/browser/widget/PaddedFrameLayout;->mMaxChildHeight:I

    sub-int/2addr v3, v4

    .line 83
    if-lez v3, :cond_1

    .line 84
    div-int/lit8 v4, v3, 0x2

    add-int/2addr v2, v4

    .line 85
    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    .line 88
    :cond_1
    invoke-virtual {p0, v0, v2, v0, v1}, Lorg/chromium/chrome/browser/widget/PaddedFrameLayout;->setPadding(IIII)V

    .line 90
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 91
    return-void
.end method

.method protected setMaxChildHeight(I)V
    .locals 0

    .prologue
    .line 53
    iput p1, p0, Lorg/chromium/chrome/browser/widget/PaddedFrameLayout;->mMaxChildHeight:I

    .line 54
    return-void
.end method

.method protected setMaxChildWidth(I)V
    .locals 0

    .prologue
    .line 49
    iput p1, p0, Lorg/chromium/chrome/browser/widget/PaddedFrameLayout;->mMaxChildWidth:I

    .line 50
    return-void
.end method
