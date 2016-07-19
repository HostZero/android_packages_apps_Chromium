.class Lorg/chromium/third_party/android/swiperefresh/CircleImageView;
.super Landroid/widget/ImageView;
.source "CircleImageView.java"


# instance fields
.field private mListener:Landroid/view/animation/Animation$AnimationListener;

.field private mShadowRadius:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IF)V
    .locals 3

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 55
    invoke-virtual {p0}, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 57
    const/high16 v1, 0x40600000    # 3.5f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->mShadowRadius:I

    .line 60
    invoke-direct {p0}, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->elevationSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    invoke-virtual {p0, v0}, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->initializeElevated(F)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v0

    .line 65
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 66
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_1

    .line 67
    invoke-virtual {p0, v0}, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 71
    :goto_1
    return-void

    .line 63
    :cond_0
    invoke-virtual {p0, p3, v0}, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->initializeNonElevated(FF)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v0

    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {p0, v0}, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method private elevationSupported()Z
    .locals 2

    .prologue
    .line 95
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method initializeElevated(F)Landroid/graphics/drawable/ShapeDrawable;
    .locals 2

    .prologue
    .line 74
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 75
    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v1, p1

    invoke-virtual {p0, v1}, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->setElevation(F)V

    .line 76
    return-object v0
.end method

.method initializeNonElevated(FF)Landroid/graphics/drawable/ShapeDrawable;
    .locals 6

    .prologue
    .line 80
    mul-float v0, p1, p2

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 81
    const/high16 v1, 0x3fe00000    # 1.75f

    mul-float/2addr v1, p2

    float-to-int v1, v1

    .line 82
    const/4 v2, 0x0

    mul-float/2addr v2, p2

    float-to-int v2, v2

    .line 83
    new-instance v3, Lorg/chromium/third_party/android/swiperefresh/CircleImageView$OvalShadow;

    iget v4, p0, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->mShadowRadius:I

    invoke-direct {v3, p0, v4, v0}, Lorg/chromium/third_party/android/swiperefresh/CircleImageView$OvalShadow;-><init>(Lorg/chromium/third_party/android/swiperefresh/CircleImageView;II)V

    .line 84
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v0, v3}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 85
    const/4 v3, 0x1

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 86
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    iget v4, p0, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->mShadowRadius:I

    int-to-float v4, v4

    int-to-float v2, v2

    int-to-float v1, v1

    const/high16 v5, 0x1e000000

    invoke-virtual {v3, v4, v2, v1, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 88
    iget v1, p0, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->mShadowRadius:I

    .line 90
    invoke-virtual {p0, v1, v1, v1, v1}, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->setPadding(IIII)V

    .line 91
    return-object v0
.end method

.method public onAnimationEnd()V
    .locals 2

    .prologue
    .line 121
    invoke-super {p0}, Landroid/widget/ImageView;->onAnimationEnd()V

    .line 122
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->mListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->mListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {p0}, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 125
    :cond_0
    return-void
.end method

.method public onAnimationStart()V
    .locals 2

    .prologue
    .line 113
    invoke-super {p0}, Landroid/widget/ImageView;->onAnimationStart()V

    .line 114
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->mListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->mListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {p0}, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    .line 117
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .prologue
    .line 100
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 101
    invoke-direct {p0}, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->elevationSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    invoke-virtual {p0}, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->mShadowRadius:I

    shl-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->getMeasuredHeight()I

    move-result v1

    iget v2, p0, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->mShadowRadius:I

    shl-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->setMeasuredDimension(II)V

    .line 105
    :cond_0
    return-void
.end method

.method public setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->mListener:Landroid/view/animation/Animation$AnimationListener;

    .line 109
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .prologue
    .line 138
    invoke-virtual {p0}, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/ShapeDrawable;

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {p0}, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 141
    :cond_0
    return-void
.end method
