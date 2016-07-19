.class public Lorg/chromium/third_party/android/datausagechart/ChartView;
.super Landroid/widget/FrameLayout;
.source "ChartView.java"


# instance fields
.field private mContent:Landroid/graphics/Rect;

.field mHoriz:Lorg/chromium/third_party/android/datausagechart/ChartAxis;

.field private mOptimalWidth:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private mOptimalWidthWeight:F

.field mVert:Lorg/chromium/third_party/android/datausagechart/ChartAxis;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 47
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/chromium/third_party/android/datausagechart/ChartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/chromium/third_party/android/datausagechart/ChartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .prologue
    const/4 v2, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    iput v2, p0, Lorg/chromium/third_party/android/datausagechart/ChartView;->mOptimalWidth:I

    .line 42
    iput v4, p0, Lorg/chromium/third_party/android/datausagechart/ChartView;->mOptimalWidthWeight:F

    .line 44
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/chromium/third_party/android/datausagechart/ChartView;->mContent:Landroid/graphics/Rect;

    .line 57
    sget-object v0, Lorg/chromium/third_party/android/R$styleable;->ChartView:[I

    invoke-virtual {p1, p2, v0, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 59
    sget v1, Lorg/chromium/third_party/android/R$styleable;->ChartView_optimalWidth:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    sget v2, Lorg/chromium/third_party/android/R$styleable;->ChartView_optimalWidthWeight:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-virtual {p0, v1, v2}, Lorg/chromium/third_party/android/datausagechart/ChartView;->setOptimalWidth(IF)V

    .line 61
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 63
    invoke-virtual {p0, v3}, Lorg/chromium/third_party/android/datausagechart/ChartView;->setClipToPadding(Z)V

    .line 64
    invoke-virtual {p0, v3}, Lorg/chromium/third_party/android/datausagechart/ChartView;->setClipChildren(Z)V

    .line 65
    return-void
.end method


# virtual methods
.method init(Lorg/chromium/third_party/android/datausagechart/ChartAxis;Lorg/chromium/third_party/android/datausagechart/ChartAxis;)V
    .locals 2

    .prologue
    .line 68
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "missing horiz"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "missing vert"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_1
    iput-object p1, p0, Lorg/chromium/third_party/android/datausagechart/ChartView;->mHoriz:Lorg/chromium/third_party/android/datausagechart/ChartAxis;

    .line 71
    iput-object p2, p0, Lorg/chromium/third_party/android/datausagechart/ChartView;->mVert:Lorg/chromium/third_party/android/datausagechart/ChartAxis;

    .line 72
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 10

    .prologue
    .line 94
    iget-object v0, p0, Lorg/chromium/third_party/android/datausagechart/ChartView;->mContent:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lorg/chromium/third_party/android/datausagechart/ChartView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lorg/chromium/third_party/android/datausagechart/ChartView;->getPaddingTop()I

    move-result v2

    sub-int v3, p4, p2

    invoke-virtual {p0}, Lorg/chromium/third_party/android/datausagechart/ChartView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int v4, p5, p3

    invoke-virtual {p0}, Lorg/chromium/third_party/android/datausagechart/ChartView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 96
    iget-object v0, p0, Lorg/chromium/third_party/android/datausagechart/ChartView;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 97
    iget-object v0, p0, Lorg/chromium/third_party/android/datausagechart/ChartView;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 100
    iget-object v0, p0, Lorg/chromium/third_party/android/datausagechart/ChartView;->mHoriz:Lorg/chromium/third_party/android/datausagechart/ChartAxis;

    int-to-float v1, v2

    invoke-interface {v0, v1}, Lorg/chromium/third_party/android/datausagechart/ChartAxis;->setSize(F)Z

    .line 101
    iget-object v0, p0, Lorg/chromium/third_party/android/datausagechart/ChartView;->mVert:Lorg/chromium/third_party/android/datausagechart/ChartAxis;

    int-to-float v1, v3

    invoke-interface {v0, v1}, Lorg/chromium/third_party/android/datausagechart/ChartAxis;->setSize(F)Z

    .line 103
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 104
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 106
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lorg/chromium/third_party/android/datausagechart/ChartView;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 107
    invoke-virtual {p0, v1}, Lorg/chromium/third_party/android/datausagechart/ChartView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 108
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 110
    iget-object v7, p0, Lorg/chromium/third_party/android/datausagechart/ChartView;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v4, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 112
    instance-of v7, v6, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;

    if-nez v7, :cond_0

    instance-of v7, v6, Lorg/chromium/third_party/android/datausagechart/ChartGridView;

    if-eqz v7, :cond_1

    .line 115
    :cond_0
    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-static {v0, v2, v3, v4, v5}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 116
    iget v0, v5, Landroid/graphics/Rect;->left:I

    iget v7, v5, Landroid/graphics/Rect;->top:I

    iget v8, v5, Landroid/graphics/Rect;->right:I

    iget v9, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v6, v0, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 106
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 120
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .prologue
    .line 82
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 84
    invoke-virtual {p0}, Lorg/chromium/third_party/android/datausagechart/ChartView;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lorg/chromium/third_party/android/datausagechart/ChartView;->mOptimalWidth:I

    sub-int/2addr v0, v1

    .line 85
    iget v1, p0, Lorg/chromium/third_party/android/datausagechart/ChartView;->mOptimalWidth:I

    if-lez v1, :cond_0

    if-lez v0, :cond_0

    .line 86
    iget v1, p0, Lorg/chromium/third_party/android/datausagechart/ChartView;->mOptimalWidth:I

    int-to-float v1, v1

    int-to-float v0, v0

    iget v2, p0, Lorg/chromium/third_party/android/datausagechart/ChartView;->mOptimalWidthWeight:F

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 87
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 88
    invoke-super {p0, v0, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 90
    :cond_0
    return-void
.end method

.method public setOptimalWidth(IF)V
    .locals 0

    .prologue
    .line 75
    iput p1, p0, Lorg/chromium/third_party/android/datausagechart/ChartView;->mOptimalWidth:I

    .line 76
    iput p2, p0, Lorg/chromium/third_party/android/datausagechart/ChartView;->mOptimalWidthWeight:F

    .line 77
    invoke-virtual {p0}, Lorg/chromium/third_party/android/datausagechart/ChartView;->requestLayout()V

    .line 78
    return-void
.end method
