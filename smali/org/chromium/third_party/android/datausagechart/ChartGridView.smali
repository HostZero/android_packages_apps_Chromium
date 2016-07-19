.class public Lorg/chromium/third_party/android/datausagechart/ChartGridView;
.super Landroid/view/View;
.source "ChartGridView.java"


# instance fields
.field private mBorder:Landroid/graphics/drawable/Drawable;

.field private mHoriz:Lorg/chromium/third_party/android/datausagechart/ChartAxis;

.field private mPrimary:Landroid/graphics/drawable/Drawable;

.field private mSecondary:Landroid/graphics/drawable/Drawable;

.field private mVert:Lorg/chromium/third_party/android/datausagechart/ChartAxis;


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-virtual {p0}, Lorg/chromium/third_party/android/datausagechart/ChartGridView;->getWidth()I

    move-result v2

    .line 88
    invoke-virtual {p0}, Lorg/chromium/third_party/android/datausagechart/ChartGridView;->getHeight()I

    move-result v3

    .line 90
    iget-object v4, p0, Lorg/chromium/third_party/android/datausagechart/ChartGridView;->mSecondary:Landroid/graphics/drawable/Drawable;

    .line 91
    invoke-virtual {p0}, Lorg/chromium/third_party/android/datausagechart/ChartGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 92
    const/4 v5, 0x1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 94
    iget-object v0, p0, Lorg/chromium/third_party/android/datausagechart/ChartGridView;->mVert:Lorg/chromium/third_party/android/datausagechart/ChartAxis;

    invoke-interface {v0}, Lorg/chromium/third_party/android/datausagechart/ChartAxis;->getTickPoints()[F

    move-result-object v6

    .line 95
    array-length v7, v6

    move v0, v1

    :goto_0
    if-ge v0, v7, :cond_0

    aget v8, v6, v0

    .line 96
    int-to-float v9, v5

    add-float/2addr v9, v8

    int-to-float v10, v3

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    float-to-int v9, v9

    .line 97
    float-to-int v8, v8

    invoke-virtual {v4, v1, v8, v2, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 98
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    :cond_0
    iget-object v4, p0, Lorg/chromium/third_party/android/datausagechart/ChartGridView;->mPrimary:Landroid/graphics/drawable/Drawable;

    .line 104
    iget-object v0, p0, Lorg/chromium/third_party/android/datausagechart/ChartGridView;->mHoriz:Lorg/chromium/third_party/android/datausagechart/ChartAxis;

    invoke-interface {v0}, Lorg/chromium/third_party/android/datausagechart/ChartAxis;->getTickPoints()[F

    move-result-object v6

    .line 105
    array-length v7, v6

    move v0, v1

    :goto_1
    if-ge v0, v7, :cond_1

    aget v8, v6, v0

    .line 106
    int-to-float v9, v5

    add-float/2addr v9, v8

    int-to-float v10, v2

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    float-to-int v9, v9

    .line 107
    float-to-int v8, v8

    invoke-virtual {v4, v8, v1, v9, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 108
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 111
    :cond_1
    iget-object v0, p0, Lorg/chromium/third_party/android/datausagechart/ChartGridView;->mBorder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 112
    iget-object v0, p0, Lorg/chromium/third_party/android/datausagechart/ChartGridView;->mBorder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 113
    return-void
.end method
